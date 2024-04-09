(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712697259)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171721 (list gxc#::identity::t))
            (__tmp171720 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171721
         '()
         __tmp171720
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170586%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170586%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171722
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
        (__make-promise __tmp171722)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170578%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170581%_
                (let ((__obj171715
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171715))
               (__tmp171723
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170581%_ _%stx170578%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171723
           gxc#current-compile-method
           _%self170581%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171725 (list gxc#::void::t))
            (__tmp171724 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171725
         '(receiver methods slots)
         __tmp171724
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170575%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170575%_)))
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
      (let ((__tmp171726
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
        (__make-promise __tmp171726)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords170541%_
               _%receiver170536170542%_
               _%methods170537170544%_
               _%slots170538170546%_
               _%stx170548%_)
        (let* ((_%receiver170551%_
                (if (eq? _%receiver170536170542%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170536170542%_))
               (_%methods170553%_
                (if (eq? _%methods170537170544%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170537170544%_))
               (_%slots170555%_
                (if (eq? _%slots170538170546%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170538170546%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170557%_
                  (let ((__obj171717
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
                       __obj171717
                       _%receiver170551%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171717
                       _%methods170553%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171717
                       _%slots170555%_
                       '3
                       '#f
                       '#f))
                    __obj171717))
                 (__tmp171727
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170557%_ _%stx170548%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171727
             gxc#current-compile-method
             _%self170557%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170564%_ . _%args170565%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170564%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170564%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170564%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170564%_
                  'slots:
                  absent-value))
               _%args170565%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170539170571%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170539170571%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171729 (list gxc#::basic-xform-expression::t))
            (__tmp171728 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171729
         '(receiver klass methods slots)
         __tmp171728
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170532%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170532%_)))
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
      (let ((__tmp171730
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
        (__make-promise __tmp171730)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords170494%_
               _%receiver170488170495%_
               _%klass170489170497%_
               _%methods170490170499%_
               _%slots170491170501%_
               _%stx170503%_)
        (let* ((_%receiver170506%_
                (if (eq? _%receiver170488170495%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170488170495%_))
               (_%klass170508%_
                (if (eq? _%klass170489170497%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170489170497%_))
               (_%methods170510%_
                (if (eq? _%methods170490170499%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170490170499%_))
               (_%slots170512%_
                (if (eq? _%slots170491170501%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170491170501%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170514%_
                  (let ((__obj171719
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
                       __obj171719
                       _%receiver170506%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171719
                       _%klass170508%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171719
                       _%methods170510%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171719
                       _%slots170512%_
                       '4
                       '#f
                       '#f))
                    __obj171719))
                 (__tmp171731
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170514%_ _%stx170503%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171731
             gxc#current-compile-method
             _%self170514%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170521%_ . _%args170522%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170521%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170521%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170521%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170521%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170521%_
                  'slots:
                  absent-value))
               _%args170522%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170492170528%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170492170528%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167669%_ _%stx167670%_)
        (letrec ((_%generate-method-bind167672%_
                  (lambda (_%$klass170480%_
                           _%$method-table170481%_
                           _%id170482%_
                           _%$id170483%_)
                    (let ((_%$tmp170485%_
                           (let ((__tmp171732
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171732))))
                      (cons (cons _%$id170483%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170485%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170481%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170482%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp170485%_ '()))
                    (cons (cons '%#ref (cons _%$tmp170485%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170482%_
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
                 (_%generate-slot-bind167673%_
                  (lambda (_%$klass170474%_ _%id170475%_ _%$id170476%_)
                    (let ((_%$tmp170478%_
                           (let ((__tmp171733
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171733))))
                      (cons (cons _%$id170476%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170478%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170474%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170475%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170478%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170478%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170475%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167674%_
                  (lambda (_%$klass170468%_
                           _%$method-table170469%_
                           _%methods-bind170470%_
                           _%slots-bind170471%_
                           _%specializer-impl170472%_)
                    (let ((__tmp171734
                           (cons '%#lambda
                                 (cons (cons _%$klass170468%_
                                             (cons _%$method-table170469%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170471%_
                                                            _%methods-bind170470%_))
                                                         (cons _%specializer-impl170472%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171734 _%stx167670%_))))
                 (_%generate-specializer-def167675%_
                  (lambda (_%id170464%_
                           _%specializer-id170465%_
                           _%specializer-impl170466%_)
                    (let ((__tmp171735
                           (cons '%#begin
                                 (cons _%stx167670%_
                                       (cons (let ((__tmp171736
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170466%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171736
                                                _%stx167670%_))
                                             (cons (let ((__tmp171737
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170464%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170465%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171737
                                                      _%stx167670%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171735 _%stx167670%_)))))
          (let* ((_%__stx170675170676%_ _%stx167670%_)
                 (_%g167678167698%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170675170676%_)))))
            (let ((_%__kont170677170678%_
                   (lambda (_%L167742%_ _%L167743%_)
                     (let ((_%method-calls167762%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167763%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167764%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167766%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167762%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167763%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167742%_))
                             (let* ((_%__stx170589170590%_ _%L167742%_)
                                    (_%g168154168172%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx170589170590%_)))))
                               (let ((_%__kont170591170592%_
                                      (lambda (_%L168208%_
                                               _%L168209%_
                                               _%L168210%_)
                                        (for-each
                                         (lambda (_%g168226168228%_)
                                           (gxc#apply-collect-object-refs__%
                                            '#f
                                            _%L168210%_
                                            _%method-calls167762%_
                                            _%slot-refs167763%_
                                            _%g168226168228%_))
                                         _%L168208%_)
                                        (if (_%no-specializer?167766%_)
                                            _%stx167670%_
                                            (let* ((_%specializer-id168237%_
                                                    (let* ((_%id168231%_
                                                            (let ((__tmp171738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%L167743%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp171738 '"::specialize")))
                   (_%specializer-id168234%_
                    (let ((__tmp171739
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _%stx167670%_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _%id168231%_ __tmp171739))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _%specializer-id168234%_))
              _%specializer-id168234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$klass168239%_
                                                    (let ((__tmp171740
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__klass))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171740)))
                                                   (_%$method-table168241%_
                                                    (let ((__tmp171741
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__method-table))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171741)))
                                                   (_%methods168243%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%method-calls167762%_)))
                                                   (_%$methods168247%_
                                                    (map (lambda (_%id168245%_)
                                                           (let ((__tmp171742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168245%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171742)))
                 _%methods168243%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168256%_
                                                    (for-each
                                                     (lambda (_%g168248168251%_
                                                              _%g168249168253%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%method-calls167762%_
                                                          _%g168248168251%_
                                                          _%g168249168253%_)))
                                                     _%methods168243%_
                                                     _%$methods168247%_))
                                                   (_%methods-bind168266%_
                                                    (map (lambda (_%g168258168261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168259168263%_)
                   (_%generate-method-bind167672%_
                    _%$klass168239%_
                    _%$method-table168241%_
                    _%g168258168261%_
                    _%g168259168263%_))
                 _%methods168243%_
                 _%$methods168247%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%slots168268%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%slot-refs167763%_)))
                                                   (_%$slots168272%_
                                                    (map (lambda (_%id168270%_)
                                                           (let ((__tmp171743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168270%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171743)))
                 _%slots168268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168281%_
                                                    (for-each
                                                     (lambda (_%g168273168276%_
                                                              _%g168274168278%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%slot-refs167763%_
                                                          _%g168273168276%_
                                                          _%g168274168278%_)))
                                                     _%slots168268%_
                                                     _%$slots168272%_))
                                                   (_%slots-bind168290%_
                                                    (map (lambda (_%g168282168285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168283168287%_)
                   (_%generate-slot-bind167673%_
                    _%$klass168239%_
                    _%g168282168285%_
                    _%g168283168287%_))
                 _%slots168268%_
                 _%$slots168272%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-body168296%_
                                                    (map (lambda (_%g168291168293%_)
                                                           (gxc#apply-subst-object-refs__%
                                                            '#f
                                                            _%L168210%_
                                                            _%$klass168239%_
                                                            _%method-calls167762%_
                                                            _%slot-refs167763%_
                                                            _%g168291168293%_))
                                                         _%L168208%_))
                                                   (_%specializer-impl168298%_
                                                    (let ((__tmp171744
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%L168210%_ _%L168209%_)
                               _%specializer-body168296%_))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp171744 _%stx167670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-impl168300%_
                                                    (_%generate-specializer-impl167674%_
                                                     _%$klass168239%_
                                                     _%$method-table168241%_
                                                     _%methods-bind168266%_
                                                     _%slots-bind168290%_
                                                     _%specializer-impl168298%_)))
                                              (let ((__tmp171746
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L167743%_)))
                                                    (__tmp171745
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%specializer-id168237%_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp171746
                                                 '" => "
                                                 __tmp171745))
                                              (_%generate-specializer-def167675%_
                                               _%L167743%_
                                               _%specializer-id168237%_
                                               _%specializer-impl168300%_)))))
                                     (_%__kont170593170594%_
                                      (lambda () _%stx167670%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx170589170590%_))
                                     (let ((_%e168159168184%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx170589170590%_))))
                                       (let ((_%tl168161168189%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168159168184%_)))
                                             (_%hd168160168187%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168159168184%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168161168189%_))
                                             (let ((_%e168162168192%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168161168189%_))))
                                               (let ((_%tl168164168197%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168162168192%_)))
                                                     (_%hd168163168195%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168162168192%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd168163168195%_))
                                                     (let ((_%e168165168200%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd168163168195%_))))
                                                       (let ((_%tl168167168205%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168165168200%_)))
                     (_%hd168166168203%_
                      (let () (declare (not safe)) (##car _%e168165168200%_))))
                 (_%__kont170591170592%_
                  _%tl168164168197%_
                  _%tl168167168205%_
                  _%hd168166168203%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170593170594%_))))
                                             (_%__kont170593170594%_))))
                                     (_%__kont170593170594%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167742%_))
                                 (let* ((_%g168307168326%_
                                         (lambda (_%g168308168323%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g168308168323%_))))
                                        (_%g168306168613%_
                                         (lambda (_%g168308168329%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g168308168329%_))
                                               (let ((_%e168310168331%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g168308168329%_))))
                                                 (let ((_%hd168311168334%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168310168331%_)))
                                                       (_%tl168312168336%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168310168331%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl168312168336%_))
                                                       (let ((_g171747_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl168312168336%_ '0))))
                 (begin
                   (let ((_g171748_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g171747_)
                                (##vector-length _g171747_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g171748_ 2)))
                         (error "Context expects 2 values" _g171748_)))
                   (let ((_%target168313168339%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171747_ 0)))
                         (_%tl168315168341%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171747_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168315168341%_))
                         (letrec ((_%loop168316168344%_
                                   (lambda (_%hd168314168347%_
                                            _%clause168320168349%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168314168347%_))
                                         (let ((_%e168317168352%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168314168347%_))))
                                           (let ((_%lp-hd168318168355%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168317168352%_)))
                                                 (_%lp-tl168319168357%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168317168352%_))))
                                             (_%loop168316168344%_
                                              _%lp-tl168319168357%_
                                              (cons _%lp-hd168318168355%_
                                                    _%clause168320168349%_))))
                                         (let ((_%clause168321168360%_
                                                (reverse _%clause168320168349%_)))
                                           ((lambda (_%L168363%_)
                                              (for-each
                                               (lambda (_%clause168377%_)
                                                 (let* ((_%__stx170615170616%_
                                                         _%clause168377%_)
                                                        (_%g168380168395%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx170615170616%_)))))
                                                   (let ((_%__kont170617170618%_
                                                          (lambda (_%L168423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L168424%_
                           _%L168425%_)
                    (for-each
                     (lambda (_%g168440168442%_)
                       (gxc#apply-collect-object-refs__%
                        '#f
                        _%L168425%_
                        _%method-calls167762%_
                        _%slot-refs167763%_
                        _%g168440168442%_))
                     _%L168423%_)))
                 (_%__kont170619170620%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx170615170616%_))
                                                         (let ((_%e168385168407%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx170615170616%_))))
                   (let ((_%tl168387168412%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168385168407%_)))
                         (_%hd168386168410%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168385168407%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd168386168410%_))
                         (let ((_%e168388168415%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd168386168410%_))))
                           (let ((_%tl168390168420%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168388168415%_)))
                                 (_%hd168389168418%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168388168415%_))))
                             (_%__kont170617170618%_
                              _%tl168387168412%_
                              _%tl168390168420%_
                              _%hd168389168418%_)))
                         (_%__kont170619170620%_))))
                 (_%__kont170619170620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp171749
                                                      (lambda (_%g168447168450%_
                                                               _%g168448168452%_)
                                                        (cons _%g168447168450%_
                                                              _%g168448168452%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171749
                                                  '()
                                                  _%L168363%_)))
                                              (if (_%no-specializer?167766%_)
                                                  _%stx167670%_
                                                  (let* ((_%specializer-id168461%_
                                                          (let* ((_%id168455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171750
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167743%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171750 '"::specialize")))
                         (_%specializer-id168458%_
                          (let ((__tmp171751
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167670%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id168455%_
                             __tmp171751))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id168458%_))
                    _%specializer-id168458%_))
                 (_%$klass168463%_
                  (let ((__tmp171752
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171752)))
                 (_%$method-table168465%_
                  (let ((__tmp171753
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171753)))
                 (_%methods168467%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167762%_)))
                 (_%$methods168471%_
                  (map (lambda (_%id168469%_)
                         (let ((__tmp171754 (gensym _%id168469%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171754)))
                       _%methods168467%_))
                 (_%_168480%_
                  (for-each
                   (lambda (_%g168472168475%_ _%g168473168477%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167762%_
                        _%g168472168475%_
                        _%g168473168477%_)))
                   _%methods168467%_
                   _%$methods168471%_))
                 (_%methods-bind168490%_
                  (map (lambda (_%g168482168485%_ _%g168483168487%_)
                         (_%generate-method-bind167672%_
                          _%$klass168463%_
                          _%$method-table168465%_
                          _%g168482168485%_
                          _%g168483168487%_))
                       _%methods168467%_
                       _%$methods168471%_))
                 (_%slots168492%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167763%_)))
                 (_%$slots168496%_
                  (map (lambda (_%id168494%_)
                         (let ((__tmp171755 (gensym _%id168494%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171755)))
                       _%slots168492%_))
                 (_%_168505%_
                  (for-each
                   (lambda (_%g168497168500%_ _%g168498168502%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167763%_
                        _%g168497168500%_
                        _%g168498168502%_)))
                   _%slots168492%_
                   _%$slots168496%_))
                 (_%slots-bind168514%_
                  (map (lambda (_%g168506168509%_ _%g168507168511%_)
                         (_%generate-slot-bind167673%_
                          _%$klass168463%_
                          _%g168506168509%_
                          _%g168507168511%_))
                       _%slots168492%_
                       _%$slots168496%_))
                 (_%specializer-clauses168606%_
                  (map (lambda (_%clause168516%_)
                         (let* ((_%__stx170635170636%_ _%clause168516%_)
                                (_%g168519168534%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx170635170636%_)))))
                           (let ((_%__kont170637170638%_
                                  (lambda (_%L168562%_ _%L168563%_ _%L168564%_)
                                    (let ((_%body168594%_
                                           (map (lambda (_%g168589168591%_)
                                                  (gxc#apply-subst-object-refs__%
                                                   '#f
                                                   _%L168564%_
                                                   _%$klass168463%_
                                                   _%method-calls167762%_
                                                   _%slot-refs167763%_
                                                   _%g168589168591%_))
                                                _%L168562%_)))
                                      (cons (cons _%L168564%_ _%L168563%_)
                                            _%body168594%_))))
                                 (_%__kont170639170640%_
                                  (lambda () _%clause168516%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx170635170636%_))
                                 (let ((_%e168524168546%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx170635170636%_))))
                                   (let ((_%tl168526168551%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168524168546%_)))
                                         (_%hd168525168549%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168524168546%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168525168549%_))
                                         (let ((_%e168527168554%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168525168549%_))))
                                           (let ((_%tl168529168559%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168527168554%_)))
                                                 (_%hd168528168557%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168527168554%_))))
                                             (_%__kont170637170638%_
                                              _%tl168526168551%_
                                              _%tl168529168559%_
                                              _%hd168528168557%_)))
                                         (_%__kont170639170640%_))))
                                 (_%__kont170639170640%_)))))
                       (let ((__tmp171756
                              (lambda (_%g168598168601%_ _%g168599168603%_)
                                (cons _%g168598168601%_ _%g168599168603%_))))
                         (declare (not safe))
                         (__foldr1 __tmp171756 '() _%L168363%_))))
                 (_%specializer-impl168608%_
                  (let ((__tmp171757
                         (cons '%#case-lambda _%specializer-clauses168606%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171757 _%stx167670%_)))
                 (_%specializer-impl168610%_
                  (_%generate-specializer-impl167674%_
                   _%$klass168463%_
                   _%$method-table168465%_
                   _%methods-bind168490%_
                   _%slots-bind168514%_
                   _%specializer-impl168608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171759
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167743%_)))
                                                          (__tmp171758
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id168461%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171759
                                                       '" => "
                                                       __tmp171758))
                                                    (_%generate-specializer-def167675%_
                                                     _%L167743%_
                                                     _%specializer-id168461%_
                                                     _%specializer-impl168610%_))))
                                            _%clause168321168360%_))))))
                           (_%loop168316168344%_ _%target168313168339%_ '()))
                         (_%g168307168326%_ _%g168308168329%_)))))
               (_%g168307168326%_ _%g168308168329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g168307168326%_
                                                _%g168308168329%_)))))
                                   (_%g168306168613%_ _%L167742%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167742%_))
                                     (let* ((_%g168617168647%_
                                             (lambda (_%g168618168644%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g168618168644%_))))
                                            (_%g168616169256%_
                                             (lambda (_%g168618168650%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g168618168650%_))
                                                   (let ((_%e168622168652%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g168618168650%_))))
                                                     (let ((_%hd168623168655%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e168622168652%_)))
                                                           (_%tl168624168657%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e168622168652%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl168624168657%_))
                                                           (let ((_%e168625168660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl168624168657%_))))
                     (let ((_%hd168626168663%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168625168660%_)))
                           (_%tl168627168665%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168625168660%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168626168663%_))
                           (let ((_%e168628168668%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168626168663%_))))
                             (let ((_%hd168629168671%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168628168668%_)))
                                   (_%tl168630168673%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168628168668%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd168629168671%_))
                                   (let ((_%e168631168676%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd168629168671%_))))
                                     (let ((_%hd168632168679%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168631168676%_)))
                                           (_%tl168633168681%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168631168676%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168632168679%_))
                                           (let ((_%e168634168684%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168632168679%_))))
                                             (let ((_%hd168635168687%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168634168684%_)))
                                                   (_%tl168636168689%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168634168684%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl168636168689%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl168633168681%_))
                                                       (let ((_%e168637168692%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl168633168681%_))))
                 (let ((_%hd168638168695%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168637168692%_)))
                       (_%tl168639168697%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168637168692%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl168639168697%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168630168673%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl168627168665%_))
                               (let ((_%e168640168700%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl168627168665%_))))
                                 (let ((_%hd168641168703%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e168640168700%_)))
                                       (_%tl168642168705%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e168640168700%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl168642168705%_))
                                       ((lambda (_%L168708%_
                                                 _%L168709%_
                                                 _%L168710%_)
                                          (let* ((_%g168734168752%_
                                                  (lambda (_%g168735168749%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168735168749%_))))
                                                 (_%g168733168803%_
                                                  (lambda (_%g168735168755%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168735168755%_))
                                                        (let ((_%e168739168757%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168735168755%_))))
                  (let ((_%hd168740168760%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168739168757%_)))
                        (_%tl168741168762%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168739168757%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168741168762%_))
                        (let ((_%e168742168765%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168741168762%_))))
                          (let ((_%hd168743168768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168742168765%_)))
                                (_%tl168744168770%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168742168765%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168743168768%_))
                                (let ((_%e168745168773%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168743168768%_))))
                                  (let ((_%hd168746168776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168745168773%_)))
                                        (_%tl168747168778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168745168773%_))))
                                    ((lambda (_%L168781%_
                                              _%L168782%_
                                              _%L168783%_)
                                       (for-each
                                        (lambda (_%g168798168800%_)
                                          (gxc#apply-collect-object-refs__%
                                           '#f
                                           _%L168783%_
                                           _%method-calls167762%_
                                           _%slot-refs167763%_
                                           _%g168798168800%_))
                                        _%L168781%_))
                                     _%tl168744168770%_
                                     _%tl168747168778%_
                                     _%hd168746168776%_)))
                                (_%g168734168752%_ _%g168735168755%_))))
                        (_%g168734168752%_ _%g168735168755%_))))
                (_%g168734168752%_ _%g168735168755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168733168803%_ _%L168709%_))
                                          (let* ((_%g168806168825%_
                                                  (lambda (_%g168807168822%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168807168822%_))))
                                                 (_%g168805168944%_
                                                  (lambda (_%g168807168828%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168807168828%_))
                                                        (let ((_%e168809168830%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168807168828%_))))
                  (let ((_%hd168810168833%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168809168830%_)))
                        (_%tl168811168835%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168809168830%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl168811168835%_))
                        (let ((_g171760_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl168811168835%_
                                  '0))))
                          (begin
                            (let ((_g171761_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g171760_)
                                         (##vector-length _g171760_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g171761_ 2)))
                                  (error "Context expects 2 values"
                                         _g171761_)))
                            (let ((_%target168812168838%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171760_ 0)))
                                  (_%tl168814168840%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171760_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168814168840%_))
                                  (letrec ((_%loop168815168843%_
                                            (lambda (_%hd168813168846%_
                                                     _%clause168819168848%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168813168846%_))
                                                  (let ((_%e168816168851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168813168846%_))))
                                                    (let ((_%lp-hd168817168854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168816168851%_)))
                                                          (_%lp-tl168818168856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168816168851%_))))
                                                      (_%loop168815168843%_
                                                       _%lp-tl168818168856%_
                                                       (cons _%lp-hd168817168854%_
                                                             _%clause168819168848%_))))
                                                  (let ((_%clause168820168859%_
                                                         (reverse _%clause168819168848%_)))
                                                    ((lambda (_%L168862%_)
                                                       (for-each
                                                        (lambda (_%clause168875%_)
                                                          (let* ((_%g168877168892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g168878168889%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g168878168889%_))))
                         (_%g168876168934%_
                          (lambda (_%g168878168895%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g168878168895%_))
                                (let ((_%e168882168897%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g168878168895%_))))
                                  (let ((_%hd168883168900%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168882168897%_)))
                                        (_%tl168884168902%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168882168897%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168883168900%_))
                                        (let ((_%e168885168905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168883168900%_))))
                                          (let ((_%hd168886168908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168885168905%_)))
                                                (_%tl168887168910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168885168905%_))))
                                            ((lambda (_%L168913%_
                                                      _%L168914%_
                                                      _%L168915%_)
                                               (for-each
                                                (lambda (_%g168929168931%_)
                                                  (gxc#apply-collect-object-refs__%
                                                   '#f
                                                   _%L168915%_
                                                   _%method-calls167762%_
                                                   _%slot-refs167763%_
                                                   _%g168929168931%_))
                                                _%L168913%_))
                                             _%tl168884168902%_
                                             _%tl168887168910%_
                                             _%hd168886168908%_)))
                                        (_%g168877168892%_
                                         _%g168878168895%_))))
                                (_%g168877168892%_ _%g168878168895%_)))))
                    (_%g168876168934%_ _%clause168875%_)))
                (let ((__tmp171762
                       (lambda (_%g168936168939%_ _%g168937168941%_)
                         (cons _%g168936168939%_ _%g168937168941%_))))
                  (declare (not safe))
                  (__foldr1 __tmp171762 '() _%L168862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause168820168859%_))))))
                                    (_%loop168815168843%_
                                     _%target168812168838%_
                                     '()))
                                  (_%g168806168825%_ _%g168807168828%_)))))
                        (_%g168806168825%_ _%g168807168828%_))))
                (_%g168806168825%_ _%g168807168828%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168805168944%_ _%L168708%_))
                                          (if (_%no-specializer?167766%_)
                                              _%stx167670%_
                                              (let* ((_%specializer-id168953%_
                                                      (let* ((_%id168947%_
                                                              (let ((__tmp171763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167743%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171763 '"::specialize")))
                     (_%specializer-id168950%_
                      (let ((__tmp171764
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167670%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168947%_ __tmp171764))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168950%_))
                _%specializer-id168950%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168955%_
                                                      (let ((__tmp171765
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171765)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168957%_
                                                      (let ((__tmp171766
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171766)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168959%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167762%_)))
                                                     (_%$methods168963%_
                                                      (map (lambda (_%id168961%_)
                                                             (let ((__tmp171767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168961%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171767)))
                   _%methods168959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168972%_
                                                      (for-each
                                                       (lambda (_%g168964168967%_
                                                                _%g168965168969%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167762%_
                                                            _%g168964168967%_
                                                            _%g168965168969%_)))
                                                       _%methods168959%_
                                                       _%$methods168963%_))
                                                     (_%methods-bind168982%_
                                                      (map (lambda (_%g168974168977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168975168979%_)
                     (_%generate-method-bind167672%_
                      _%$klass168955%_
                      _%$method-table168957%_
                      _%g168974168977%_
                      _%g168975168979%_))
                   _%methods168959%_
                   _%$methods168963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots168984%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167763%_)))
                                                     (_%$slots168988%_
                                                      (map (lambda (_%id168986%_)
                                                             (let ((__tmp171768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168986%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171768)))
                   _%slots168984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168997%_
                                                      (for-each
                                                       (lambda (_%g168989168992%_
                                                                _%g168990168994%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167763%_
                                                            _%g168989168992%_
                                                            _%g168990168994%_)))
                                                       _%slots168984%_
                                                       _%$slots168988%_))
                                                     (_%slots-bind169006%_
                                                      (map (lambda (_%g168998169001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168999169003%_)
                     (_%generate-slot-bind167673%_
                      _%$klass168955%_
                      _%g168998169001%_
                      _%g168999169003%_))
                   _%slots168984%_
                   _%$slots168988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr169092%_
                                                      (let* ((_%g169008169026%_
                                                              (lambda (_%g169009169023%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169009169023%_))))
                     (_%g169007169089%_
                      (lambda (_%g169009169029%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169009169029%_))
                            (let ((_%e169013169031%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169009169029%_))))
                              (let ((_%hd169014169034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169013169031%_)))
                                    (_%tl169015169036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169013169031%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169015169036%_))
                                    (let ((_%e169016169039%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169015169036%_))))
                                      (let ((_%hd169017169042%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169016169039%_)))
                                            (_%tl169018169044%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169016169039%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169017169042%_))
                                            (let ((_%e169019169047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169017169042%_))))
                                              (let ((_%hd169020169050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169019169047%_)))
                                                    (_%tl169021169052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169019169047%_))))
                                                ((lambda (_%L169055%_
                                                          _%L169056%_
                                                          _%L169057%_)
                                                   (let* ((_%body169087%_
                                                           (map (lambda (_%g169082169084%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%L169057%_
                           _%$klass168955%_
                           _%method-calls167762%_
                           _%slot-refs167763%_
                           _%g169082169084%_))
                        _%L169055%_))
                  (__tmp171769
                   (cons '%#lambda
                         (cons (cons _%L169057%_ _%L169056%_)
                               _%body169087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171769
                                                      _%L168709%_)))
                                                 _%tl169018169044%_
                                                 _%tl169021169052%_
                                                 _%hd169020169050%_)))
                                            (_%g169008169026%_
                                             _%g169009169029%_))))
                                    (_%g169008169026%_ _%g169009169029%_))))
                            (_%g169008169026%_ _%g169009169029%_)))))
                (_%g169007169089%_ _%L168709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr169249%_
                                                      (let* ((_%g169094169113%_
                                                              (lambda (_%g169095169110%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169095169110%_))))
                     (_%g169093169246%_
                      (lambda (_%g169095169116%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169095169116%_))
                            (let ((_%e169097169118%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169095169116%_))))
                              (let ((_%hd169098169121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169097169118%_)))
                                    (_%tl169099169123%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169097169118%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169099169123%_))
                                    (let ((_g171770_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl169099169123%_
                                              '0))))
                                      (begin
                                        (let ((_g171771_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g171770_)
                                                     (##vector-length
                                                      _g171770_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g171771_ 2)))
                                              (error "Context expects 2 values"
                                                     _g171771_)))
                                        (let ((_%target169100169126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171770_ 0)))
                                              (_%tl169102169128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171770_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169102169128%_))
                                              (letrec ((_%loop169103169131%_
                                                        (lambda (_%hd169101169134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause169107169136%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169101169134%_))
                      (let ((_%e169104169139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169101169134%_))))
                        (let ((_%lp-hd169105169142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169104169139%_)))
                              (_%lp-tl169106169144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169104169139%_))))
                          (_%loop169103169131%_
                           _%lp-tl169106169144%_
                           (cons _%lp-hd169105169142%_
                                 _%clause169107169136%_))))
                      (let ((_%clause169108169147%_
                             (reverse _%clause169107169136%_)))
                        ((lambda (_%L169150%_)
                           (let* ((_%clauses169244%_
                                   (map (lambda (_%clause169164%_)
                                          (let* ((_%__stx170655170656%_
                                                  _%clause169164%_)
                                                 (_%g169167169182%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx170655170656%_)))))
                                            (let ((_%__kont170657170658%_
                                                   (lambda (_%L169210%_
                                                            _%L169211%_
                                                            _%L169212%_)
                                                     (let ((_%body169232%_
                                                            (map (lambda (_%g169227169229%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%L169212%_
                            _%$klass168955%_
                            _%method-calls167762%_
                            _%slot-refs167763%_
                            _%g169227169229%_))
                         _%L169210%_)))
               (cons (cons _%L169212%_ _%L169211%_) _%body169232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170659170660%_
                                                   (lambda ()
                                                     _%clause169164%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx170655170656%_))
                                                  (let ((_%e169172169194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx170655170656%_))))
                                                    (let ((_%tl169174169199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169172169194%_)))
                                                          (_%hd169173169197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169172169194%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169173169197%_))
                                                          (let ((_%e169175169202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169173169197%_))))
                    (let ((_%tl169177169207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169175169202%_)))
                          (_%hd169176169205%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169175169202%_))))
                      (_%__kont170657170658%_
                       _%tl169174169199%_
                       _%tl169177169207%_
                       _%hd169176169205%_)))
                  (_%__kont170659170660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170659170660%_)))))
                                        (let ((__tmp171772
                                               (lambda (_%g169236169239%_
                                                        _%g169237169241%_)
                                                 (cons _%g169236169239%_
                                                       _%g169237169241%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171772
                                           '()
                                           _%L169150%_))))
                                  (__tmp171773
                                   (cons '%#case-lambda _%clauses169244%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171773 _%L168708%_)))
                         _%clause169108169147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169103169131%_
                                                 _%target169100169126%_
                                                 '()))
                                              (_%g169094169113%_
                                               _%g169095169116%_)))))
                                    (_%g169094169113%_ _%g169095169116%_))))
                            (_%g169094169113%_ _%g169095169116%_)))))
                (_%g169093169246%_ _%L168708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169251%_
                                                      (let ((__tmp171774
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L168710%_ '())
                                             (cons _%specializer-lambda-expr169092%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr169249%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171774 _%stx167670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169253%_
                                                      (_%generate-specializer-impl167674%_
                                                       _%$klass168955%_
                                                       _%$method-table168957%_
                                                       _%methods-bind168982%_
                                                       _%slots-bind169006%_
                                                       _%specializer-impl169251%_)))
                                                (let ((__tmp171776
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167743%_)))
                                                      (__tmp171775
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168953%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171776
                                                   '" => "
                                                   __tmp171775))
                                                (_%generate-specializer-def167675%_
                                                 _%L167743%_
                                                 _%specializer-id168953%_
                                                 _%specializer-impl169253%_))))
                                        _%hd168641168703%_
                                        _%hd168638168695%_
                                        _%hd168635168687%_)
                                       (_%g168617168647%_ _%g168618168650%_))))
                               (_%g168617168647%_ _%g168618168650%_))
                           (_%g168617168647%_ _%g168618168650%_))
                       (_%g168617168647%_ _%g168618168650%_))))
               (_%g168617168647%_ _%g168618168650%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168617168647%_
                                                    _%g168618168650%_))))
                                           (_%g168617168647%_
                                            _%g168618168650%_))))
                                   (_%g168617168647%_ _%g168618168650%_))))
                           (_%g168617168647%_ _%g168618168650%_))))
                   (_%g168617168647%_ _%g168618168650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168617168647%_
                                                    _%g168618168650%_)))))
                                       (_%g168616169256%_ _%L167742%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167742%_))
                                         (let* ((_%g169260169313%_
                                                 (lambda (_%g169261169310%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169261169310%_))))
                                                (_%g169259170456%_
                                                 (lambda (_%g169261169316%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169261169316%_))
                                                       (let ((_%e169267169318%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169261169316%_))))
                 (let ((_%hd169268169321%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169267169318%_)))
                       (_%tl169269169323%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169267169318%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd169268169321%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd169268169321%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169269169323%_))
                               (let ((_%e169270169326%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169269169323%_))))
                                 (let ((_%hd169271169329%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169270169326%_)))
                                       (_%tl169272169331%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169270169326%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169271169329%_))
                                       (let ((_%e169273169334%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169271169329%_))))
                                         (let ((_%hd169274169337%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169273169334%_)))
                                               (_%tl169275169339%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169273169334%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169274169337%_))
                                               (let ((_%e169276169342%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169274169337%_))))
                                                 (let ((_%hd169277169345%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169276169342%_)))
                                                       (_%tl169278169347%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169276169342%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169277169345%_))
                                                       (let ((_%e169279169350%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169277169345%_))))
                 (let ((_%hd169280169353%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169279169350%_)))
                       (_%tl169281169355%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169279169350%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169281169355%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169278169347%_))
                           (let ((_%e169282169358%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169278169347%_))))
                             (let ((_%hd169283169361%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169282169358%_)))
                                   (_%tl169284169363%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169282169358%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169283169361%_))
                                   (let ((_%e169285169366%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169283169361%_))))
                                     (let ((_%hd169286169369%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169285169366%_)))
                                           (_%tl169287169371%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169285169366%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd169286169369%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd169286169369%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl169287169371%_))
                                                   (let ((_%e169288169374%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl169287169371%_))))
                                                     (let ((_%hd169289169377%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169288169374%_)))
                                                           (_%tl169290169379%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169288169374%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd169289169377%_))
                                                           (let ((_%e169291169382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd169289169377%_))))
                     (let ((_%hd169292169385%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169291169382%_)))
                           (_%tl169293169387%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169291169382%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169292169385%_))
                           (let ((_%e169294169390%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169292169385%_))))
                             (let ((_%hd169295169393%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169294169390%_)))
                                   (_%tl169296169395%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169294169390%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169295169393%_))
                                   (let ((_%e169297169398%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169295169393%_))))
                                     (let ((_%hd169298169401%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169297169398%_)))
                                           (_%tl169299169403%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169297169398%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169299169403%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169296169395%_))
                                               (let ((_%e169300169406%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169296169395%_))))
                                                 (let ((_%hd169301169409%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169300169406%_)))
                                                       (_%tl169302169411%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169300169406%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169302169411%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169293169387%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169290169379%_))
                       (let ((_%e169303169414%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169290169379%_))))
                         (let ((_%hd169304169417%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169303169414%_)))
                               (_%tl169305169419%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169303169414%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169305169419%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169284169363%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169275169339%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl169272169331%_))
                                           (let ((_%e169306169422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl169272169331%_))))
                                             (let ((_%hd169307169425%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169306169422%_)))
                                                   (_%tl169308169427%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169306169422%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169308169427%_))
                                                   ((lambda (_%L169430%_
                                                             _%L169431%_
                                                             _%L169432%_
                                                             _%L169433%_
                                                             _%L169434%_)
                                                      (let* ((_%g169474169536%_
                                                              (lambda (_%g169475169533%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169475169533%_))))
                     (_%g169473170453%_
                      (lambda (_%g169475169539%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169475169539%_))
                            (let ((_%e169481169541%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169475169539%_))))
                              (let ((_%hd169482169544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169481169541%_)))
                                    (_%tl169483169546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169481169541%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169482169544%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd169482169544%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169483169546%_))
                                            (let ((_%e169484169549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169483169546%_))))
                                              (let ((_%hd169485169552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169484169549%_)))
                                                    (_%tl169486169554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169484169549%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169486169554%_))
                                                    (let ((_%e169487169557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169486169554%_))))
                                                      (let ((_%hd169488169560%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169487169557%_)))
                    (_%tl169489169562%_
                     (let () (declare (not safe)) (##cdr _%e169487169557%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd169488169560%_))
                    (let ((_%e169490169565%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169488169560%_))))
                      (let ((_%hd169491169568%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169490169565%_)))
                            (_%tl169492169570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169490169565%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd169491169568%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd169491169568%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169492169570%_))
                                    (let ((_%e169493169573%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169492169570%_))))
                                      (let ((_%hd169494169576%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169493169573%_)))
                                            (_%tl169495169578%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169493169573%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169494169576%_))
                                            (let ((_%e169496169581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169494169576%_))))
                                              (let ((_%hd169497169584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169496169581%_)))
                                                    (_%tl169498169586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169496169581%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169497169584%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169497169584%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169498169586%_))
                                                            (let ((_%e169499169589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169498169586%_))))
                      (let ((_%hd169500169592%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169499169589%_)))
                            (_%tl169501169594%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169499169589%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169501169594%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169495169578%_))
                                (let ((_%e169502169597%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169495169578%_))))
                                  (let ((_%hd169503169600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169502169597%_)))
                                        (_%tl169504169602%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169502169597%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169503169600%_))
                                        (let ((_%e169505169605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169503169600%_))))
                                          (let ((_%hd169506169608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169505169605%_)))
                                                (_%tl169507169610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169505169605%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd169506169608%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd169506169608%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169507169610%_))
                                                        (let ((_%e169508169613%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169507169610%_))))
                  (let ((_%hd169509169616%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169508169613%_)))
                        (_%tl169510169618%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169508169613%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169510169618%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169504169602%_))
                            (let ((_%e169511169621%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169504169602%_))))
                              (let ((_%hd169512169624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169511169621%_)))
                                    (_%tl169513169626%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169511169621%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169512169624%_))
                                    (let ((_%e169514169629%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169512169624%_))))
                                      (let ((_%hd169515169632%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169514169629%_)))
                                            (_%tl169516169634%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169514169629%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169515169632%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169515169632%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169516169634%_))
                                                    (let ((_%e169517169637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169516169634%_))))
                                                      (let ((_%hd169518169640%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169517169637%_)))
                    (_%tl169519169642%_
                     (let () (declare (not safe)) (##cdr _%e169517169637%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169519169642%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl169513169626%_))
                        (if (let ((__tmp171777
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl169513169626%_))))
                              (declare (not safe))
                              (##fx>= __tmp171777 '1))
                            (let ((_g171778_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl169513169626%_
                                      '1))))
                              (begin
                                (let ((_g171779_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171778_)
                                             (##vector-length _g171778_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171779_ 2)))
                                      (error "Context expects 2 values"
                                             _g171779_)))
                                (let ((_%target169520169645%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171778_ 0)))
                                      (_%tl169522169647%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171778_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169522169647%_))
                                      (let ((_%e169529169650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169522169647%_))))
                                        (let ((_%hd169530169653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169529169650%_)))
                                              (_%tl169531169655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169529169650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169531169655%_))
                                              (letrec ((_%loop169523169658%_
                                                        (lambda (_%hd169521169661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref169527169663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169521169661%_))
                      (let ((_%e169524169666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169521169661%_))))
                        (let ((_%lp-hd169525169669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169524169666%_)))
                              (_%lp-tl169526169671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169524169666%_))))
                          (_%loop169523169658%_
                           _%lp-tl169526169671%_
                           (cons _%lp-hd169525169669%_
                                 _%kw-ref169527169663%_))))
                      (let ((_%kw-ref169528169674%_
                             (reverse _%kw-ref169527169663%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169489169562%_))
                            ((lambda (_%L169677%_
                                      _%L169678%_
                                      _%L169679%_
                                      _%L169680%_
                                      _%L169681%_)
                               (let* ((_%kw-count169732%_
                                       (length (let ((__tmp171780
                                                      (lambda (_%g169724169727%_
                                                               _%g169725169729%_)
                                                        (cons _%g169724169727%_
                                                              _%g169725169729%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171780
                                                  '()
                                                  _%L169678%_))))
                                      (_%self-index169734%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count169732%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L169432%_))
                                     (let* ((_%g169738169752%_
                                             (lambda (_%g169739169749%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169739169749%_))))
                                            (_%g169737169869%_
                                             (lambda (_%g169739169755%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169739169755%_))
                                                   (let ((_%e169742169757%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169739169755%_))))
                                                     (let ((_%hd169743169760%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169742169757%_)))
                                                           (_%tl169744169762%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169742169757%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169744169762%_))
                                                           (let ((_%e169745169765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169744169762%_))))
                     (let ((_%hd169746169768%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169745169765%_)))
                           (_%tl169747169770%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169745169765%_))))
                       ((lambda (_%L169773%_ _%L169774%_)
                          (let ((_%self169791%_
                                 (list-ref _%L169774%_ _%self-index169734%_)))
                            (for-each
                             (lambda (_%g169792169794%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%self169791%_
                                _%method-calls167762%_
                                _%slot-refs167763%_
                                _%g169792169794%_))
                             _%L169773%_)
                            (if (_%no-specializer?167766%_)
                                _%stx167670%_
                                (let* ((_%specializer-id169803%_
                                        (let* ((_%id169797%_
                                                (let ((__tmp171781
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167743%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp171781
                                                   '"::specialize")))
                                               (_%specializer-id169800%_
                                                (let ((__tmp171782
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx167670%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id169797%_
                                                   __tmp171782))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id169800%_))
                                          _%specializer-id169800%_))
                                       (_%$klass169805%_
                                        (let ((__tmp171783
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171783)))
                                       (_%$method-table169807%_
                                        (let ((__tmp171784
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171784)))
                                       (_%methods169809%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls167762%_)))
                                       (_%$methods169813%_
                                        (map (lambda (_%id169811%_)
                                               (let ((__tmp171785
                                                      (gensym _%id169811%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171785)))
                                             _%methods169809%_))
                                       (_%_169822%_
                                        (for-each
                                         (lambda (_%g169814169817%_
                                                  _%g169815169819%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls167762%_
                                              _%g169814169817%_
                                              _%g169815169819%_)))
                                         _%methods169809%_
                                         _%$methods169813%_))
                                       (_%methods-bind169832%_
                                        (map (lambda (_%g169824169827%_
                                                      _%g169825169829%_)
                                               (_%generate-method-bind167672%_
                                                _%$klass169805%_
                                                _%$method-table169807%_
                                                _%g169824169827%_
                                                _%g169825169829%_))
                                             _%methods169809%_
                                             _%$methods169813%_))
                                       (_%slots169834%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs167763%_)))
                                       (_%$slots169838%_
                                        (map (lambda (_%id169836%_)
                                               (let ((__tmp171786
                                                      (gensym _%id169836%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171786)))
                                             _%slots169834%_))
                                       (_%_169847%_
                                        (for-each
                                         (lambda (_%g169839169842%_
                                                  _%g169840169844%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs167763%_
                                              _%g169839169842%_
                                              _%g169840169844%_)))
                                         _%slots169834%_
                                         _%$slots169838%_))
                                       (_%slots-bind169856%_
                                        (map (lambda (_%g169848169851%_
                                                      _%g169849169853%_)
                                               (_%generate-slot-bind167673%_
                                                _%$klass169805%_
                                                _%g169848169851%_
                                                _%g169849169853%_))
                                             _%slots169834%_
                                             _%$slots169838%_))
                                       (_%specializer-impl169864%_
                                        (let* ((_%specializer-body169862%_
                                                (map (lambda (_%g169857169859%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%self169791%_
                                                        _%$klass169805%_
                                                        _%method-calls167762%_
                                                        _%slot-refs167763%_
                                                        _%g169857169859%_))
                                                     _%L169773%_))
                                               (__tmp171787
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L169434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L169433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp171788
                                   (cons '%#lambda
                                         (cons _%L169774%_
                                               _%specializer-body169862%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp171788 _%L169432%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L169431%_ '())))
                                      '()))
                          '())
                    (cons _%L169430%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp171787
                                           _%stx167670%_)))
                                       (_%specializer-impl169866%_
                                        (_%generate-specializer-impl167674%_
                                         _%$klass169805%_
                                         _%$method-table169807%_
                                         _%methods-bind169832%_
                                         _%slots-bind169856%_
                                         _%specializer-impl169864%_)))
                                  (let ((__tmp171790
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L167743%_)))
                                        (__tmp171789
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id169803%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp171790
                                     '" => "
                                     __tmp171789))
                                  (_%generate-specializer-def167675%_
                                   _%L167743%_
                                   _%specializer-id169803%_
                                   _%specializer-impl169866%_)))))
                        _%tl169747169770%_
                        _%hd169746169768%_)))
                   (_%g169738169752%_ _%g169739169755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169738169752%_
                                                    _%g169739169755%_)))))
                                       (_%g169737169869%_ _%L169432%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L169432%_))
                                         (let* ((_%g169873169903%_
                                                 (lambda (_%g169874169900%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169874169900%_))))
                                                (_%g169872170449%_
                                                 (lambda (_%g169874169906%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169874169906%_))
                                                       (let ((_%e169878169908%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169874169906%_))))
                 (let ((_%hd169879169911%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169878169908%_)))
                       (_%tl169880169913%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169878169908%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169880169913%_))
                       (let ((_%e169881169916%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169880169913%_))))
                         (let ((_%hd169882169919%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169881169916%_)))
                               (_%tl169883169921%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169881169916%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd169882169919%_))
                               (let ((_%e169884169924%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd169882169919%_))))
                                 (let ((_%hd169885169927%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169884169924%_)))
                                       (_%tl169886169929%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169884169924%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169885169927%_))
                                       (let ((_%e169887169932%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169885169927%_))))
                                         (let ((_%hd169888169935%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169887169932%_)))
                                               (_%tl169889169937%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169887169932%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169888169935%_))
                                               (let ((_%e169890169940%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169888169935%_))))
                                                 (let ((_%hd169891169943%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169890169940%_)))
                                                       (_%tl169892169945%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169890169940%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169892169945%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169889169937%_))
                                                           (let ((_%e169893169948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169889169937%_))))
                     (let ((_%hd169894169951%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169893169948%_)))
                           (_%tl169895169953%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169893169948%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169895169953%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169886169929%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl169883169921%_))
                                   (let ((_%e169896169956%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl169883169921%_))))
                                     (let ((_%hd169897169959%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169896169956%_)))
                                           (_%tl169898169961%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169896169956%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169898169961%_))
                                           ((lambda (_%L169964%_
                                                     _%L169965%_
                                                     _%L169966%_)
                                              (let* ((_%g169990170004%_
                                                      (lambda (_%g169991170001%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g169991170001%_))))
                                                     (_%g169989170045%_
                                                      (lambda (_%g169991170007%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g169991170007%_))
                                                            (let ((_%e169994170009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g169991170007%_))))
                      (let ((_%hd169995170012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169994170009%_)))
                            (_%tl169996170014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169994170009%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169996170014%_))
                            (let ((_%e169997170017%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169996170014%_))))
                              (let ((_%hd169998170020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169997170017%_)))
                                    (_%tl169999170022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169997170017%_))))
                                ((lambda (_%L170025%_ _%L170026%_)
                                   (let ((_%self170039%_
                                          (list-ref
                                           _%L170026%_
                                           _%self-index169734%_)))
                                     (for-each
                                      (lambda (_%g170040170042%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%self170039%_
                                         _%method-calls167762%_
                                         _%slot-refs167763%_
                                         _%g170040170042%_))
                                      _%L170025%_)))
                                 _%tl169999170022%_
                                 _%hd169998170020%_)))
                            (_%g169990170004%_ _%g169991170007%_))))
                    (_%g169990170004%_ _%g169991170007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g169989170045%_
                                                 _%L169965%_))
                                              (let* ((_%g170048170067%_
                                                      (lambda (_%g170049170064%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170049170064%_))))
                                                     (_%g170047170172%_
                                                      (lambda (_%g170049170070%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170049170070%_))
                                                            (let ((_%e170051170072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170049170070%_))))
                      (let ((_%hd170052170075%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170051170072%_)))
                            (_%tl170053170077%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170051170072%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl170053170077%_))
                            (let ((_g171791_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170053170077%_
                                      '0))))
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
                                      (error "Context expects 2 values"
                                             _g171792_)))
                                (let ((_%target170054170080%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171791_ 0)))
                                      (_%tl170056170082%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171791_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170056170082%_))
                                      (letrec ((_%loop170057170085%_
                                                (lambda (_%hd170055170088%_
                                                         _%clause170061170090%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd170055170088%_))
                                                      (let ((_%e170058170093%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd170055170088%_))))
                (let ((_%lp-hd170059170096%_
                       (let () (declare (not safe)) (##car _%e170058170093%_)))
                      (_%lp-tl170060170098%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170058170093%_))))
                  (_%loop170057170085%_
                   _%lp-tl170060170098%_
                   (cons _%lp-hd170059170096%_ _%clause170061170090%_))))
              (let ((_%clause170062170101%_ (reverse _%clause170061170090%_)))
                ((lambda (_%L170104%_)
                   (for-each
                    (lambda (_%clause170117%_)
                      (let* ((_%g170119170130%_
                              (lambda (_%g170120170127%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170120170127%_))))
                             (_%g170118170162%_
                              (lambda (_%g170120170133%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170120170133%_))
                                    (let ((_%e170123170135%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170120170133%_))))
                                      (let ((_%hd170124170138%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170123170135%_)))
                                            (_%tl170125170140%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170123170135%_))))
                                        ((lambda (_%L170143%_ _%L170144%_)
                                           (let ((_%self170156%_
                                                  (list-ref
                                                   _%L170144%_
                                                   _%self-index169734%_)))
                                             (for-each
                                              (lambda (_%g170157170159%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%self170156%_
                                                 _%method-calls167762%_
                                                 _%slot-refs167763%_
                                                 _%g170157170159%_))
                                              _%L170143%_)))
                                         _%tl170125170140%_
                                         _%hd170124170138%_)))
                                    (_%g170119170130%_ _%g170120170133%_)))))
                        (_%g170118170162%_ _%clause170117%_)))
                    (let ((__tmp171793
                           (lambda (_%g170164170167%_ _%g170165170169%_)
                             (cons _%g170164170167%_ _%g170165170169%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171793 '() _%L170104%_))))
                 _%clause170062170101%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop170057170085%_
                                         _%target170054170080%_
                                         '()))
                                      (_%g170048170067%_ _%g170049170070%_)))))
                            (_%g170048170067%_ _%g170049170070%_))))
                    (_%g170048170067%_ _%g170049170070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170047170172%_
                                                 _%L169964%_))
                                              (if (_%no-specializer?167766%_)
                                                  _%stx167670%_
                                                  (let* ((_%specializer-id170181%_
                                                          (let* ((_%id170175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171794
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167743%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171794 '"::specialize")))
                         (_%specializer-id170178%_
                          (let ((__tmp171795
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167670%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170175%_
                             __tmp171795))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170178%_))
                    _%specializer-id170178%_))
                 (_%$klass170183%_
                  (let ((__tmp171796
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171796)))
                 (_%$method-table170185%_
                  (let ((__tmp171797
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171797)))
                 (_%methods170187%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167762%_)))
                 (_%$methods170191%_
                  (map (lambda (_%id170189%_)
                         (let ((__tmp171798 (gensym _%id170189%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171798)))
                       _%methods170187%_))
                 (_%_170200%_
                  (for-each
                   (lambda (_%g170192170195%_ _%g170193170197%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167762%_
                        _%g170192170195%_
                        _%g170193170197%_)))
                   _%methods170187%_
                   _%$methods170191%_))
                 (_%methods-bind170210%_
                  (map (lambda (_%g170202170205%_ _%g170203170207%_)
                         (_%generate-method-bind167672%_
                          _%$klass170183%_
                          _%$method-table170185%_
                          _%g170202170205%_
                          _%g170203170207%_))
                       _%methods170187%_
                       _%$methods170191%_))
                 (_%slots170212%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167763%_)))
                 (_%$slots170216%_
                  (map (lambda (_%id170214%_)
                         (let ((__tmp171799 (gensym _%id170214%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171799)))
                       _%slots170212%_))
                 (_%_170225%_
                  (for-each
                   (lambda (_%g170217170220%_ _%g170218170222%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167763%_
                        _%g170217170220%_
                        _%g170218170222%_)))
                   _%slots170212%_
                   _%$slots170216%_))
                 (_%slots-bind170234%_
                  (map (lambda (_%g170226170229%_ _%g170227170231%_)
                         (_%generate-slot-bind167673%_
                          _%$klass170183%_
                          _%g170226170229%_
                          _%g170227170231%_))
                       _%slots170212%_
                       _%$slots170216%_))
                 (_%specializer-lambda-expr170307%_
                  (let* ((_%g170236170250%_
                          (lambda (_%g170237170247%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170237170247%_))))
                         (_%g170235170304%_
                          (lambda (_%g170237170253%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170237170253%_))
                                (let ((_%e170240170255%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170237170253%_))))
                                  (let ((_%hd170241170258%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170240170255%_)))
                                        (_%tl170242170260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170240170255%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170242170260%_))
                                        (let ((_%e170243170263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170242170260%_))))
                                          (let ((_%hd170244170266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170243170263%_)))
                                                (_%tl170245170268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170243170263%_))))
                                            ((lambda (_%L170271%_ _%L170272%_)
                                               (let* ((_%self170295%_
                                                       (list-ref
                                                        _%L170272%_
                                                        _%self-index169734%_))
                                                      (_%body170301%_
                                                       (map (lambda (_%g170296170298%_)
                                                              (gxc#apply-subst-object-refs__%
                                                               '#f
                                                               _%self170295%_
                                                               _%$klass170183%_
                                                               _%method-calls167762%_
                                                               _%slot-refs167763%_
                                                               _%g170296170298%_))
                                                            _%L170271%_))
                                                      (__tmp171800
                                                       (cons '%#lambda
                                                             (cons _%L170272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body170301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp171800
                                                  _%L169965%_)))
                                             _%tl170245170268%_
                                             _%hd170244170266%_)))
                                        (_%g170236170250%_
                                         _%g170237170253%_))))
                                (_%g170236170250%_ _%g170237170253%_)))))
                    (_%g170235170304%_ _%L169965%_)))
                 (_%specializer-case-lambda-expr170442%_
                  (let* ((_%g170309170328%_
                          (lambda (_%g170310170325%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170310170325%_))))
                         (_%g170308170439%_
                          (lambda (_%g170310170331%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170310170331%_))
                                (let ((_%e170312170333%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170310170331%_))))
                                  (let ((_%hd170313170336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170312170333%_)))
                                        (_%tl170314170338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170312170333%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170314170338%_))
                                        (let ((_g171801_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170314170338%_
                                                  '0))))
                                          (begin
                                            (let ((_g171802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g171801_)
                                                         (##vector-length
                                                          _g171801_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g171802_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g171802_)))
                                            (let ((_%target170315170341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171801_
                                                      0)))
                                                  (_%tl170317170343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171801_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170317170343%_))
                                                  (letrec ((_%loop170318170346%_
                                                            (lambda (_%hd170316170349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause170322170351%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170316170349%_))
                          (let ((_%e170319170354%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170316170349%_))))
                            (let ((_%lp-hd170320170357%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170319170354%_)))
                                  (_%lp-tl170321170359%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170319170354%_))))
                              (_%loop170318170346%_
                               _%lp-tl170321170359%_
                               (cons _%lp-hd170320170357%_
                                     _%clause170322170351%_))))
                          (let ((_%clause170323170362%_
                                 (reverse _%clause170322170351%_)))
                            ((lambda (_%L170365%_)
                               (let* ((_%clauses170437%_
                                       (map (lambda (_%clause170379%_)
                                              (let* ((_%g170381170392%_
                                                      (lambda (_%g170382170389%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170382170389%_))))
                                                     (_%g170380170427%_
                                                      (lambda (_%g170382170395%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170382170395%_))
                                                            (let ((_%e170385170397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170382170395%_))))
                      (let ((_%hd170386170400%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170385170397%_)))
                            (_%tl170387170402%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170385170397%_))))
                        ((lambda (_%L170405%_ _%L170406%_)
                           (let* ((_%self170418%_
                                   (list-ref _%L170406%_ _%self-index169734%_))
                                  (_%body170424%_
                                   (map (lambda (_%g170419170421%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%self170418%_
                                           _%$klass170183%_
                                           _%method-calls167762%_
                                           _%slot-refs167763%_
                                           _%g170419170421%_))
                                        _%L170405%_)))
                             (cons _%L170406%_ _%body170424%_)))
                         _%tl170387170402%_
                         _%hd170386170400%_)))
                    (_%g170381170392%_ _%g170382170395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170380170427%_
                                                 _%clause170379%_)))
                                            (let ((__tmp171803
                                                   (lambda (_%g170429170432%_
                                                            _%g170430170434%_)
                                                     (cons _%g170429170432%_
                                                           _%g170430170434%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171803
                                               '()
                                               _%L170365%_))))
                                      (__tmp171804
                                       (cons '%#case-lambda
                                             _%clauses170437%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp171804
                                  _%L169964%_)))
                             _%clause170323170362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop170318170346%_
                                                     _%target170315170341%_
                                                     '()))
                                                  (_%g170309170328%_
                                                   _%g170310170331%_)))))
                                        (_%g170309170328%_
                                         _%g170310170331%_))))
                                (_%g170309170328%_ _%g170310170331%_)))))
                    (_%g170308170439%_ _%L169964%_)))
                 (_%specializer-impl170444%_
                  (let ((__tmp171805
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L169434%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L169433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp171806
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L169966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr170307%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr170442%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171806
                                                _%stx167670%_))
                                             '()))
                                 '())
                           (cons _%L169431%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L169430%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171805 _%stx167670%_)))
                 (_%specializer-impl170446%_
                  (_%generate-specializer-impl167674%_
                   _%$klass170183%_
                   _%$method-table170185%_
                   _%methods-bind170210%_
                   _%slots-bind170234%_
                   _%specializer-impl170444%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171808
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167743%_)))
                                                          (__tmp171807
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170181%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171808
                                                       '" => "
                                                       __tmp171807))
                                                    (_%generate-specializer-def167675%_
                                                     _%L167743%_
                                                     _%specializer-id170181%_
                                                     _%specializer-impl170446%_))))
                                            _%hd169897169959%_
                                            _%hd169894169951%_
                                            _%hd169891169943%_)
                                           (_%g169873169903%_
                                            _%g169874169906%_))))
                                   (_%g169873169903%_ _%g169874169906%_))
                               (_%g169873169903%_ _%g169874169906%_))
                           (_%g169873169903%_ _%g169874169906%_))))
                   (_%g169873169903%_ _%g169874169906%_))
               (_%g169873169903%_ _%g169874169906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169873169903%_
                                                _%g169874169906%_))))
                                       (_%g169873169903%_ _%g169874169906%_))))
                               (_%g169873169903%_ _%g169874169906%_))))
                       (_%g169873169903%_ _%g169874169906%_))))
               (_%g169873169903%_ _%g169874169906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169872170449%_ _%L169432%_))
                                         _%stx167670%_))))
                             _%hd169530169653%_
                             _%kw-ref169528169674%_
                             _%hd169518169640%_
                             _%hd169509169616%_
                             _%hd169500169592%_)
                            (_%g169474169536%_ _%g169475169539%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169523169658%_
                                                 _%target169520169645%_
                                                 '()))
                                              (_%g169474169536%_
                                               _%g169475169539%_))))
                                      (_%g169474169536%_ _%g169475169539%_)))))
                            (_%g169474169536%_ _%g169475169539%_))
                        (_%g169474169536%_ _%g169475169539%_))
                    (_%g169474169536%_ _%g169475169539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169474169536%_
                                                     _%g169475169539%_))
                                                (_%g169474169536%_
                                                 _%g169475169539%_))
                                            (_%g169474169536%_
                                             _%g169475169539%_))))
                                    (_%g169474169536%_ _%g169475169539%_))))
                            (_%g169474169536%_ _%g169475169539%_))
                        (_%g169474169536%_ _%g169475169539%_))))
                (_%g169474169536%_ _%g169475169539%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169474169536%_
                                                     _%g169475169539%_))
                                                (_%g169474169536%_
                                                 _%g169475169539%_))))
                                        (_%g169474169536%_
                                         _%g169475169539%_))))
                                (_%g169474169536%_ _%g169475169539%_))
                            (_%g169474169536%_ _%g169475169539%_))))
                    (_%g169474169536%_ _%g169475169539%_))
                (_%g169474169536%_ _%g169475169539%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169474169536%_
                                                     _%g169475169539%_))))
                                            (_%g169474169536%_
                                             _%g169475169539%_))))
                                    (_%g169474169536%_ _%g169475169539%_))
                                (_%g169474169536%_ _%g169475169539%_))
                            (_%g169474169536%_ _%g169475169539%_))))
                    (_%g169474169536%_ _%g169475169539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169474169536%_
                                                     _%g169475169539%_))))
                                            (_%g169474169536%_
                                             _%g169475169539%_))
                                        (_%g169474169536%_ _%g169475169539%_))
                                    (_%g169474169536%_ _%g169475169539%_))))
                            (_%g169474169536%_ _%g169475169539%_)))))
                (_%g169473170453%_ _%L169431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd169307169425%_
                                                    _%hd169304169417%_
                                                    _%hd169301169409%_
                                                    _%hd169298169401%_
                                                    _%hd169280169353%_)
                                                   (_%g169260169313%_
                                                    _%g169261169316%_))))
                                           (_%g169260169313%_
                                            _%g169261169316%_))
                                       (_%g169260169313%_ _%g169261169316%_))
                                   (_%g169260169313%_ _%g169261169316%_))
                               (_%g169260169313%_ _%g169261169316%_))))
                       (_%g169260169313%_ _%g169261169316%_))
                   (_%g169260169313%_ _%g169261169316%_))
               (_%g169260169313%_ _%g169261169316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169260169313%_
                                                _%g169261169316%_))
                                           (_%g169260169313%_
                                            _%g169261169316%_))))
                                   (_%g169260169313%_ _%g169261169316%_))))
                           (_%g169260169313%_ _%g169261169316%_))))
                   (_%g169260169313%_ _%g169261169316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169260169313%_
                                                    _%g169261169316%_))
                                               (_%g169260169313%_
                                                _%g169261169316%_))
                                           (_%g169260169313%_
                                            _%g169261169316%_))))
                                   (_%g169260169313%_ _%g169261169316%_))))
                           (_%g169260169313%_ _%g169261169316%_))
                       (_%g169260169313%_ _%g169261169316%_))))
               (_%g169260169313%_ _%g169261169316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169260169313%_
                                                _%g169261169316%_))))
                                       (_%g169260169313%_ _%g169261169316%_))))
                               (_%g169260169313%_ _%g169261169316%_))
                           (_%g169260169313%_ _%g169261169316%_))
                       (_%g169260169313%_ _%g169261169316%_))))
               (_%g169260169313%_ _%g169261169316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169259170456%_ _%L167742%_))
                                         _%stx167670%_))))))))
                  (_%__kont170679170680%_ (lambda () _%stx167670%_)))
              (let ((_%__match170708170709%_
                     (lambda (_%e167682167710%_
                              _%hd167683167713%_
                              _%tl167684167715%_
                              _%e167685167718%_
                              _%hd167686167721%_
                              _%tl167687167723%_
                              _%e167688167726%_
                              _%hd167689167729%_
                              _%tl167690167731%_
                              _%e167691167734%_
                              _%hd167692167737%_
                              _%tl167693167739%_)
                       (let ((_%L167742%_ _%hd167692167737%_)
                             (_%L167743%_ _%hd167689167729%_))
                         (if (let ((__tmp171809
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167743%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171809))
                             (_%__kont170677170678%_ _%L167742%_ _%L167743%_)
                             (_%__kont170679170680%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170675170676%_))
                    (let ((_%e167682167710%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170675170676%_))))
                      (let ((_%tl167684167715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167682167710%_)))
                            (_%hd167683167713%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167682167710%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167684167715%_))
                            (let ((_%e167685167718%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167684167715%_))))
                              (let ((_%tl167687167723%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167685167718%_)))
                                    (_%hd167686167721%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167685167718%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167686167721%_))
                                    (let ((_%e167688167726%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167686167721%_))))
                                      (let ((_%tl167690167731%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167688167726%_)))
                                            (_%hd167689167729%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167688167726%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167690167731%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167687167723%_))
                                                (let ((_%e167691167734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167687167723%_))))
                                                  (let ((_%tl167693167739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167691167734%_)))
                                                        (_%hd167692167737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167691167734%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167693167739%_))
                                                        (_%__match170708170709%_
                                                         _%e167682167710%_
                                                         _%hd167683167713%_
                                                         _%tl167684167715%_
                                                         _%e167685167718%_
                                                         _%hd167686167721%_
                                                         _%tl167687167723%_
                                                         _%e167688167726%_
                                                         _%hd167689167729%_
                                                         _%tl167690167731%_
                                                         _%e167691167734%_
                                                         _%hd167692167737%_
                                                         _%tl167693167739%_)
                                                        (_%__kont170679170680%_))))
                                                (_%__kont170679170680%_))
                                            (_%__kont170679170680%_))))
                                    (_%__kont170679170680%_))))
                            (_%__kont170679170680%_))))
                    (_%__kont170679170680%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166630%_ _%stx166631%_)
        (let* ((_%__stx170711170712%_ _%stx166631%_)
               (_%g166639166861%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170711170712%_)))))
          (let ((_%__kont170713170714%_
                 (lambda (_%L167618%_ _%L167619%_ _%L167620%_ _%L167621%_)
                   (let ((__tmp171811
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166630%_ 'methods)))
                         (__tmp171810
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167619%_))))
                     (declare (not safe))
                     (hash-put! __tmp171811 __tmp171810 '#t))
                   (for-each
                    (lambda (_%g167654167656%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166630%_ _%g167654167656%_)))
                    (let ((__tmp171812
                           (lambda (_%g167658167661%_ _%g167659167663%_)
                             (cons _%g167658167661%_ _%g167659167663%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171812 '() _%L167618%_)))))
                (_%__kont170717170718%_
                 (lambda (_%L167453%_
                          _%L167454%_
                          _%L167455%_
                          _%L167456%_
                          _%L167457%_)
                   (let ((__tmp171814
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166630%_ 'methods)))
                         (__tmp171813
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167454%_))))
                     (declare (not safe))
                     (hash-put! __tmp171814 __tmp171813 '#t))
                   (for-each
                    (lambda (_%g167497167499%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166630%_ _%g167497167499%_)))
                    (let ((__tmp171815
                           (lambda (_%g167501167504%_ _%g167502167506%_)
                             (cons _%g167501167504%_ _%g167502167506%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171815 '() _%L167453%_)))))
                (_%__kont170721170722%_
                 (lambda (_%L167286%_ _%L167287%_ _%L167288%_)
                   (let ((__tmp171817
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166630%_ 'slots)))
                         (__tmp171816
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167286%_))))
                     (declare (not safe))
                     (hash-put! __tmp171817 __tmp171816 '#t))))
                (_%__kont170723170724%_
                 (lambda (_%L167163%_ _%L167164%_ _%L167165%_ _%L167166%_)
                   (let ((__tmp171819
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166630%_ 'slots)))
                         (__tmp171818
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167164%_))))
                     (declare (not safe))
                     (hash-put! __tmp171819 __tmp171818 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166630%_ _%L167163%_))))
                (_%__kont170725170726%_
                 (lambda (_%L167037%_ _%L167038%_)
                   (let* ((_%accessor167060%_
                           (let ((__tmp171820
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167038%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171820)))
                          (_%klass167062%_
                           (let ((__tmp171821
                                  (##structure-ref
                                   _%accessor167060%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166631%_
                              __tmp171821)))
                          (_%slot167064%_
                           (##structure-ref
                            _%accessor167060%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor167060%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167062%_
                                     _%slot167064%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167062%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171823
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166630%_ 'slots)))
                               (__tmp171822
                                (##structure-ref
                                 _%accessor167060%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171823 __tmp171822 '#t))))))
                (_%__kont170727170728%_
                 (lambda (_%L166937%_ _%L166938%_ _%L166939%_)
                   (let* ((_%mutator166966%_
                           (let ((__tmp171824
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166939%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171824)))
                          (_%klass166968%_
                           (let ((__tmp171825
                                  (##structure-ref
                                   _%mutator166966%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166631%_
                              __tmp171825)))
                          (_%slot166970%_
                           (##structure-ref
                            _%mutator166966%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator166966%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166968%_
                                     _%slot166970%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166968%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171826
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166630%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171826 _%slot166970%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166630%_ _%L166937%_)))))
                (_%__kont170729170730%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166630%_ _%stx166631%_)))))
            (let* ((_%__match171210171211%_
                    (lambda (_%e166833166873%_
                             _%hd166834166876%_
                             _%tl166835166878%_
                             _%e166836166881%_
                             _%hd166837166884%_
                             _%tl166838166886%_
                             _%e166839166889%_
                             _%hd166840166892%_
                             _%tl166841166894%_
                             _%e166842166897%_
                             _%hd166843166900%_
                             _%tl166844166902%_
                             _%e166845166905%_
                             _%hd166846166908%_
                             _%tl166847166910%_
                             _%e166848166913%_
                             _%hd166849166916%_
                             _%tl166850166918%_
                             _%e166851166921%_
                             _%hd166852166924%_
                             _%tl166853166926%_
                             _%e166854166929%_
                             _%hd166855166932%_
                             _%tl166856166934%_)
                      (let ((_%L166937%_ _%hd166855166932%_)
                            (_%L166938%_ _%hd166852166924%_)
                            (_%L166939%_ _%hd166843166900%_))
                        (if (and (let ((__tmp171827
                                        (let ((__tmp171828
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166939%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171828))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171827
                                    'gxc#!mutator::t))
                                 (let ((__tmp171829
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166630%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166938%_
                                    __tmp171829)))
                            (_%__kont170727170728%_
                             _%L166937%_
                             _%L166938%_
                             _%L166939%_)
                            (_%__kont170729170730%_)))))
                   (_%__match171208171209%_
                    (lambda (_%e166833166873%_
                             _%hd166834166876%_
                             _%tl166835166878%_
                             _%e166836166881%_
                             _%hd166837166884%_
                             _%tl166838166886%_
                             _%e166839166889%_
                             _%hd166840166892%_
                             _%tl166841166894%_
                             _%e166842166897%_
                             _%hd166843166900%_
                             _%tl166844166902%_
                             _%e166845166905%_
                             _%hd166846166908%_
                             _%tl166847166910%_
                             _%e166848166913%_
                             _%hd166849166916%_
                             _%tl166850166918%_
                             _%e166851166921%_
                             _%hd166852166924%_
                             _%tl166853166926%_
                             _%e166854166929%_
                             _%hd166855166932%_
                             _%tl166856166934%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166856166934%_))
                          (_%__match171210171211%_
                           _%e166833166873%_
                           _%hd166834166876%_
                           _%tl166835166878%_
                           _%e166836166881%_
                           _%hd166837166884%_
                           _%tl166838166886%_
                           _%e166839166889%_
                           _%hd166840166892%_
                           _%tl166841166894%_
                           _%e166842166897%_
                           _%hd166843166900%_
                           _%tl166844166902%_
                           _%e166845166905%_
                           _%hd166846166908%_
                           _%tl166847166910%_
                           _%e166848166913%_
                           _%hd166849166916%_
                           _%tl166850166918%_
                           _%e166851166921%_
                           _%hd166852166924%_
                           _%tl166853166926%_
                           _%e166854166929%_
                           _%hd166855166932%_
                           _%tl166856166934%_)
                          (_%__kont170729170730%_))))
                   (_%__match171202171203%_
                    (lambda (_%e166833166873%_
                             _%hd166834166876%_
                             _%tl166835166878%_
                             _%e166836166881%_
                             _%hd166837166884%_
                             _%tl166838166886%_
                             _%e166839166889%_
                             _%hd166840166892%_
                             _%tl166841166894%_
                             _%e166842166897%_
                             _%hd166843166900%_
                             _%tl166844166902%_
                             _%e166845166905%_
                             _%hd166846166908%_
                             _%tl166847166910%_
                             _%e166848166913%_
                             _%hd166849166916%_
                             _%tl166850166918%_
                             _%e166851166921%_
                             _%hd166852166924%_
                             _%tl166853166926%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166847166910%_))
                          (let ((_%e166854166929%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166847166910%_))))
                            (let ((_%tl166856166934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166854166929%_)))
                                  (_%hd166855166932%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166854166929%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166856166934%_))
                                  (_%__match171210171211%_
                                   _%e166833166873%_
                                   _%hd166834166876%_
                                   _%tl166835166878%_
                                   _%e166836166881%_
                                   _%hd166837166884%_
                                   _%tl166838166886%_
                                   _%e166839166889%_
                                   _%hd166840166892%_
                                   _%tl166841166894%_
                                   _%e166842166897%_
                                   _%hd166843166900%_
                                   _%tl166844166902%_
                                   _%e166845166905%_
                                   _%hd166846166908%_
                                   _%tl166847166910%_
                                   _%e166848166913%_
                                   _%hd166849166916%_
                                   _%tl166850166918%_
                                   _%e166851166921%_
                                   _%hd166852166924%_
                                   _%tl166853166926%_
                                   _%e166854166929%_
                                   _%hd166855166932%_
                                   _%tl166856166934%_)
                                  (_%__kont170729170730%_))))
                          (_%__kont170729170730%_))))
                   (_%__match171148171149%_
                    (lambda (_%e166809166981%_
                             _%hd166810166984%_
                             _%tl166811166986%_
                             _%e166812166989%_
                             _%hd166813166992%_
                             _%tl166814166994%_
                             _%e166815166997%_
                             _%hd166816167000%_
                             _%tl166817167002%_
                             _%e166818167005%_
                             _%hd166819167008%_
                             _%tl166820167010%_
                             _%e166821167013%_
                             _%hd166822167016%_
                             _%tl166823167018%_
                             _%e166824167021%_
                             _%hd166825167024%_
                             _%tl166826167026%_
                             _%e166827167029%_
                             _%hd166828167032%_
                             _%tl166829167034%_)
                      (let ((_%L167037%_ _%hd166828167032%_)
                            (_%L167038%_ _%hd166819167008%_))
                        (if (and (let ((__tmp171830
                                        (let ((__tmp171831
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167038%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171831))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171830
                                    'gxc#!accessor::t))
                                 (let ((__tmp171832
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166630%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167037%_
                                    __tmp171832)))
                            (_%__kont170725170726%_ _%L167037%_ _%L167038%_)
                            (_%__kont170729170730%_)))))
                   (_%__match171146171147%_
                    (lambda (_%e166809166981%_
                             _%hd166810166984%_
                             _%tl166811166986%_
                             _%e166812166989%_
                             _%hd166813166992%_
                             _%tl166814166994%_
                             _%e166815166997%_
                             _%hd166816167000%_
                             _%tl166817167002%_
                             _%e166818167005%_
                             _%hd166819167008%_
                             _%tl166820167010%_
                             _%e166821167013%_
                             _%hd166822167016%_
                             _%tl166823167018%_
                             _%e166824167021%_
                             _%hd166825167024%_
                             _%tl166826167026%_
                             _%e166827167029%_
                             _%hd166828167032%_
                             _%tl166829167034%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166823167018%_))
                          (_%__match171148171149%_
                           _%e166809166981%_
                           _%hd166810166984%_
                           _%tl166811166986%_
                           _%e166812166989%_
                           _%hd166813166992%_
                           _%tl166814166994%_
                           _%e166815166997%_
                           _%hd166816167000%_
                           _%tl166817167002%_
                           _%e166818167005%_
                           _%hd166819167008%_
                           _%tl166820167010%_
                           _%e166821167013%_
                           _%hd166822167016%_
                           _%tl166823167018%_
                           _%e166824167021%_
                           _%hd166825167024%_
                           _%tl166826167026%_
                           _%e166827167029%_
                           _%hd166828167032%_
                           _%tl166829167034%_)
                          (_%__match171202171203%_
                           _%e166809166981%_
                           _%hd166810166984%_
                           _%tl166811166986%_
                           _%e166812166989%_
                           _%hd166813166992%_
                           _%tl166814166994%_
                           _%e166815166997%_
                           _%hd166816167000%_
                           _%tl166817167002%_
                           _%e166818167005%_
                           _%hd166819167008%_
                           _%tl166820167010%_
                           _%e166821167013%_
                           _%hd166822167016%_
                           _%tl166823167018%_
                           _%e166824167021%_
                           _%hd166825167024%_
                           _%tl166826167026%_
                           _%e166827167029%_
                           _%hd166828167032%_
                           _%tl166829167034%_))))
                   (_%__match171092171093%_
                    (lambda (_%e166774167075%_
                             _%hd166775167078%_
                             _%tl166776167080%_
                             _%e166777167083%_
                             _%hd166778167086%_
                             _%tl166779167088%_
                             _%e166780167091%_
                             _%hd166781167094%_
                             _%tl166782167096%_
                             _%e166783167099%_
                             _%hd166784167102%_
                             _%tl166785167104%_
                             _%e166786167107%_
                             _%hd166787167110%_
                             _%tl166788167112%_
                             _%e166789167115%_
                             _%hd166790167118%_
                             _%tl166791167120%_
                             _%e166792167123%_
                             _%hd166793167126%_
                             _%tl166794167128%_
                             _%e166795167131%_
                             _%hd166796167134%_
                             _%tl166797167136%_
                             _%e166798167139%_
                             _%hd166799167142%_
                             _%tl166800167144%_
                             _%e166801167147%_
                             _%hd166802167150%_
                             _%tl166803167152%_
                             _%e166804167155%_
                             _%hd166805167158%_
                             _%tl166806167160%_)
                      (let ((_%L167163%_ _%hd166805167158%_)
                            (_%L167164%_ _%hd166802167150%_)
                            (_%L167165%_ _%hd166793167126%_)
                            (_%L167166%_ _%hd166784167102%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167166%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167166%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171833
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166630%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167165%_
                                    __tmp171833)))
                            (_%__kont170723170724%_
                             _%L167163%_
                             _%L167164%_
                             _%L167165%_
                             _%L167166%_)
                            (_%__kont170729170730%_)))))
                   (_%__match171084171085%_
                    (lambda (_%e166774167075%_
                             _%hd166775167078%_
                             _%tl166776167080%_
                             _%e166777167083%_
                             _%hd166778167086%_
                             _%tl166779167088%_
                             _%e166780167091%_
                             _%hd166781167094%_
                             _%tl166782167096%_
                             _%e166783167099%_
                             _%hd166784167102%_
                             _%tl166785167104%_
                             _%e166786167107%_
                             _%hd166787167110%_
                             _%tl166788167112%_
                             _%e166789167115%_
                             _%hd166790167118%_
                             _%tl166791167120%_
                             _%e166792167123%_
                             _%hd166793167126%_
                             _%tl166794167128%_
                             _%e166795167131%_
                             _%hd166796167134%_
                             _%tl166797167136%_
                             _%e166798167139%_
                             _%hd166799167142%_
                             _%tl166800167144%_
                             _%e166801167147%_
                             _%hd166802167150%_
                             _%tl166803167152%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166797167136%_))
                          (let ((_%e166804167155%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166797167136%_))))
                            (let ((_%tl166806167160%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166804167155%_)))
                                  (_%hd166805167158%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166804167155%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166806167160%_))
                                  (_%__match171092171093%_
                                   _%e166774167075%_
                                   _%hd166775167078%_
                                   _%tl166776167080%_
                                   _%e166777167083%_
                                   _%hd166778167086%_
                                   _%tl166779167088%_
                                   _%e166780167091%_
                                   _%hd166781167094%_
                                   _%tl166782167096%_
                                   _%e166783167099%_
                                   _%hd166784167102%_
                                   _%tl166785167104%_
                                   _%e166786167107%_
                                   _%hd166787167110%_
                                   _%tl166788167112%_
                                   _%e166789167115%_
                                   _%hd166790167118%_
                                   _%tl166791167120%_
                                   _%e166792167123%_
                                   _%hd166793167126%_
                                   _%tl166794167128%_
                                   _%e166795167131%_
                                   _%hd166796167134%_
                                   _%tl166797167136%_
                                   _%e166798167139%_
                                   _%hd166799167142%_
                                   _%tl166800167144%_
                                   _%e166801167147%_
                                   _%hd166802167150%_
                                   _%tl166803167152%_
                                   _%e166804167155%_
                                   _%hd166805167158%_
                                   _%tl166806167160%_)
                                  (_%__kont170729170730%_))))
                          (_%__match171208171209%_
                           _%e166774167075%_
                           _%hd166775167078%_
                           _%tl166776167080%_
                           _%e166777167083%_
                           _%hd166778167086%_
                           _%tl166779167088%_
                           _%e166780167091%_
                           _%hd166781167094%_
                           _%tl166782167096%_
                           _%e166783167099%_
                           _%hd166784167102%_
                           _%tl166785167104%_
                           _%e166786167107%_
                           _%hd166787167110%_
                           _%tl166788167112%_
                           _%e166789167115%_
                           _%hd166790167118%_
                           _%tl166791167120%_
                           _%e166792167123%_
                           _%hd166793167126%_
                           _%tl166794167128%_
                           _%e166795167131%_
                           _%hd166796167134%_
                           _%tl166797167136%_))))
                   (_%__match171006171007%_
                    (lambda (_%e166740167206%_
                             _%hd166741167209%_
                             _%tl166742167211%_
                             _%e166743167214%_
                             _%hd166744167217%_
                             _%tl166745167219%_
                             _%e166746167222%_
                             _%hd166747167225%_
                             _%tl166748167227%_
                             _%e166749167230%_
                             _%hd166750167233%_
                             _%tl166751167235%_
                             _%e166752167238%_
                             _%hd166753167241%_
                             _%tl166754167243%_
                             _%e166755167246%_
                             _%hd166756167249%_
                             _%tl166757167251%_
                             _%e166758167254%_
                             _%hd166759167257%_
                             _%tl166760167259%_
                             _%e166761167262%_
                             _%hd166762167265%_
                             _%tl166763167267%_
                             _%e166764167270%_
                             _%hd166765167273%_
                             _%tl166766167275%_
                             _%e166767167278%_
                             _%hd166768167281%_
                             _%tl166769167283%_)
                      (let ((_%L167286%_ _%hd166768167281%_)
                            (_%L167287%_ _%hd166759167257%_)
                            (_%L167288%_ _%hd166750167233%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167288%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167288%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171834
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166630%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167287%_
                                    __tmp171834)))
                            (_%__kont170721170722%_
                             _%L167286%_
                             _%L167287%_
                             _%L167288%_)
                            (_%__match171210171211%_
                             _%e166740167206%_
                             _%hd166741167209%_
                             _%tl166742167211%_
                             _%e166743167214%_
                             _%hd166744167217%_
                             _%tl166745167219%_
                             _%e166746167222%_
                             _%hd166747167225%_
                             _%tl166748167227%_
                             _%e166749167230%_
                             _%hd166750167233%_
                             _%tl166751167235%_
                             _%e166752167238%_
                             _%hd166753167241%_
                             _%tl166754167243%_
                             _%e166755167246%_
                             _%hd166756167249%_
                             _%tl166757167251%_
                             _%e166758167254%_
                             _%hd166759167257%_
                             _%tl166760167259%_
                             _%e166761167262%_
                             _%hd166762167265%_
                             _%tl166763167267%_)))))
                   (_%__match171004171005%_
                    (lambda (_%e166740167206%_
                             _%hd166741167209%_
                             _%tl166742167211%_
                             _%e166743167214%_
                             _%hd166744167217%_
                             _%tl166745167219%_
                             _%e166746167222%_
                             _%hd166747167225%_
                             _%tl166748167227%_
                             _%e166749167230%_
                             _%hd166750167233%_
                             _%tl166751167235%_
                             _%e166752167238%_
                             _%hd166753167241%_
                             _%tl166754167243%_
                             _%e166755167246%_
                             _%hd166756167249%_
                             _%tl166757167251%_
                             _%e166758167254%_
                             _%hd166759167257%_
                             _%tl166760167259%_
                             _%e166761167262%_
                             _%hd166762167265%_
                             _%tl166763167267%_
                             _%e166764167270%_
                             _%hd166765167273%_
                             _%tl166766167275%_
                             _%e166767167278%_
                             _%hd166768167281%_
                             _%tl166769167283%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166763167267%_))
                          (_%__match171006171007%_
                           _%e166740167206%_
                           _%hd166741167209%_
                           _%tl166742167211%_
                           _%e166743167214%_
                           _%hd166744167217%_
                           _%tl166745167219%_
                           _%e166746167222%_
                           _%hd166747167225%_
                           _%tl166748167227%_
                           _%e166749167230%_
                           _%hd166750167233%_
                           _%tl166751167235%_
                           _%e166752167238%_
                           _%hd166753167241%_
                           _%tl166754167243%_
                           _%e166755167246%_
                           _%hd166756167249%_
                           _%tl166757167251%_
                           _%e166758167254%_
                           _%hd166759167257%_
                           _%tl166760167259%_
                           _%e166761167262%_
                           _%hd166762167265%_
                           _%tl166763167267%_
                           _%e166764167270%_
                           _%hd166765167273%_
                           _%tl166766167275%_
                           _%e166767167278%_
                           _%hd166768167281%_
                           _%tl166769167283%_)
                          (_%__match171084171085%_
                           _%e166740167206%_
                           _%hd166741167209%_
                           _%tl166742167211%_
                           _%e166743167214%_
                           _%hd166744167217%_
                           _%tl166745167219%_
                           _%e166746167222%_
                           _%hd166747167225%_
                           _%tl166748167227%_
                           _%e166749167230%_
                           _%hd166750167233%_
                           _%tl166751167235%_
                           _%e166752167238%_
                           _%hd166753167241%_
                           _%tl166754167243%_
                           _%e166755167246%_
                           _%hd166756167249%_
                           _%tl166757167251%_
                           _%e166758167254%_
                           _%hd166759167257%_
                           _%tl166760167259%_
                           _%e166761167262%_
                           _%hd166762167265%_
                           _%tl166763167267%_
                           _%e166764167270%_
                           _%hd166765167273%_
                           _%tl166766167275%_
                           _%e166767167278%_
                           _%hd166768167281%_
                           _%tl166769167283%_))))
                   (_%__match170994170995%_
                    (lambda (_%e166740167206%_
                             _%hd166741167209%_
                             _%tl166742167211%_
                             _%e166743167214%_
                             _%hd166744167217%_
                             _%tl166745167219%_
                             _%e166746167222%_
                             _%hd166747167225%_
                             _%tl166748167227%_
                             _%e166749167230%_
                             _%hd166750167233%_
                             _%tl166751167235%_
                             _%e166752167238%_
                             _%hd166753167241%_
                             _%tl166754167243%_
                             _%e166755167246%_
                             _%hd166756167249%_
                             _%tl166757167251%_
                             _%e166758167254%_
                             _%hd166759167257%_
                             _%tl166760167259%_
                             _%e166761167262%_
                             _%hd166762167265%_
                             _%tl166763167267%_
                             _%e166764167270%_
                             _%hd166765167273%_
                             _%tl166766167275%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166765167273%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166766167275%_))
                              (let ((_%e166767167278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166766167275%_))))
                                (let ((_%tl166769167283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166767167278%_)))
                                      (_%hd166768167281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166767167278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166769167283%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166763167267%_))
                                          (_%__match171006171007%_
                                           _%e166740167206%_
                                           _%hd166741167209%_
                                           _%tl166742167211%_
                                           _%e166743167214%_
                                           _%hd166744167217%_
                                           _%tl166745167219%_
                                           _%e166746167222%_
                                           _%hd166747167225%_
                                           _%tl166748167227%_
                                           _%e166749167230%_
                                           _%hd166750167233%_
                                           _%tl166751167235%_
                                           _%e166752167238%_
                                           _%hd166753167241%_
                                           _%tl166754167243%_
                                           _%e166755167246%_
                                           _%hd166756167249%_
                                           _%tl166757167251%_
                                           _%e166758167254%_
                                           _%hd166759167257%_
                                           _%tl166760167259%_
                                           _%e166761167262%_
                                           _%hd166762167265%_
                                           _%tl166763167267%_
                                           _%e166764167270%_
                                           _%hd166765167273%_
                                           _%tl166766167275%_
                                           _%e166767167278%_
                                           _%hd166768167281%_
                                           _%tl166769167283%_)
                                          (_%__match171084171085%_
                                           _%e166740167206%_
                                           _%hd166741167209%_
                                           _%tl166742167211%_
                                           _%e166743167214%_
                                           _%hd166744167217%_
                                           _%tl166745167219%_
                                           _%e166746167222%_
                                           _%hd166747167225%_
                                           _%tl166748167227%_
                                           _%e166749167230%_
                                           _%hd166750167233%_
                                           _%tl166751167235%_
                                           _%e166752167238%_
                                           _%hd166753167241%_
                                           _%tl166754167243%_
                                           _%e166755167246%_
                                           _%hd166756167249%_
                                           _%tl166757167251%_
                                           _%e166758167254%_
                                           _%hd166759167257%_
                                           _%tl166760167259%_
                                           _%e166761167262%_
                                           _%hd166762167265%_
                                           _%tl166763167267%_
                                           _%e166764167270%_
                                           _%hd166765167273%_
                                           _%tl166766167275%_
                                           _%e166767167278%_
                                           _%hd166768167281%_
                                           _%tl166769167283%_))
                                      (_%__match171208171209%_
                                       _%e166740167206%_
                                       _%hd166741167209%_
                                       _%tl166742167211%_
                                       _%e166743167214%_
                                       _%hd166744167217%_
                                       _%tl166745167219%_
                                       _%e166746167222%_
                                       _%hd166747167225%_
                                       _%tl166748167227%_
                                       _%e166749167230%_
                                       _%hd166750167233%_
                                       _%tl166751167235%_
                                       _%e166752167238%_
                                       _%hd166753167241%_
                                       _%tl166754167243%_
                                       _%e166755167246%_
                                       _%hd166756167249%_
                                       _%tl166757167251%_
                                       _%e166758167254%_
                                       _%hd166759167257%_
                                       _%tl166760167259%_
                                       _%e166761167262%_
                                       _%hd166762167265%_
                                       _%tl166763167267%_))))
                              (_%__match171208171209%_
                               _%e166740167206%_
                               _%hd166741167209%_
                               _%tl166742167211%_
                               _%e166743167214%_
                               _%hd166744167217%_
                               _%tl166745167219%_
                               _%e166746167222%_
                               _%hd166747167225%_
                               _%tl166748167227%_
                               _%e166749167230%_
                               _%hd166750167233%_
                               _%tl166751167235%_
                               _%e166752167238%_
                               _%hd166753167241%_
                               _%tl166754167243%_
                               _%e166755167246%_
                               _%hd166756167249%_
                               _%tl166757167251%_
                               _%e166758167254%_
                               _%hd166759167257%_
                               _%tl166760167259%_
                               _%e166761167262%_
                               _%hd166762167265%_
                               _%tl166763167267%_))
                          (_%__match171208171209%_
                           _%e166740167206%_
                           _%hd166741167209%_
                           _%tl166742167211%_
                           _%e166743167214%_
                           _%hd166744167217%_
                           _%tl166745167219%_
                           _%e166746167222%_
                           _%hd166747167225%_
                           _%tl166748167227%_
                           _%e166749167230%_
                           _%hd166750167233%_
                           _%tl166751167235%_
                           _%e166752167238%_
                           _%hd166753167241%_
                           _%tl166754167243%_
                           _%e166755167246%_
                           _%hd166756167249%_
                           _%tl166757167251%_
                           _%e166758167254%_
                           _%hd166759167257%_
                           _%tl166760167259%_
                           _%e166761167262%_
                           _%hd166762167265%_
                           _%tl166763167267%_))))
                   (_%__match170926170927%_
                    (lambda (_%e166689167325%_
                             _%hd166690167328%_
                             _%tl166691167330%_
                             _%e166692167333%_
                             _%hd166693167336%_
                             _%tl166694167338%_
                             _%e166695167341%_
                             _%hd166696167344%_
                             _%tl166697167346%_
                             _%e166698167349%_
                             _%hd166699167352%_
                             _%tl166700167354%_
                             _%e166701167357%_
                             _%hd166702167360%_
                             _%tl166703167362%_
                             _%e166704167365%_
                             _%hd166705167368%_
                             _%tl166706167370%_
                             _%e166707167373%_
                             _%hd166708167376%_
                             _%tl166709167378%_
                             _%e166710167381%_
                             _%hd166711167384%_
                             _%tl166712167386%_
                             _%e166713167389%_
                             _%hd166714167392%_
                             _%tl166715167394%_
                             _%e166716167397%_
                             _%hd166717167400%_
                             _%tl166718167402%_
                             _%e166719167405%_
                             _%hd166720167408%_
                             _%tl166721167410%_
                             _%e166722167413%_
                             _%hd166723167416%_
                             _%tl166724167418%_
                             _%e166725167421%_
                             _%hd166726167424%_
                             _%tl166727167426%_
                             _%__splice170719170720%_
                             _%target166728167429%_
                             _%tl166730167431%_)
                      (letrec ((_%loop166731167434%_
                                (lambda (_%hd166729167437%_
                                         _%args166735167439%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166729167437%_))
                                      (let ((_%e166732167442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166729167437%_))))
                                        (let ((_%lp-tl166734167447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166732167442%_)))
                                              (_%lp-hd166733167445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166732167442%_))))
                                          (_%loop166731167434%_
                                           _%lp-tl166734167447%_
                                           (cons _%lp-hd166733167445%_
                                                 _%args166735167439%_))))
                                      (let ((_%args166736167450%_
                                             (reverse _%args166735167439%_)))
                                        (let ((_%L167453%_
                                               _%args166736167450%_)
                                              (_%L167454%_ _%hd166726167424%_)
                                              (_%L167455%_ _%hd166717167400%_)
                                              (_%L167456%_ _%hd166708167376%_)
                                              (_%L167457%_ _%hd166699167352%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167457%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167456%_
                                                      'call-method))
                                                   (let ((__tmp171835
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166630%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167455%_
                                                      __tmp171835)))
                                              (_%__kont170717170718%_
                                               _%L167453%_
                                               _%L167454%_
                                               _%L167455%_
                                               _%L167456%_
                                               _%L167457%_)
                                              (_%__kont170729170730%_))))))))
                        (_%loop166731167434%_ _%target166728167429%_ '()))))
                   (_%__match170884170885%_
                    (lambda (_%e166689167325%_
                             _%hd166690167328%_
                             _%tl166691167330%_
                             _%e166692167333%_
                             _%hd166693167336%_
                             _%tl166694167338%_
                             _%e166695167341%_
                             _%hd166696167344%_
                             _%tl166697167346%_
                             _%e166698167349%_
                             _%hd166699167352%_
                             _%tl166700167354%_
                             _%e166701167357%_
                             _%hd166702167360%_
                             _%tl166703167362%_
                             _%e166704167365%_
                             _%hd166705167368%_
                             _%tl166706167370%_
                             _%e166707167373%_
                             _%hd166708167376%_
                             _%tl166709167378%_
                             _%e166710167381%_
                             _%hd166711167384%_
                             _%tl166712167386%_
                             _%e166713167389%_
                             _%hd166714167392%_
                             _%tl166715167394%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166714167392%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166715167394%_))
                              (let ((_%e166716167397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166715167394%_))))
                                (let ((_%tl166718167402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166716167397%_)))
                                      (_%hd166717167400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166716167397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166718167402%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166712167386%_))
                                          (let ((_%e166719167405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166712167386%_))))
                                            (let ((_%tl166721167410%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166719167405%_)))
                                                  (_%hd166720167408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166719167405%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166720167408%_))
                                                  (let ((_%e166722167413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166720167408%_))))
                                                    (let ((_%tl166724167418%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166722167413%_)))
                                                          (_%hd166723167416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166722167413%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166723167416%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166723167416%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166724167418%_))
                          (let ((_%e166725167421%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166724167418%_))))
                            (let ((_%tl166727167426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166725167421%_)))
                                  (_%hd166726167424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166725167421%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166727167426%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166721167410%_))
                                      (let ((_%__splice170719170720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166721167410%_
                                                '0))))
                                        (let ((_%tl166730167431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170719170720%_
                                                  '1)))
                                              (_%target166728167429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170719170720%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166730167431%_))
                                              (_%__match170926170927%_
                                               _%e166689167325%_
                                               _%hd166690167328%_
                                               _%tl166691167330%_
                                               _%e166692167333%_
                                               _%hd166693167336%_
                                               _%tl166694167338%_
                                               _%e166695167341%_
                                               _%hd166696167344%_
                                               _%tl166697167346%_
                                               _%e166698167349%_
                                               _%hd166699167352%_
                                               _%tl166700167354%_
                                               _%e166701167357%_
                                               _%hd166702167360%_
                                               _%tl166703167362%_
                                               _%e166704167365%_
                                               _%hd166705167368%_
                                               _%tl166706167370%_
                                               _%e166707167373%_
                                               _%hd166708167376%_
                                               _%tl166709167378%_
                                               _%e166710167381%_
                                               _%hd166711167384%_
                                               _%tl166712167386%_
                                               _%e166713167389%_
                                               _%hd166714167392%_
                                               _%tl166715167394%_
                                               _%e166716167397%_
                                               _%hd166717167400%_
                                               _%tl166718167402%_
                                               _%e166719167405%_
                                               _%hd166720167408%_
                                               _%tl166721167410%_
                                               _%e166722167413%_
                                               _%hd166723167416%_
                                               _%tl166724167418%_
                                               _%e166725167421%_
                                               _%hd166726167424%_
                                               _%tl166727167426%_
                                               _%__splice170719170720%_
                                               _%target166728167429%_
                                               _%tl166730167431%_)
                                              (_%__kont170729170730%_))))
                                      (_%__kont170729170730%_))
                                  (_%__kont170729170730%_))))
                          (_%__kont170729170730%_))
                      (_%__kont170729170730%_))
                  (_%__kont170729170730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170729170730%_))))
                                          (_%__match171208171209%_
                                           _%e166689167325%_
                                           _%hd166690167328%_
                                           _%tl166691167330%_
                                           _%e166692167333%_
                                           _%hd166693167336%_
                                           _%tl166694167338%_
                                           _%e166695167341%_
                                           _%hd166696167344%_
                                           _%tl166697167346%_
                                           _%e166698167349%_
                                           _%hd166699167352%_
                                           _%tl166700167354%_
                                           _%e166701167357%_
                                           _%hd166702167360%_
                                           _%tl166703167362%_
                                           _%e166704167365%_
                                           _%hd166705167368%_
                                           _%tl166706167370%_
                                           _%e166707167373%_
                                           _%hd166708167376%_
                                           _%tl166709167378%_
                                           _%e166710167381%_
                                           _%hd166711167384%_
                                           _%tl166712167386%_))
                                      (_%__match171208171209%_
                                       _%e166689167325%_
                                       _%hd166690167328%_
                                       _%tl166691167330%_
                                       _%e166692167333%_
                                       _%hd166693167336%_
                                       _%tl166694167338%_
                                       _%e166695167341%_
                                       _%hd166696167344%_
                                       _%tl166697167346%_
                                       _%e166698167349%_
                                       _%hd166699167352%_
                                       _%tl166700167354%_
                                       _%e166701167357%_
                                       _%hd166702167360%_
                                       _%tl166703167362%_
                                       _%e166704167365%_
                                       _%hd166705167368%_
                                       _%tl166706167370%_
                                       _%e166707167373%_
                                       _%hd166708167376%_
                                       _%tl166709167378%_
                                       _%e166710167381%_
                                       _%hd166711167384%_
                                       _%tl166712167386%_))))
                              (_%__match171208171209%_
                               _%e166689167325%_
                               _%hd166690167328%_
                               _%tl166691167330%_
                               _%e166692167333%_
                               _%hd166693167336%_
                               _%tl166694167338%_
                               _%e166695167341%_
                               _%hd166696167344%_
                               _%tl166697167346%_
                               _%e166698167349%_
                               _%hd166699167352%_
                               _%tl166700167354%_
                               _%e166701167357%_
                               _%hd166702167360%_
                               _%tl166703167362%_
                               _%e166704167365%_
                               _%hd166705167368%_
                               _%tl166706167370%_
                               _%e166707167373%_
                               _%hd166708167376%_
                               _%tl166709167378%_
                               _%e166710167381%_
                               _%hd166711167384%_
                               _%tl166712167386%_))
                          (_%__match170994170995%_
                           _%e166689167325%_
                           _%hd166690167328%_
                           _%tl166691167330%_
                           _%e166692167333%_
                           _%hd166693167336%_
                           _%tl166694167338%_
                           _%e166695167341%_
                           _%hd166696167344%_
                           _%tl166697167346%_
                           _%e166698167349%_
                           _%hd166699167352%_
                           _%tl166700167354%_
                           _%e166701167357%_
                           _%hd166702167360%_
                           _%tl166703167362%_
                           _%e166704167365%_
                           _%hd166705167368%_
                           _%tl166706167370%_
                           _%e166707167373%_
                           _%hd166708167376%_
                           _%tl166709167378%_
                           _%e166710167381%_
                           _%hd166711167384%_
                           _%tl166712167386%_
                           _%e166713167389%_
                           _%hd166714167392%_
                           _%tl166715167394%_))))
                   (_%__match170816170817%_
                    (lambda (_%e166645167514%_
                             _%hd166646167517%_
                             _%tl166647167519%_
                             _%e166648167522%_
                             _%hd166649167525%_
                             _%tl166650167527%_
                             _%e166651167530%_
                             _%hd166652167533%_
                             _%tl166653167535%_
                             _%e166654167538%_
                             _%hd166655167541%_
                             _%tl166656167543%_
                             _%e166657167546%_
                             _%hd166658167549%_
                             _%tl166659167551%_
                             _%e166660167554%_
                             _%hd166661167557%_
                             _%tl166662167559%_
                             _%e166663167562%_
                             _%hd166664167565%_
                             _%tl166665167567%_
                             _%e166666167570%_
                             _%hd166667167573%_
                             _%tl166668167575%_
                             _%e166669167578%_
                             _%hd166670167581%_
                             _%tl166671167583%_
                             _%e166672167586%_
                             _%hd166673167589%_
                             _%tl166674167591%_
                             _%__splice170715170716%_
                             _%target166675167594%_
                             _%tl166677167596%_)
                      (letrec ((_%loop166678167599%_
                                (lambda (_%hd166676167602%_
                                         _%args166682167604%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166676167602%_))
                                      (let ((_%e166679167607%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166676167602%_))))
                                        (let ((_%lp-tl166681167612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166679167607%_)))
                                              (_%lp-hd166680167610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166679167607%_))))
                                          (_%loop166678167599%_
                                           _%lp-tl166681167612%_
                                           (cons _%lp-hd166680167610%_
                                                 _%args166682167604%_))))
                                      (let ((_%args166683167615%_
                                             (reverse _%args166682167604%_)))
                                        (let ((_%L167618%_
                                               _%args166683167615%_)
                                              (_%L167619%_ _%hd166673167589%_)
                                              (_%L167620%_ _%hd166664167565%_)
                                              (_%L167621%_ _%hd166655167541%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167621%_
                                                      'call-method))
                                                   (let ((__tmp171836
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166630%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167620%_
                                                      __tmp171836)))
                                              (_%__kont170713170714%_
                                               _%L167618%_
                                               _%L167619%_
                                               _%L167620%_
                                               _%L167621%_)
                                              (_%__match171004171005%_
                                               _%e166645167514%_
                                               _%hd166646167517%_
                                               _%tl166647167519%_
                                               _%e166648167522%_
                                               _%hd166649167525%_
                                               _%tl166650167527%_
                                               _%e166651167530%_
                                               _%hd166652167533%_
                                               _%tl166653167535%_
                                               _%e166654167538%_
                                               _%hd166655167541%_
                                               _%tl166656167543%_
                                               _%e166657167546%_
                                               _%hd166658167549%_
                                               _%tl166659167551%_
                                               _%e166660167554%_
                                               _%hd166661167557%_
                                               _%tl166662167559%_
                                               _%e166663167562%_
                                               _%hd166664167565%_
                                               _%tl166665167567%_
                                               _%e166666167570%_
                                               _%hd166667167573%_
                                               _%tl166668167575%_
                                               _%e166669167578%_
                                               _%hd166670167581%_
                                               _%tl166671167583%_
                                               _%e166672167586%_
                                               _%hd166673167589%_
                                               _%tl166674167591%_))))))))
                        (_%loop166678167599%_ _%target166675167594%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170711170712%_))
                  (let ((_%e166645167514%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170711170712%_))))
                    (let ((_%tl166647167519%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166645167514%_)))
                          (_%hd166646167517%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166645167514%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166647167519%_))
                          (let ((_%e166648167522%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166647167519%_))))
                            (let ((_%tl166650167527%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166648167522%_)))
                                  (_%hd166649167525%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166648167522%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166649167525%_))
                                  (let ((_%e166651167530%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166649167525%_))))
                                    (let ((_%tl166653167535%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166651167530%_)))
                                          (_%hd166652167533%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166651167530%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166652167533%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166652167533%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166653167535%_))
                                                  (let ((_%e166654167538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166653167535%_))))
                                                    (let ((_%tl166656167543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166654167538%_)))
                                                          (_%hd166655167541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166654167538%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166656167543%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166650167527%_))
                      (let ((_%e166657167546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166650167527%_))))
                        (let ((_%tl166659167551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166657167546%_)))
                              (_%hd166658167549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166657167546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166658167549%_))
                              (let ((_%e166660167554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166658167549%_))))
                                (let ((_%tl166662167559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166660167554%_)))
                                      (_%hd166661167557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166660167554%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166661167557%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166661167557%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166662167559%_))
                                              (let ((_%e166663167562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166662167559%_))))
                                                (let ((_%tl166665167567%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166663167562%_)))
                                                      (_%hd166664167565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166663167562%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166665167567%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166659167551%_))
                                                          (let ((_%e166666167570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166659167551%_))))
                    (let ((_%tl166668167575%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166666167570%_)))
                          (_%hd166667167573%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166666167570%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166667167573%_))
                          (let ((_%e166669167578%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166667167573%_))))
                            (let ((_%tl166671167583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166669167578%_)))
                                  (_%hd166670167581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166669167578%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166670167581%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166670167581%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166671167583%_))
                                          (let ((_%e166672167586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166671167583%_))))
                                            (let ((_%tl166674167591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166672167586%_)))
                                                  (_%hd166673167589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166672167586%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166674167591%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166668167575%_))
                                                      (let ((_%__splice170715170716%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166668167575%_ '0))))
                (let ((_%tl166677167596%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170715170716%_ '1)))
                      (_%target166675167594%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170715170716%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166677167596%_))
                      (_%__match170816170817%_
                       _%e166645167514%_
                       _%hd166646167517%_
                       _%tl166647167519%_
                       _%e166648167522%_
                       _%hd166649167525%_
                       _%tl166650167527%_
                       _%e166651167530%_
                       _%hd166652167533%_
                       _%tl166653167535%_
                       _%e166654167538%_
                       _%hd166655167541%_
                       _%tl166656167543%_
                       _%e166657167546%_
                       _%hd166658167549%_
                       _%tl166659167551%_
                       _%e166660167554%_
                       _%hd166661167557%_
                       _%tl166662167559%_
                       _%e166663167562%_
                       _%hd166664167565%_
                       _%tl166665167567%_
                       _%e166666167570%_
                       _%hd166667167573%_
                       _%tl166668167575%_
                       _%e166669167578%_
                       _%hd166670167581%_
                       _%tl166671167583%_
                       _%e166672167586%_
                       _%hd166673167589%_
                       _%tl166674167591%_
                       _%__splice170715170716%_
                       _%target166675167594%_
                       _%tl166677167596%_)
                      (_%__match171004171005%_
                       _%e166645167514%_
                       _%hd166646167517%_
                       _%tl166647167519%_
                       _%e166648167522%_
                       _%hd166649167525%_
                       _%tl166650167527%_
                       _%e166651167530%_
                       _%hd166652167533%_
                       _%tl166653167535%_
                       _%e166654167538%_
                       _%hd166655167541%_
                       _%tl166656167543%_
                       _%e166657167546%_
                       _%hd166658167549%_
                       _%tl166659167551%_
                       _%e166660167554%_
                       _%hd166661167557%_
                       _%tl166662167559%_
                       _%e166663167562%_
                       _%hd166664167565%_
                       _%tl166665167567%_
                       _%e166666167570%_
                       _%hd166667167573%_
                       _%tl166668167575%_
                       _%e166669167578%_
                       _%hd166670167581%_
                       _%tl166671167583%_
                       _%e166672167586%_
                       _%hd166673167589%_
                       _%tl166674167591%_))))
              (_%__match171004171005%_
               _%e166645167514%_
               _%hd166646167517%_
               _%tl166647167519%_
               _%e166648167522%_
               _%hd166649167525%_
               _%tl166650167527%_
               _%e166651167530%_
               _%hd166652167533%_
               _%tl166653167535%_
               _%e166654167538%_
               _%hd166655167541%_
               _%tl166656167543%_
               _%e166657167546%_
               _%hd166658167549%_
               _%tl166659167551%_
               _%e166660167554%_
               _%hd166661167557%_
               _%tl166662167559%_
               _%e166663167562%_
               _%hd166664167565%_
               _%tl166665167567%_
               _%e166666167570%_
               _%hd166667167573%_
               _%tl166668167575%_
               _%e166669167578%_
               _%hd166670167581%_
               _%tl166671167583%_
               _%e166672167586%_
               _%hd166673167589%_
               _%tl166674167591%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171208171209%_
                                                   _%e166645167514%_
                                                   _%hd166646167517%_
                                                   _%tl166647167519%_
                                                   _%e166648167522%_
                                                   _%hd166649167525%_
                                                   _%tl166650167527%_
                                                   _%e166651167530%_
                                                   _%hd166652167533%_
                                                   _%tl166653167535%_
                                                   _%e166654167538%_
                                                   _%hd166655167541%_
                                                   _%tl166656167543%_
                                                   _%e166657167546%_
                                                   _%hd166658167549%_
                                                   _%tl166659167551%_
                                                   _%e166660167554%_
                                                   _%hd166661167557%_
                                                   _%tl166662167559%_
                                                   _%e166663167562%_
                                                   _%hd166664167565%_
                                                   _%tl166665167567%_
                                                   _%e166666167570%_
                                                   _%hd166667167573%_
                                                   _%tl166668167575%_))))
                                          (_%__match171208171209%_
                                           _%e166645167514%_
                                           _%hd166646167517%_
                                           _%tl166647167519%_
                                           _%e166648167522%_
                                           _%hd166649167525%_
                                           _%tl166650167527%_
                                           _%e166651167530%_
                                           _%hd166652167533%_
                                           _%tl166653167535%_
                                           _%e166654167538%_
                                           _%hd166655167541%_
                                           _%tl166656167543%_
                                           _%e166657167546%_
                                           _%hd166658167549%_
                                           _%tl166659167551%_
                                           _%e166660167554%_
                                           _%hd166661167557%_
                                           _%tl166662167559%_
                                           _%e166663167562%_
                                           _%hd166664167565%_
                                           _%tl166665167567%_
                                           _%e166666167570%_
                                           _%hd166667167573%_
                                           _%tl166668167575%_))
                                      (_%__match170884170885%_
                                       _%e166645167514%_
                                       _%hd166646167517%_
                                       _%tl166647167519%_
                                       _%e166648167522%_
                                       _%hd166649167525%_
                                       _%tl166650167527%_
                                       _%e166651167530%_
                                       _%hd166652167533%_
                                       _%tl166653167535%_
                                       _%e166654167538%_
                                       _%hd166655167541%_
                                       _%tl166656167543%_
                                       _%e166657167546%_
                                       _%hd166658167549%_
                                       _%tl166659167551%_
                                       _%e166660167554%_
                                       _%hd166661167557%_
                                       _%tl166662167559%_
                                       _%e166663167562%_
                                       _%hd166664167565%_
                                       _%tl166665167567%_
                                       _%e166666167570%_
                                       _%hd166667167573%_
                                       _%tl166668167575%_
                                       _%e166669167578%_
                                       _%hd166670167581%_
                                       _%tl166671167583%_))
                                  (_%__match171208171209%_
                                   _%e166645167514%_
                                   _%hd166646167517%_
                                   _%tl166647167519%_
                                   _%e166648167522%_
                                   _%hd166649167525%_
                                   _%tl166650167527%_
                                   _%e166651167530%_
                                   _%hd166652167533%_
                                   _%tl166653167535%_
                                   _%e166654167538%_
                                   _%hd166655167541%_
                                   _%tl166656167543%_
                                   _%e166657167546%_
                                   _%hd166658167549%_
                                   _%tl166659167551%_
                                   _%e166660167554%_
                                   _%hd166661167557%_
                                   _%tl166662167559%_
                                   _%e166663167562%_
                                   _%hd166664167565%_
                                   _%tl166665167567%_
                                   _%e166666167570%_
                                   _%hd166667167573%_
                                   _%tl166668167575%_))))
                          (_%__match171208171209%_
                           _%e166645167514%_
                           _%hd166646167517%_
                           _%tl166647167519%_
                           _%e166648167522%_
                           _%hd166649167525%_
                           _%tl166650167527%_
                           _%e166651167530%_
                           _%hd166652167533%_
                           _%tl166653167535%_
                           _%e166654167538%_
                           _%hd166655167541%_
                           _%tl166656167543%_
                           _%e166657167546%_
                           _%hd166658167549%_
                           _%tl166659167551%_
                           _%e166660167554%_
                           _%hd166661167557%_
                           _%tl166662167559%_
                           _%e166663167562%_
                           _%hd166664167565%_
                           _%tl166665167567%_
                           _%e166666167570%_
                           _%hd166667167573%_
                           _%tl166668167575%_))))
                  (_%__match171146171147%_
                   _%e166645167514%_
                   _%hd166646167517%_
                   _%tl166647167519%_
                   _%e166648167522%_
                   _%hd166649167525%_
                   _%tl166650167527%_
                   _%e166651167530%_
                   _%hd166652167533%_
                   _%tl166653167535%_
                   _%e166654167538%_
                   _%hd166655167541%_
                   _%tl166656167543%_
                   _%e166657167546%_
                   _%hd166658167549%_
                   _%tl166659167551%_
                   _%e166660167554%_
                   _%hd166661167557%_
                   _%tl166662167559%_
                   _%e166663167562%_
                   _%hd166664167565%_
                   _%tl166665167567%_))
              (_%__kont170729170730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170729170730%_))
                                          (_%__kont170729170730%_))
                                      (_%__kont170729170730%_))))
                              (_%__kont170729170730%_))))
                      (_%__kont170729170730%_))
                  (_%__kont170729170730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170729170730%_))
                                              (_%__kont170729170730%_))
                                          (_%__kont170729170730%_))))
                                  (_%__kont170729170730%_))))
                          (_%__kont170729170730%_))))
                  (_%__kont170729170730%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165569%_ _%stx165570%_)
        (letrec ((_%force-e165572%_
                  (lambda (_%target166628%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166628%_ '()))
                                      '()))))))
          (let* ((_%__stx171213171214%_ _%stx165570%_)
                 (_%g165580165802%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171213171214%_)))))
            (let ((_%__kont171215171216%_
                   (lambda (_%L166574%_ _%L166575%_ _%L166576%_ _%L166577%_)
                     (let ((_%$method166622%_
                            (let ((__tmp171838
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165569%_ 'methods)))
                                  (__tmp171837
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166575%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171838 __tmp171837)))
                           (_%args166623%_
                            (map (lambda (_%g166610166612%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165569%_
                                      _%g166610166612%_)))
                                 (let ((__tmp171839
                                        (lambda (_%g166614166617%_
                                                 _%g166615166619%_)
                                          (cons _%g166614166617%_
                                                _%g166615166619%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171839 '() _%L166574%_)))))
                       (let ((__tmp171840
                              (cons '%#call
                                    (cons (_%force-e165572%_ _%$method166622%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165569%_
                                                               'receiver))
                                                            '()))
                                                _%args166623%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171840 _%stx165570%_)))))
                  (_%__kont171219171220%_
                   (lambda (_%L166406%_
                            _%L166407%_
                            _%L166408%_
                            _%L166409%_
                            _%L166410%_)
                     (let ((_%$method166462%_
                            (let ((__tmp171842
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165569%_ 'methods)))
                                  (__tmp171841
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166407%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171842 __tmp171841)))
                           (_%args166463%_
                            (map (lambda (_%g166450166452%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165569%_
                                      _%g166450166452%_)))
                                 (let ((__tmp171843
                                        (lambda (_%g166454166457%_
                                                 _%g166455166459%_)
                                          (cons _%g166454166457%_
                                                _%g166455166459%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171843 '() _%L166406%_)))))
                       (let ((__tmp171844
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e165572%_
                                                 _%$method166462%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165569%_ 'receiver))
                          '()))
              _%args166463%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171844 _%stx165570%_)))))
                  (_%__kont171223171224%_
                   (lambda (_%L166237%_ _%L166238%_ _%L166239%_)
                     (let* ((_%$field166271%_
                             (let ((__tmp171846
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165569%_ 'slots)))
                                   (__tmp171845
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166237%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171846 __tmp171845)))
                            (__tmp171847
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165569%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166271%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165569%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171847 _%stx165570%_))))
                  (_%__kont171225171226%_
                   (lambda (_%L166111%_ _%L166112%_ _%L166113%_ _%L166114%_)
                     (let ((_%$field166149%_
                            (let ((__tmp171849
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165569%_ 'slots)))
                                  (__tmp171848
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166112%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171849 __tmp171848)))
                           (_%expr166150%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165569%_ _%L166111%_))))
                       (let ((__tmp171850
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165569%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166149%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165569%_ 'receiver))
                          '()))
              (cons _%expr166150%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171850 _%stx165570%_)))))
                  (_%__kont171227171228%_
                   (lambda (_%L165983%_ _%L165984%_)
                     (let* ((_%accessor166006%_
                             (let ((__tmp171851
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165984%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171851)))
                            (_%klass166008%_
                             (let ((__tmp171852
                                    (##structure-ref
                                     _%accessor166006%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165570%_
                                __tmp171852)))
                            (_%slot166010%_
                             (##structure-ref
                              _%accessor166006%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor166006%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166008%_
                                       _%slot166010%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166008%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165570%_
                           (let* ((_%$field166016%_
                                   (let ((__tmp171853
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165569%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171853 _%slot166010%_)))
                                  (__tmp171854
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165569%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165569%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171854
                              _%stx165570%_))))))
                  (_%__kont171229171230%_
                   (lambda (_%L165878%_ _%L165879%_ _%L165880%_)
                     (let* ((_%mutator165908%_
                             (let ((__tmp171855
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165880%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171855)))
                            (_%klass165910%_
                             (let ((__tmp171856
                                    (##structure-ref
                                     _%mutator165908%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165570%_
                                __tmp171856)))
                            (_%slot165912%_
                             (##structure-ref
                              _%mutator165908%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165914%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165569%_ _%L165878%_))))
                       (if (and (not (##structure-ref
                                      _%mutator165908%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165910%_
                                       _%slot165912%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165910%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171857
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165880%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165879%_
                                                                '()))
                                                    (cons _%expr165914%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171857 _%stx165570%_))
                           (let* ((_%$field165920%_
                                   (let ((__tmp171858
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165569%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171858 _%slot165912%_)))
                                  (__tmp171859
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165569%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165569%_ 'receiver))
                               '()))
                   (cons _%expr165914%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171859
                              _%stx165570%_))))))
                  (_%__kont171231171232%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165569%_ _%stx165570%_)))))
              (let* ((_%__match171712171713%_
                      (lambda (_%e165774165814%_
                               _%hd165775165817%_
                               _%tl165776165819%_
                               _%e165777165822%_
                               _%hd165778165825%_
                               _%tl165779165827%_
                               _%e165780165830%_
                               _%hd165781165833%_
                               _%tl165782165835%_
                               _%e165783165838%_
                               _%hd165784165841%_
                               _%tl165785165843%_
                               _%e165786165846%_
                               _%hd165787165849%_
                               _%tl165788165851%_
                               _%e165789165854%_
                               _%hd165790165857%_
                               _%tl165791165859%_
                               _%e165792165862%_
                               _%hd165793165865%_
                               _%tl165794165867%_
                               _%e165795165870%_
                               _%hd165796165873%_
                               _%tl165797165875%_)
                        (let ((_%L165878%_ _%hd165796165873%_)
                              (_%L165879%_ _%hd165793165865%_)
                              (_%L165880%_ _%hd165784165841%_))
                          (if (and (let ((__tmp171860
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165569%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165879%_
                                      __tmp171860))
                                   (let ((__tmp171861
                                          (let ((__tmp171862
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165880%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171862))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171861
                                      'gxc#!mutator::t)))
                              (_%__kont171229171230%_
                               _%L165878%_
                               _%L165879%_
                               _%L165880%_)
                              (_%__kont171231171232%_)))))
                     (_%__match171710171711%_
                      (lambda (_%e165774165814%_
                               _%hd165775165817%_
                               _%tl165776165819%_
                               _%e165777165822%_
                               _%hd165778165825%_
                               _%tl165779165827%_
                               _%e165780165830%_
                               _%hd165781165833%_
                               _%tl165782165835%_
                               _%e165783165838%_
                               _%hd165784165841%_
                               _%tl165785165843%_
                               _%e165786165846%_
                               _%hd165787165849%_
                               _%tl165788165851%_
                               _%e165789165854%_
                               _%hd165790165857%_
                               _%tl165791165859%_
                               _%e165792165862%_
                               _%hd165793165865%_
                               _%tl165794165867%_
                               _%e165795165870%_
                               _%hd165796165873%_
                               _%tl165797165875%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165797165875%_))
                            (_%__match171712171713%_
                             _%e165774165814%_
                             _%hd165775165817%_
                             _%tl165776165819%_
                             _%e165777165822%_
                             _%hd165778165825%_
                             _%tl165779165827%_
                             _%e165780165830%_
                             _%hd165781165833%_
                             _%tl165782165835%_
                             _%e165783165838%_
                             _%hd165784165841%_
                             _%tl165785165843%_
                             _%e165786165846%_
                             _%hd165787165849%_
                             _%tl165788165851%_
                             _%e165789165854%_
                             _%hd165790165857%_
                             _%tl165791165859%_
                             _%e165792165862%_
                             _%hd165793165865%_
                             _%tl165794165867%_
                             _%e165795165870%_
                             _%hd165796165873%_
                             _%tl165797165875%_)
                            (_%__kont171231171232%_))))
                     (_%__match171704171705%_
                      (lambda (_%e165774165814%_
                               _%hd165775165817%_
                               _%tl165776165819%_
                               _%e165777165822%_
                               _%hd165778165825%_
                               _%tl165779165827%_
                               _%e165780165830%_
                               _%hd165781165833%_
                               _%tl165782165835%_
                               _%e165783165838%_
                               _%hd165784165841%_
                               _%tl165785165843%_
                               _%e165786165846%_
                               _%hd165787165849%_
                               _%tl165788165851%_
                               _%e165789165854%_
                               _%hd165790165857%_
                               _%tl165791165859%_
                               _%e165792165862%_
                               _%hd165793165865%_
                               _%tl165794165867%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165788165851%_))
                            (let ((_%e165795165870%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165788165851%_))))
                              (let ((_%tl165797165875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165795165870%_)))
                                    (_%hd165796165873%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165795165870%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165797165875%_))
                                    (_%__match171712171713%_
                                     _%e165774165814%_
                                     _%hd165775165817%_
                                     _%tl165776165819%_
                                     _%e165777165822%_
                                     _%hd165778165825%_
                                     _%tl165779165827%_
                                     _%e165780165830%_
                                     _%hd165781165833%_
                                     _%tl165782165835%_
                                     _%e165783165838%_
                                     _%hd165784165841%_
                                     _%tl165785165843%_
                                     _%e165786165846%_
                                     _%hd165787165849%_
                                     _%tl165788165851%_
                                     _%e165789165854%_
                                     _%hd165790165857%_
                                     _%tl165791165859%_
                                     _%e165792165862%_
                                     _%hd165793165865%_
                                     _%tl165794165867%_
                                     _%e165795165870%_
                                     _%hd165796165873%_
                                     _%tl165797165875%_)
                                    (_%__kont171231171232%_))))
                            (_%__kont171231171232%_))))
                     (_%__match171650171651%_
                      (lambda (_%e165750165927%_
                               _%hd165751165930%_
                               _%tl165752165932%_
                               _%e165753165935%_
                               _%hd165754165938%_
                               _%tl165755165940%_
                               _%e165756165943%_
                               _%hd165757165946%_
                               _%tl165758165948%_
                               _%e165759165951%_
                               _%hd165760165954%_
                               _%tl165761165956%_
                               _%e165762165959%_
                               _%hd165763165962%_
                               _%tl165764165964%_
                               _%e165765165967%_
                               _%hd165766165970%_
                               _%tl165767165972%_
                               _%e165768165975%_
                               _%hd165769165978%_
                               _%tl165770165980%_)
                        (let ((_%L165983%_ _%hd165769165978%_)
                              (_%L165984%_ _%hd165760165954%_))
                          (if (and (let ((__tmp171863
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165569%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165983%_
                                      __tmp171863))
                                   (let ((__tmp171864
                                          (let ((__tmp171865
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165984%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171865))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171864
                                      'gxc#!accessor::t)))
                              (_%__kont171227171228%_ _%L165983%_ _%L165984%_)
                              (_%__kont171231171232%_)))))
                     (_%__match171648171649%_
                      (lambda (_%e165750165927%_
                               _%hd165751165930%_
                               _%tl165752165932%_
                               _%e165753165935%_
                               _%hd165754165938%_
                               _%tl165755165940%_
                               _%e165756165943%_
                               _%hd165757165946%_
                               _%tl165758165948%_
                               _%e165759165951%_
                               _%hd165760165954%_
                               _%tl165761165956%_
                               _%e165762165959%_
                               _%hd165763165962%_
                               _%tl165764165964%_
                               _%e165765165967%_
                               _%hd165766165970%_
                               _%tl165767165972%_
                               _%e165768165975%_
                               _%hd165769165978%_
                               _%tl165770165980%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165764165964%_))
                            (_%__match171650171651%_
                             _%e165750165927%_
                             _%hd165751165930%_
                             _%tl165752165932%_
                             _%e165753165935%_
                             _%hd165754165938%_
                             _%tl165755165940%_
                             _%e165756165943%_
                             _%hd165757165946%_
                             _%tl165758165948%_
                             _%e165759165951%_
                             _%hd165760165954%_
                             _%tl165761165956%_
                             _%e165762165959%_
                             _%hd165763165962%_
                             _%tl165764165964%_
                             _%e165765165967%_
                             _%hd165766165970%_
                             _%tl165767165972%_
                             _%e165768165975%_
                             _%hd165769165978%_
                             _%tl165770165980%_)
                            (_%__match171704171705%_
                             _%e165750165927%_
                             _%hd165751165930%_
                             _%tl165752165932%_
                             _%e165753165935%_
                             _%hd165754165938%_
                             _%tl165755165940%_
                             _%e165756165943%_
                             _%hd165757165946%_
                             _%tl165758165948%_
                             _%e165759165951%_
                             _%hd165760165954%_
                             _%tl165761165956%_
                             _%e165762165959%_
                             _%hd165763165962%_
                             _%tl165764165964%_
                             _%e165765165967%_
                             _%hd165766165970%_
                             _%tl165767165972%_
                             _%e165768165975%_
                             _%hd165769165978%_
                             _%tl165770165980%_))))
                     (_%__match171594171595%_
                      (lambda (_%e165715166023%_
                               _%hd165716166026%_
                               _%tl165717166028%_
                               _%e165718166031%_
                               _%hd165719166034%_
                               _%tl165720166036%_
                               _%e165721166039%_
                               _%hd165722166042%_
                               _%tl165723166044%_
                               _%e165724166047%_
                               _%hd165725166050%_
                               _%tl165726166052%_
                               _%e165727166055%_
                               _%hd165728166058%_
                               _%tl165729166060%_
                               _%e165730166063%_
                               _%hd165731166066%_
                               _%tl165732166068%_
                               _%e165733166071%_
                               _%hd165734166074%_
                               _%tl165735166076%_
                               _%e165736166079%_
                               _%hd165737166082%_
                               _%tl165738166084%_
                               _%e165739166087%_
                               _%hd165740166090%_
                               _%tl165741166092%_
                               _%e165742166095%_
                               _%hd165743166098%_
                               _%tl165744166100%_
                               _%e165745166103%_
                               _%hd165746166106%_
                               _%tl165747166108%_)
                        (let ((_%L166111%_ _%hd165746166106%_)
                              (_%L166112%_ _%hd165743166098%_)
                              (_%L166113%_ _%hd165734166074%_)
                              (_%L166114%_ _%hd165725166050%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166114%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166114%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171866
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165569%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166113%_
                                      __tmp171866)))
                              (_%__kont171225171226%_
                               _%L166111%_
                               _%L166112%_
                               _%L166113%_
                               _%L166114%_)
                              (_%__kont171231171232%_)))))
                     (_%__match171586171587%_
                      (lambda (_%e165715166023%_
                               _%hd165716166026%_
                               _%tl165717166028%_
                               _%e165718166031%_
                               _%hd165719166034%_
                               _%tl165720166036%_
                               _%e165721166039%_
                               _%hd165722166042%_
                               _%tl165723166044%_
                               _%e165724166047%_
                               _%hd165725166050%_
                               _%tl165726166052%_
                               _%e165727166055%_
                               _%hd165728166058%_
                               _%tl165729166060%_
                               _%e165730166063%_
                               _%hd165731166066%_
                               _%tl165732166068%_
                               _%e165733166071%_
                               _%hd165734166074%_
                               _%tl165735166076%_
                               _%e165736166079%_
                               _%hd165737166082%_
                               _%tl165738166084%_
                               _%e165739166087%_
                               _%hd165740166090%_
                               _%tl165741166092%_
                               _%e165742166095%_
                               _%hd165743166098%_
                               _%tl165744166100%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165738166084%_))
                            (let ((_%e165745166103%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165738166084%_))))
                              (let ((_%tl165747166108%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165745166103%_)))
                                    (_%hd165746166106%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165745166103%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165747166108%_))
                                    (_%__match171594171595%_
                                     _%e165715166023%_
                                     _%hd165716166026%_
                                     _%tl165717166028%_
                                     _%e165718166031%_
                                     _%hd165719166034%_
                                     _%tl165720166036%_
                                     _%e165721166039%_
                                     _%hd165722166042%_
                                     _%tl165723166044%_
                                     _%e165724166047%_
                                     _%hd165725166050%_
                                     _%tl165726166052%_
                                     _%e165727166055%_
                                     _%hd165728166058%_
                                     _%tl165729166060%_
                                     _%e165730166063%_
                                     _%hd165731166066%_
                                     _%tl165732166068%_
                                     _%e165733166071%_
                                     _%hd165734166074%_
                                     _%tl165735166076%_
                                     _%e165736166079%_
                                     _%hd165737166082%_
                                     _%tl165738166084%_
                                     _%e165739166087%_
                                     _%hd165740166090%_
                                     _%tl165741166092%_
                                     _%e165742166095%_
                                     _%hd165743166098%_
                                     _%tl165744166100%_
                                     _%e165745166103%_
                                     _%hd165746166106%_
                                     _%tl165747166108%_)
                                    (_%__kont171231171232%_))))
                            (_%__match171710171711%_
                             _%e165715166023%_
                             _%hd165716166026%_
                             _%tl165717166028%_
                             _%e165718166031%_
                             _%hd165719166034%_
                             _%tl165720166036%_
                             _%e165721166039%_
                             _%hd165722166042%_
                             _%tl165723166044%_
                             _%e165724166047%_
                             _%hd165725166050%_
                             _%tl165726166052%_
                             _%e165727166055%_
                             _%hd165728166058%_
                             _%tl165729166060%_
                             _%e165730166063%_
                             _%hd165731166066%_
                             _%tl165732166068%_
                             _%e165733166071%_
                             _%hd165734166074%_
                             _%tl165735166076%_
                             _%e165736166079%_
                             _%hd165737166082%_
                             _%tl165738166084%_))))
                     (_%__match171508171509%_
                      (lambda (_%e165681166157%_
                               _%hd165682166160%_
                               _%tl165683166162%_
                               _%e165684166165%_
                               _%hd165685166168%_
                               _%tl165686166170%_
                               _%e165687166173%_
                               _%hd165688166176%_
                               _%tl165689166178%_
                               _%e165690166181%_
                               _%hd165691166184%_
                               _%tl165692166186%_
                               _%e165693166189%_
                               _%hd165694166192%_
                               _%tl165695166194%_
                               _%e165696166197%_
                               _%hd165697166200%_
                               _%tl165698166202%_
                               _%e165699166205%_
                               _%hd165700166208%_
                               _%tl165701166210%_
                               _%e165702166213%_
                               _%hd165703166216%_
                               _%tl165704166218%_
                               _%e165705166221%_
                               _%hd165706166224%_
                               _%tl165707166226%_
                               _%e165708166229%_
                               _%hd165709166232%_
                               _%tl165710166234%_)
                        (let ((_%L166237%_ _%hd165709166232%_)
                              (_%L166238%_ _%hd165700166208%_)
                              (_%L166239%_ _%hd165691166184%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166239%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166239%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171867
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165569%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166238%_
                                      __tmp171867)))
                              (_%__kont171223171224%_
                               _%L166237%_
                               _%L166238%_
                               _%L166239%_)
                              (_%__match171712171713%_
                               _%e165681166157%_
                               _%hd165682166160%_
                               _%tl165683166162%_
                               _%e165684166165%_
                               _%hd165685166168%_
                               _%tl165686166170%_
                               _%e165687166173%_
                               _%hd165688166176%_
                               _%tl165689166178%_
                               _%e165690166181%_
                               _%hd165691166184%_
                               _%tl165692166186%_
                               _%e165693166189%_
                               _%hd165694166192%_
                               _%tl165695166194%_
                               _%e165696166197%_
                               _%hd165697166200%_
                               _%tl165698166202%_
                               _%e165699166205%_
                               _%hd165700166208%_
                               _%tl165701166210%_
                               _%e165702166213%_
                               _%hd165703166216%_
                               _%tl165704166218%_)))))
                     (_%__match171506171507%_
                      (lambda (_%e165681166157%_
                               _%hd165682166160%_
                               _%tl165683166162%_
                               _%e165684166165%_
                               _%hd165685166168%_
                               _%tl165686166170%_
                               _%e165687166173%_
                               _%hd165688166176%_
                               _%tl165689166178%_
                               _%e165690166181%_
                               _%hd165691166184%_
                               _%tl165692166186%_
                               _%e165693166189%_
                               _%hd165694166192%_
                               _%tl165695166194%_
                               _%e165696166197%_
                               _%hd165697166200%_
                               _%tl165698166202%_
                               _%e165699166205%_
                               _%hd165700166208%_
                               _%tl165701166210%_
                               _%e165702166213%_
                               _%hd165703166216%_
                               _%tl165704166218%_
                               _%e165705166221%_
                               _%hd165706166224%_
                               _%tl165707166226%_
                               _%e165708166229%_
                               _%hd165709166232%_
                               _%tl165710166234%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165704166218%_))
                            (_%__match171508171509%_
                             _%e165681166157%_
                             _%hd165682166160%_
                             _%tl165683166162%_
                             _%e165684166165%_
                             _%hd165685166168%_
                             _%tl165686166170%_
                             _%e165687166173%_
                             _%hd165688166176%_
                             _%tl165689166178%_
                             _%e165690166181%_
                             _%hd165691166184%_
                             _%tl165692166186%_
                             _%e165693166189%_
                             _%hd165694166192%_
                             _%tl165695166194%_
                             _%e165696166197%_
                             _%hd165697166200%_
                             _%tl165698166202%_
                             _%e165699166205%_
                             _%hd165700166208%_
                             _%tl165701166210%_
                             _%e165702166213%_
                             _%hd165703166216%_
                             _%tl165704166218%_
                             _%e165705166221%_
                             _%hd165706166224%_
                             _%tl165707166226%_
                             _%e165708166229%_
                             _%hd165709166232%_
                             _%tl165710166234%_)
                            (_%__match171586171587%_
                             _%e165681166157%_
                             _%hd165682166160%_
                             _%tl165683166162%_
                             _%e165684166165%_
                             _%hd165685166168%_
                             _%tl165686166170%_
                             _%e165687166173%_
                             _%hd165688166176%_
                             _%tl165689166178%_
                             _%e165690166181%_
                             _%hd165691166184%_
                             _%tl165692166186%_
                             _%e165693166189%_
                             _%hd165694166192%_
                             _%tl165695166194%_
                             _%e165696166197%_
                             _%hd165697166200%_
                             _%tl165698166202%_
                             _%e165699166205%_
                             _%hd165700166208%_
                             _%tl165701166210%_
                             _%e165702166213%_
                             _%hd165703166216%_
                             _%tl165704166218%_
                             _%e165705166221%_
                             _%hd165706166224%_
                             _%tl165707166226%_
                             _%e165708166229%_
                             _%hd165709166232%_
                             _%tl165710166234%_))))
                     (_%__match171496171497%_
                      (lambda (_%e165681166157%_
                               _%hd165682166160%_
                               _%tl165683166162%_
                               _%e165684166165%_
                               _%hd165685166168%_
                               _%tl165686166170%_
                               _%e165687166173%_
                               _%hd165688166176%_
                               _%tl165689166178%_
                               _%e165690166181%_
                               _%hd165691166184%_
                               _%tl165692166186%_
                               _%e165693166189%_
                               _%hd165694166192%_
                               _%tl165695166194%_
                               _%e165696166197%_
                               _%hd165697166200%_
                               _%tl165698166202%_
                               _%e165699166205%_
                               _%hd165700166208%_
                               _%tl165701166210%_
                               _%e165702166213%_
                               _%hd165703166216%_
                               _%tl165704166218%_
                               _%e165705166221%_
                               _%hd165706166224%_
                               _%tl165707166226%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165706166224%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165707166226%_))
                                (let ((_%e165708166229%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165707166226%_))))
                                  (let ((_%tl165710166234%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165708166229%_)))
                                        (_%hd165709166232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165708166229%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165710166234%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165704166218%_))
                                            (_%__match171508171509%_
                                             _%e165681166157%_
                                             _%hd165682166160%_
                                             _%tl165683166162%_
                                             _%e165684166165%_
                                             _%hd165685166168%_
                                             _%tl165686166170%_
                                             _%e165687166173%_
                                             _%hd165688166176%_
                                             _%tl165689166178%_
                                             _%e165690166181%_
                                             _%hd165691166184%_
                                             _%tl165692166186%_
                                             _%e165693166189%_
                                             _%hd165694166192%_
                                             _%tl165695166194%_
                                             _%e165696166197%_
                                             _%hd165697166200%_
                                             _%tl165698166202%_
                                             _%e165699166205%_
                                             _%hd165700166208%_
                                             _%tl165701166210%_
                                             _%e165702166213%_
                                             _%hd165703166216%_
                                             _%tl165704166218%_
                                             _%e165705166221%_
                                             _%hd165706166224%_
                                             _%tl165707166226%_
                                             _%e165708166229%_
                                             _%hd165709166232%_
                                             _%tl165710166234%_)
                                            (_%__match171586171587%_
                                             _%e165681166157%_
                                             _%hd165682166160%_
                                             _%tl165683166162%_
                                             _%e165684166165%_
                                             _%hd165685166168%_
                                             _%tl165686166170%_
                                             _%e165687166173%_
                                             _%hd165688166176%_
                                             _%tl165689166178%_
                                             _%e165690166181%_
                                             _%hd165691166184%_
                                             _%tl165692166186%_
                                             _%e165693166189%_
                                             _%hd165694166192%_
                                             _%tl165695166194%_
                                             _%e165696166197%_
                                             _%hd165697166200%_
                                             _%tl165698166202%_
                                             _%e165699166205%_
                                             _%hd165700166208%_
                                             _%tl165701166210%_
                                             _%e165702166213%_
                                             _%hd165703166216%_
                                             _%tl165704166218%_
                                             _%e165705166221%_
                                             _%hd165706166224%_
                                             _%tl165707166226%_
                                             _%e165708166229%_
                                             _%hd165709166232%_
                                             _%tl165710166234%_))
                                        (_%__match171710171711%_
                                         _%e165681166157%_
                                         _%hd165682166160%_
                                         _%tl165683166162%_
                                         _%e165684166165%_
                                         _%hd165685166168%_
                                         _%tl165686166170%_
                                         _%e165687166173%_
                                         _%hd165688166176%_
                                         _%tl165689166178%_
                                         _%e165690166181%_
                                         _%hd165691166184%_
                                         _%tl165692166186%_
                                         _%e165693166189%_
                                         _%hd165694166192%_
                                         _%tl165695166194%_
                                         _%e165696166197%_
                                         _%hd165697166200%_
                                         _%tl165698166202%_
                                         _%e165699166205%_
                                         _%hd165700166208%_
                                         _%tl165701166210%_
                                         _%e165702166213%_
                                         _%hd165703166216%_
                                         _%tl165704166218%_))))
                                (_%__match171710171711%_
                                 _%e165681166157%_
                                 _%hd165682166160%_
                                 _%tl165683166162%_
                                 _%e165684166165%_
                                 _%hd165685166168%_
                                 _%tl165686166170%_
                                 _%e165687166173%_
                                 _%hd165688166176%_
                                 _%tl165689166178%_
                                 _%e165690166181%_
                                 _%hd165691166184%_
                                 _%tl165692166186%_
                                 _%e165693166189%_
                                 _%hd165694166192%_
                                 _%tl165695166194%_
                                 _%e165696166197%_
                                 _%hd165697166200%_
                                 _%tl165698166202%_
                                 _%e165699166205%_
                                 _%hd165700166208%_
                                 _%tl165701166210%_
                                 _%e165702166213%_
                                 _%hd165703166216%_
                                 _%tl165704166218%_))
                            (_%__match171710171711%_
                             _%e165681166157%_
                             _%hd165682166160%_
                             _%tl165683166162%_
                             _%e165684166165%_
                             _%hd165685166168%_
                             _%tl165686166170%_
                             _%e165687166173%_
                             _%hd165688166176%_
                             _%tl165689166178%_
                             _%e165690166181%_
                             _%hd165691166184%_
                             _%tl165692166186%_
                             _%e165693166189%_
                             _%hd165694166192%_
                             _%tl165695166194%_
                             _%e165696166197%_
                             _%hd165697166200%_
                             _%tl165698166202%_
                             _%e165699166205%_
                             _%hd165700166208%_
                             _%tl165701166210%_
                             _%e165702166213%_
                             _%hd165703166216%_
                             _%tl165704166218%_))))
                     (_%__match171428171429%_
                      (lambda (_%e165630166278%_
                               _%hd165631166281%_
                               _%tl165632166283%_
                               _%e165633166286%_
                               _%hd165634166289%_
                               _%tl165635166291%_
                               _%e165636166294%_
                               _%hd165637166297%_
                               _%tl165638166299%_
                               _%e165639166302%_
                               _%hd165640166305%_
                               _%tl165641166307%_
                               _%e165642166310%_
                               _%hd165643166313%_
                               _%tl165644166315%_
                               _%e165645166318%_
                               _%hd165646166321%_
                               _%tl165647166323%_
                               _%e165648166326%_
                               _%hd165649166329%_
                               _%tl165650166331%_
                               _%e165651166334%_
                               _%hd165652166337%_
                               _%tl165653166339%_
                               _%e165654166342%_
                               _%hd165655166345%_
                               _%tl165656166347%_
                               _%e165657166350%_
                               _%hd165658166353%_
                               _%tl165659166355%_
                               _%e165660166358%_
                               _%hd165661166361%_
                               _%tl165662166363%_
                               _%e165663166366%_
                               _%hd165664166369%_
                               _%tl165665166371%_
                               _%e165666166374%_
                               _%hd165667166377%_
                               _%tl165668166379%_
                               _%__splice171221171222%_
                               _%target165669166382%_
                               _%tl165671166384%_)
                        (letrec ((_%loop165672166387%_
                                  (lambda (_%hd165670166390%_
                                           _%args165676166392%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165670166390%_))
                                        (let ((_%e165673166395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165670166390%_))))
                                          (let ((_%lp-tl165675166400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165673166395%_)))
                                                (_%lp-hd165674166398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165673166395%_))))
                                            (_%loop165672166387%_
                                             _%lp-tl165675166400%_
                                             (cons _%lp-hd165674166398%_
                                                   _%args165676166392%_))))
                                        (let ((_%args165677166403%_
                                               (reverse _%args165676166392%_)))
                                          (let ((_%L166406%_
                                                 _%args165677166403%_)
                                                (_%L166407%_
                                                 _%hd165667166377%_)
                                                (_%L166408%_
                                                 _%hd165658166353%_)
                                                (_%L166409%_
                                                 _%hd165649166329%_)
                                                (_%L166410%_
                                                 _%hd165640166305%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166410%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166409%_
                                                        'call-method))
                                                     (let ((__tmp171868
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165569%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166408%_
                                                        __tmp171868)))
                                                (_%__kont171219171220%_
                                                 _%L166406%_
                                                 _%L166407%_
                                                 _%L166408%_
                                                 _%L166409%_
                                                 _%L166410%_)
                                                (_%__kont171231171232%_))))))))
                          (_%loop165672166387%_ _%target165669166382%_ '()))))
                     (_%__match171386171387%_
                      (lambda (_%e165630166278%_
                               _%hd165631166281%_
                               _%tl165632166283%_
                               _%e165633166286%_
                               _%hd165634166289%_
                               _%tl165635166291%_
                               _%e165636166294%_
                               _%hd165637166297%_
                               _%tl165638166299%_
                               _%e165639166302%_
                               _%hd165640166305%_
                               _%tl165641166307%_
                               _%e165642166310%_
                               _%hd165643166313%_
                               _%tl165644166315%_
                               _%e165645166318%_
                               _%hd165646166321%_
                               _%tl165647166323%_
                               _%e165648166326%_
                               _%hd165649166329%_
                               _%tl165650166331%_
                               _%e165651166334%_
                               _%hd165652166337%_
                               _%tl165653166339%_
                               _%e165654166342%_
                               _%hd165655166345%_
                               _%tl165656166347%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165655166345%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165656166347%_))
                                (let ((_%e165657166350%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165656166347%_))))
                                  (let ((_%tl165659166355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165657166350%_)))
                                        (_%hd165658166353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165657166350%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165659166355%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165653166339%_))
                                            (let ((_%e165660166358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165653166339%_))))
                                              (let ((_%tl165662166363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165660166358%_)))
                                                    (_%hd165661166361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165660166358%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165661166361%_))
                                                    (let ((_%e165663166366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165661166361%_))))
                                                      (let ((_%tl165665166371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165663166366%_)))
                    (_%hd165664166369%_
                     (let () (declare (not safe)) (##car _%e165663166366%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165664166369%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165664166369%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165665166371%_))
                            (let ((_%e165666166374%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165665166371%_))))
                              (let ((_%tl165668166379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165666166374%_)))
                                    (_%hd165667166377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165666166374%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165668166379%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165662166363%_))
                                        (let ((_%__splice171221171222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165662166363%_
                                                  '0))))
                                          (let ((_%tl165671166384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171221171222%_
                                                    '1)))
                                                (_%target165669166382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171221171222%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165671166384%_))
                                                (_%__match171428171429%_
                                                 _%e165630166278%_
                                                 _%hd165631166281%_
                                                 _%tl165632166283%_
                                                 _%e165633166286%_
                                                 _%hd165634166289%_
                                                 _%tl165635166291%_
                                                 _%e165636166294%_
                                                 _%hd165637166297%_
                                                 _%tl165638166299%_
                                                 _%e165639166302%_
                                                 _%hd165640166305%_
                                                 _%tl165641166307%_
                                                 _%e165642166310%_
                                                 _%hd165643166313%_
                                                 _%tl165644166315%_
                                                 _%e165645166318%_
                                                 _%hd165646166321%_
                                                 _%tl165647166323%_
                                                 _%e165648166326%_
                                                 _%hd165649166329%_
                                                 _%tl165650166331%_
                                                 _%e165651166334%_
                                                 _%hd165652166337%_
                                                 _%tl165653166339%_
                                                 _%e165654166342%_
                                                 _%hd165655166345%_
                                                 _%tl165656166347%_
                                                 _%e165657166350%_
                                                 _%hd165658166353%_
                                                 _%tl165659166355%_
                                                 _%e165660166358%_
                                                 _%hd165661166361%_
                                                 _%tl165662166363%_
                                                 _%e165663166366%_
                                                 _%hd165664166369%_
                                                 _%tl165665166371%_
                                                 _%e165666166374%_
                                                 _%hd165667166377%_
                                                 _%tl165668166379%_
                                                 _%__splice171221171222%_
                                                 _%target165669166382%_
                                                 _%tl165671166384%_)
                                                (_%__kont171231171232%_))))
                                        (_%__kont171231171232%_))
                                    (_%__kont171231171232%_))))
                            (_%__kont171231171232%_))
                        (_%__kont171231171232%_))
                    (_%__kont171231171232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171231171232%_))))
                                            (_%__match171710171711%_
                                             _%e165630166278%_
                                             _%hd165631166281%_
                                             _%tl165632166283%_
                                             _%e165633166286%_
                                             _%hd165634166289%_
                                             _%tl165635166291%_
                                             _%e165636166294%_
                                             _%hd165637166297%_
                                             _%tl165638166299%_
                                             _%e165639166302%_
                                             _%hd165640166305%_
                                             _%tl165641166307%_
                                             _%e165642166310%_
                                             _%hd165643166313%_
                                             _%tl165644166315%_
                                             _%e165645166318%_
                                             _%hd165646166321%_
                                             _%tl165647166323%_
                                             _%e165648166326%_
                                             _%hd165649166329%_
                                             _%tl165650166331%_
                                             _%e165651166334%_
                                             _%hd165652166337%_
                                             _%tl165653166339%_))
                                        (_%__match171710171711%_
                                         _%e165630166278%_
                                         _%hd165631166281%_
                                         _%tl165632166283%_
                                         _%e165633166286%_
                                         _%hd165634166289%_
                                         _%tl165635166291%_
                                         _%e165636166294%_
                                         _%hd165637166297%_
                                         _%tl165638166299%_
                                         _%e165639166302%_
                                         _%hd165640166305%_
                                         _%tl165641166307%_
                                         _%e165642166310%_
                                         _%hd165643166313%_
                                         _%tl165644166315%_
                                         _%e165645166318%_
                                         _%hd165646166321%_
                                         _%tl165647166323%_
                                         _%e165648166326%_
                                         _%hd165649166329%_
                                         _%tl165650166331%_
                                         _%e165651166334%_
                                         _%hd165652166337%_
                                         _%tl165653166339%_))))
                                (_%__match171710171711%_
                                 _%e165630166278%_
                                 _%hd165631166281%_
                                 _%tl165632166283%_
                                 _%e165633166286%_
                                 _%hd165634166289%_
                                 _%tl165635166291%_
                                 _%e165636166294%_
                                 _%hd165637166297%_
                                 _%tl165638166299%_
                                 _%e165639166302%_
                                 _%hd165640166305%_
                                 _%tl165641166307%_
                                 _%e165642166310%_
                                 _%hd165643166313%_
                                 _%tl165644166315%_
                                 _%e165645166318%_
                                 _%hd165646166321%_
                                 _%tl165647166323%_
                                 _%e165648166326%_
                                 _%hd165649166329%_
                                 _%tl165650166331%_
                                 _%e165651166334%_
                                 _%hd165652166337%_
                                 _%tl165653166339%_))
                            (_%__match171496171497%_
                             _%e165630166278%_
                             _%hd165631166281%_
                             _%tl165632166283%_
                             _%e165633166286%_
                             _%hd165634166289%_
                             _%tl165635166291%_
                             _%e165636166294%_
                             _%hd165637166297%_
                             _%tl165638166299%_
                             _%e165639166302%_
                             _%hd165640166305%_
                             _%tl165641166307%_
                             _%e165642166310%_
                             _%hd165643166313%_
                             _%tl165644166315%_
                             _%e165645166318%_
                             _%hd165646166321%_
                             _%tl165647166323%_
                             _%e165648166326%_
                             _%hd165649166329%_
                             _%tl165650166331%_
                             _%e165651166334%_
                             _%hd165652166337%_
                             _%tl165653166339%_
                             _%e165654166342%_
                             _%hd165655166345%_
                             _%tl165656166347%_))))
                     (_%__match171318171319%_
                      (lambda (_%e165586166470%_
                               _%hd165587166473%_
                               _%tl165588166475%_
                               _%e165589166478%_
                               _%hd165590166481%_
                               _%tl165591166483%_
                               _%e165592166486%_
                               _%hd165593166489%_
                               _%tl165594166491%_
                               _%e165595166494%_
                               _%hd165596166497%_
                               _%tl165597166499%_
                               _%e165598166502%_
                               _%hd165599166505%_
                               _%tl165600166507%_
                               _%e165601166510%_
                               _%hd165602166513%_
                               _%tl165603166515%_
                               _%e165604166518%_
                               _%hd165605166521%_
                               _%tl165606166523%_
                               _%e165607166526%_
                               _%hd165608166529%_
                               _%tl165609166531%_
                               _%e165610166534%_
                               _%hd165611166537%_
                               _%tl165612166539%_
                               _%e165613166542%_
                               _%hd165614166545%_
                               _%tl165615166547%_
                               _%__splice171217171218%_
                               _%target165616166550%_
                               _%tl165618166552%_)
                        (letrec ((_%loop165619166555%_
                                  (lambda (_%hd165617166558%_
                                           _%args165623166560%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165617166558%_))
                                        (let ((_%e165620166563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165617166558%_))))
                                          (let ((_%lp-tl165622166568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165620166563%_)))
                                                (_%lp-hd165621166566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165620166563%_))))
                                            (_%loop165619166555%_
                                             _%lp-tl165622166568%_
                                             (cons _%lp-hd165621166566%_
                                                   _%args165623166560%_))))
                                        (let ((_%args165624166571%_
                                               (reverse _%args165623166560%_)))
                                          (let ((_%L166574%_
                                                 _%args165624166571%_)
                                                (_%L166575%_
                                                 _%hd165614166545%_)
                                                (_%L166576%_
                                                 _%hd165605166521%_)
                                                (_%L166577%_
                                                 _%hd165596166497%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166577%_
                                                        'call-method))
                                                     (let ((__tmp171869
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165569%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166576%_
                                                        __tmp171869)))
                                                (_%__kont171215171216%_
                                                 _%L166574%_
                                                 _%L166575%_
                                                 _%L166576%_
                                                 _%L166577%_)
                                                (_%__match171506171507%_
                                                 _%e165586166470%_
                                                 _%hd165587166473%_
                                                 _%tl165588166475%_
                                                 _%e165589166478%_
                                                 _%hd165590166481%_
                                                 _%tl165591166483%_
                                                 _%e165592166486%_
                                                 _%hd165593166489%_
                                                 _%tl165594166491%_
                                                 _%e165595166494%_
                                                 _%hd165596166497%_
                                                 _%tl165597166499%_
                                                 _%e165598166502%_
                                                 _%hd165599166505%_
                                                 _%tl165600166507%_
                                                 _%e165601166510%_
                                                 _%hd165602166513%_
                                                 _%tl165603166515%_
                                                 _%e165604166518%_
                                                 _%hd165605166521%_
                                                 _%tl165606166523%_
                                                 _%e165607166526%_
                                                 _%hd165608166529%_
                                                 _%tl165609166531%_
                                                 _%e165610166534%_
                                                 _%hd165611166537%_
                                                 _%tl165612166539%_
                                                 _%e165613166542%_
                                                 _%hd165614166545%_
                                                 _%tl165615166547%_))))))))
                          (_%loop165619166555%_ _%target165616166550%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171213171214%_))
                    (let ((_%e165586166470%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171213171214%_))))
                      (let ((_%tl165588166475%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165586166470%_)))
                            (_%hd165587166473%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165586166470%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165588166475%_))
                            (let ((_%e165589166478%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165588166475%_))))
                              (let ((_%tl165591166483%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165589166478%_)))
                                    (_%hd165590166481%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165589166478%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165590166481%_))
                                    (let ((_%e165592166486%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165590166481%_))))
                                      (let ((_%tl165594166491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165592166486%_)))
                                            (_%hd165593166489%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165592166486%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165593166489%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165593166489%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165594166491%_))
                                                    (let ((_%e165595166494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165594166491%_))))
                                                      (let ((_%tl165597166499%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165595166494%_)))
                    (_%hd165596166497%_
                     (let () (declare (not safe)) (##car _%e165595166494%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165597166499%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165591166483%_))
                        (let ((_%e165598166502%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165591166483%_))))
                          (let ((_%tl165600166507%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165598166502%_)))
                                (_%hd165599166505%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165598166502%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165599166505%_))
                                (let ((_%e165601166510%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165599166505%_))))
                                  (let ((_%tl165603166515%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165601166510%_)))
                                        (_%hd165602166513%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165601166510%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165602166513%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165602166513%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165603166515%_))
                                                (let ((_%e165604166518%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165603166515%_))))
                                                  (let ((_%tl165606166523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165604166518%_)))
                                                        (_%hd165605166521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165604166518%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165606166523%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165600166507%_))
                                                            (let ((_%e165607166526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165600166507%_))))
                      (let ((_%tl165609166531%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165607166526%_)))
                            (_%hd165608166529%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165607166526%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165608166529%_))
                            (let ((_%e165610166534%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165608166529%_))))
                              (let ((_%tl165612166539%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165610166534%_)))
                                    (_%hd165611166537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165610166534%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165611166537%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165611166537%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165612166539%_))
                                            (let ((_%e165613166542%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165612166539%_))))
                                              (let ((_%tl165615166547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165613166542%_)))
                                                    (_%hd165614166545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165613166542%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165615166547%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165609166531%_))
                                                        (let ((_%__splice171217171218%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165609166531%_ '0))))
                  (let ((_%tl165618166552%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171217171218%_ '1)))
                        (_%target165616166550%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171217171218%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165618166552%_))
                        (_%__match171318171319%_
                         _%e165586166470%_
                         _%hd165587166473%_
                         _%tl165588166475%_
                         _%e165589166478%_
                         _%hd165590166481%_
                         _%tl165591166483%_
                         _%e165592166486%_
                         _%hd165593166489%_
                         _%tl165594166491%_
                         _%e165595166494%_
                         _%hd165596166497%_
                         _%tl165597166499%_
                         _%e165598166502%_
                         _%hd165599166505%_
                         _%tl165600166507%_
                         _%e165601166510%_
                         _%hd165602166513%_
                         _%tl165603166515%_
                         _%e165604166518%_
                         _%hd165605166521%_
                         _%tl165606166523%_
                         _%e165607166526%_
                         _%hd165608166529%_
                         _%tl165609166531%_
                         _%e165610166534%_
                         _%hd165611166537%_
                         _%tl165612166539%_
                         _%e165613166542%_
                         _%hd165614166545%_
                         _%tl165615166547%_
                         _%__splice171217171218%_
                         _%target165616166550%_
                         _%tl165618166552%_)
                        (_%__match171506171507%_
                         _%e165586166470%_
                         _%hd165587166473%_
                         _%tl165588166475%_
                         _%e165589166478%_
                         _%hd165590166481%_
                         _%tl165591166483%_
                         _%e165592166486%_
                         _%hd165593166489%_
                         _%tl165594166491%_
                         _%e165595166494%_
                         _%hd165596166497%_
                         _%tl165597166499%_
                         _%e165598166502%_
                         _%hd165599166505%_
                         _%tl165600166507%_
                         _%e165601166510%_
                         _%hd165602166513%_
                         _%tl165603166515%_
                         _%e165604166518%_
                         _%hd165605166521%_
                         _%tl165606166523%_
                         _%e165607166526%_
                         _%hd165608166529%_
                         _%tl165609166531%_
                         _%e165610166534%_
                         _%hd165611166537%_
                         _%tl165612166539%_
                         _%e165613166542%_
                         _%hd165614166545%_
                         _%tl165615166547%_))))
                (_%__match171506171507%_
                 _%e165586166470%_
                 _%hd165587166473%_
                 _%tl165588166475%_
                 _%e165589166478%_
                 _%hd165590166481%_
                 _%tl165591166483%_
                 _%e165592166486%_
                 _%hd165593166489%_
                 _%tl165594166491%_
                 _%e165595166494%_
                 _%hd165596166497%_
                 _%tl165597166499%_
                 _%e165598166502%_
                 _%hd165599166505%_
                 _%tl165600166507%_
                 _%e165601166510%_
                 _%hd165602166513%_
                 _%tl165603166515%_
                 _%e165604166518%_
                 _%hd165605166521%_
                 _%tl165606166523%_
                 _%e165607166526%_
                 _%hd165608166529%_
                 _%tl165609166531%_
                 _%e165610166534%_
                 _%hd165611166537%_
                 _%tl165612166539%_
                 _%e165613166542%_
                 _%hd165614166545%_
                 _%tl165615166547%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171710171711%_
                                                     _%e165586166470%_
                                                     _%hd165587166473%_
                                                     _%tl165588166475%_
                                                     _%e165589166478%_
                                                     _%hd165590166481%_
                                                     _%tl165591166483%_
                                                     _%e165592166486%_
                                                     _%hd165593166489%_
                                                     _%tl165594166491%_
                                                     _%e165595166494%_
                                                     _%hd165596166497%_
                                                     _%tl165597166499%_
                                                     _%e165598166502%_
                                                     _%hd165599166505%_
                                                     _%tl165600166507%_
                                                     _%e165601166510%_
                                                     _%hd165602166513%_
                                                     _%tl165603166515%_
                                                     _%e165604166518%_
                                                     _%hd165605166521%_
                                                     _%tl165606166523%_
                                                     _%e165607166526%_
                                                     _%hd165608166529%_
                                                     _%tl165609166531%_))))
                                            (_%__match171710171711%_
                                             _%e165586166470%_
                                             _%hd165587166473%_
                                             _%tl165588166475%_
                                             _%e165589166478%_
                                             _%hd165590166481%_
                                             _%tl165591166483%_
                                             _%e165592166486%_
                                             _%hd165593166489%_
                                             _%tl165594166491%_
                                             _%e165595166494%_
                                             _%hd165596166497%_
                                             _%tl165597166499%_
                                             _%e165598166502%_
                                             _%hd165599166505%_
                                             _%tl165600166507%_
                                             _%e165601166510%_
                                             _%hd165602166513%_
                                             _%tl165603166515%_
                                             _%e165604166518%_
                                             _%hd165605166521%_
                                             _%tl165606166523%_
                                             _%e165607166526%_
                                             _%hd165608166529%_
                                             _%tl165609166531%_))
                                        (_%__match171386171387%_
                                         _%e165586166470%_
                                         _%hd165587166473%_
                                         _%tl165588166475%_
                                         _%e165589166478%_
                                         _%hd165590166481%_
                                         _%tl165591166483%_
                                         _%e165592166486%_
                                         _%hd165593166489%_
                                         _%tl165594166491%_
                                         _%e165595166494%_
                                         _%hd165596166497%_
                                         _%tl165597166499%_
                                         _%e165598166502%_
                                         _%hd165599166505%_
                                         _%tl165600166507%_
                                         _%e165601166510%_
                                         _%hd165602166513%_
                                         _%tl165603166515%_
                                         _%e165604166518%_
                                         _%hd165605166521%_
                                         _%tl165606166523%_
                                         _%e165607166526%_
                                         _%hd165608166529%_
                                         _%tl165609166531%_
                                         _%e165610166534%_
                                         _%hd165611166537%_
                                         _%tl165612166539%_))
                                    (_%__match171710171711%_
                                     _%e165586166470%_
                                     _%hd165587166473%_
                                     _%tl165588166475%_
                                     _%e165589166478%_
                                     _%hd165590166481%_
                                     _%tl165591166483%_
                                     _%e165592166486%_
                                     _%hd165593166489%_
                                     _%tl165594166491%_
                                     _%e165595166494%_
                                     _%hd165596166497%_
                                     _%tl165597166499%_
                                     _%e165598166502%_
                                     _%hd165599166505%_
                                     _%tl165600166507%_
                                     _%e165601166510%_
                                     _%hd165602166513%_
                                     _%tl165603166515%_
                                     _%e165604166518%_
                                     _%hd165605166521%_
                                     _%tl165606166523%_
                                     _%e165607166526%_
                                     _%hd165608166529%_
                                     _%tl165609166531%_))))
                            (_%__match171710171711%_
                             _%e165586166470%_
                             _%hd165587166473%_
                             _%tl165588166475%_
                             _%e165589166478%_
                             _%hd165590166481%_
                             _%tl165591166483%_
                             _%e165592166486%_
                             _%hd165593166489%_
                             _%tl165594166491%_
                             _%e165595166494%_
                             _%hd165596166497%_
                             _%tl165597166499%_
                             _%e165598166502%_
                             _%hd165599166505%_
                             _%tl165600166507%_
                             _%e165601166510%_
                             _%hd165602166513%_
                             _%tl165603166515%_
                             _%e165604166518%_
                             _%hd165605166521%_
                             _%tl165606166523%_
                             _%e165607166526%_
                             _%hd165608166529%_
                             _%tl165609166531%_))))
                    (_%__match171648171649%_
                     _%e165586166470%_
                     _%hd165587166473%_
                     _%tl165588166475%_
                     _%e165589166478%_
                     _%hd165590166481%_
                     _%tl165591166483%_
                     _%e165592166486%_
                     _%hd165593166489%_
                     _%tl165594166491%_
                     _%e165595166494%_
                     _%hd165596166497%_
                     _%tl165597166499%_
                     _%e165598166502%_
                     _%hd165599166505%_
                     _%tl165600166507%_
                     _%e165601166510%_
                     _%hd165602166513%_
                     _%tl165603166515%_
                     _%e165604166518%_
                     _%hd165605166521%_
                     _%tl165606166523%_))
                (_%__kont171231171232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171231171232%_))
                                            (_%__kont171231171232%_))
                                        (_%__kont171231171232%_))))
                                (_%__kont171231171232%_))))
                        (_%__kont171231171232%_))
                    (_%__kont171231171232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171231171232%_))
                                                (_%__kont171231171232%_))
                                            (_%__kont171231171232%_))))
                                    (_%__kont171231171232%_))))
                            (_%__kont171231171232%_))))
                    (_%__kont171231171232%_))))))))))
