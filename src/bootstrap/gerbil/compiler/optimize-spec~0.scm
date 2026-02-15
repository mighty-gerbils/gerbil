(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771178568)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp235715 (list gxc#::identity::t))
            (__tmp235714 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp235715
         '()
         __tmp235714
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args234512%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args234512%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp235716
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
        (__make-atomic-promise __tmp235716)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx234504%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self234507%_
                (let ((__obj235707
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj235707))
               (__tmp235717
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234507%_ _%stx234504%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235717
           gxc#current-compile-method
           _%self234507%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp235719 (list gxc#::false::t))
            (__tmp235718 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp235719
         '()
         __tmp235718
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args234501%_
        (apply make-instance gxc#::extract-receiver::t _%$args234501%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp235720
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
        (__make-atomic-promise __tmp235720)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx234493%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self234496%_
                (let ((__obj235709
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj235709))
               (__tmp235721
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234496%_ _%stx234493%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235721
           gxc#current-compile-method
           _%self234496%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp235723 (list gxc#::void::t))
            (__tmp235722 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp235723
         '(receiver methods slots)
         __tmp235722
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args234490%_
        (apply make-instance gxc#::collect-object-refs::t _%$args234490%_)))
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
      (let ((__tmp235724
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
        (__make-atomic-promise __tmp235724)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords234459%_
               _%receiver234454234460%_
               _%methods234455234461%_
               _%slots234456234462%_
               _%stx234463%_)
        (let* ((_%receiver234466%_
                (if (eq? _%receiver234454234460%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234454234460%_))
               (_%methods234468%_
                (if (eq? _%methods234455234461%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234455234461%_))
               (_%slots234470%_
                (if (eq? _%slots234456234462%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234456234462%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self234472%_
                  (let ((__obj235711
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
                       __obj235711
                       _%receiver234466%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235711
                       _%methods234468%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235711
                       _%slots234470%_
                       '3
                       '#f
                       '#f))
                    __obj235711))
                 (__tmp235725
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self234472%_ _%stx234463%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235725
             gxc#current-compile-method
             _%self234472%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords234479%_ . _%args234480%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords234479%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234479%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234479%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234479%_
                  'slots:
                  absent-value))
               _%args234480%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args234457234486%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args234457234486%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp235727 (list gxc#::basic-xform-expression::t))
            (__tmp235726 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp235727
         '(receiver klass methods slots)
         __tmp235726
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args234450%_
        (apply make-instance gxc#::subst-object-refs::t _%$args234450%_)))
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
      (let ((__tmp235728
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
        (__make-atomic-promise __tmp235728)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords234416%_
               _%receiver234410234417%_
               _%klass234411234418%_
               _%methods234412234419%_
               _%slots234413234420%_
               _%stx234421%_)
        (let* ((_%receiver234424%_
                (if (eq? _%receiver234410234417%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234410234417%_))
               (_%klass234426%_
                (if (eq? _%klass234411234418%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass234411234418%_))
               (_%methods234428%_
                (if (eq? _%methods234412234419%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234412234419%_))
               (_%slots234430%_
                (if (eq? _%slots234413234420%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234413234420%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self234432%_
                  (let ((__obj235713
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
                       __obj235713
                       _%receiver234424%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235713
                       _%klass234426%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235713
                       _%methods234428%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235713
                       _%slots234430%_
                       '4
                       '#f
                       '#f))
                    __obj235713))
                 (__tmp235729
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self234432%_ _%stx234421%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235729
             gxc#current-compile-method
             _%self234432%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords234439%_ . _%args234440%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords234439%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234439%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234439%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234439%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234439%_
                  'slots:
                  absent-value))
               _%args234440%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args234414234446%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args234414234446%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self231541%_ _%stx231542%_)
        (letrec ((_%generate-method-bind231544%_
                  (lambda (_%$klass234402%_
                           _%$method-table234403%_
                           _%id234404%_
                           _%$id234405%_)
                    (let ((_%$tmp234407%_
                           (let ((__tmp235730
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235730))))
                      (cons (cons _%$id234405%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp234407%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table234403%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id234404%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp234407%_ '()))
                    (cons (cons '%#ref (cons _%$tmp234407%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id234404%_
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
                 (_%generate-slot-bind231545%_
                  (lambda (_%$klass234396%_ _%id234397%_ _%$id234398%_)
                    (let ((_%$tmp234400%_
                           (let ((__tmp235731
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235731))))
                      (cons (cons _%$id234398%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp234400%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass234396%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id234397%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp234400%_ '()))
                        (cons (cons '%#ref (cons _%$tmp234400%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id234397%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl231546%_
                  (lambda (_%$klass234390%_
                           _%$method-table234391%_
                           _%methods-bind234392%_
                           _%slots-bind234393%_
                           _%specializer-impl234394%_)
                    (let ((__tmp235732
                           (cons '%#lambda
                                 (cons (cons _%$klass234390%_
                                             (cons _%$method-table234391%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind234393%_
                                                            _%methods-bind234392%_))
                                                         (cons _%specializer-impl234394%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235732 _%stx231542%_))))
                 (_%generate-specializer-def231547%_
                  (lambda (_%id234386%_
                           _%specializer-id234387%_
                           _%specializer-impl234388%_)
                    (let ((__tmp235733
                           (cons '%#begin
                                 (cons _%stx231542%_
                                       (cons (let ((__tmp235734
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id234387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl234388%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235734
                                                _%stx231542%_))
                                             (cons (let ((__tmp235735
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id234386%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id234387%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235735
                                                      _%stx231542%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235733 _%stx231542%_)))))
          (let* ((_%__stx234601234602%_ _%stx231542%_)
                 (_%g231550231570%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234601234602%_)))))
            (let ((_%__kont234603234604%_
                   (lambda (_%g231552231614%_ _%g231553231615%_)
                     (let ((_%method-calls231634%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs231635%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty231636%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?231638%_
                                 (lambda ()
                                   (if (let ((__tmp235736
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls231634%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235736))
                                       (let ((__tmp235737
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs231635%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235737))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g231552231614%_))
                             (let* ((_%__stx234515234516%_ _%g231552231614%_)
                                    (_%g232022232040%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx234515234516%_)))))
                               (let ((_%__kont234517234518%_
                                      (lambda (_%g232024232076%_
                                               _%g232025232077%_
                                               _%g232026232078%_)
                                        (let ((_%receiver232098%_
                                               (let ((_%$e232095%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g232024232076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e232095%_
                                                     _%$e232095%_
                                                     _%g232026232078%_))))
                                          (for-each
                                           (lambda (_%g232099232101%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver232098%_
                                              _%method-calls231634%_
                                              _%slot-refs231635%_
                                              _%g232099232101%_))
                                           _%g232024232076%_)
                                          (if (_%no-specializer?231638%_)
                                              _%stx231542%_
                                              (let* ((_%specializer-id232110%_
                                                      (let* ((_%id232104%_
                                                              (let ((__tmp235738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231553231615%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235738 '"::specialize")))
                     (_%specializer-id232107%_
                      (let ((__tmp235739
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231542%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232104%_ __tmp235739))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232107%_))
                _%specializer-id232107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232112%_
                                                      (let ((__tmp235740
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235740)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232114%_
                                                      (let ((__tmp235741
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235741)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232116%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231634%_)))
                                                     (_%$methods232120%_
                                                      (let ((__tmp235742
                                                             (lambda (_%id232118%_)
                                                               (let ((__tmp235743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232118%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235743)))))
                (declare (not safe))
                (##map __tmp235742 _%methods232116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232129%_
                                                      (let ((__tmp235744
                                                             (lambda (_%g232121232124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232122232126%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231634%_
                          _%g232121232124%_
                          _%g232122232126%_)))))
                (declare (not safe))
                (##for-each __tmp235744 _%methods232116%_ _%$methods232120%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232139%_
                                                      (let ((__tmp235745
                                                             (lambda (_%g232131232134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232132232136%_)
                       (_%generate-method-bind231544%_
                        _%$klass232112%_
                        _%$method-table232114%_
                        _%g232131232134%_
                        _%g232132232136%_))))
                (declare (not safe))
                (##map __tmp235745 _%methods232116%_ _%$methods232120%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232141%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231635%_)))
                                                     (_%$slots232145%_
                                                      (let ((__tmp235746
                                                             (lambda (_%id232143%_)
                                                               (let ((__tmp235747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232143%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235747)))))
                (declare (not safe))
                (##map __tmp235746 _%slots232141%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232154%_
                                                      (let ((__tmp235748
                                                             (lambda (_%g232146232149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232147232151%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231635%_
                          _%g232146232149%_
                          _%g232147232151%_)))))
                (declare (not safe))
                (##for-each __tmp235748 _%slots232141%_ _%$slots232145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232163%_
                                                      (let ((__tmp235749
                                                             (lambda (_%g232155232158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232156232160%_)
                       (_%generate-slot-bind231545%_
                        _%$klass232112%_
                        _%g232155232158%_
                        _%g232156232160%_))))
                (declare (not safe))
                (##map __tmp235749 _%slots232141%_ _%$slots232145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body232169%_
                                                      (map (lambda (_%g232164232166%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver232098%_
                                                              _%$klass232112%_
                                                              _%method-calls231634%_
                                                              _%slot-refs231635%_
                                                              _%g232164232166%_))
                                                           _%g232024232076%_))
                                                     (_%specializer-impl232171%_
                                                      (let ((__tmp235750
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g232026232078%_ _%g232025232077%_)
                                 _%specializer-body232169%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235750 _%stx231542%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232173%_
                                                      (_%generate-specializer-impl231546%_
                                                       _%$klass232112%_
                                                       _%$method-table232114%_
                                                       _%methods-bind232139%_
                                                       _%slots-bind232163%_
                                                       _%specializer-impl232171%_)))
                                                (let ((__tmp235752
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231553231615%_)))
                                                      (__tmp235751
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232110%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235752
                                                   '" => "
                                                   __tmp235751))
                                                (_%generate-specializer-def231547%_
                                                 _%g231553231615%_
                                                 _%specializer-id232110%_
                                                 _%specializer-impl232173%_))))))
                                     (_%__kont234519234520%_
                                      (lambda () _%stx231542%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx234515234516%_))
                                     (let ((_%e232027232052%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx234515234516%_))))
                                       (let ((_%tl232029232057%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e232027232052%_)))
                                             (_%hd232028232055%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e232027232052%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl232029232057%_))
                                             (let ((_%e232030232060%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl232029232057%_))))
                                               (let ((_%tl232032232065%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e232030232060%_)))
                                                     (_%hd232031232063%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e232030232060%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd232031232063%_))
                                                     (let ((_%e232033232068%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd232031232063%_))))
                                                       (let ((_%tl232035232073%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e232033232068%_)))
                     (_%hd232034232071%_
                      (let () (declare (not safe)) (##car _%e232033232068%_))))
                 (_%__kont234517234518%_
                  _%tl232032232065%_
                  _%tl232035232073%_
                  _%hd232034232071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont234519234520%_))))
                                             (_%__kont234519234520%_))))
                                     (_%__kont234519234520%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g231552231614%_))
                                 (let* ((_%g232180232199%_
                                         (lambda (_%g232181232196%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g232181232196%_))))
                                        (_%g232179232495%_
                                         (lambda (_%g232181232202%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g232181232202%_))
                                               (let ((_%e232183232204%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g232181232202%_))))
                                                 (let ((_%hd232184232207%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232183232204%_)))
                                                       (_%tl232185232209%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232183232204%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl232185232209%_))
                                                       (let ((_g235753_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl232185232209%_ '0))))
                 (begin
                   (let ((_g235754_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g235753_)
                                (##values-length _g235753_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g235754_ 2)))
                         (error "Context expects 2 values" _g235754_)))
                   (let ((_%target232186232212%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235753_ 0)))
                         (_%tl232188232214%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235753_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl232188232214%_))
                         (letrec ((_%loop232189232217%_
                                   (lambda (_%hd232187232220%_
                                            _%clause232193232222%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232187232220%_))
                                         (let ((_%e232190232224%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232187232220%_))))
                                           (let ((_%lp-hd232191232227%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232190232224%_)))
                                                 (_%lp-tl232192232229%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232190232224%_))))
                                             (_%loop232189232217%_
                                              _%lp-tl232192232229%_
                                              (cons _%lp-hd232191232227%_
                                                    _%clause232193232222%_))))
                                         (let ((_%clause232194232232%_
                                                (reverse _%clause232193232222%_)))
                                           ((lambda (_%g232182232234%_)
                                              (for-each
                                               (lambda (_%clause232248%_)
                                                 (let* ((_%__stx234541234542%_
                                                         _%clause232248%_)
                                                        (_%g232251232266%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx234541234542%_)))))
                                                   (let ((_%__kont234543234544%_
                                                          (lambda (_%g232253232294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g232254232295%_
                           _%g232255232296%_)
                    (let ((_%receiver232315%_
                           (let ((_%$e232312%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g232253232294%_))))
                             (if _%$e232312%_
                                 _%$e232312%_
                                 _%g232255232296%_))))
                      (for-each
                       (lambda (_%g232316232318%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver232315%_
                          _%method-calls231634%_
                          _%slot-refs231635%_
                          _%g232316232318%_))
                       _%g232253232294%_))))
                 (_%__kont234545234546%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx234541234542%_))
                                                         (let ((_%e232256232278%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx234541234542%_))))
                   (let ((_%tl232258232283%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e232256232278%_)))
                         (_%hd232257232281%_
                          (let ()
                            (declare (not safe))
                            (##car _%e232256232278%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd232257232281%_))
                         (let ((_%e232259232286%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd232257232281%_))))
                           (let ((_%tl232261232291%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e232259232286%_)))
                                 (_%hd232260232289%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e232259232286%_))))
                             (_%__kont234543234544%_
                              _%tl232258232283%_
                              _%tl232261232291%_
                              _%hd232260232289%_)))
                         (_%__kont234545234546%_))))
                 (_%__kont234545234546%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp235755
                                                      (lambda (_%g232323232326%_
                                                               _%g232324232328%_)
                                                        (cons _%g232323232326%_
                                                              _%g232324232328%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235755
                                                  '()
                                                  _%g232182232234%_)))
                                              (if (_%no-specializer?231638%_)
                                                  _%stx231542%_
                                                  (let* ((_%specializer-id232337%_
                                                          (let* ((_%id232331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235756
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231553231615%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235756 '"::specialize")))
                         (_%specializer-id232334%_
                          (let ((__tmp235757
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231542%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id232331%_
                             __tmp235757))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id232334%_))
                    _%specializer-id232334%_))
                 (_%$klass232339%_
                  (let ((__tmp235758
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235758)))
                 (_%$method-table232341%_
                  (let ((__tmp235759
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235759)))
                 (_%methods232343%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231634%_)))
                 (_%$methods232347%_
                  (let ((__tmp235760
                         (lambda (_%id232345%_)
                           (let ((__tmp235761 (gensym _%id232345%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235761)))))
                    (declare (not safe))
                    (##map __tmp235760 _%methods232343%_)))
                 (_%_232356%_
                  (let ((__tmp235762
                         (lambda (_%g232348232351%_ _%g232349232353%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231634%_
                              _%g232348232351%_
                              _%g232349232353%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235762
                     _%methods232343%_
                     _%$methods232347%_)))
                 (_%methods-bind232366%_
                  (let ((__tmp235763
                         (lambda (_%g232358232361%_ _%g232359232363%_)
                           (_%generate-method-bind231544%_
                            _%$klass232339%_
                            _%$method-table232341%_
                            _%g232358232361%_
                            _%g232359232363%_))))
                    (declare (not safe))
                    (##map __tmp235763 _%methods232343%_ _%$methods232347%_)))
                 (_%slots232368%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231635%_)))
                 (_%$slots232372%_
                  (let ((__tmp235764
                         (lambda (_%id232370%_)
                           (let ((__tmp235765 (gensym _%id232370%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235765)))))
                    (declare (not safe))
                    (##map __tmp235764 _%slots232368%_)))
                 (_%_232381%_
                  (let ((__tmp235766
                         (lambda (_%g232373232376%_ _%g232374232378%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231635%_
                              _%g232373232376%_
                              _%g232374232378%_)))))
                    (declare (not safe))
                    (##for-each __tmp235766 _%slots232368%_ _%$slots232372%_)))
                 (_%slots-bind232390%_
                  (let ((__tmp235767
                         (lambda (_%g232382232385%_ _%g232383232387%_)
                           (_%generate-slot-bind231545%_
                            _%$klass232339%_
                            _%g232382232385%_
                            _%g232383232387%_))))
                    (declare (not safe))
                    (##map __tmp235767 _%slots232368%_ _%$slots232372%_)))
                 (_%specializer-clauses232488%_
                  (map (lambda (_%clause232392%_)
                         (let* ((_%__stx234561234562%_ _%clause232392%_)
                                (_%g232395232410%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx234561234562%_)))))
                           (let ((_%__kont234563234564%_
                                  (lambda (_%g232397232438%_
                                           _%g232398232439%_
                                           _%g232399232440%_)
                                    (let* ((_%receiver232469%_
                                            (let ((_%$e232466%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g232397232438%_))))
                                              (if _%$e232466%_
                                                  _%$e232466%_
                                                  _%g232399232440%_)))
                                           (_%body232475%_
                                            (map (lambda (_%g232470232472%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver232469%_
                                                    _%$klass232339%_
                                                    _%method-calls231634%_
                                                    _%slot-refs231635%_
                                                    _%g232470232472%_))
                                                 _%g232397232438%_)))
                                      (cons (cons _%g232399232440%_
                                                  _%g232398232439%_)
                                            _%body232475%_))))
                                 (_%__kont234565234566%_
                                  (lambda () _%clause232392%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx234561234562%_))
                                 (let ((_%e232400232422%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx234561234562%_))))
                                   (let ((_%tl232402232427%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e232400232422%_)))
                                         (_%hd232401232425%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e232400232422%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232401232425%_))
                                         (let ((_%e232403232430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232401232425%_))))
                                           (let ((_%tl232405232435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232403232430%_)))
                                                 (_%hd232404232433%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232403232430%_))))
                                             (_%__kont234563234564%_
                                              _%tl232402232427%_
                                              _%tl232405232435%_
                                              _%hd232404232433%_)))
                                         (_%__kont234565234566%_))))
                                 (_%__kont234565234566%_)))))
                       (let ((__tmp235768
                              (lambda (_%g232480232483%_ _%g232481232485%_)
                                (cons _%g232480232483%_ _%g232481232485%_))))
                         (declare (not safe))
                         (foldr__0 __tmp235768 '() _%g232182232234%_))))
                 (_%specializer-impl232490%_
                  (let ((__tmp235769
                         (cons '%#case-lambda _%specializer-clauses232488%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235769 _%stx231542%_)))
                 (_%specializer-impl232492%_
                  (_%generate-specializer-impl231546%_
                   _%$klass232339%_
                   _%$method-table232341%_
                   _%methods-bind232366%_
                   _%slots-bind232390%_
                   _%specializer-impl232490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235771
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231553231615%_)))
                                                          (__tmp235770
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id232337%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235771
                                                       '" => "
                                                       __tmp235770))
                                                    (_%generate-specializer-def231547%_
                                                     _%g231553231615%_
                                                     _%specializer-id232337%_
                                                     _%specializer-impl232492%_))))
                                            _%clause232194232232%_))))))
                           (_%loop232189232217%_ _%target232186232212%_ '()))
                         (_%g232180232199%_ _%g232181232202%_)))))
               (_%g232180232199%_ _%g232181232202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232180232199%_
                                                _%g232181232202%_)))))
                                   (_%g232179232495%_ _%g231552231614%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g231552231614%_))
                                     (let* ((_%g232499232529%_
                                             (lambda (_%g232500232526%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g232500232526%_))))
                                            (_%g232498233156%_
                                             (lambda (_%g232500232532%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g232500232532%_))
                                                   (let ((_%e232504232534%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g232500232532%_))))
                                                     (let ((_%hd232505232537%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232504232534%_)))
                                                           (_%tl232506232539%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232504232534%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl232506232539%_))
                                                           (let ((_%e232507232542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl232506232539%_))))
                     (let ((_%hd232508232545%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232507232542%_)))
                           (_%tl232509232547%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232507232542%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232508232545%_))
                           (let ((_%e232510232550%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232508232545%_))))
                             (let ((_%hd232511232553%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232510232550%_)))
                                   (_%tl232512232555%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232510232550%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232511232553%_))
                                   (let ((_%e232513232558%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232511232553%_))))
                                     (let ((_%hd232514232561%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232513232558%_)))
                                           (_%tl232515232563%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232513232558%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd232514232561%_))
                                           (let ((_%e232516232566%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd232514232561%_))))
                                             (let ((_%hd232517232569%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232516232566%_)))
                                                   (_%tl232518232571%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232516232566%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232518232571%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl232515232563%_))
                                                       (let ((_%e232519232574%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl232515232563%_))))
                 (let ((_%hd232520232577%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232519232574%_)))
                       (_%tl232521232579%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232519232574%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232521232579%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl232512232555%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232509232547%_))
                               (let ((_%e232522232582%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232509232547%_))))
                                 (let ((_%hd232523232585%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232522232582%_)))
                                       (_%tl232524232587%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232522232582%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232524232587%_))
                                       ((lambda (_%g232501232590%_
                                                 _%g232502232591%_
                                                 _%g232503232592%_)
                                          (let* ((_%g232616232634%_
                                                  (lambda (_%g232617232631%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232617232631%_))))
                                                 (_%g232615232690%_
                                                  (lambda (_%g232617232637%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232617232637%_))
                                                        (let ((_%e232621232639%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232617232637%_))))
                  (let ((_%hd232622232642%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232621232639%_)))
                        (_%tl232623232644%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232621232639%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl232623232644%_))
                        (let ((_%e232624232647%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl232623232644%_))))
                          (let ((_%hd232625232650%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e232624232647%_)))
                                (_%tl232626232652%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e232624232647%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd232625232650%_))
                                (let ((_%e232627232655%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd232625232650%_))))
                                  (let ((_%hd232628232658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232627232655%_)))
                                        (_%tl232629232660%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232627232655%_))))
                                    ((lambda (_%g232618232663%_
                                              _%g232619232664%_
                                              _%g232620232665%_)
                                       (let ((_%receiver232684%_
                                              (let ((_%$e232681%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g232618232663%_))))
                                                (if _%$e232681%_
                                                    _%$e232681%_
                                                    _%g232620232665%_))))
                                         (for-each
                                          (lambda (_%g232685232687%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver232684%_
                                             _%method-calls231634%_
                                             _%slot-refs231635%_
                                             _%g232685232687%_))
                                          _%g232618232663%_)))
                                     _%tl232626232652%_
                                     _%tl232629232660%_
                                     _%hd232628232658%_)))
                                (_%g232616232634%_ _%g232617232637%_))))
                        (_%g232616232634%_ _%g232617232637%_))))
                (_%g232616232634%_ _%g232617232637%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232615232690%_
                                             _%g232502232591%_))
                                          (let* ((_%g232693232712%_
                                                  (lambda (_%g232694232709%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232694232709%_))))
                                                 (_%g232692232834%_
                                                  (lambda (_%g232694232715%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232694232715%_))
                                                        (let ((_%e232696232717%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232694232715%_))))
                  (let ((_%hd232697232720%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232696232717%_)))
                        (_%tl232698232722%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232696232717%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232698232722%_))
                        (let ((_g235772_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl232698232722%_
                                  '0))))
                          (begin
                            (let ((_g235773_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g235772_)
                                         (##values-length _g235772_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g235773_ 2)))
                                  (error "Context expects 2 values"
                                         _g235773_)))
                            (let ((_%target232699232725%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235772_ 0)))
                                  (_%tl232701232727%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235772_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232701232727%_))
                                  (letrec ((_%loop232702232730%_
                                            (lambda (_%hd232700232733%_
                                                     _%clause232706232735%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd232700232733%_))
                                                  (let ((_%e232703232737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd232700232733%_))))
                                                    (let ((_%lp-hd232704232740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232703232737%_)))
                                                          (_%lp-tl232705232742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232703232737%_))))
                                                      (_%loop232702232730%_
                                                       _%lp-tl232705232742%_
                                                       (cons _%lp-hd232704232740%_
                                                             _%clause232706232735%_))))
                                                  (let ((_%clause232707232745%_
                                                         (reverse _%clause232706232735%_)))
                                                    ((lambda (_%g232695232747%_)
                                                       (for-each
                                                        (lambda (_%clause232760%_)
                                                          (let* ((_%g232762232777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g232763232774%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g232763232774%_))))
                         (_%g232761232824%_
                          (lambda (_%g232763232780%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g232763232780%_))
                                (let ((_%e232767232782%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g232763232780%_))))
                                  (let ((_%hd232768232785%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232767232782%_)))
                                        (_%tl232769232787%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232767232782%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232768232785%_))
                                        (let ((_%e232770232790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232768232785%_))))
                                          (let ((_%hd232771232793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232770232790%_)))
                                                (_%tl232772232795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232770232790%_))))
                                            ((lambda (_%g232764232798%_
                                                      _%g232765232799%_
                                                      _%g232766232800%_)
                                               (let ((_%receiver232818%_
                                                      (let ((_%$e232815%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g232764232798%_))))
                (if _%$e232815%_ _%$e232815%_ _%g232766232800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g232819232821%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver232818%_
                                                     _%method-calls231634%_
                                                     _%slot-refs231635%_
                                                     _%g232819232821%_))
                                                  _%g232764232798%_)))
                                             _%tl232769232787%_
                                             _%tl232772232795%_
                                             _%hd232771232793%_)))
                                        (_%g232762232777%_
                                         _%g232763232780%_))))
                                (_%g232762232777%_ _%g232763232780%_)))))
                    (_%g232761232824%_ _%clause232760%_)))
                (let ((__tmp235774
                       (lambda (_%g232826232829%_ _%g232827232831%_)
                         (cons _%g232826232829%_ _%g232827232831%_))))
                  (declare (not safe))
                  (foldr__0 __tmp235774 '() _%g232695232747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause232707232745%_))))))
                                    (_%loop232702232730%_
                                     _%target232699232725%_
                                     '()))
                                  (_%g232693232712%_ _%g232694232715%_)))))
                        (_%g232693232712%_ _%g232694232715%_))))
                (_%g232693232712%_ _%g232694232715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232692232834%_
                                             _%g232501232590%_))
                                          (if (_%no-specializer?231638%_)
                                              _%stx231542%_
                                              (let* ((_%specializer-id232843%_
                                                      (let* ((_%id232837%_
                                                              (let ((__tmp235775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231553231615%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235775 '"::specialize")))
                     (_%specializer-id232840%_
                      (let ((__tmp235776
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231542%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232837%_ __tmp235776))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232840%_))
                _%specializer-id232840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232845%_
                                                      (let ((__tmp235777
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235777)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232847%_
                                                      (let ((__tmp235778
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235778)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232849%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231634%_)))
                                                     (_%$methods232853%_
                                                      (let ((__tmp235779
                                                             (lambda (_%id232851%_)
                                                               (let ((__tmp235780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232851%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235780)))))
                (declare (not safe))
                (##map __tmp235779 _%methods232849%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232862%_
                                                      (let ((__tmp235781
                                                             (lambda (_%g232854232857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232855232859%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231634%_
                          _%g232854232857%_
                          _%g232855232859%_)))))
                (declare (not safe))
                (##for-each __tmp235781 _%methods232849%_ _%$methods232853%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232872%_
                                                      (let ((__tmp235782
                                                             (lambda (_%g232864232867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232865232869%_)
                       (_%generate-method-bind231544%_
                        _%$klass232845%_
                        _%$method-table232847%_
                        _%g232864232867%_
                        _%g232865232869%_))))
                (declare (not safe))
                (##map __tmp235782 _%methods232849%_ _%$methods232853%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232874%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231635%_)))
                                                     (_%$slots232878%_
                                                      (let ((__tmp235783
                                                             (lambda (_%id232876%_)
                                                               (let ((__tmp235784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232876%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235784)))))
                (declare (not safe))
                (##map __tmp235783 _%slots232874%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232887%_
                                                      (let ((__tmp235785
                                                             (lambda (_%g232879232882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232880232884%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231635%_
                          _%g232879232882%_
                          _%g232880232884%_)))))
                (declare (not safe))
                (##for-each __tmp235785 _%slots232874%_ _%$slots232878%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232896%_
                                                      (let ((__tmp235786
                                                             (lambda (_%g232888232891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232889232893%_)
                       (_%generate-slot-bind231545%_
                        _%$klass232845%_
                        _%g232888232891%_
                        _%g232889232893%_))))
                (declare (not safe))
                (##map __tmp235786 _%slots232874%_ _%$slots232878%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr232988%_
                                                      (let* ((_%g232898232916%_
                                                              (lambda (_%g232899232913%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232899232913%_))))
                     (_%g232897232985%_
                      (lambda (_%g232899232919%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232899232919%_))
                            (let ((_%e232903232921%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232899232919%_))))
                              (let ((_%hd232904232924%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232903232921%_)))
                                    (_%tl232905232926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232903232921%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232905232926%_))
                                    (let ((_%e232906232929%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232905232926%_))))
                                      (let ((_%hd232907232932%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232906232929%_)))
                                            (_%tl232908232934%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232906232929%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232907232932%_))
                                            (let ((_%e232909232937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232907232932%_))))
                                              (let ((_%hd232910232940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232909232937%_)))
                                                    (_%tl232911232942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232909232937%_))))
                                                ((lambda (_%g232900232945%_
                                                          _%g232901232946%_
                                                          _%g232902232947%_)
                                                   (let* ((_%receiver232976%_
                                                           (let ((_%$e232973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g232900232945%_))))
                     (if _%$e232973%_ _%$e232973%_ _%g232902232947%_)))
                  (_%body232982%_
                   (map (lambda (_%g232977232979%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver232976%_
                           _%$klass232845%_
                           _%method-calls231634%_
                           _%slot-refs231635%_
                           _%g232977232979%_))
                        _%g232900232945%_))
                  (__tmp235787
                   (cons '%#lambda
                         (cons (cons _%g232902232947%_ _%g232901232946%_)
                               _%body232982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235787
                                                      _%g232502232591%_)))
                                                 _%tl232908232934%_
                                                 _%tl232911232942%_
                                                 _%hd232910232940%_)))
                                            (_%g232898232916%_
                                             _%g232899232919%_))))
                                    (_%g232898232916%_ _%g232899232919%_))))
                            (_%g232898232916%_ _%g232899232919%_)))))
                (_%g232897232985%_ _%g232502232591%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr233149%_
                                                      (let* ((_%g232990233009%_
                                                              (lambda (_%g232991233006%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232991233006%_))))
                     (_%g232989233146%_
                      (lambda (_%g232991233012%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232991233012%_))
                            (let ((_%e232993233014%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232991233012%_))))
                              (let ((_%hd232994233017%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232993233014%_)))
                                    (_%tl232995233019%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232993233014%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl232995233019%_))
                                    (let ((_g235788_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl232995233019%_
                                              '0))))
                                      (begin
                                        (let ((_g235789_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g235788_)
                                                     (##values-length
                                                      _g235788_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g235789_ 2)))
                                              (error "Context expects 2 values"
                                                     _g235789_)))
                                        (let ((_%target232996233022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235788_ 0)))
                                              (_%tl232998233024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235788_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232998233024%_))
                                              (letrec ((_%loop232999233027%_
                                                        (lambda (_%hd232997233030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause233003233032%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd232997233030%_))
                      (let ((_%e233000233034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd232997233030%_))))
                        (let ((_%lp-hd233001233037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233000233034%_)))
                              (_%lp-tl233002233039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233000233034%_))))
                          (_%loop232999233027%_
                           _%lp-tl233002233039%_
                           (cons _%lp-hd233001233037%_
                                 _%clause233003233032%_))))
                      (let ((_%clause233004233042%_
                             (reverse _%clause233003233032%_)))
                        ((lambda (_%g232992233044%_)
                           (let* ((_%clauses233144%_
                                   (map (lambda (_%clause233058%_)
                                          (let* ((_%__stx234581234582%_
                                                  _%clause233058%_)
                                                 (_%g233061233076%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx234581234582%_)))))
                                            (let ((_%__kont234583234584%_
                                                   (lambda (_%g233063233104%_
                                                            _%g233064233105%_
                                                            _%g233065233106%_)
                                                     (let* ((_%receiver233125%_
                                                             (let ((_%$e233122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g233063233104%_))))
                       (if _%$e233122%_ _%$e233122%_ _%g233065233106%_)))
                    (_%body233131%_
                     (map (lambda (_%g233126233128%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver233125%_
                             _%$klass232845%_
                             _%method-calls231634%_
                             _%slot-refs231635%_
                             _%g233126233128%_))
                          _%g233063233104%_)))
               (cons (cons _%g233065233106%_ _%g233064233105%_)
                     _%body233131%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234585234586%_
                                                   (lambda ()
                                                     _%clause233058%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx234581234582%_))
                                                  (let ((_%e233066233088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx234581234582%_))))
                                                    (let ((_%tl233068233093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233066233088%_)))
                                                          (_%hd233067233091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233066233088%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd233067233091%_))
                                                          (let ((_%e233069233096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd233067233091%_))))
                    (let ((_%tl233071233101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233069233096%_)))
                          (_%hd233070233099%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233069233096%_))))
                      (_%__kont234583234584%_
                       _%tl233068233093%_
                       _%tl233071233101%_
                       _%hd233070233099%_)))
                  (_%__kont234585234586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234585234586%_)))))
                                        (let ((__tmp235790
                                               (lambda (_%g233136233139%_
                                                        _%g233137233141%_)
                                                 (cons _%g233136233139%_
                                                       _%g233137233141%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp235790
                                           '()
                                           _%g232992233044%_))))
                                  (__tmp235791
                                   (cons '%#case-lambda _%clauses233144%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235791
                              _%g232501232590%_)))
                         _%clause233004233042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop232999233027%_
                                                 _%target232996233022%_
                                                 '()))
                                              (_%g232990233009%_
                                               _%g232991233012%_)))))
                                    (_%g232990233009%_ _%g232991233012%_))))
                            (_%g232990233009%_ _%g232991233012%_)))))
                (_%g232989233146%_ _%g232501232590%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233151%_
                                                      (let ((__tmp235792
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g232503232592%_ '())
                                             (cons _%specializer-lambda-expr232988%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr233149%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235792 _%stx231542%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233153%_
                                                      (_%generate-specializer-impl231546%_
                                                       _%$klass232845%_
                                                       _%$method-table232847%_
                                                       _%methods-bind232872%_
                                                       _%slots-bind232896%_
                                                       _%specializer-impl233151%_)))
                                                (let ((__tmp235794
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231553231615%_)))
                                                      (__tmp235793
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232843%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235794
                                                   '" => "
                                                   __tmp235793))
                                                (_%generate-specializer-def231547%_
                                                 _%g231553231615%_
                                                 _%specializer-id232843%_
                                                 _%specializer-impl233153%_))))
                                        _%hd232523232585%_
                                        _%hd232520232577%_
                                        _%hd232517232569%_)
                                       (_%g232499232529%_ _%g232500232532%_))))
                               (_%g232499232529%_ _%g232500232532%_))
                           (_%g232499232529%_ _%g232500232532%_))
                       (_%g232499232529%_ _%g232500232532%_))))
               (_%g232499232529%_ _%g232500232532%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232499232529%_
                                                    _%g232500232532%_))))
                                           (_%g232499232529%_
                                            _%g232500232532%_))))
                                   (_%g232499232529%_ _%g232500232532%_))))
                           (_%g232499232529%_ _%g232500232532%_))))
                   (_%g232499232529%_ _%g232500232532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232499232529%_
                                                    _%g232500232532%_)))))
                                       (_%g232498233156%_ _%g231552231614%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g231552231614%_))
                                         (let* ((_%g233160233213%_
                                                 (lambda (_%g233161233210%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233161233210%_))))
                                                (_%g233159234378%_
                                                 (lambda (_%g233161233216%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233161233216%_))
                                                       (let ((_%e233167233218%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233161233216%_))))
                 (let ((_%hd233168233221%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233167233218%_)))
                       (_%tl233169233223%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233167233218%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd233168233221%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd233168233221%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233169233223%_))
                               (let ((_%e233170233226%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233169233223%_))))
                                 (let ((_%hd233171233229%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233170233226%_)))
                                       (_%tl233172233231%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233170233226%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233171233229%_))
                                       (let ((_%e233173233234%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233171233229%_))))
                                         (let ((_%hd233174233237%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233173233234%_)))
                                               (_%tl233175233239%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233173233234%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233174233237%_))
                                               (let ((_%e233176233242%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233174233237%_))))
                                                 (let ((_%hd233177233245%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233176233242%_)))
                                                       (_%tl233178233247%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233176233242%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd233177233245%_))
                                                       (let ((_%e233179233250%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd233177233245%_))))
                 (let ((_%hd233180233253%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233179233250%_)))
                       (_%tl233181233255%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233179233250%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233181233255%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl233178233247%_))
                           (let ((_%e233182233258%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl233178233247%_))))
                             (let ((_%hd233183233261%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233182233258%_)))
                                   (_%tl233184233263%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233182233258%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233183233261%_))
                                   (let ((_%e233185233266%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233183233261%_))))
                                     (let ((_%hd233186233269%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233185233266%_)))
                                           (_%tl233187233271%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233185233266%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd233186233269%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd233186233269%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl233187233271%_))
                                                   (let ((_%e233188233274%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl233187233271%_))))
                                                     (let ((_%hd233189233277%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233188233274%_)))
                                                           (_%tl233190233279%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233188233274%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd233189233277%_))
                                                           (let ((_%e233191233282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd233189233277%_))))
                     (let ((_%hd233192233285%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233191233282%_)))
                           (_%tl233193233287%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233191233282%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233192233285%_))
                           (let ((_%e233194233290%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233192233285%_))))
                             (let ((_%hd233195233293%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233194233290%_)))
                                   (_%tl233196233295%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233194233290%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233195233293%_))
                                   (let ((_%e233197233298%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233195233293%_))))
                                     (let ((_%hd233198233301%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233197233298%_)))
                                           (_%tl233199233303%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233197233298%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233199233303%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl233196233295%_))
                                               (let ((_%e233200233306%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl233196233295%_))))
                                                 (let ((_%hd233201233309%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233200233306%_)))
                                                       (_%tl233202233311%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233200233306%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233202233311%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl233193233287%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl233190233279%_))
                       (let ((_%e233203233314%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233190233279%_))))
                         (let ((_%hd233204233317%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233203233314%_)))
                               (_%tl233205233319%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233203233314%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233205233319%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl233184233263%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233175233239%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl233172233231%_))
                                           (let ((_%e233206233322%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl233172233231%_))))
                                             (let ((_%hd233207233325%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233206233322%_)))
                                                   (_%tl233208233327%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233206233322%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233208233327%_))
                                                   ((lambda (_%g233162233330%_
                                                             _%g233163233331%_
                                                             _%g233164233332%_
                                                             _%g233165233333%_
                                                             _%g233166233334%_)
                                                      (let* ((_%g233374233436%_
                                                              (lambda (_%g233375233433%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233375233433%_))))
                     (_%g233373234375%_
                      (lambda (_%g233375233439%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233375233439%_))
                            (let ((_%e233381233441%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233375233439%_))))
                              (let ((_%hd233382233444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233381233441%_)))
                                    (_%tl233383233446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233381233441%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd233382233444%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd233382233444%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl233383233446%_))
                                            (let ((_%e233384233449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl233383233446%_))))
                                              (let ((_%hd233385233452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233384233449%_)))
                                                    (_%tl233386233454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233384233449%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233386233454%_))
                                                    (let ((_%e233387233457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233386233454%_))))
                                                      (let ((_%hd233388233460%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233387233457%_)))
                    (_%tl233389233462%_
                     (let () (declare (not safe)) (##cdr _%e233387233457%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd233388233460%_))
                    (let ((_%e233390233465%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd233388233460%_))))
                      (let ((_%hd233391233468%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233390233465%_)))
                            (_%tl233392233470%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233390233465%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd233391233468%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd233391233468%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233392233470%_))
                                    (let ((_%e233393233473%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233392233470%_))))
                                      (let ((_%hd233394233476%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233393233473%_)))
                                            (_%tl233395233478%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233393233473%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233394233476%_))
                                            (let ((_%e233396233481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233394233476%_))))
                                              (let ((_%hd233397233484%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233396233481%_)))
                                                    (_%tl233398233486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233396233481%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd233397233484%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd233397233484%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl233398233486%_))
                                                            (let ((_%e233399233489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl233398233486%_))))
                      (let ((_%hd233400233492%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233399233489%_)))
                            (_%tl233401233494%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233399233489%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233401233494%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl233395233478%_))
                                (let ((_%e233402233497%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl233395233478%_))))
                                  (let ((_%hd233403233500%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233402233497%_)))
                                        (_%tl233404233502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233402233497%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233403233500%_))
                                        (let ((_%e233405233505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233403233500%_))))
                                          (let ((_%hd233406233508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233405233505%_)))
                                                (_%tl233407233510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233405233505%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd233406233508%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd233406233508%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl233407233510%_))
                                                        (let ((_%e233408233513%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl233407233510%_))))
                  (let ((_%hd233409233516%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233408233513%_)))
                        (_%tl233410233518%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233408233513%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl233410233518%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233404233502%_))
                            (let ((_%e233411233521%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233404233502%_))))
                              (let ((_%hd233412233524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233411233521%_)))
                                    (_%tl233413233526%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233411233521%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd233412233524%_))
                                    (let ((_%e233414233529%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd233412233524%_))))
                                      (let ((_%hd233415233532%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233414233529%_)))
                                            (_%tl233416233534%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233414233529%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd233415233532%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd233415233532%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233416233534%_))
                                                    (let ((_%e233417233537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233416233534%_))))
                                                      (let ((_%hd233418233540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233417233537%_)))
                    (_%tl233419233542%_
                     (let () (declare (not safe)) (##cdr _%e233417233537%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl233419233542%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233413233526%_))
                        (if (let ((__tmp235795
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl233413233526%_))))
                              (declare (not safe))
                              (##fx>= __tmp235795 '1))
                            (let ((_g235796_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233413233526%_
                                      '1))))
                              (begin
                                (let ((_g235797_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235796_)
                                             (##values-length _g235796_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235797_ 2)))
                                      (error "Context expects 2 values"
                                             _g235797_)))
                                (let ((_%target233420233545%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235796_ 0)))
                                      (_%tl233422233547%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235796_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl233422233547%_))
                                      (let ((_%e233429233550%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl233422233547%_))))
                                        (let ((_%hd233430233553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233429233550%_)))
                                              (_%tl233431233555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233429233550%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl233431233555%_))
                                              (letrec ((_%loop233423233558%_
                                                        (lambda (_%hd233421233561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref233427233563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233421233561%_))
                      (let ((_%e233424233565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233421233561%_))))
                        (let ((_%lp-hd233425233568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233424233565%_)))
                              (_%lp-tl233426233570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233424233565%_))))
                          (_%loop233423233558%_
                           _%lp-tl233426233570%_
                           (cons _%lp-hd233425233568%_
                                 _%kw-ref233427233563%_))))
                      (let ((_%kw-ref233428233573%_
                             (reverse _%kw-ref233427233563%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233389233462%_))
                            ((lambda (_%g233376233575%_
                                      _%g233377233576%_
                                      _%g233378233577%_
                                      _%g233379233578%_
                                      _%g233380233579%_)
                               (let* ((_%kw-count233630%_
                                       (length (let ((__tmp235798
                                                      (lambda (_%g233622233625%_
                                                               _%g233623233627%_)
                                                        (cons _%g233622233625%_
                                                              _%g233623233627%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235798
                                                  '()
                                                  _%g233377233576%_))))
                                      (_%self-index233632%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count233630%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g233164233332%_))
                                     (let* ((_%g233636233650%_
                                             (lambda (_%g233637233647%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233637233647%_))))
                                            (_%g233635233773%_
                                             (lambda (_%g233637233653%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233637233653%_))
                                                   (let ((_%e233640233655%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233637233653%_))))
                                                     (let ((_%hd233641233658%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233640233655%_)))
                                                           (_%tl233642233660%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233640233655%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233642233660%_))
                                                           (let ((_%e233643233663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233642233660%_))))
                     (let ((_%hd233644233666%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233643233663%_)))
                           (_%tl233645233668%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233643233663%_))))
                       ((lambda (_%g233638233671%_ _%g233639233672%_)
                          (let* ((_%self233689%_
                                  (list-ref
                                   _%g233639233672%_
                                   _%self-index233632%_))
                                 (_%receiver233694%_
                                  (let ((_%$e233691%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g233638233671%_))))
                                    (if _%$e233691%_
                                        _%$e233691%_
                                        _%self233689%_))))
                            (for-each
                             (lambda (_%g233696233698%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver233694%_
                                _%method-calls231634%_
                                _%slot-refs231635%_
                                _%g233696233698%_))
                             _%g233638233671%_)
                            (if (_%no-specializer?231638%_)
                                _%stx231542%_
                                (let* ((_%specializer-id233707%_
                                        (let* ((_%id233701%_
                                                (let ((__tmp235799
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231553231615%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp235799
                                                   '"::specialize")))
                                               (_%specializer-id233704%_
                                                (let ((__tmp235800
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx231542%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id233701%_
                                                   __tmp235800))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id233704%_))
                                          _%specializer-id233704%_))
                                       (_%$klass233709%_
                                        (let ((__tmp235801
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235801)))
                                       (_%$method-table233711%_
                                        (let ((__tmp235802
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235802)))
                                       (_%methods233713%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls231634%_)))
                                       (_%$methods233717%_
                                        (let ((__tmp235803
                                               (lambda (_%id233715%_)
                                                 (let ((__tmp235804
                                                        (gensym _%id233715%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235804)))))
                                          (declare (not safe))
                                          (##map __tmp235803
                                                 _%methods233713%_)))
                                       (_%_233726%_
                                        (let ((__tmp235805
                                               (lambda (_%g233718233721%_
                                                        _%g233719233723%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls231634%_
                                                    _%g233718233721%_
                                                    _%g233719233723%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235805
                                           _%methods233713%_
                                           _%$methods233717%_)))
                                       (_%methods-bind233736%_
                                        (let ((__tmp235806
                                               (lambda (_%g233728233731%_
                                                        _%g233729233733%_)
                                                 (_%generate-method-bind231544%_
                                                  _%$klass233709%_
                                                  _%$method-table233711%_
                                                  _%g233728233731%_
                                                  _%g233729233733%_))))
                                          (declare (not safe))
                                          (##map __tmp235806
                                                 _%methods233713%_
                                                 _%$methods233717%_)))
                                       (_%slots233738%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs231635%_)))
                                       (_%$slots233742%_
                                        (let ((__tmp235807
                                               (lambda (_%id233740%_)
                                                 (let ((__tmp235808
                                                        (gensym _%id233740%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235808)))))
                                          (declare (not safe))
                                          (##map __tmp235807 _%slots233738%_)))
                                       (_%_233751%_
                                        (let ((__tmp235809
                                               (lambda (_%g233743233746%_
                                                        _%g233744233748%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs231635%_
                                                    _%g233743233746%_
                                                    _%g233744233748%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235809
                                           _%slots233738%_
                                           _%$slots233742%_)))
                                       (_%slots-bind233760%_
                                        (let ((__tmp235810
                                               (lambda (_%g233752233755%_
                                                        _%g233753233757%_)
                                                 (_%generate-slot-bind231545%_
                                                  _%$klass233709%_
                                                  _%g233752233755%_
                                                  _%g233753233757%_))))
                                          (declare (not safe))
                                          (##map __tmp235810
                                                 _%slots233738%_
                                                 _%$slots233742%_)))
                                       (_%specializer-impl233768%_
                                        (let* ((_%specializer-body233766%_
                                                (map (lambda (_%g233761233763%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver233694%_
                                                        _%$klass233709%_
                                                        _%method-calls231634%_
                                                        _%slot-refs231635%_
                                                        _%g233761233763%_))
                                                     _%g233638233671%_))
                                               (__tmp235811
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g233166233334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g233165233333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp235812
                                   (cons '%#lambda
                                         (cons _%g233639233672%_
                                               _%specializer-body233766%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp235812
                               _%g233164233332%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g233163233331%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g233162233330%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp235811
                                           _%stx231542%_)))
                                       (_%specializer-impl233770%_
                                        (_%generate-specializer-impl231546%_
                                         _%$klass233709%_
                                         _%$method-table233711%_
                                         _%methods-bind233736%_
                                         _%slots-bind233760%_
                                         _%specializer-impl233768%_)))
                                  (let ((__tmp235814
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g231553231615%_)))
                                        (__tmp235813
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id233707%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp235814
                                     '" => "
                                     __tmp235813))
                                  (_%generate-specializer-def231547%_
                                   _%g231553231615%_
                                   _%specializer-id233707%_
                                   _%specializer-impl233770%_)))))
                        _%tl233645233668%_
                        _%hd233644233666%_)))
                   (_%g233636233650%_ _%g233637233653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233636233650%_
                                                    _%g233637233653%_)))))
                                       (_%g233635233773%_ _%g233164233332%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g233164233332%_))
                                         (let* ((_%g233777233807%_
                                                 (lambda (_%g233778233804%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233778233804%_))))
                                                (_%g233776234371%_
                                                 (lambda (_%g233778233810%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233778233810%_))
                                                       (let ((_%e233782233812%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233778233810%_))))
                 (let ((_%hd233783233815%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233782233812%_)))
                       (_%tl233784233817%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233782233812%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl233784233817%_))
                       (let ((_%e233785233820%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233784233817%_))))
                         (let ((_%hd233786233823%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233785233820%_)))
                               (_%tl233787233825%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233785233820%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd233786233823%_))
                               (let ((_%e233788233828%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd233786233823%_))))
                                 (let ((_%hd233789233831%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233788233828%_)))
                                       (_%tl233790233833%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233788233828%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233789233831%_))
                                       (let ((_%e233791233836%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233789233831%_))))
                                         (let ((_%hd233792233839%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233791233836%_)))
                                               (_%tl233793233841%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233791233836%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233792233839%_))
                                               (let ((_%e233794233844%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233792233839%_))))
                                                 (let ((_%hd233795233847%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233794233844%_)))
                                                       (_%tl233796233849%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233794233844%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233796233849%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233793233841%_))
                                                           (let ((_%e233797233852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233793233841%_))))
                     (let ((_%hd233798233855%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233797233852%_)))
                           (_%tl233799233857%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233797233852%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233799233857%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233790233833%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl233787233825%_))
                                   (let ((_%e233800233860%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl233787233825%_))))
                                     (let ((_%hd233801233863%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233800233860%_)))
                                           (_%tl233802233865%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233800233860%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233802233865%_))
                                           ((lambda (_%g233779233868%_
                                                     _%g233780233869%_
                                                     _%g233781233870%_)
                                              (let* ((_%g233894233908%_
                                                      (lambda (_%g233895233905%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233895233905%_))))
                                                     (_%g233893233955%_
                                                      (lambda (_%g233895233911%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233895233911%_))
                                                            (let ((_%e233898233913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233895233911%_))))
                      (let ((_%hd233899233916%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233898233913%_)))
                            (_%tl233900233918%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233898233913%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233900233918%_))
                            (let ((_%e233901233921%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233900233918%_))))
                              (let ((_%hd233902233924%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233901233921%_)))
                                    (_%tl233903233926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233901233921%_))))
                                ((lambda (_%g233896233929%_ _%g233897233930%_)
                                   (let* ((_%self233943%_
                                           (list-ref
                                            _%g233897233930%_
                                            _%self-index233632%_))
                                          (_%receiver233948%_
                                           (let ((_%$e233945%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g233896233929%_))))
                                             (if _%$e233945%_
                                                 _%$e233945%_
                                                 _%self233943%_))))
                                     (for-each
                                      (lambda (_%g233950233952%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver233948%_
                                         _%method-calls231634%_
                                         _%slot-refs231635%_
                                         _%g233950233952%_))
                                      _%g233896233929%_)))
                                 _%tl233903233926%_
                                 _%hd233902233924%_)))
                            (_%g233894233908%_ _%g233895233911%_))))
                    (_%g233894233908%_ _%g233895233911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233893233955%_
                                                 _%g233780233869%_))
                                              (let* ((_%g233958233977%_
                                                      (lambda (_%g233959233974%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233959233974%_))))
                                                     (_%g233957234086%_
                                                      (lambda (_%g233959233980%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233959233980%_))
                                                            (let ((_%e233961233982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233959233980%_))))
                      (let ((_%hd233962233985%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233961233982%_)))
                            (_%tl233963233987%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233961233982%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl233963233987%_))
                            (let ((_g235815_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233963233987%_
                                      '0))))
                              (begin
                                (let ((_g235816_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235815_)
                                             (##values-length _g235815_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235816_ 2)))
                                      (error "Context expects 2 values"
                                             _g235816_)))
                                (let ((_%target233964233990%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235815_ 0)))
                                      (_%tl233966233992%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235815_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl233966233992%_))
                                      (letrec ((_%loop233967233995%_
                                                (lambda (_%hd233965233998%_
                                                         _%clause233971234000%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd233965233998%_))
                                                      (let ((_%e233968234002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd233965233998%_))))
                (let ((_%lp-hd233969234005%_
                       (let () (declare (not safe)) (##car _%e233968234002%_)))
                      (_%lp-tl233970234007%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e233968234002%_))))
                  (_%loop233967233995%_
                   _%lp-tl233970234007%_
                   (cons _%lp-hd233969234005%_ _%clause233971234000%_))))
              (let ((_%clause233972234010%_ (reverse _%clause233971234000%_)))
                ((lambda (_%g233960234012%_)
                   (for-each
                    (lambda (_%clause234025%_)
                      (let* ((_%g234027234038%_
                              (lambda (_%g234028234035%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g234028234035%_))))
                             (_%g234026234076%_
                              (lambda (_%g234028234041%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g234028234041%_))
                                    (let ((_%e234031234043%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g234028234041%_))))
                                      (let ((_%hd234032234046%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234031234043%_)))
                                            (_%tl234033234048%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234031234043%_))))
                                        ((lambda (_%g234029234051%_
                                                  _%g234030234052%_)
                                           (let* ((_%self234064%_
                                                   (list-ref
                                                    _%g234030234052%_
                                                    _%self-index233632%_))
                                                  (_%receiver234069%_
                                                   (let ((_%$e234066%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g234029234051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e234066%_
                                                         _%$e234066%_
                                                         _%self234064%_))))
                                             (for-each
                                              (lambda (_%g234071234073%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver234069%_
                                                 _%method-calls231634%_
                                                 _%slot-refs231635%_
                                                 _%g234071234073%_))
                                              _%g234029234051%_)))
                                         _%tl234033234048%_
                                         _%hd234032234046%_)))
                                    (_%g234027234038%_ _%g234028234041%_)))))
                        (_%g234026234076%_ _%clause234025%_)))
                    (let ((__tmp235817
                           (lambda (_%g234078234081%_ _%g234079234083%_)
                             (cons _%g234078234081%_ _%g234079234083%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235817 '() _%g233960234012%_))))
                 _%clause233972234010%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop233967233995%_
                                         _%target233964233990%_
                                         '()))
                                      (_%g233958233977%_ _%g233959233980%_)))))
                            (_%g233958233977%_ _%g233959233980%_))))
                    (_%g233958233977%_ _%g233959233980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233957234086%_
                                                 _%g233779233868%_))
                                              (if (_%no-specializer?231638%_)
                                                  _%stx231542%_
                                                  (let* ((_%specializer-id234095%_
                                                          (let* ((_%id234089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235818
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231553231615%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235818 '"::specialize")))
                         (_%specializer-id234092%_
                          (let ((__tmp235819
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231542%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id234089%_
                             __tmp235819))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id234092%_))
                    _%specializer-id234092%_))
                 (_%$klass234097%_
                  (let ((__tmp235820
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235820)))
                 (_%$method-table234099%_
                  (let ((__tmp235821
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235821)))
                 (_%methods234101%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231634%_)))
                 (_%$methods234105%_
                  (let ((__tmp235822
                         (lambda (_%id234103%_)
                           (let ((__tmp235823 (gensym _%id234103%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235823)))))
                    (declare (not safe))
                    (##map __tmp235822 _%methods234101%_)))
                 (_%_234114%_
                  (let ((__tmp235824
                         (lambda (_%g234106234109%_ _%g234107234111%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231634%_
                              _%g234106234109%_
                              _%g234107234111%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235824
                     _%methods234101%_
                     _%$methods234105%_)))
                 (_%methods-bind234124%_
                  (let ((__tmp235825
                         (lambda (_%g234116234119%_ _%g234117234121%_)
                           (_%generate-method-bind231544%_
                            _%$klass234097%_
                            _%$method-table234099%_
                            _%g234116234119%_
                            _%g234117234121%_))))
                    (declare (not safe))
                    (##map __tmp235825 _%methods234101%_ _%$methods234105%_)))
                 (_%slots234126%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231635%_)))
                 (_%$slots234130%_
                  (let ((__tmp235826
                         (lambda (_%id234128%_)
                           (let ((__tmp235827 (gensym _%id234128%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235827)))))
                    (declare (not safe))
                    (##map __tmp235826 _%slots234126%_)))
                 (_%_234139%_
                  (let ((__tmp235828
                         (lambda (_%g234131234134%_ _%g234132234136%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231635%_
                              _%g234131234134%_
                              _%g234132234136%_)))))
                    (declare (not safe))
                    (##for-each __tmp235828 _%slots234126%_ _%$slots234130%_)))
                 (_%slots-bind234148%_
                  (let ((__tmp235829
                         (lambda (_%g234140234143%_ _%g234141234145%_)
                           (_%generate-slot-bind231545%_
                            _%$klass234097%_
                            _%g234140234143%_
                            _%g234141234145%_))))
                    (declare (not safe))
                    (##map __tmp235829 _%slots234126%_ _%$slots234130%_)))
                 (_%specializer-lambda-expr234226%_
                  (let* ((_%g234150234164%_
                          (lambda (_%g234151234161%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234151234161%_))))
                         (_%g234149234223%_
                          (lambda (_%g234151234167%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234151234167%_))
                                (let ((_%e234154234169%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234151234167%_))))
                                  (let ((_%hd234155234172%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234154234169%_)))
                                        (_%tl234156234174%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234154234169%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl234156234174%_))
                                        (let ((_%e234157234177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl234156234174%_))))
                                          (let ((_%hd234158234180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e234157234177%_)))
                                                (_%tl234159234182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e234157234177%_))))
                                            ((lambda (_%g234152234185%_
                                                      _%g234153234186%_)
                                               (let* ((_%self234209%_
                                                       (list-ref
                                                        _%g234153234186%_
                                                        _%self-index233632%_))
                                                      (_%receiver234214%_
                                                       (let ((_%$e234211%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g234152234185%_))))
                 (if _%$e234211%_ _%$e234211%_ _%self234209%_)))
              (_%body234220%_
               (map (lambda (_%g234215234217%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver234214%_
                       _%$klass234097%_
                       _%method-calls231634%_
                       _%slot-refs231635%_
                       _%g234215234217%_))
                    _%g234152234185%_))
              (__tmp235830
               (cons '%#lambda (cons _%g234153234186%_ _%body234220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp235830
                                                  _%g233780233869%_)))
                                             _%tl234159234182%_
                                             _%hd234158234180%_)))
                                        (_%g234150234164%_
                                         _%g234151234167%_))))
                                (_%g234150234164%_ _%g234151234167%_)))))
                    (_%g234149234223%_ _%g233780233869%_)))
                 (_%specializer-case-lambda-expr234364%_
                  (let* ((_%g234228234247%_
                          (lambda (_%g234229234244%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234229234244%_))))
                         (_%g234227234361%_
                          (lambda (_%g234229234250%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234229234250%_))
                                (let ((_%e234231234252%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234229234250%_))))
                                  (let ((_%hd234232234255%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234231234252%_)))
                                        (_%tl234233234257%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234231234252%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl234233234257%_))
                                        (let ((_g235831_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl234233234257%_
                                                  '0))))
                                          (begin
                                            (let ((_g235832_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g235831_)
                                                         (##values-length
                                                          _g235831_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g235832_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g235832_)))
                                            (let ((_%target234234234260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235831_
                                                      0)))
                                                  (_%tl234236234262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235831_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl234236234262%_))
                                                  (letrec ((_%loop234237234265%_
                                                            (lambda (_%hd234235234268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause234241234270%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd234235234268%_))
                          (let ((_%e234238234272%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd234235234268%_))))
                            (let ((_%lp-hd234239234275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234238234272%_)))
                                  (_%lp-tl234240234277%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234238234272%_))))
                              (_%loop234237234265%_
                               _%lp-tl234240234277%_
                               (cons _%lp-hd234239234275%_
                                     _%clause234241234270%_))))
                          (let ((_%clause234242234280%_
                                 (reverse _%clause234241234270%_)))
                            ((lambda (_%g234230234282%_)
                               (let* ((_%clauses234359%_
                                       (map (lambda (_%clause234296%_)
                                              (let* ((_%g234298234309%_
                                                      (lambda (_%g234299234306%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234299234306%_))))
                                                     (_%g234297234349%_
                                                      (lambda (_%g234299234312%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234299234312%_))
                                                            (let ((_%e234302234314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234299234312%_))))
                      (let ((_%hd234303234317%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234302234314%_)))
                            (_%tl234304234319%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234302234314%_))))
                        ((lambda (_%g234300234322%_ _%g234301234323%_)
                           (let* ((_%self234335%_
                                   (list-ref
                                    _%g234301234323%_
                                    _%self-index233632%_))
                                  (_%receiver234340%_
                                   (let ((_%$e234337%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g234300234322%_))))
                                     (if _%$e234337%_
                                         _%$e234337%_
                                         _%self234335%_)))
                                  (_%body234346%_
                                   (map (lambda (_%g234341234343%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver234340%_
                                           _%$klass234097%_
                                           _%method-calls231634%_
                                           _%slot-refs231635%_
                                           _%g234341234343%_))
                                        _%g234300234322%_)))
                             (cons _%g234301234323%_ _%body234346%_)))
                         _%tl234304234319%_
                         _%hd234303234317%_)))
                    (_%g234298234309%_ _%g234299234312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234297234349%_
                                                 _%clause234296%_)))
                                            (let ((__tmp235833
                                                   (lambda (_%g234351234354%_
                                                            _%g234352234356%_)
                                                     (cons _%g234351234354%_
                                                           _%g234352234356%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp235833
                                               '()
                                               _%g234230234282%_))))
                                      (__tmp235834
                                       (cons '%#case-lambda
                                             _%clauses234359%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp235834
                                  _%g233779233868%_)))
                             _%clause234242234280%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop234237234265%_
                                                     _%target234234234260%_
                                                     '()))
                                                  (_%g234228234247%_
                                                   _%g234229234250%_)))))
                                        (_%g234228234247%_
                                         _%g234229234250%_))))
                                (_%g234228234247%_ _%g234229234250%_)))))
                    (_%g234227234361%_ _%g233779233868%_)))
                 (_%specializer-impl234366%_
                  (let ((__tmp235835
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g233166233334%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g233165233333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp235836
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g233781233870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr234226%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr234364%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235836
                                                _%stx231542%_))
                                             '()))
                                 '())
                           (cons _%g233163233331%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g233162233330%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235835 _%stx231542%_)))
                 (_%specializer-impl234368%_
                  (_%generate-specializer-impl231546%_
                   _%$klass234097%_
                   _%$method-table234099%_
                   _%methods-bind234124%_
                   _%slots-bind234148%_
                   _%specializer-impl234366%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235838
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231553231615%_)))
                                                          (__tmp235837
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id234095%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235838
                                                       '" => "
                                                       __tmp235837))
                                                    (_%generate-specializer-def231547%_
                                                     _%g231553231615%_
                                                     _%specializer-id234095%_
                                                     _%specializer-impl234368%_))))
                                            _%hd233801233863%_
                                            _%hd233798233855%_
                                            _%hd233795233847%_)
                                           (_%g233777233807%_
                                            _%g233778233810%_))))
                                   (_%g233777233807%_ _%g233778233810%_))
                               (_%g233777233807%_ _%g233778233810%_))
                           (_%g233777233807%_ _%g233778233810%_))))
                   (_%g233777233807%_ _%g233778233810%_))
               (_%g233777233807%_ _%g233778233810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233777233807%_
                                                _%g233778233810%_))))
                                       (_%g233777233807%_ _%g233778233810%_))))
                               (_%g233777233807%_ _%g233778233810%_))))
                       (_%g233777233807%_ _%g233778233810%_))))
               (_%g233777233807%_ _%g233778233810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233776234371%_
                                            _%g233164233332%_))
                                         _%stx231542%_))))
                             _%hd233430233553%_
                             _%kw-ref233428233573%_
                             _%hd233418233540%_
                             _%hd233409233516%_
                             _%hd233400233492%_)
                            (_%g233374233436%_ _%g233375233439%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233423233558%_
                                                 _%target233420233545%_
                                                 '()))
                                              (_%g233374233436%_
                                               _%g233375233439%_))))
                                      (_%g233374233436%_ _%g233375233439%_)))))
                            (_%g233374233436%_ _%g233375233439%_))
                        (_%g233374233436%_ _%g233375233439%_))
                    (_%g233374233436%_ _%g233375233439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233374233436%_
                                                     _%g233375233439%_))
                                                (_%g233374233436%_
                                                 _%g233375233439%_))
                                            (_%g233374233436%_
                                             _%g233375233439%_))))
                                    (_%g233374233436%_ _%g233375233439%_))))
                            (_%g233374233436%_ _%g233375233439%_))
                        (_%g233374233436%_ _%g233375233439%_))))
                (_%g233374233436%_ _%g233375233439%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233374233436%_
                                                     _%g233375233439%_))
                                                (_%g233374233436%_
                                                 _%g233375233439%_))))
                                        (_%g233374233436%_
                                         _%g233375233439%_))))
                                (_%g233374233436%_ _%g233375233439%_))
                            (_%g233374233436%_ _%g233375233439%_))))
                    (_%g233374233436%_ _%g233375233439%_))
                (_%g233374233436%_ _%g233375233439%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233374233436%_
                                                     _%g233375233439%_))))
                                            (_%g233374233436%_
                                             _%g233375233439%_))))
                                    (_%g233374233436%_ _%g233375233439%_))
                                (_%g233374233436%_ _%g233375233439%_))
                            (_%g233374233436%_ _%g233375233439%_))))
                    (_%g233374233436%_ _%g233375233439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233374233436%_
                                                     _%g233375233439%_))))
                                            (_%g233374233436%_
                                             _%g233375233439%_))
                                        (_%g233374233436%_ _%g233375233439%_))
                                    (_%g233374233436%_ _%g233375233439%_))))
                            (_%g233374233436%_ _%g233375233439%_)))))
                (_%g233373234375%_ _%g233163233331%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd233207233325%_
                                                    _%hd233204233317%_
                                                    _%hd233201233309%_
                                                    _%hd233198233301%_
                                                    _%hd233180233253%_)
                                                   (_%g233160233213%_
                                                    _%g233161233216%_))))
                                           (_%g233160233213%_
                                            _%g233161233216%_))
                                       (_%g233160233213%_ _%g233161233216%_))
                                   (_%g233160233213%_ _%g233161233216%_))
                               (_%g233160233213%_ _%g233161233216%_))))
                       (_%g233160233213%_ _%g233161233216%_))
                   (_%g233160233213%_ _%g233161233216%_))
               (_%g233160233213%_ _%g233161233216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233160233213%_
                                                _%g233161233216%_))
                                           (_%g233160233213%_
                                            _%g233161233216%_))))
                                   (_%g233160233213%_ _%g233161233216%_))))
                           (_%g233160233213%_ _%g233161233216%_))))
                   (_%g233160233213%_ _%g233161233216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233160233213%_
                                                    _%g233161233216%_))
                                               (_%g233160233213%_
                                                _%g233161233216%_))
                                           (_%g233160233213%_
                                            _%g233161233216%_))))
                                   (_%g233160233213%_ _%g233161233216%_))))
                           (_%g233160233213%_ _%g233161233216%_))
                       (_%g233160233213%_ _%g233161233216%_))))
               (_%g233160233213%_ _%g233161233216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233160233213%_
                                                _%g233161233216%_))))
                                       (_%g233160233213%_ _%g233161233216%_))))
                               (_%g233160233213%_ _%g233161233216%_))
                           (_%g233160233213%_ _%g233161233216%_))
                       (_%g233160233213%_ _%g233161233216%_))))
               (_%g233160233213%_ _%g233161233216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233159234378%_
                                            _%g231552231614%_))
                                         _%stx231542%_))))))))
                  (_%__kont234605234606%_ (lambda () _%stx231542%_)))
              (let ((_%__match234634234635%_
                     (lambda (_%e231554231582%_
                              _%hd231555231585%_
                              _%tl231556231587%_
                              _%e231557231590%_
                              _%hd231558231593%_
                              _%tl231559231595%_
                              _%e231560231598%_
                              _%hd231561231601%_
                              _%tl231562231603%_
                              _%e231563231606%_
                              _%hd231564231609%_
                              _%tl231565231611%_)
                       (let ((_%g231552231614%_ _%hd231564231609%_)
                             (_%g231553231615%_ _%hd231561231601%_))
                         (if (let ((__tmp235839
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g231553231615%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp235839))
                             (_%__kont234603234604%_
                              _%g231552231614%_
                              _%g231553231615%_)
                             (_%__kont234605234606%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234601234602%_))
                    (let ((_%e231554231582%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234601234602%_))))
                      (let ((_%tl231556231587%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231554231582%_)))
                            (_%hd231555231585%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231554231582%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231556231587%_))
                            (let ((_%e231557231590%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231556231587%_))))
                              (let ((_%tl231559231595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231557231590%_)))
                                    (_%hd231558231593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231557231590%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231558231593%_))
                                    (let ((_%e231560231598%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231558231593%_))))
                                      (let ((_%tl231562231603%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231560231598%_)))
                                            (_%hd231561231601%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231560231598%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231562231603%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231559231595%_))
                                                (let ((_%e231563231606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231559231595%_))))
                                                  (let ((_%tl231565231611%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231563231606%_)))
                                                        (_%hd231564231609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231563231606%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231565231611%_))
                                                        (_%__match234634234635%_
                                                         _%e231554231582%_
                                                         _%hd231555231585%_
                                                         _%tl231556231587%_
                                                         _%e231557231590%_
                                                         _%hd231558231593%_
                                                         _%tl231559231595%_
                                                         _%e231560231598%_
                                                         _%hd231561231601%_
                                                         _%tl231562231603%_
                                                         _%e231563231606%_
                                                         _%hd231564231609%_
                                                         _%tl231565231611%_)
                                                        (_%__kont234605234606%_))))
                                                (_%__kont234605234606%_))
                                            (_%__kont234605234606%_))))
                                    (_%__kont234605234606%_))))
                            (_%__kont234605234606%_))))
                    (_%__kont234605234606%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self231394%_ _%stx231395%_)
        (let* ((_%__stx234637234638%_ _%stx231395%_)
               (_%g231398231431%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234637234638%_)))))
          (let ((_%__kont234639234640%_
                 (lambda (_%g231400231521%_) _%g231400231521%_))
                (_%__kont234641234642%_
                 (lambda (_%g231416231460%_ _%g231417231461%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self231394%_ _%g231416231460%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx234637234638%_))
                (let ((_%e231401231481%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx234637234638%_))))
                  (let ((_%tl231403231486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231401231481%_)))
                        (_%hd231402231484%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231401231481%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231403231486%_))
                        (let ((_%e231404231489%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl231403231486%_))))
                          (let ((_%tl231406231494%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231404231489%_)))
                                (_%hd231405231492%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231404231489%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd231405231492%_))
                                (let ((_%e231407231497%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231405231492%_))))
                                  (let ((_%tl231409231502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231407231497%_)))
                                        (_%hd231408231500%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231407231497%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd231408231500%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd231408231500%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231409231502%_))
                                                (let ((_%e231410231505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231409231502%_))))
                                                  (let ((_%tl231412231510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231410231505%_)))
                                                        (_%hd231411231508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231410231505%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231412231510%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231406231494%_))
                                                            (let ((_%e231413231513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231406231494%_))))
                      (let ((_%tl231415231518%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231413231513%_)))
                            (_%hd231414231516%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231413231513%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231415231518%_))
                            (_%__kont234639234640%_ _%hd231411231508%_)
                            (let ()
                              (declare (not safe))
                              (_%g231398231431%_)))))
                    (let () (declare (not safe)) (_%g231398231431%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl231406231494%_))
                    (let ((_%e231424231452%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231406231494%_))))
                      (let ((_%tl231426231457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231424231452%_)))
                            (_%hd231425231455%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231424231452%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231426231457%_))
                            (_%__kont234641234642%_
                             _%hd231425231455%_
                             _%hd231405231492%_)
                            (let ()
                              (declare (not safe))
                              (_%g231398231431%_)))))
                    (let () (declare (not safe)) (_%g231398231431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231406231494%_))
                                                    (let ((_%e231424231452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231406231494%_))))
                                                      (let ((_%tl231426231457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e231424231452%_)))
                    (_%hd231425231455%_
                     (let () (declare (not safe)) (##car _%e231424231452%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl231426231457%_))
                    (_%__kont234641234642%_
                     _%hd231425231455%_
                     _%hd231405231492%_)
                    (let () (declare (not safe)) (_%g231398231431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231398231431%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231406231494%_))
                                                (let ((_%e231424231452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231406231494%_))))
                                                  (let ((_%tl231426231457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231424231452%_)))
                                                        (_%hd231425231455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231424231452%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231426231457%_))
                                                        (_%__kont234641234642%_
                                                         _%hd231425231455%_
                                                         _%hd231405231492%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g231398231431%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g231398231431%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231406231494%_))
                                            (let ((_%e231424231452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231406231494%_))))
                                              (let ((_%tl231426231457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231424231452%_)))
                                                    (_%hd231425231455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231424231452%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl231426231457%_))
                                                    (_%__kont234641234642%_
                                                     _%hd231425231455%_
                                                     _%hd231405231492%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231398231431%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g231398231431%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231406231494%_))
                                    (let ((_%e231424231452%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231406231494%_))))
                                      (let ((_%tl231426231457%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231424231452%_)))
                                            (_%hd231425231455%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231424231452%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231426231457%_))
                                            (_%__kont234641234642%_
                                             _%hd231425231455%_
                                             _%hd231405231492%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g231398231431%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g231398231431%_))))))
                        (let () (declare (not safe)) (_%g231398231431%_)))))
                (let () (declare (not safe)) (_%g231398231431%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self231310%_ _%stx231311%_)
        (let* ((_%g231313231334%_
                (lambda (_%g231314231331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g231314231331%_))))
               (_%g231312231391%_
                (lambda (_%g231314231337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g231314231337%_))
                      (let ((_%e231318231339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231314231337%_))))
                        (let ((_%hd231319231342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231318231339%_)))
                              (_%tl231320231344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231318231339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231320231344%_))
                              (let ((_%e231321231347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231320231344%_))))
                                (let ((_%hd231322231350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231321231347%_)))
                                      (_%tl231323231352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231321231347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl231323231352%_))
                                      (let ((_%e231324231355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl231323231352%_))))
                                        (let ((_%hd231325231358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231324231355%_)))
                                              (_%tl231326231360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231324231355%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231326231360%_))
                                              (let ((_%e231327231363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl231326231360%_))))
                                                (let ((_%hd231328231366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231327231363%_)))
                                                      (_%tl231329231368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231327231363%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl231329231368%_))
                                                      ((lambda (_%g231315231371%_
                                                                _%g231316231372%_
                                                                _%g231317231373%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self231310%_
                                                            _%g231316231372%_)))
                                                       _%hd231328231366%_
                                                       _%hd231325231358%_
                                                       _%hd231322231350%_)
                                                      (_%g231313231334%_
                                                       _%g231314231337%_))))
                                              (_%g231313231334%_
                                               _%g231314231337%_))))
                                      (_%g231313231334%_ _%g231314231337%_))))
                              (_%g231313231334%_ _%g231314231337%_))))
                      (_%g231313231334%_ _%g231314231337%_)))))
          (_%g231312231391%_ _%stx231311%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self230275%_ _%stx230276%_)
        (let* ((_%__stx234703234704%_ _%stx230276%_)
               (_%g230284230506%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234703234704%_)))))
          (let ((_%__kont234705234706%_
                 (lambda (_%g230286231259%_
                          _%g230287231260%_
                          _%g230288231261%_
                          _%g230289231262%_)
                   (let ((__tmp235841
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230275%_ 'methods)))
                         (__tmp235840
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230287231260%_))))
                     (declare (not safe))
                     (hash-put! __tmp235841 __tmp235840 '#t))
                   (for-each
                    (lambda (_%g231295231297%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230275%_ _%g231295231297%_)))
                    (let ((__tmp235842
                           (lambda (_%g231299231302%_ _%g231300231304%_)
                             (cons _%g231299231302%_ _%g231300231304%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235842 '() _%g230286231259%_)))))
                (_%__kont234709234710%_
                 (lambda (_%g230329231096%_
                          _%g230330231097%_
                          _%g230331231098%_
                          _%g230332231099%_
                          _%g230333231100%_)
                   (let ((__tmp235844
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230275%_ 'methods)))
                         (__tmp235843
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230330231097%_))))
                     (declare (not safe))
                     (hash-put! __tmp235844 __tmp235843 '#t))
                   (for-each
                    (lambda (_%g231140231142%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230275%_ _%g231140231142%_)))
                    (let ((__tmp235845
                           (lambda (_%g231144231147%_ _%g231145231149%_)
                             (cons _%g231144231147%_ _%g231145231149%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235845 '() _%g230329231096%_)))))
                (_%__kont234713234714%_
                 (lambda (_%g230382230931%_
                          _%g230383230932%_
                          _%g230384230933%_)
                   (let ((__tmp235847
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230275%_ 'slots)))
                         (__tmp235846
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230382230931%_))))
                     (declare (not safe))
                     (hash-put! __tmp235847 __tmp235846 '#t))))
                (_%__kont234715234716%_
                 (lambda (_%g230415230808%_
                          _%g230416230809%_
                          _%g230417230810%_
                          _%g230418230811%_)
                   (let ((__tmp235849
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230275%_ 'slots)))
                         (__tmp235848
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230416230809%_))))
                     (declare (not safe))
                     (hash-put! __tmp235849 __tmp235848 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230275%_ _%g230415230808%_))))
                (_%__kont234717234718%_
                 (lambda (_%g230452230682%_ _%g230453230683%_)
                   (let* ((_%accessor230705%_
                           (let ((__tmp235850
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g230453230683%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235850)))
                          (_%klass230707%_
                           (let ((__tmp235851
                                  (##structure-ref
                                   _%accessor230705%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230276%_
                              __tmp235851)))
                          (_%slot230709%_
                           (##structure-ref
                            _%accessor230705%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor230705%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230707%_
                                    _%slot230709%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230707%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235853
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230275%_ 'slots)))
                               (__tmp235852
                                (##structure-ref
                                 _%accessor230705%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp235853 __tmp235852 '#t))))))
                (_%__kont234719234720%_
                 (lambda (_%g230475230582%_
                          _%g230476230583%_
                          _%g230477230584%_)
                   (let* ((_%mutator230611%_
                           (let ((__tmp235854
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g230477230584%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235854)))
                          (_%klass230613%_
                           (let ((__tmp235855
                                  (##structure-ref
                                   _%mutator230611%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230276%_
                              __tmp235855)))
                          (_%slot230615%_
                           (##structure-ref
                            _%mutator230611%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator230611%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230613%_
                                    _%slot230615%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230613%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235856
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230275%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp235856 _%slot230615%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self230275%_ _%g230475230582%_)))))
                (_%__kont234721234722%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self230275%_ _%stx230276%_)))))
            (let* ((_%__match235202235203%_
                    (lambda (_%e230478230518%_
                             _%hd230479230521%_
                             _%tl230480230523%_
                             _%e230481230526%_
                             _%hd230482230529%_
                             _%tl230483230531%_
                             _%e230484230534%_
                             _%hd230485230537%_
                             _%tl230486230539%_
                             _%e230487230542%_
                             _%hd230488230545%_
                             _%tl230489230547%_
                             _%e230490230550%_
                             _%hd230491230553%_
                             _%tl230492230555%_
                             _%e230493230558%_
                             _%hd230494230561%_
                             _%tl230495230563%_
                             _%e230496230566%_
                             _%hd230497230569%_
                             _%tl230498230571%_
                             _%e230499230574%_
                             _%hd230500230577%_
                             _%tl230501230579%_)
                      (let ((_%g230475230582%_ _%hd230500230577%_)
                            (_%g230476230583%_ _%hd230497230569%_)
                            (_%g230477230584%_ _%hd230488230545%_))
                        (if (and (let ((__tmp235857
                                        (let ((__tmp235858
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g230477230584%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235858))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235857
                                    'gxc#!mutator::t))
                                 (let ((__tmp235859
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230275%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230476230583%_
                                    __tmp235859)))
                            (_%__kont234719234720%_
                             _%g230475230582%_
                             _%g230476230583%_
                             _%g230477230584%_)
                            (_%__kont234721234722%_)))))
                   (_%__match235200235201%_
                    (lambda (_%e230478230518%_
                             _%hd230479230521%_
                             _%tl230480230523%_
                             _%e230481230526%_
                             _%hd230482230529%_
                             _%tl230483230531%_
                             _%e230484230534%_
                             _%hd230485230537%_
                             _%tl230486230539%_
                             _%e230487230542%_
                             _%hd230488230545%_
                             _%tl230489230547%_
                             _%e230490230550%_
                             _%hd230491230553%_
                             _%tl230492230555%_
                             _%e230493230558%_
                             _%hd230494230561%_
                             _%tl230495230563%_
                             _%e230496230566%_
                             _%hd230497230569%_
                             _%tl230498230571%_
                             _%e230499230574%_
                             _%hd230500230577%_
                             _%tl230501230579%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230501230579%_))
                          (_%__match235202235203%_
                           _%e230478230518%_
                           _%hd230479230521%_
                           _%tl230480230523%_
                           _%e230481230526%_
                           _%hd230482230529%_
                           _%tl230483230531%_
                           _%e230484230534%_
                           _%hd230485230537%_
                           _%tl230486230539%_
                           _%e230487230542%_
                           _%hd230488230545%_
                           _%tl230489230547%_
                           _%e230490230550%_
                           _%hd230491230553%_
                           _%tl230492230555%_
                           _%e230493230558%_
                           _%hd230494230561%_
                           _%tl230495230563%_
                           _%e230496230566%_
                           _%hd230497230569%_
                           _%tl230498230571%_
                           _%e230499230574%_
                           _%hd230500230577%_
                           _%tl230501230579%_)
                          (_%__kont234721234722%_))))
                   (_%__match235194235195%_
                    (lambda (_%e230478230518%_
                             _%hd230479230521%_
                             _%tl230480230523%_
                             _%e230481230526%_
                             _%hd230482230529%_
                             _%tl230483230531%_
                             _%e230484230534%_
                             _%hd230485230537%_
                             _%tl230486230539%_
                             _%e230487230542%_
                             _%hd230488230545%_
                             _%tl230489230547%_
                             _%e230490230550%_
                             _%hd230491230553%_
                             _%tl230492230555%_
                             _%e230493230558%_
                             _%hd230494230561%_
                             _%tl230495230563%_
                             _%e230496230566%_
                             _%hd230497230569%_
                             _%tl230498230571%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230492230555%_))
                          (let ((_%e230499230574%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230492230555%_))))
                            (let ((_%tl230501230579%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230499230574%_)))
                                  (_%hd230500230577%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230499230574%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230501230579%_))
                                  (_%__match235202235203%_
                                   _%e230478230518%_
                                   _%hd230479230521%_
                                   _%tl230480230523%_
                                   _%e230481230526%_
                                   _%hd230482230529%_
                                   _%tl230483230531%_
                                   _%e230484230534%_
                                   _%hd230485230537%_
                                   _%tl230486230539%_
                                   _%e230487230542%_
                                   _%hd230488230545%_
                                   _%tl230489230547%_
                                   _%e230490230550%_
                                   _%hd230491230553%_
                                   _%tl230492230555%_
                                   _%e230493230558%_
                                   _%hd230494230561%_
                                   _%tl230495230563%_
                                   _%e230496230566%_
                                   _%hd230497230569%_
                                   _%tl230498230571%_
                                   _%e230499230574%_
                                   _%hd230500230577%_
                                   _%tl230501230579%_)
                                  (_%__kont234721234722%_))))
                          (_%__kont234721234722%_))))
                   (_%__match235140235141%_
                    (lambda (_%e230454230626%_
                             _%hd230455230629%_
                             _%tl230456230631%_
                             _%e230457230634%_
                             _%hd230458230637%_
                             _%tl230459230639%_
                             _%e230460230642%_
                             _%hd230461230645%_
                             _%tl230462230647%_
                             _%e230463230650%_
                             _%hd230464230653%_
                             _%tl230465230655%_
                             _%e230466230658%_
                             _%hd230467230661%_
                             _%tl230468230663%_
                             _%e230469230666%_
                             _%hd230470230669%_
                             _%tl230471230671%_
                             _%e230472230674%_
                             _%hd230473230677%_
                             _%tl230474230679%_)
                      (let ((_%g230452230682%_ _%hd230473230677%_)
                            (_%g230453230683%_ _%hd230464230653%_))
                        (if (and (let ((__tmp235860
                                        (let ((__tmp235861
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g230453230683%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235861))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235860
                                    'gxc#!accessor::t))
                                 (let ((__tmp235862
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230275%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230452230682%_
                                    __tmp235862)))
                            (_%__kont234717234718%_
                             _%g230452230682%_
                             _%g230453230683%_)
                            (_%__kont234721234722%_)))))
                   (_%__match235138235139%_
                    (lambda (_%e230454230626%_
                             _%hd230455230629%_
                             _%tl230456230631%_
                             _%e230457230634%_
                             _%hd230458230637%_
                             _%tl230459230639%_
                             _%e230460230642%_
                             _%hd230461230645%_
                             _%tl230462230647%_
                             _%e230463230650%_
                             _%hd230464230653%_
                             _%tl230465230655%_
                             _%e230466230658%_
                             _%hd230467230661%_
                             _%tl230468230663%_
                             _%e230469230666%_
                             _%hd230470230669%_
                             _%tl230471230671%_
                             _%e230472230674%_
                             _%hd230473230677%_
                             _%tl230474230679%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230468230663%_))
                          (_%__match235140235141%_
                           _%e230454230626%_
                           _%hd230455230629%_
                           _%tl230456230631%_
                           _%e230457230634%_
                           _%hd230458230637%_
                           _%tl230459230639%_
                           _%e230460230642%_
                           _%hd230461230645%_
                           _%tl230462230647%_
                           _%e230463230650%_
                           _%hd230464230653%_
                           _%tl230465230655%_
                           _%e230466230658%_
                           _%hd230467230661%_
                           _%tl230468230663%_
                           _%e230469230666%_
                           _%hd230470230669%_
                           _%tl230471230671%_
                           _%e230472230674%_
                           _%hd230473230677%_
                           _%tl230474230679%_)
                          (_%__match235194235195%_
                           _%e230454230626%_
                           _%hd230455230629%_
                           _%tl230456230631%_
                           _%e230457230634%_
                           _%hd230458230637%_
                           _%tl230459230639%_
                           _%e230460230642%_
                           _%hd230461230645%_
                           _%tl230462230647%_
                           _%e230463230650%_
                           _%hd230464230653%_
                           _%tl230465230655%_
                           _%e230466230658%_
                           _%hd230467230661%_
                           _%tl230468230663%_
                           _%e230469230666%_
                           _%hd230470230669%_
                           _%tl230471230671%_
                           _%e230472230674%_
                           _%hd230473230677%_
                           _%tl230474230679%_))))
                   (_%__match235084235085%_
                    (lambda (_%e230419230720%_
                             _%hd230420230723%_
                             _%tl230421230725%_
                             _%e230422230728%_
                             _%hd230423230731%_
                             _%tl230424230733%_
                             _%e230425230736%_
                             _%hd230426230739%_
                             _%tl230427230741%_
                             _%e230428230744%_
                             _%hd230429230747%_
                             _%tl230430230749%_
                             _%e230431230752%_
                             _%hd230432230755%_
                             _%tl230433230757%_
                             _%e230434230760%_
                             _%hd230435230763%_
                             _%tl230436230765%_
                             _%e230437230768%_
                             _%hd230438230771%_
                             _%tl230439230773%_
                             _%e230440230776%_
                             _%hd230441230779%_
                             _%tl230442230781%_
                             _%e230443230784%_
                             _%hd230444230787%_
                             _%tl230445230789%_
                             _%e230446230792%_
                             _%hd230447230795%_
                             _%tl230448230797%_
                             _%e230449230800%_
                             _%hd230450230803%_
                             _%tl230451230805%_)
                      (let ((_%g230415230808%_ _%hd230450230803%_)
                            (_%g230416230809%_ _%hd230447230795%_)
                            (_%g230417230810%_ _%hd230438230771%_)
                            (_%g230418230811%_ _%hd230429230747%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230418230811%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230418230811%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp235863
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230275%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230417230810%_
                                    __tmp235863)))
                            (_%__kont234715234716%_
                             _%g230415230808%_
                             _%g230416230809%_
                             _%g230417230810%_
                             _%g230418230811%_)
                            (_%__kont234721234722%_)))))
                   (_%__match235076235077%_
                    (lambda (_%e230419230720%_
                             _%hd230420230723%_
                             _%tl230421230725%_
                             _%e230422230728%_
                             _%hd230423230731%_
                             _%tl230424230733%_
                             _%e230425230736%_
                             _%hd230426230739%_
                             _%tl230427230741%_
                             _%e230428230744%_
                             _%hd230429230747%_
                             _%tl230430230749%_
                             _%e230431230752%_
                             _%hd230432230755%_
                             _%tl230433230757%_
                             _%e230434230760%_
                             _%hd230435230763%_
                             _%tl230436230765%_
                             _%e230437230768%_
                             _%hd230438230771%_
                             _%tl230439230773%_
                             _%e230440230776%_
                             _%hd230441230779%_
                             _%tl230442230781%_
                             _%e230443230784%_
                             _%hd230444230787%_
                             _%tl230445230789%_
                             _%e230446230792%_
                             _%hd230447230795%_
                             _%tl230448230797%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230442230781%_))
                          (let ((_%e230449230800%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230442230781%_))))
                            (let ((_%tl230451230805%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230449230800%_)))
                                  (_%hd230450230803%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230449230800%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230451230805%_))
                                  (_%__match235084235085%_
                                   _%e230419230720%_
                                   _%hd230420230723%_
                                   _%tl230421230725%_
                                   _%e230422230728%_
                                   _%hd230423230731%_
                                   _%tl230424230733%_
                                   _%e230425230736%_
                                   _%hd230426230739%_
                                   _%tl230427230741%_
                                   _%e230428230744%_
                                   _%hd230429230747%_
                                   _%tl230430230749%_
                                   _%e230431230752%_
                                   _%hd230432230755%_
                                   _%tl230433230757%_
                                   _%e230434230760%_
                                   _%hd230435230763%_
                                   _%tl230436230765%_
                                   _%e230437230768%_
                                   _%hd230438230771%_
                                   _%tl230439230773%_
                                   _%e230440230776%_
                                   _%hd230441230779%_
                                   _%tl230442230781%_
                                   _%e230443230784%_
                                   _%hd230444230787%_
                                   _%tl230445230789%_
                                   _%e230446230792%_
                                   _%hd230447230795%_
                                   _%tl230448230797%_
                                   _%e230449230800%_
                                   _%hd230450230803%_
                                   _%tl230451230805%_)
                                  (_%__kont234721234722%_))))
                          (_%__match235200235201%_
                           _%e230419230720%_
                           _%hd230420230723%_
                           _%tl230421230725%_
                           _%e230422230728%_
                           _%hd230423230731%_
                           _%tl230424230733%_
                           _%e230425230736%_
                           _%hd230426230739%_
                           _%tl230427230741%_
                           _%e230428230744%_
                           _%hd230429230747%_
                           _%tl230430230749%_
                           _%e230431230752%_
                           _%hd230432230755%_
                           _%tl230433230757%_
                           _%e230434230760%_
                           _%hd230435230763%_
                           _%tl230436230765%_
                           _%e230437230768%_
                           _%hd230438230771%_
                           _%tl230439230773%_
                           _%e230440230776%_
                           _%hd230441230779%_
                           _%tl230442230781%_))))
                   (_%__match234998234999%_
                    (lambda (_%e230385230851%_
                             _%hd230386230854%_
                             _%tl230387230856%_
                             _%e230388230859%_
                             _%hd230389230862%_
                             _%tl230390230864%_
                             _%e230391230867%_
                             _%hd230392230870%_
                             _%tl230393230872%_
                             _%e230394230875%_
                             _%hd230395230878%_
                             _%tl230396230880%_
                             _%e230397230883%_
                             _%hd230398230886%_
                             _%tl230399230888%_
                             _%e230400230891%_
                             _%hd230401230894%_
                             _%tl230402230896%_
                             _%e230403230899%_
                             _%hd230404230902%_
                             _%tl230405230904%_
                             _%e230406230907%_
                             _%hd230407230910%_
                             _%tl230408230912%_
                             _%e230409230915%_
                             _%hd230410230918%_
                             _%tl230411230920%_
                             _%e230412230923%_
                             _%hd230413230926%_
                             _%tl230414230928%_)
                      (let ((_%g230382230931%_ _%hd230413230926%_)
                            (_%g230383230932%_ _%hd230404230902%_)
                            (_%g230384230933%_ _%hd230395230878%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230384230933%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230384230933%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp235864
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230275%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230383230932%_
                                    __tmp235864)))
                            (_%__kont234713234714%_
                             _%g230382230931%_
                             _%g230383230932%_
                             _%g230384230933%_)
                            (_%__match235202235203%_
                             _%e230385230851%_
                             _%hd230386230854%_
                             _%tl230387230856%_
                             _%e230388230859%_
                             _%hd230389230862%_
                             _%tl230390230864%_
                             _%e230391230867%_
                             _%hd230392230870%_
                             _%tl230393230872%_
                             _%e230394230875%_
                             _%hd230395230878%_
                             _%tl230396230880%_
                             _%e230397230883%_
                             _%hd230398230886%_
                             _%tl230399230888%_
                             _%e230400230891%_
                             _%hd230401230894%_
                             _%tl230402230896%_
                             _%e230403230899%_
                             _%hd230404230902%_
                             _%tl230405230904%_
                             _%e230406230907%_
                             _%hd230407230910%_
                             _%tl230408230912%_)))))
                   (_%__match234996234997%_
                    (lambda (_%e230385230851%_
                             _%hd230386230854%_
                             _%tl230387230856%_
                             _%e230388230859%_
                             _%hd230389230862%_
                             _%tl230390230864%_
                             _%e230391230867%_
                             _%hd230392230870%_
                             _%tl230393230872%_
                             _%e230394230875%_
                             _%hd230395230878%_
                             _%tl230396230880%_
                             _%e230397230883%_
                             _%hd230398230886%_
                             _%tl230399230888%_
                             _%e230400230891%_
                             _%hd230401230894%_
                             _%tl230402230896%_
                             _%e230403230899%_
                             _%hd230404230902%_
                             _%tl230405230904%_
                             _%e230406230907%_
                             _%hd230407230910%_
                             _%tl230408230912%_
                             _%e230409230915%_
                             _%hd230410230918%_
                             _%tl230411230920%_
                             _%e230412230923%_
                             _%hd230413230926%_
                             _%tl230414230928%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230408230912%_))
                          (_%__match234998234999%_
                           _%e230385230851%_
                           _%hd230386230854%_
                           _%tl230387230856%_
                           _%e230388230859%_
                           _%hd230389230862%_
                           _%tl230390230864%_
                           _%e230391230867%_
                           _%hd230392230870%_
                           _%tl230393230872%_
                           _%e230394230875%_
                           _%hd230395230878%_
                           _%tl230396230880%_
                           _%e230397230883%_
                           _%hd230398230886%_
                           _%tl230399230888%_
                           _%e230400230891%_
                           _%hd230401230894%_
                           _%tl230402230896%_
                           _%e230403230899%_
                           _%hd230404230902%_
                           _%tl230405230904%_
                           _%e230406230907%_
                           _%hd230407230910%_
                           _%tl230408230912%_
                           _%e230409230915%_
                           _%hd230410230918%_
                           _%tl230411230920%_
                           _%e230412230923%_
                           _%hd230413230926%_
                           _%tl230414230928%_)
                          (_%__match235076235077%_
                           _%e230385230851%_
                           _%hd230386230854%_
                           _%tl230387230856%_
                           _%e230388230859%_
                           _%hd230389230862%_
                           _%tl230390230864%_
                           _%e230391230867%_
                           _%hd230392230870%_
                           _%tl230393230872%_
                           _%e230394230875%_
                           _%hd230395230878%_
                           _%tl230396230880%_
                           _%e230397230883%_
                           _%hd230398230886%_
                           _%tl230399230888%_
                           _%e230400230891%_
                           _%hd230401230894%_
                           _%tl230402230896%_
                           _%e230403230899%_
                           _%hd230404230902%_
                           _%tl230405230904%_
                           _%e230406230907%_
                           _%hd230407230910%_
                           _%tl230408230912%_
                           _%e230409230915%_
                           _%hd230410230918%_
                           _%tl230411230920%_
                           _%e230412230923%_
                           _%hd230413230926%_
                           _%tl230414230928%_))))
                   (_%__match234986234987%_
                    (lambda (_%e230385230851%_
                             _%hd230386230854%_
                             _%tl230387230856%_
                             _%e230388230859%_
                             _%hd230389230862%_
                             _%tl230390230864%_
                             _%e230391230867%_
                             _%hd230392230870%_
                             _%tl230393230872%_
                             _%e230394230875%_
                             _%hd230395230878%_
                             _%tl230396230880%_
                             _%e230397230883%_
                             _%hd230398230886%_
                             _%tl230399230888%_
                             _%e230400230891%_
                             _%hd230401230894%_
                             _%tl230402230896%_
                             _%e230403230899%_
                             _%hd230404230902%_
                             _%tl230405230904%_
                             _%e230406230907%_
                             _%hd230407230910%_
                             _%tl230408230912%_
                             _%e230409230915%_
                             _%hd230410230918%_
                             _%tl230411230920%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd230410230918%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230411230920%_))
                              (let ((_%e230412230923%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230411230920%_))))
                                (let ((_%tl230414230928%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230412230923%_)))
                                      (_%hd230413230926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230412230923%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230414230928%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl230408230912%_))
                                          (_%__match234998234999%_
                                           _%e230385230851%_
                                           _%hd230386230854%_
                                           _%tl230387230856%_
                                           _%e230388230859%_
                                           _%hd230389230862%_
                                           _%tl230390230864%_
                                           _%e230391230867%_
                                           _%hd230392230870%_
                                           _%tl230393230872%_
                                           _%e230394230875%_
                                           _%hd230395230878%_
                                           _%tl230396230880%_
                                           _%e230397230883%_
                                           _%hd230398230886%_
                                           _%tl230399230888%_
                                           _%e230400230891%_
                                           _%hd230401230894%_
                                           _%tl230402230896%_
                                           _%e230403230899%_
                                           _%hd230404230902%_
                                           _%tl230405230904%_
                                           _%e230406230907%_
                                           _%hd230407230910%_
                                           _%tl230408230912%_
                                           _%e230409230915%_
                                           _%hd230410230918%_
                                           _%tl230411230920%_
                                           _%e230412230923%_
                                           _%hd230413230926%_
                                           _%tl230414230928%_)
                                          (_%__match235076235077%_
                                           _%e230385230851%_
                                           _%hd230386230854%_
                                           _%tl230387230856%_
                                           _%e230388230859%_
                                           _%hd230389230862%_
                                           _%tl230390230864%_
                                           _%e230391230867%_
                                           _%hd230392230870%_
                                           _%tl230393230872%_
                                           _%e230394230875%_
                                           _%hd230395230878%_
                                           _%tl230396230880%_
                                           _%e230397230883%_
                                           _%hd230398230886%_
                                           _%tl230399230888%_
                                           _%e230400230891%_
                                           _%hd230401230894%_
                                           _%tl230402230896%_
                                           _%e230403230899%_
                                           _%hd230404230902%_
                                           _%tl230405230904%_
                                           _%e230406230907%_
                                           _%hd230407230910%_
                                           _%tl230408230912%_
                                           _%e230409230915%_
                                           _%hd230410230918%_
                                           _%tl230411230920%_
                                           _%e230412230923%_
                                           _%hd230413230926%_
                                           _%tl230414230928%_))
                                      (_%__match235200235201%_
                                       _%e230385230851%_
                                       _%hd230386230854%_
                                       _%tl230387230856%_
                                       _%e230388230859%_
                                       _%hd230389230862%_
                                       _%tl230390230864%_
                                       _%e230391230867%_
                                       _%hd230392230870%_
                                       _%tl230393230872%_
                                       _%e230394230875%_
                                       _%hd230395230878%_
                                       _%tl230396230880%_
                                       _%e230397230883%_
                                       _%hd230398230886%_
                                       _%tl230399230888%_
                                       _%e230400230891%_
                                       _%hd230401230894%_
                                       _%tl230402230896%_
                                       _%e230403230899%_
                                       _%hd230404230902%_
                                       _%tl230405230904%_
                                       _%e230406230907%_
                                       _%hd230407230910%_
                                       _%tl230408230912%_))))
                              (_%__match235200235201%_
                               _%e230385230851%_
                               _%hd230386230854%_
                               _%tl230387230856%_
                               _%e230388230859%_
                               _%hd230389230862%_
                               _%tl230390230864%_
                               _%e230391230867%_
                               _%hd230392230870%_
                               _%tl230393230872%_
                               _%e230394230875%_
                               _%hd230395230878%_
                               _%tl230396230880%_
                               _%e230397230883%_
                               _%hd230398230886%_
                               _%tl230399230888%_
                               _%e230400230891%_
                               _%hd230401230894%_
                               _%tl230402230896%_
                               _%e230403230899%_
                               _%hd230404230902%_
                               _%tl230405230904%_
                               _%e230406230907%_
                               _%hd230407230910%_
                               _%tl230408230912%_))
                          (_%__match235200235201%_
                           _%e230385230851%_
                           _%hd230386230854%_
                           _%tl230387230856%_
                           _%e230388230859%_
                           _%hd230389230862%_
                           _%tl230390230864%_
                           _%e230391230867%_
                           _%hd230392230870%_
                           _%tl230393230872%_
                           _%e230394230875%_
                           _%hd230395230878%_
                           _%tl230396230880%_
                           _%e230397230883%_
                           _%hd230398230886%_
                           _%tl230399230888%_
                           _%e230400230891%_
                           _%hd230401230894%_
                           _%tl230402230896%_
                           _%e230403230899%_
                           _%hd230404230902%_
                           _%tl230405230904%_
                           _%e230406230907%_
                           _%hd230407230910%_
                           _%tl230408230912%_))))
                   (_%__match234918234919%_
                    (lambda (_%e230334230970%_
                             _%hd230335230973%_
                             _%tl230336230975%_
                             _%e230337230978%_
                             _%hd230338230981%_
                             _%tl230339230983%_
                             _%e230340230986%_
                             _%hd230341230989%_
                             _%tl230342230991%_
                             _%e230343230994%_
                             _%hd230344230997%_
                             _%tl230345230999%_
                             _%e230346231002%_
                             _%hd230347231005%_
                             _%tl230348231007%_
                             _%e230349231010%_
                             _%hd230350231013%_
                             _%tl230351231015%_
                             _%e230352231018%_
                             _%hd230353231021%_
                             _%tl230354231023%_
                             _%e230355231026%_
                             _%hd230356231029%_
                             _%tl230357231031%_
                             _%e230358231034%_
                             _%hd230359231037%_
                             _%tl230360231039%_
                             _%e230361231042%_
                             _%hd230362231045%_
                             _%tl230363231047%_
                             _%e230364231050%_
                             _%hd230365231053%_
                             _%tl230366231055%_
                             _%e230367231058%_
                             _%hd230368231061%_
                             _%tl230369231063%_
                             _%e230370231066%_
                             _%hd230371231069%_
                             _%tl230372231071%_
                             _%__splice234711234712%_
                             _%target230373231074%_
                             _%tl230375231076%_)
                      (letrec ((_%loop230376231079%_
                                (lambda (_%hd230374231082%_
                                         _%args230380231084%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230374231082%_))
                                      (let ((_%e230377231086%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230374231082%_))))
                                        (let ((_%lp-tl230379231091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230377231086%_)))
                                              (_%lp-hd230378231089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230377231086%_))))
                                          (_%loop230376231079%_
                                           _%lp-tl230379231091%_
                                           (cons _%lp-hd230378231089%_
                                                 _%args230380231084%_))))
                                      (let ((_%args230381231094%_
                                             (reverse _%args230380231084%_)))
                                        (let ((_%g230329231096%_
                                               _%args230381231094%_)
                                              (_%g230330231097%_
                                               _%hd230371231069%_)
                                              (_%g230331231098%_
                                               _%hd230362231045%_)
                                              (_%g230332231099%_
                                               _%hd230353231021%_)
                                              (_%g230333231100%_
                                               _%hd230344230997%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230333231100%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230332231099%_
                                                      'call-method))
                                                   (let ((__tmp235865
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230275%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230331231098%_
                                                      __tmp235865)))
                                              (_%__kont234709234710%_
                                               _%g230329231096%_
                                               _%g230330231097%_
                                               _%g230331231098%_
                                               _%g230332231099%_
                                               _%g230333231100%_)
                                              (_%__kont234721234722%_))))))))
                        (_%loop230376231079%_ _%target230373231074%_ '()))))
                   (_%__match234876234877%_
                    (lambda (_%e230334230970%_
                             _%hd230335230973%_
                             _%tl230336230975%_
                             _%e230337230978%_
                             _%hd230338230981%_
                             _%tl230339230983%_
                             _%e230340230986%_
                             _%hd230341230989%_
                             _%tl230342230991%_
                             _%e230343230994%_
                             _%hd230344230997%_
                             _%tl230345230999%_
                             _%e230346231002%_
                             _%hd230347231005%_
                             _%tl230348231007%_
                             _%e230349231010%_
                             _%hd230350231013%_
                             _%tl230351231015%_
                             _%e230352231018%_
                             _%hd230353231021%_
                             _%tl230354231023%_
                             _%e230355231026%_
                             _%hd230356231029%_
                             _%tl230357231031%_
                             _%e230358231034%_
                             _%hd230359231037%_
                             _%tl230360231039%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd230359231037%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230360231039%_))
                              (let ((_%e230361231042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230360231039%_))))
                                (let ((_%tl230363231047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230361231042%_)))
                                      (_%hd230362231045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230361231042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230363231047%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230357231031%_))
                                          (let ((_%e230364231050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230357231031%_))))
                                            (let ((_%tl230366231055%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230364231050%_)))
                                                  (_%hd230365231053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230364231050%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd230365231053%_))
                                                  (let ((_%e230367231058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd230365231053%_))))
                                                    (let ((_%tl230369231063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230367231058%_)))
                                                          (_%hd230368231061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230367231058%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd230368231061%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd230368231061%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230369231063%_))
                          (let ((_%e230370231066%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230369231063%_))))
                            (let ((_%tl230372231071%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230370231066%_)))
                                  (_%hd230371231069%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230370231066%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230372231071%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230366231055%_))
                                      (let ((_%__splice234711234712%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl230366231055%_
                                                '0))))
                                        (let ((_%tl230375231076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234711234712%_
                                                  '1)))
                                              (_%target230373231074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234711234712%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230375231076%_))
                                              (_%__match234918234919%_
                                               _%e230334230970%_
                                               _%hd230335230973%_
                                               _%tl230336230975%_
                                               _%e230337230978%_
                                               _%hd230338230981%_
                                               _%tl230339230983%_
                                               _%e230340230986%_
                                               _%hd230341230989%_
                                               _%tl230342230991%_
                                               _%e230343230994%_
                                               _%hd230344230997%_
                                               _%tl230345230999%_
                                               _%e230346231002%_
                                               _%hd230347231005%_
                                               _%tl230348231007%_
                                               _%e230349231010%_
                                               _%hd230350231013%_
                                               _%tl230351231015%_
                                               _%e230352231018%_
                                               _%hd230353231021%_
                                               _%tl230354231023%_
                                               _%e230355231026%_
                                               _%hd230356231029%_
                                               _%tl230357231031%_
                                               _%e230358231034%_
                                               _%hd230359231037%_
                                               _%tl230360231039%_
                                               _%e230361231042%_
                                               _%hd230362231045%_
                                               _%tl230363231047%_
                                               _%e230364231050%_
                                               _%hd230365231053%_
                                               _%tl230366231055%_
                                               _%e230367231058%_
                                               _%hd230368231061%_
                                               _%tl230369231063%_
                                               _%e230370231066%_
                                               _%hd230371231069%_
                                               _%tl230372231071%_
                                               _%__splice234711234712%_
                                               _%target230373231074%_
                                               _%tl230375231076%_)
                                              (_%__kont234721234722%_))))
                                      (_%__kont234721234722%_))
                                  (_%__kont234721234722%_))))
                          (_%__kont234721234722%_))
                      (_%__kont234721234722%_))
                  (_%__kont234721234722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234721234722%_))))
                                          (_%__match235200235201%_
                                           _%e230334230970%_
                                           _%hd230335230973%_
                                           _%tl230336230975%_
                                           _%e230337230978%_
                                           _%hd230338230981%_
                                           _%tl230339230983%_
                                           _%e230340230986%_
                                           _%hd230341230989%_
                                           _%tl230342230991%_
                                           _%e230343230994%_
                                           _%hd230344230997%_
                                           _%tl230345230999%_
                                           _%e230346231002%_
                                           _%hd230347231005%_
                                           _%tl230348231007%_
                                           _%e230349231010%_
                                           _%hd230350231013%_
                                           _%tl230351231015%_
                                           _%e230352231018%_
                                           _%hd230353231021%_
                                           _%tl230354231023%_
                                           _%e230355231026%_
                                           _%hd230356231029%_
                                           _%tl230357231031%_))
                                      (_%__match235200235201%_
                                       _%e230334230970%_
                                       _%hd230335230973%_
                                       _%tl230336230975%_
                                       _%e230337230978%_
                                       _%hd230338230981%_
                                       _%tl230339230983%_
                                       _%e230340230986%_
                                       _%hd230341230989%_
                                       _%tl230342230991%_
                                       _%e230343230994%_
                                       _%hd230344230997%_
                                       _%tl230345230999%_
                                       _%e230346231002%_
                                       _%hd230347231005%_
                                       _%tl230348231007%_
                                       _%e230349231010%_
                                       _%hd230350231013%_
                                       _%tl230351231015%_
                                       _%e230352231018%_
                                       _%hd230353231021%_
                                       _%tl230354231023%_
                                       _%e230355231026%_
                                       _%hd230356231029%_
                                       _%tl230357231031%_))))
                              (_%__match235200235201%_
                               _%e230334230970%_
                               _%hd230335230973%_
                               _%tl230336230975%_
                               _%e230337230978%_
                               _%hd230338230981%_
                               _%tl230339230983%_
                               _%e230340230986%_
                               _%hd230341230989%_
                               _%tl230342230991%_
                               _%e230343230994%_
                               _%hd230344230997%_
                               _%tl230345230999%_
                               _%e230346231002%_
                               _%hd230347231005%_
                               _%tl230348231007%_
                               _%e230349231010%_
                               _%hd230350231013%_
                               _%tl230351231015%_
                               _%e230352231018%_
                               _%hd230353231021%_
                               _%tl230354231023%_
                               _%e230355231026%_
                               _%hd230356231029%_
                               _%tl230357231031%_))
                          (_%__match234986234987%_
                           _%e230334230970%_
                           _%hd230335230973%_
                           _%tl230336230975%_
                           _%e230337230978%_
                           _%hd230338230981%_
                           _%tl230339230983%_
                           _%e230340230986%_
                           _%hd230341230989%_
                           _%tl230342230991%_
                           _%e230343230994%_
                           _%hd230344230997%_
                           _%tl230345230999%_
                           _%e230346231002%_
                           _%hd230347231005%_
                           _%tl230348231007%_
                           _%e230349231010%_
                           _%hd230350231013%_
                           _%tl230351231015%_
                           _%e230352231018%_
                           _%hd230353231021%_
                           _%tl230354231023%_
                           _%e230355231026%_
                           _%hd230356231029%_
                           _%tl230357231031%_
                           _%e230358231034%_
                           _%hd230359231037%_
                           _%tl230360231039%_))))
                   (_%__match234808234809%_
                    (lambda (_%e230290231157%_
                             _%hd230291231160%_
                             _%tl230292231162%_
                             _%e230293231165%_
                             _%hd230294231168%_
                             _%tl230295231170%_
                             _%e230296231173%_
                             _%hd230297231176%_
                             _%tl230298231178%_
                             _%e230299231181%_
                             _%hd230300231184%_
                             _%tl230301231186%_
                             _%e230302231189%_
                             _%hd230303231192%_
                             _%tl230304231194%_
                             _%e230305231197%_
                             _%hd230306231200%_
                             _%tl230307231202%_
                             _%e230308231205%_
                             _%hd230309231208%_
                             _%tl230310231210%_
                             _%e230311231213%_
                             _%hd230312231216%_
                             _%tl230313231218%_
                             _%e230314231221%_
                             _%hd230315231224%_
                             _%tl230316231226%_
                             _%e230317231229%_
                             _%hd230318231232%_
                             _%tl230319231234%_
                             _%__splice234707234708%_
                             _%target230320231237%_
                             _%tl230322231239%_)
                      (letrec ((_%loop230323231242%_
                                (lambda (_%hd230321231245%_
                                         _%args230327231247%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230321231245%_))
                                      (let ((_%e230324231249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230321231245%_))))
                                        (let ((_%lp-tl230326231254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230324231249%_)))
                                              (_%lp-hd230325231252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230324231249%_))))
                                          (_%loop230323231242%_
                                           _%lp-tl230326231254%_
                                           (cons _%lp-hd230325231252%_
                                                 _%args230327231247%_))))
                                      (let ((_%args230328231257%_
                                             (reverse _%args230327231247%_)))
                                        (let ((_%g230286231259%_
                                               _%args230328231257%_)
                                              (_%g230287231260%_
                                               _%hd230318231232%_)
                                              (_%g230288231261%_
                                               _%hd230309231208%_)
                                              (_%g230289231262%_
                                               _%hd230300231184%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230289231262%_
                                                      'call-method))
                                                   (let ((__tmp235866
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230275%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230288231261%_
                                                      __tmp235866)))
                                              (_%__kont234705234706%_
                                               _%g230286231259%_
                                               _%g230287231260%_
                                               _%g230288231261%_
                                               _%g230289231262%_)
                                              (_%__match234996234997%_
                                               _%e230290231157%_
                                               _%hd230291231160%_
                                               _%tl230292231162%_
                                               _%e230293231165%_
                                               _%hd230294231168%_
                                               _%tl230295231170%_
                                               _%e230296231173%_
                                               _%hd230297231176%_
                                               _%tl230298231178%_
                                               _%e230299231181%_
                                               _%hd230300231184%_
                                               _%tl230301231186%_
                                               _%e230302231189%_
                                               _%hd230303231192%_
                                               _%tl230304231194%_
                                               _%e230305231197%_
                                               _%hd230306231200%_
                                               _%tl230307231202%_
                                               _%e230308231205%_
                                               _%hd230309231208%_
                                               _%tl230310231210%_
                                               _%e230311231213%_
                                               _%hd230312231216%_
                                               _%tl230313231218%_
                                               _%e230314231221%_
                                               _%hd230315231224%_
                                               _%tl230316231226%_
                                               _%e230317231229%_
                                               _%hd230318231232%_
                                               _%tl230319231234%_))))))))
                        (_%loop230323231242%_ _%target230320231237%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx234703234704%_))
                  (let ((_%e230290231157%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx234703234704%_))))
                    (let ((_%tl230292231162%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230290231157%_)))
                          (_%hd230291231160%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230290231157%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230292231162%_))
                          (let ((_%e230293231165%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230292231162%_))))
                            (let ((_%tl230295231170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230293231165%_)))
                                  (_%hd230294231168%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230293231165%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd230294231168%_))
                                  (let ((_%e230296231173%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd230294231168%_))))
                                    (let ((_%tl230298231178%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e230296231173%_)))
                                          (_%hd230297231176%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e230296231173%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd230297231176%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd230297231176%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl230298231178%_))
                                                  (let ((_%e230299231181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl230298231178%_))))
                                                    (let ((_%tl230301231186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230299231181%_)))
                                                          (_%hd230300231184%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230299231181%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl230301231186%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl230295231170%_))
                      (let ((_%e230302231189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl230295231170%_))))
                        (let ((_%tl230304231194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230302231189%_)))
                              (_%hd230303231192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230302231189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd230303231192%_))
                              (let ((_%e230305231197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd230303231192%_))))
                                (let ((_%tl230307231202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230305231197%_)))
                                      (_%hd230306231200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230305231197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd230306231200%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd230306231200%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230307231202%_))
                                              (let ((_%e230308231205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230307231202%_))))
                                                (let ((_%tl230310231210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230308231205%_)))
                                                      (_%hd230309231208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230308231205%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230310231210%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl230304231194%_))
                                                          (let ((_%e230311231213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl230304231194%_))))
                    (let ((_%tl230313231218%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230311231213%_)))
                          (_%hd230312231216%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230311231213%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230312231216%_))
                          (let ((_%e230314231221%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230312231216%_))))
                            (let ((_%tl230316231226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230314231221%_)))
                                  (_%hd230315231224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230314231221%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd230315231224%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd230315231224%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230316231226%_))
                                          (let ((_%e230317231229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230316231226%_))))
                                            (let ((_%tl230319231234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230317231229%_)))
                                                  (_%hd230318231232%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230317231229%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230319231234%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl230313231218%_))
                                                      (let ((_%__splice234707234708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl230313231218%_
                        '0))))
                (let ((_%tl230322231239%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234707234708%_ '1)))
                      (_%target230320231237%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234707234708%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl230322231239%_))
                      (_%__match234808234809%_
                       _%e230290231157%_
                       _%hd230291231160%_
                       _%tl230292231162%_
                       _%e230293231165%_
                       _%hd230294231168%_
                       _%tl230295231170%_
                       _%e230296231173%_
                       _%hd230297231176%_
                       _%tl230298231178%_
                       _%e230299231181%_
                       _%hd230300231184%_
                       _%tl230301231186%_
                       _%e230302231189%_
                       _%hd230303231192%_
                       _%tl230304231194%_
                       _%e230305231197%_
                       _%hd230306231200%_
                       _%tl230307231202%_
                       _%e230308231205%_
                       _%hd230309231208%_
                       _%tl230310231210%_
                       _%e230311231213%_
                       _%hd230312231216%_
                       _%tl230313231218%_
                       _%e230314231221%_
                       _%hd230315231224%_
                       _%tl230316231226%_
                       _%e230317231229%_
                       _%hd230318231232%_
                       _%tl230319231234%_
                       _%__splice234707234708%_
                       _%target230320231237%_
                       _%tl230322231239%_)
                      (_%__match234996234997%_
                       _%e230290231157%_
                       _%hd230291231160%_
                       _%tl230292231162%_
                       _%e230293231165%_
                       _%hd230294231168%_
                       _%tl230295231170%_
                       _%e230296231173%_
                       _%hd230297231176%_
                       _%tl230298231178%_
                       _%e230299231181%_
                       _%hd230300231184%_
                       _%tl230301231186%_
                       _%e230302231189%_
                       _%hd230303231192%_
                       _%tl230304231194%_
                       _%e230305231197%_
                       _%hd230306231200%_
                       _%tl230307231202%_
                       _%e230308231205%_
                       _%hd230309231208%_
                       _%tl230310231210%_
                       _%e230311231213%_
                       _%hd230312231216%_
                       _%tl230313231218%_
                       _%e230314231221%_
                       _%hd230315231224%_
                       _%tl230316231226%_
                       _%e230317231229%_
                       _%hd230318231232%_
                       _%tl230319231234%_))))
              (_%__match234996234997%_
               _%e230290231157%_
               _%hd230291231160%_
               _%tl230292231162%_
               _%e230293231165%_
               _%hd230294231168%_
               _%tl230295231170%_
               _%e230296231173%_
               _%hd230297231176%_
               _%tl230298231178%_
               _%e230299231181%_
               _%hd230300231184%_
               _%tl230301231186%_
               _%e230302231189%_
               _%hd230303231192%_
               _%tl230304231194%_
               _%e230305231197%_
               _%hd230306231200%_
               _%tl230307231202%_
               _%e230308231205%_
               _%hd230309231208%_
               _%tl230310231210%_
               _%e230311231213%_
               _%hd230312231216%_
               _%tl230313231218%_
               _%e230314231221%_
               _%hd230315231224%_
               _%tl230316231226%_
               _%e230317231229%_
               _%hd230318231232%_
               _%tl230319231234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match235200235201%_
                                                   _%e230290231157%_
                                                   _%hd230291231160%_
                                                   _%tl230292231162%_
                                                   _%e230293231165%_
                                                   _%hd230294231168%_
                                                   _%tl230295231170%_
                                                   _%e230296231173%_
                                                   _%hd230297231176%_
                                                   _%tl230298231178%_
                                                   _%e230299231181%_
                                                   _%hd230300231184%_
                                                   _%tl230301231186%_
                                                   _%e230302231189%_
                                                   _%hd230303231192%_
                                                   _%tl230304231194%_
                                                   _%e230305231197%_
                                                   _%hd230306231200%_
                                                   _%tl230307231202%_
                                                   _%e230308231205%_
                                                   _%hd230309231208%_
                                                   _%tl230310231210%_
                                                   _%e230311231213%_
                                                   _%hd230312231216%_
                                                   _%tl230313231218%_))))
                                          (_%__match235200235201%_
                                           _%e230290231157%_
                                           _%hd230291231160%_
                                           _%tl230292231162%_
                                           _%e230293231165%_
                                           _%hd230294231168%_
                                           _%tl230295231170%_
                                           _%e230296231173%_
                                           _%hd230297231176%_
                                           _%tl230298231178%_
                                           _%e230299231181%_
                                           _%hd230300231184%_
                                           _%tl230301231186%_
                                           _%e230302231189%_
                                           _%hd230303231192%_
                                           _%tl230304231194%_
                                           _%e230305231197%_
                                           _%hd230306231200%_
                                           _%tl230307231202%_
                                           _%e230308231205%_
                                           _%hd230309231208%_
                                           _%tl230310231210%_
                                           _%e230311231213%_
                                           _%hd230312231216%_
                                           _%tl230313231218%_))
                                      (_%__match234876234877%_
                                       _%e230290231157%_
                                       _%hd230291231160%_
                                       _%tl230292231162%_
                                       _%e230293231165%_
                                       _%hd230294231168%_
                                       _%tl230295231170%_
                                       _%e230296231173%_
                                       _%hd230297231176%_
                                       _%tl230298231178%_
                                       _%e230299231181%_
                                       _%hd230300231184%_
                                       _%tl230301231186%_
                                       _%e230302231189%_
                                       _%hd230303231192%_
                                       _%tl230304231194%_
                                       _%e230305231197%_
                                       _%hd230306231200%_
                                       _%tl230307231202%_
                                       _%e230308231205%_
                                       _%hd230309231208%_
                                       _%tl230310231210%_
                                       _%e230311231213%_
                                       _%hd230312231216%_
                                       _%tl230313231218%_
                                       _%e230314231221%_
                                       _%hd230315231224%_
                                       _%tl230316231226%_))
                                  (_%__match235200235201%_
                                   _%e230290231157%_
                                   _%hd230291231160%_
                                   _%tl230292231162%_
                                   _%e230293231165%_
                                   _%hd230294231168%_
                                   _%tl230295231170%_
                                   _%e230296231173%_
                                   _%hd230297231176%_
                                   _%tl230298231178%_
                                   _%e230299231181%_
                                   _%hd230300231184%_
                                   _%tl230301231186%_
                                   _%e230302231189%_
                                   _%hd230303231192%_
                                   _%tl230304231194%_
                                   _%e230305231197%_
                                   _%hd230306231200%_
                                   _%tl230307231202%_
                                   _%e230308231205%_
                                   _%hd230309231208%_
                                   _%tl230310231210%_
                                   _%e230311231213%_
                                   _%hd230312231216%_
                                   _%tl230313231218%_))))
                          (_%__match235200235201%_
                           _%e230290231157%_
                           _%hd230291231160%_
                           _%tl230292231162%_
                           _%e230293231165%_
                           _%hd230294231168%_
                           _%tl230295231170%_
                           _%e230296231173%_
                           _%hd230297231176%_
                           _%tl230298231178%_
                           _%e230299231181%_
                           _%hd230300231184%_
                           _%tl230301231186%_
                           _%e230302231189%_
                           _%hd230303231192%_
                           _%tl230304231194%_
                           _%e230305231197%_
                           _%hd230306231200%_
                           _%tl230307231202%_
                           _%e230308231205%_
                           _%hd230309231208%_
                           _%tl230310231210%_
                           _%e230311231213%_
                           _%hd230312231216%_
                           _%tl230313231218%_))))
                  (_%__match235138235139%_
                   _%e230290231157%_
                   _%hd230291231160%_
                   _%tl230292231162%_
                   _%e230293231165%_
                   _%hd230294231168%_
                   _%tl230295231170%_
                   _%e230296231173%_
                   _%hd230297231176%_
                   _%tl230298231178%_
                   _%e230299231181%_
                   _%hd230300231184%_
                   _%tl230301231186%_
                   _%e230302231189%_
                   _%hd230303231192%_
                   _%tl230304231194%_
                   _%e230305231197%_
                   _%hd230306231200%_
                   _%tl230307231202%_
                   _%e230308231205%_
                   _%hd230309231208%_
                   _%tl230310231210%_))
              (_%__kont234721234722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont234721234722%_))
                                          (_%__kont234721234722%_))
                                      (_%__kont234721234722%_))))
                              (_%__kont234721234722%_))))
                      (_%__kont234721234722%_))
                  (_%__kont234721234722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234721234722%_))
                                              (_%__kont234721234722%_))
                                          (_%__kont234721234722%_))))
                                  (_%__kont234721234722%_))))
                          (_%__kont234721234722%_))))
                  (_%__kont234721234722%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self229218%_ _%stx229219%_)
        (letrec ((_%force-e229221%_
                  (lambda (_%target230273%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target230273%_ '()))
                                      '()))))))
          (let* ((_%__stx235205235206%_ _%stx229219%_)
                 (_%g229229229451%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235205235206%_)))))
            (let ((_%__kont235207235208%_
                   (lambda (_%g229231230219%_
                            _%g229232230220%_
                            _%g229233230221%_
                            _%g229234230222%_)
                     (let ((_%$method230267%_
                            (let ((__tmp235868
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229218%_ 'methods)))
                                  (__tmp235867
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229232230220%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235868 __tmp235867)))
                           (_%args230268%_
                            (map (lambda (_%g230255230257%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229218%_
                                      _%g230255230257%_)))
                                 (let ((__tmp235869
                                        (lambda (_%g230259230262%_
                                                 _%g230260230264%_)
                                          (cons _%g230259230262%_
                                                _%g230260230264%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235869
                                    '()
                                    _%g229231230219%_)))))
                       (let ((__tmp235870
                              (cons '%#call
                                    (cons (_%force-e229221%_ _%$method230267%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229218%_
                                                               'receiver))
                                                            '()))
                                                _%args230268%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235870 _%stx229219%_)))))
                  (_%__kont235211235212%_
                   (lambda (_%g229274230053%_
                            _%g229275230054%_
                            _%g229276230055%_
                            _%g229277230056%_
                            _%g229278230057%_)
                     (let ((_%$method230109%_
                            (let ((__tmp235872
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229218%_ 'methods)))
                                  (__tmp235871
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229275230054%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235872 __tmp235871)))
                           (_%args230110%_
                            (map (lambda (_%g230097230099%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229218%_
                                      _%g230097230099%_)))
                                 (let ((__tmp235873
                                        (lambda (_%g230101230104%_
                                                 _%g230102230106%_)
                                          (cons _%g230101230104%_
                                                _%g230102230106%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235873
                                    '()
                                    _%g229274230053%_)))))
                       (let ((__tmp235874
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e229221%_
                                                 _%$method230109%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229218%_ 'receiver))
                          '()))
              _%args230110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235874 _%stx229219%_)))))
                  (_%__kont235215235216%_
                   (lambda (_%g229327229886%_
                            _%g229328229887%_
                            _%g229329229888%_)
                     (let* ((_%$field229920%_
                             (let ((__tmp235876
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self229218%_ 'slots)))
                                   (__tmp235875
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g229327229886%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp235876 __tmp235875)))
                            (__tmp235877
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self229218%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field229920%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self229218%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp235877 _%stx229219%_))))
                  (_%__kont235217235218%_
                   (lambda (_%g229360229760%_
                            _%g229361229761%_
                            _%g229362229762%_
                            _%g229363229763%_)
                     (let ((_%$field229798%_
                            (let ((__tmp235879
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229218%_ 'slots)))
                                  (__tmp235878
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229361229761%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235879 __tmp235878)))
                           (_%expr229799%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self229218%_
                               _%g229360229760%_))))
                       (let ((__tmp235880
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self229218%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field229798%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229218%_ 'receiver))
                          '()))
              (cons _%expr229799%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235880 _%stx229219%_)))))
                  (_%__kont235219235220%_
                   (lambda (_%g229397229632%_ _%g229398229633%_)
                     (let* ((_%accessor229655%_
                             (let ((__tmp235881
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229398229633%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235881)))
                            (_%klass229657%_
                             (let ((__tmp235882
                                    (##structure-ref
                                     _%accessor229655%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229219%_
                                __tmp235882)))
                            (_%slot229659%_
                             (##structure-ref
                              _%accessor229655%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor229655%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229657%_
                                      _%slot229659%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229657%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx229219%_
                           (let* ((_%$field229665%_
                                   (let ((__tmp235883
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229218%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235883 _%slot229659%_)))
                                  (__tmp235884
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229218%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229218%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235884
                              _%stx229219%_))))))
                  (_%__kont235221235222%_
                   (lambda (_%g229420229527%_
                            _%g229421229528%_
                            _%g229422229529%_)
                     (let* ((_%mutator229557%_
                             (let ((__tmp235885
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229422229529%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235885)))
                            (_%klass229559%_
                             (let ((__tmp235886
                                    (##structure-ref
                                     _%mutator229557%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229219%_
                                __tmp235886)))
                            (_%slot229561%_
                             (##structure-ref
                              _%mutator229557%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr229563%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self229218%_
                                _%g229420229527%_))))
                       (if (if (##structure-ref
                                _%mutator229557%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229559%_
                                      _%slot229561%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229559%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp235887
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g229422229529%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g229421229528%_
                                                                '()))
                                                    (cons _%expr229563%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp235887 _%stx229219%_))
                           (let* ((_%$field229569%_
                                   (let ((__tmp235888
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229218%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235888 _%slot229561%_)))
                                  (__tmp235889
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229218%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229218%_ 'receiver))
                               '()))
                   (cons _%expr229563%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235889
                              _%stx229219%_))))))
                  (_%__kont235223235224%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self229218%_ _%stx229219%_)))))
              (let* ((_%__match235704235705%_
                      (lambda (_%e229423229463%_
                               _%hd229424229466%_
                               _%tl229425229468%_
                               _%e229426229471%_
                               _%hd229427229474%_
                               _%tl229428229476%_
                               _%e229429229479%_
                               _%hd229430229482%_
                               _%tl229431229484%_
                               _%e229432229487%_
                               _%hd229433229490%_
                               _%tl229434229492%_
                               _%e229435229495%_
                               _%hd229436229498%_
                               _%tl229437229500%_
                               _%e229438229503%_
                               _%hd229439229506%_
                               _%tl229440229508%_
                               _%e229441229511%_
                               _%hd229442229514%_
                               _%tl229443229516%_
                               _%e229444229519%_
                               _%hd229445229522%_
                               _%tl229446229524%_)
                        (let ((_%g229420229527%_ _%hd229445229522%_)
                              (_%g229421229528%_ _%hd229442229514%_)
                              (_%g229422229529%_ _%hd229433229490%_))
                          (if (and (let ((__tmp235890
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229218%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229421229528%_
                                      __tmp235890))
                                   (let ((__tmp235891
                                          (let ((__tmp235892
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229422229529%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235892))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235891
                                      'gxc#!mutator::t)))
                              (_%__kont235221235222%_
                               _%g229420229527%_
                               _%g229421229528%_
                               _%g229422229529%_)
                              (_%__kont235223235224%_)))))
                     (_%__match235702235703%_
                      (lambda (_%e229423229463%_
                               _%hd229424229466%_
                               _%tl229425229468%_
                               _%e229426229471%_
                               _%hd229427229474%_
                               _%tl229428229476%_
                               _%e229429229479%_
                               _%hd229430229482%_
                               _%tl229431229484%_
                               _%e229432229487%_
                               _%hd229433229490%_
                               _%tl229434229492%_
                               _%e229435229495%_
                               _%hd229436229498%_
                               _%tl229437229500%_
                               _%e229438229503%_
                               _%hd229439229506%_
                               _%tl229440229508%_
                               _%e229441229511%_
                               _%hd229442229514%_
                               _%tl229443229516%_
                               _%e229444229519%_
                               _%hd229445229522%_
                               _%tl229446229524%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229446229524%_))
                            (_%__match235704235705%_
                             _%e229423229463%_
                             _%hd229424229466%_
                             _%tl229425229468%_
                             _%e229426229471%_
                             _%hd229427229474%_
                             _%tl229428229476%_
                             _%e229429229479%_
                             _%hd229430229482%_
                             _%tl229431229484%_
                             _%e229432229487%_
                             _%hd229433229490%_
                             _%tl229434229492%_
                             _%e229435229495%_
                             _%hd229436229498%_
                             _%tl229437229500%_
                             _%e229438229503%_
                             _%hd229439229506%_
                             _%tl229440229508%_
                             _%e229441229511%_
                             _%hd229442229514%_
                             _%tl229443229516%_
                             _%e229444229519%_
                             _%hd229445229522%_
                             _%tl229446229524%_)
                            (_%__kont235223235224%_))))
                     (_%__match235696235697%_
                      (lambda (_%e229423229463%_
                               _%hd229424229466%_
                               _%tl229425229468%_
                               _%e229426229471%_
                               _%hd229427229474%_
                               _%tl229428229476%_
                               _%e229429229479%_
                               _%hd229430229482%_
                               _%tl229431229484%_
                               _%e229432229487%_
                               _%hd229433229490%_
                               _%tl229434229492%_
                               _%e229435229495%_
                               _%hd229436229498%_
                               _%tl229437229500%_
                               _%e229438229503%_
                               _%hd229439229506%_
                               _%tl229440229508%_
                               _%e229441229511%_
                               _%hd229442229514%_
                               _%tl229443229516%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229437229500%_))
                            (let ((_%e229444229519%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229437229500%_))))
                              (let ((_%tl229446229524%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229444229519%_)))
                                    (_%hd229445229522%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229444229519%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229446229524%_))
                                    (_%__match235704235705%_
                                     _%e229423229463%_
                                     _%hd229424229466%_
                                     _%tl229425229468%_
                                     _%e229426229471%_
                                     _%hd229427229474%_
                                     _%tl229428229476%_
                                     _%e229429229479%_
                                     _%hd229430229482%_
                                     _%tl229431229484%_
                                     _%e229432229487%_
                                     _%hd229433229490%_
                                     _%tl229434229492%_
                                     _%e229435229495%_
                                     _%hd229436229498%_
                                     _%tl229437229500%_
                                     _%e229438229503%_
                                     _%hd229439229506%_
                                     _%tl229440229508%_
                                     _%e229441229511%_
                                     _%hd229442229514%_
                                     _%tl229443229516%_
                                     _%e229444229519%_
                                     _%hd229445229522%_
                                     _%tl229446229524%_)
                                    (_%__kont235223235224%_))))
                            (_%__kont235223235224%_))))
                     (_%__match235642235643%_
                      (lambda (_%e229399229576%_
                               _%hd229400229579%_
                               _%tl229401229581%_
                               _%e229402229584%_
                               _%hd229403229587%_
                               _%tl229404229589%_
                               _%e229405229592%_
                               _%hd229406229595%_
                               _%tl229407229597%_
                               _%e229408229600%_
                               _%hd229409229603%_
                               _%tl229410229605%_
                               _%e229411229608%_
                               _%hd229412229611%_
                               _%tl229413229613%_
                               _%e229414229616%_
                               _%hd229415229619%_
                               _%tl229416229621%_
                               _%e229417229624%_
                               _%hd229418229627%_
                               _%tl229419229629%_)
                        (let ((_%g229397229632%_ _%hd229418229627%_)
                              (_%g229398229633%_ _%hd229409229603%_))
                          (if (and (let ((__tmp235893
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229218%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229397229632%_
                                      __tmp235893))
                                   (let ((__tmp235894
                                          (let ((__tmp235895
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229398229633%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235895))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235894
                                      'gxc#!accessor::t)))
                              (_%__kont235219235220%_
                               _%g229397229632%_
                               _%g229398229633%_)
                              (_%__kont235223235224%_)))))
                     (_%__match235640235641%_
                      (lambda (_%e229399229576%_
                               _%hd229400229579%_
                               _%tl229401229581%_
                               _%e229402229584%_
                               _%hd229403229587%_
                               _%tl229404229589%_
                               _%e229405229592%_
                               _%hd229406229595%_
                               _%tl229407229597%_
                               _%e229408229600%_
                               _%hd229409229603%_
                               _%tl229410229605%_
                               _%e229411229608%_
                               _%hd229412229611%_
                               _%tl229413229613%_
                               _%e229414229616%_
                               _%hd229415229619%_
                               _%tl229416229621%_
                               _%e229417229624%_
                               _%hd229418229627%_
                               _%tl229419229629%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229413229613%_))
                            (_%__match235642235643%_
                             _%e229399229576%_
                             _%hd229400229579%_
                             _%tl229401229581%_
                             _%e229402229584%_
                             _%hd229403229587%_
                             _%tl229404229589%_
                             _%e229405229592%_
                             _%hd229406229595%_
                             _%tl229407229597%_
                             _%e229408229600%_
                             _%hd229409229603%_
                             _%tl229410229605%_
                             _%e229411229608%_
                             _%hd229412229611%_
                             _%tl229413229613%_
                             _%e229414229616%_
                             _%hd229415229619%_
                             _%tl229416229621%_
                             _%e229417229624%_
                             _%hd229418229627%_
                             _%tl229419229629%_)
                            (_%__match235696235697%_
                             _%e229399229576%_
                             _%hd229400229579%_
                             _%tl229401229581%_
                             _%e229402229584%_
                             _%hd229403229587%_
                             _%tl229404229589%_
                             _%e229405229592%_
                             _%hd229406229595%_
                             _%tl229407229597%_
                             _%e229408229600%_
                             _%hd229409229603%_
                             _%tl229410229605%_
                             _%e229411229608%_
                             _%hd229412229611%_
                             _%tl229413229613%_
                             _%e229414229616%_
                             _%hd229415229619%_
                             _%tl229416229621%_
                             _%e229417229624%_
                             _%hd229418229627%_
                             _%tl229419229629%_))))
                     (_%__match235586235587%_
                      (lambda (_%e229364229672%_
                               _%hd229365229675%_
                               _%tl229366229677%_
                               _%e229367229680%_
                               _%hd229368229683%_
                               _%tl229369229685%_
                               _%e229370229688%_
                               _%hd229371229691%_
                               _%tl229372229693%_
                               _%e229373229696%_
                               _%hd229374229699%_
                               _%tl229375229701%_
                               _%e229376229704%_
                               _%hd229377229707%_
                               _%tl229378229709%_
                               _%e229379229712%_
                               _%hd229380229715%_
                               _%tl229381229717%_
                               _%e229382229720%_
                               _%hd229383229723%_
                               _%tl229384229725%_
                               _%e229385229728%_
                               _%hd229386229731%_
                               _%tl229387229733%_
                               _%e229388229736%_
                               _%hd229389229739%_
                               _%tl229390229741%_
                               _%e229391229744%_
                               _%hd229392229747%_
                               _%tl229393229749%_
                               _%e229394229752%_
                               _%hd229395229755%_
                               _%tl229396229757%_)
                        (let ((_%g229360229760%_ _%hd229395229755%_)
                              (_%g229361229761%_ _%hd229392229747%_)
                              (_%g229362229762%_ _%hd229383229723%_)
                              (_%g229363229763%_ _%hd229374229699%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229363229763%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229363229763%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp235896
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229218%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229362229762%_
                                      __tmp235896)))
                              (_%__kont235217235218%_
                               _%g229360229760%_
                               _%g229361229761%_
                               _%g229362229762%_
                               _%g229363229763%_)
                              (_%__kont235223235224%_)))))
                     (_%__match235578235579%_
                      (lambda (_%e229364229672%_
                               _%hd229365229675%_
                               _%tl229366229677%_
                               _%e229367229680%_
                               _%hd229368229683%_
                               _%tl229369229685%_
                               _%e229370229688%_
                               _%hd229371229691%_
                               _%tl229372229693%_
                               _%e229373229696%_
                               _%hd229374229699%_
                               _%tl229375229701%_
                               _%e229376229704%_
                               _%hd229377229707%_
                               _%tl229378229709%_
                               _%e229379229712%_
                               _%hd229380229715%_
                               _%tl229381229717%_
                               _%e229382229720%_
                               _%hd229383229723%_
                               _%tl229384229725%_
                               _%e229385229728%_
                               _%hd229386229731%_
                               _%tl229387229733%_
                               _%e229388229736%_
                               _%hd229389229739%_
                               _%tl229390229741%_
                               _%e229391229744%_
                               _%hd229392229747%_
                               _%tl229393229749%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229387229733%_))
                            (let ((_%e229394229752%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229387229733%_))))
                              (let ((_%tl229396229757%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229394229752%_)))
                                    (_%hd229395229755%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229394229752%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229396229757%_))
                                    (_%__match235586235587%_
                                     _%e229364229672%_
                                     _%hd229365229675%_
                                     _%tl229366229677%_
                                     _%e229367229680%_
                                     _%hd229368229683%_
                                     _%tl229369229685%_
                                     _%e229370229688%_
                                     _%hd229371229691%_
                                     _%tl229372229693%_
                                     _%e229373229696%_
                                     _%hd229374229699%_
                                     _%tl229375229701%_
                                     _%e229376229704%_
                                     _%hd229377229707%_
                                     _%tl229378229709%_
                                     _%e229379229712%_
                                     _%hd229380229715%_
                                     _%tl229381229717%_
                                     _%e229382229720%_
                                     _%hd229383229723%_
                                     _%tl229384229725%_
                                     _%e229385229728%_
                                     _%hd229386229731%_
                                     _%tl229387229733%_
                                     _%e229388229736%_
                                     _%hd229389229739%_
                                     _%tl229390229741%_
                                     _%e229391229744%_
                                     _%hd229392229747%_
                                     _%tl229393229749%_
                                     _%e229394229752%_
                                     _%hd229395229755%_
                                     _%tl229396229757%_)
                                    (_%__kont235223235224%_))))
                            (_%__match235702235703%_
                             _%e229364229672%_
                             _%hd229365229675%_
                             _%tl229366229677%_
                             _%e229367229680%_
                             _%hd229368229683%_
                             _%tl229369229685%_
                             _%e229370229688%_
                             _%hd229371229691%_
                             _%tl229372229693%_
                             _%e229373229696%_
                             _%hd229374229699%_
                             _%tl229375229701%_
                             _%e229376229704%_
                             _%hd229377229707%_
                             _%tl229378229709%_
                             _%e229379229712%_
                             _%hd229380229715%_
                             _%tl229381229717%_
                             _%e229382229720%_
                             _%hd229383229723%_
                             _%tl229384229725%_
                             _%e229385229728%_
                             _%hd229386229731%_
                             _%tl229387229733%_))))
                     (_%__match235500235501%_
                      (lambda (_%e229330229806%_
                               _%hd229331229809%_
                               _%tl229332229811%_
                               _%e229333229814%_
                               _%hd229334229817%_
                               _%tl229335229819%_
                               _%e229336229822%_
                               _%hd229337229825%_
                               _%tl229338229827%_
                               _%e229339229830%_
                               _%hd229340229833%_
                               _%tl229341229835%_
                               _%e229342229838%_
                               _%hd229343229841%_
                               _%tl229344229843%_
                               _%e229345229846%_
                               _%hd229346229849%_
                               _%tl229347229851%_
                               _%e229348229854%_
                               _%hd229349229857%_
                               _%tl229350229859%_
                               _%e229351229862%_
                               _%hd229352229865%_
                               _%tl229353229867%_
                               _%e229354229870%_
                               _%hd229355229873%_
                               _%tl229356229875%_
                               _%e229357229878%_
                               _%hd229358229881%_
                               _%tl229359229883%_)
                        (let ((_%g229327229886%_ _%hd229358229881%_)
                              (_%g229328229887%_ _%hd229349229857%_)
                              (_%g229329229888%_ _%hd229340229833%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229329229888%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229329229888%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp235897
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229218%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229328229887%_
                                      __tmp235897)))
                              (_%__kont235215235216%_
                               _%g229327229886%_
                               _%g229328229887%_
                               _%g229329229888%_)
                              (_%__match235704235705%_
                               _%e229330229806%_
                               _%hd229331229809%_
                               _%tl229332229811%_
                               _%e229333229814%_
                               _%hd229334229817%_
                               _%tl229335229819%_
                               _%e229336229822%_
                               _%hd229337229825%_
                               _%tl229338229827%_
                               _%e229339229830%_
                               _%hd229340229833%_
                               _%tl229341229835%_
                               _%e229342229838%_
                               _%hd229343229841%_
                               _%tl229344229843%_
                               _%e229345229846%_
                               _%hd229346229849%_
                               _%tl229347229851%_
                               _%e229348229854%_
                               _%hd229349229857%_
                               _%tl229350229859%_
                               _%e229351229862%_
                               _%hd229352229865%_
                               _%tl229353229867%_)))))
                     (_%__match235498235499%_
                      (lambda (_%e229330229806%_
                               _%hd229331229809%_
                               _%tl229332229811%_
                               _%e229333229814%_
                               _%hd229334229817%_
                               _%tl229335229819%_
                               _%e229336229822%_
                               _%hd229337229825%_
                               _%tl229338229827%_
                               _%e229339229830%_
                               _%hd229340229833%_
                               _%tl229341229835%_
                               _%e229342229838%_
                               _%hd229343229841%_
                               _%tl229344229843%_
                               _%e229345229846%_
                               _%hd229346229849%_
                               _%tl229347229851%_
                               _%e229348229854%_
                               _%hd229349229857%_
                               _%tl229350229859%_
                               _%e229351229862%_
                               _%hd229352229865%_
                               _%tl229353229867%_
                               _%e229354229870%_
                               _%hd229355229873%_
                               _%tl229356229875%_
                               _%e229357229878%_
                               _%hd229358229881%_
                               _%tl229359229883%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229353229867%_))
                            (_%__match235500235501%_
                             _%e229330229806%_
                             _%hd229331229809%_
                             _%tl229332229811%_
                             _%e229333229814%_
                             _%hd229334229817%_
                             _%tl229335229819%_
                             _%e229336229822%_
                             _%hd229337229825%_
                             _%tl229338229827%_
                             _%e229339229830%_
                             _%hd229340229833%_
                             _%tl229341229835%_
                             _%e229342229838%_
                             _%hd229343229841%_
                             _%tl229344229843%_
                             _%e229345229846%_
                             _%hd229346229849%_
                             _%tl229347229851%_
                             _%e229348229854%_
                             _%hd229349229857%_
                             _%tl229350229859%_
                             _%e229351229862%_
                             _%hd229352229865%_
                             _%tl229353229867%_
                             _%e229354229870%_
                             _%hd229355229873%_
                             _%tl229356229875%_
                             _%e229357229878%_
                             _%hd229358229881%_
                             _%tl229359229883%_)
                            (_%__match235578235579%_
                             _%e229330229806%_
                             _%hd229331229809%_
                             _%tl229332229811%_
                             _%e229333229814%_
                             _%hd229334229817%_
                             _%tl229335229819%_
                             _%e229336229822%_
                             _%hd229337229825%_
                             _%tl229338229827%_
                             _%e229339229830%_
                             _%hd229340229833%_
                             _%tl229341229835%_
                             _%e229342229838%_
                             _%hd229343229841%_
                             _%tl229344229843%_
                             _%e229345229846%_
                             _%hd229346229849%_
                             _%tl229347229851%_
                             _%e229348229854%_
                             _%hd229349229857%_
                             _%tl229350229859%_
                             _%e229351229862%_
                             _%hd229352229865%_
                             _%tl229353229867%_
                             _%e229354229870%_
                             _%hd229355229873%_
                             _%tl229356229875%_
                             _%e229357229878%_
                             _%hd229358229881%_
                             _%tl229359229883%_))))
                     (_%__match235488235489%_
                      (lambda (_%e229330229806%_
                               _%hd229331229809%_
                               _%tl229332229811%_
                               _%e229333229814%_
                               _%hd229334229817%_
                               _%tl229335229819%_
                               _%e229336229822%_
                               _%hd229337229825%_
                               _%tl229338229827%_
                               _%e229339229830%_
                               _%hd229340229833%_
                               _%tl229341229835%_
                               _%e229342229838%_
                               _%hd229343229841%_
                               _%tl229344229843%_
                               _%e229345229846%_
                               _%hd229346229849%_
                               _%tl229347229851%_
                               _%e229348229854%_
                               _%hd229349229857%_
                               _%tl229350229859%_
                               _%e229351229862%_
                               _%hd229352229865%_
                               _%tl229353229867%_
                               _%e229354229870%_
                               _%hd229355229873%_
                               _%tl229356229875%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd229355229873%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229356229875%_))
                                (let ((_%e229357229878%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229356229875%_))))
                                  (let ((_%tl229359229883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229357229878%_)))
                                        (_%hd229358229881%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229357229878%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229359229883%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229353229867%_))
                                            (_%__match235500235501%_
                                             _%e229330229806%_
                                             _%hd229331229809%_
                                             _%tl229332229811%_
                                             _%e229333229814%_
                                             _%hd229334229817%_
                                             _%tl229335229819%_
                                             _%e229336229822%_
                                             _%hd229337229825%_
                                             _%tl229338229827%_
                                             _%e229339229830%_
                                             _%hd229340229833%_
                                             _%tl229341229835%_
                                             _%e229342229838%_
                                             _%hd229343229841%_
                                             _%tl229344229843%_
                                             _%e229345229846%_
                                             _%hd229346229849%_
                                             _%tl229347229851%_
                                             _%e229348229854%_
                                             _%hd229349229857%_
                                             _%tl229350229859%_
                                             _%e229351229862%_
                                             _%hd229352229865%_
                                             _%tl229353229867%_
                                             _%e229354229870%_
                                             _%hd229355229873%_
                                             _%tl229356229875%_
                                             _%e229357229878%_
                                             _%hd229358229881%_
                                             _%tl229359229883%_)
                                            (_%__match235578235579%_
                                             _%e229330229806%_
                                             _%hd229331229809%_
                                             _%tl229332229811%_
                                             _%e229333229814%_
                                             _%hd229334229817%_
                                             _%tl229335229819%_
                                             _%e229336229822%_
                                             _%hd229337229825%_
                                             _%tl229338229827%_
                                             _%e229339229830%_
                                             _%hd229340229833%_
                                             _%tl229341229835%_
                                             _%e229342229838%_
                                             _%hd229343229841%_
                                             _%tl229344229843%_
                                             _%e229345229846%_
                                             _%hd229346229849%_
                                             _%tl229347229851%_
                                             _%e229348229854%_
                                             _%hd229349229857%_
                                             _%tl229350229859%_
                                             _%e229351229862%_
                                             _%hd229352229865%_
                                             _%tl229353229867%_
                                             _%e229354229870%_
                                             _%hd229355229873%_
                                             _%tl229356229875%_
                                             _%e229357229878%_
                                             _%hd229358229881%_
                                             _%tl229359229883%_))
                                        (_%__match235702235703%_
                                         _%e229330229806%_
                                         _%hd229331229809%_
                                         _%tl229332229811%_
                                         _%e229333229814%_
                                         _%hd229334229817%_
                                         _%tl229335229819%_
                                         _%e229336229822%_
                                         _%hd229337229825%_
                                         _%tl229338229827%_
                                         _%e229339229830%_
                                         _%hd229340229833%_
                                         _%tl229341229835%_
                                         _%e229342229838%_
                                         _%hd229343229841%_
                                         _%tl229344229843%_
                                         _%e229345229846%_
                                         _%hd229346229849%_
                                         _%tl229347229851%_
                                         _%e229348229854%_
                                         _%hd229349229857%_
                                         _%tl229350229859%_
                                         _%e229351229862%_
                                         _%hd229352229865%_
                                         _%tl229353229867%_))))
                                (_%__match235702235703%_
                                 _%e229330229806%_
                                 _%hd229331229809%_
                                 _%tl229332229811%_
                                 _%e229333229814%_
                                 _%hd229334229817%_
                                 _%tl229335229819%_
                                 _%e229336229822%_
                                 _%hd229337229825%_
                                 _%tl229338229827%_
                                 _%e229339229830%_
                                 _%hd229340229833%_
                                 _%tl229341229835%_
                                 _%e229342229838%_
                                 _%hd229343229841%_
                                 _%tl229344229843%_
                                 _%e229345229846%_
                                 _%hd229346229849%_
                                 _%tl229347229851%_
                                 _%e229348229854%_
                                 _%hd229349229857%_
                                 _%tl229350229859%_
                                 _%e229351229862%_
                                 _%hd229352229865%_
                                 _%tl229353229867%_))
                            (_%__match235702235703%_
                             _%e229330229806%_
                             _%hd229331229809%_
                             _%tl229332229811%_
                             _%e229333229814%_
                             _%hd229334229817%_
                             _%tl229335229819%_
                             _%e229336229822%_
                             _%hd229337229825%_
                             _%tl229338229827%_
                             _%e229339229830%_
                             _%hd229340229833%_
                             _%tl229341229835%_
                             _%e229342229838%_
                             _%hd229343229841%_
                             _%tl229344229843%_
                             _%e229345229846%_
                             _%hd229346229849%_
                             _%tl229347229851%_
                             _%e229348229854%_
                             _%hd229349229857%_
                             _%tl229350229859%_
                             _%e229351229862%_
                             _%hd229352229865%_
                             _%tl229353229867%_))))
                     (_%__match235420235421%_
                      (lambda (_%e229279229927%_
                               _%hd229280229930%_
                               _%tl229281229932%_
                               _%e229282229935%_
                               _%hd229283229938%_
                               _%tl229284229940%_
                               _%e229285229943%_
                               _%hd229286229946%_
                               _%tl229287229948%_
                               _%e229288229951%_
                               _%hd229289229954%_
                               _%tl229290229956%_
                               _%e229291229959%_
                               _%hd229292229962%_
                               _%tl229293229964%_
                               _%e229294229967%_
                               _%hd229295229970%_
                               _%tl229296229972%_
                               _%e229297229975%_
                               _%hd229298229978%_
                               _%tl229299229980%_
                               _%e229300229983%_
                               _%hd229301229986%_
                               _%tl229302229988%_
                               _%e229303229991%_
                               _%hd229304229994%_
                               _%tl229305229996%_
                               _%e229306229999%_
                               _%hd229307230002%_
                               _%tl229308230004%_
                               _%e229309230007%_
                               _%hd229310230010%_
                               _%tl229311230012%_
                               _%e229312230015%_
                               _%hd229313230018%_
                               _%tl229314230020%_
                               _%e229315230023%_
                               _%hd229316230026%_
                               _%tl229317230028%_
                               _%__splice235213235214%_
                               _%target229318230031%_
                               _%tl229320230033%_)
                        (letrec ((_%loop229321230036%_
                                  (lambda (_%hd229319230039%_
                                           _%args229325230041%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229319230039%_))
                                        (let ((_%e229322230043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229319230039%_))))
                                          (let ((_%lp-tl229324230048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229322230043%_)))
                                                (_%lp-hd229323230046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229322230043%_))))
                                            (_%loop229321230036%_
                                             _%lp-tl229324230048%_
                                             (cons _%lp-hd229323230046%_
                                                   _%args229325230041%_))))
                                        (let ((_%args229326230051%_
                                               (reverse _%args229325230041%_)))
                                          (let ((_%g229274230053%_
                                                 _%args229326230051%_)
                                                (_%g229275230054%_
                                                 _%hd229316230026%_)
                                                (_%g229276230055%_
                                                 _%hd229307230002%_)
                                                (_%g229277230056%_
                                                 _%hd229298229978%_)
                                                (_%g229278230057%_
                                                 _%hd229289229954%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229278230057%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229277230056%_
                                                        'call-method))
                                                     (let ((__tmp235898
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229218%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229276230055%_
                                                        __tmp235898)))
                                                (_%__kont235211235212%_
                                                 _%g229274230053%_
                                                 _%g229275230054%_
                                                 _%g229276230055%_
                                                 _%g229277230056%_
                                                 _%g229278230057%_)
                                                (_%__kont235223235224%_))))))))
                          (_%loop229321230036%_ _%target229318230031%_ '()))))
                     (_%__match235378235379%_
                      (lambda (_%e229279229927%_
                               _%hd229280229930%_
                               _%tl229281229932%_
                               _%e229282229935%_
                               _%hd229283229938%_
                               _%tl229284229940%_
                               _%e229285229943%_
                               _%hd229286229946%_
                               _%tl229287229948%_
                               _%e229288229951%_
                               _%hd229289229954%_
                               _%tl229290229956%_
                               _%e229291229959%_
                               _%hd229292229962%_
                               _%tl229293229964%_
                               _%e229294229967%_
                               _%hd229295229970%_
                               _%tl229296229972%_
                               _%e229297229975%_
                               _%hd229298229978%_
                               _%tl229299229980%_
                               _%e229300229983%_
                               _%hd229301229986%_
                               _%tl229302229988%_
                               _%e229303229991%_
                               _%hd229304229994%_
                               _%tl229305229996%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd229304229994%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229305229996%_))
                                (let ((_%e229306229999%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229305229996%_))))
                                  (let ((_%tl229308230004%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229306229999%_)))
                                        (_%hd229307230002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229306229999%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229308230004%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229302229988%_))
                                            (let ((_%e229309230007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229302229988%_))))
                                              (let ((_%tl229311230012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229309230007%_)))
                                                    (_%hd229310230010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229309230007%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd229310230010%_))
                                                    (let ((_%e229312230015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229310230010%_))))
                                                      (let ((_%tl229314230020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229312230015%_)))
                    (_%hd229313230018%_
                     (let () (declare (not safe)) (##car _%e229312230015%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd229313230018%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd229313230018%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229314230020%_))
                            (let ((_%e229315230023%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229314230020%_))))
                              (let ((_%tl229317230028%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229315230023%_)))
                                    (_%hd229316230026%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229315230023%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229317230028%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl229311230012%_))
                                        (let ((_%__splice235213235214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl229311230012%_
                                                  '0))))
                                          (let ((_%tl229320230033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235213235214%_
                                                    '1)))
                                                (_%target229318230031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235213235214%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl229320230033%_))
                                                (_%__match235420235421%_
                                                 _%e229279229927%_
                                                 _%hd229280229930%_
                                                 _%tl229281229932%_
                                                 _%e229282229935%_
                                                 _%hd229283229938%_
                                                 _%tl229284229940%_
                                                 _%e229285229943%_
                                                 _%hd229286229946%_
                                                 _%tl229287229948%_
                                                 _%e229288229951%_
                                                 _%hd229289229954%_
                                                 _%tl229290229956%_
                                                 _%e229291229959%_
                                                 _%hd229292229962%_
                                                 _%tl229293229964%_
                                                 _%e229294229967%_
                                                 _%hd229295229970%_
                                                 _%tl229296229972%_
                                                 _%e229297229975%_
                                                 _%hd229298229978%_
                                                 _%tl229299229980%_
                                                 _%e229300229983%_
                                                 _%hd229301229986%_
                                                 _%tl229302229988%_
                                                 _%e229303229991%_
                                                 _%hd229304229994%_
                                                 _%tl229305229996%_
                                                 _%e229306229999%_
                                                 _%hd229307230002%_
                                                 _%tl229308230004%_
                                                 _%e229309230007%_
                                                 _%hd229310230010%_
                                                 _%tl229311230012%_
                                                 _%e229312230015%_
                                                 _%hd229313230018%_
                                                 _%tl229314230020%_
                                                 _%e229315230023%_
                                                 _%hd229316230026%_
                                                 _%tl229317230028%_
                                                 _%__splice235213235214%_
                                                 _%target229318230031%_
                                                 _%tl229320230033%_)
                                                (_%__kont235223235224%_))))
                                        (_%__kont235223235224%_))
                                    (_%__kont235223235224%_))))
                            (_%__kont235223235224%_))
                        (_%__kont235223235224%_))
                    (_%__kont235223235224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235223235224%_))))
                                            (_%__match235702235703%_
                                             _%e229279229927%_
                                             _%hd229280229930%_
                                             _%tl229281229932%_
                                             _%e229282229935%_
                                             _%hd229283229938%_
                                             _%tl229284229940%_
                                             _%e229285229943%_
                                             _%hd229286229946%_
                                             _%tl229287229948%_
                                             _%e229288229951%_
                                             _%hd229289229954%_
                                             _%tl229290229956%_
                                             _%e229291229959%_
                                             _%hd229292229962%_
                                             _%tl229293229964%_
                                             _%e229294229967%_
                                             _%hd229295229970%_
                                             _%tl229296229972%_
                                             _%e229297229975%_
                                             _%hd229298229978%_
                                             _%tl229299229980%_
                                             _%e229300229983%_
                                             _%hd229301229986%_
                                             _%tl229302229988%_))
                                        (_%__match235702235703%_
                                         _%e229279229927%_
                                         _%hd229280229930%_
                                         _%tl229281229932%_
                                         _%e229282229935%_
                                         _%hd229283229938%_
                                         _%tl229284229940%_
                                         _%e229285229943%_
                                         _%hd229286229946%_
                                         _%tl229287229948%_
                                         _%e229288229951%_
                                         _%hd229289229954%_
                                         _%tl229290229956%_
                                         _%e229291229959%_
                                         _%hd229292229962%_
                                         _%tl229293229964%_
                                         _%e229294229967%_
                                         _%hd229295229970%_
                                         _%tl229296229972%_
                                         _%e229297229975%_
                                         _%hd229298229978%_
                                         _%tl229299229980%_
                                         _%e229300229983%_
                                         _%hd229301229986%_
                                         _%tl229302229988%_))))
                                (_%__match235702235703%_
                                 _%e229279229927%_
                                 _%hd229280229930%_
                                 _%tl229281229932%_
                                 _%e229282229935%_
                                 _%hd229283229938%_
                                 _%tl229284229940%_
                                 _%e229285229943%_
                                 _%hd229286229946%_
                                 _%tl229287229948%_
                                 _%e229288229951%_
                                 _%hd229289229954%_
                                 _%tl229290229956%_
                                 _%e229291229959%_
                                 _%hd229292229962%_
                                 _%tl229293229964%_
                                 _%e229294229967%_
                                 _%hd229295229970%_
                                 _%tl229296229972%_
                                 _%e229297229975%_
                                 _%hd229298229978%_
                                 _%tl229299229980%_
                                 _%e229300229983%_
                                 _%hd229301229986%_
                                 _%tl229302229988%_))
                            (_%__match235488235489%_
                             _%e229279229927%_
                             _%hd229280229930%_
                             _%tl229281229932%_
                             _%e229282229935%_
                             _%hd229283229938%_
                             _%tl229284229940%_
                             _%e229285229943%_
                             _%hd229286229946%_
                             _%tl229287229948%_
                             _%e229288229951%_
                             _%hd229289229954%_
                             _%tl229290229956%_
                             _%e229291229959%_
                             _%hd229292229962%_
                             _%tl229293229964%_
                             _%e229294229967%_
                             _%hd229295229970%_
                             _%tl229296229972%_
                             _%e229297229975%_
                             _%hd229298229978%_
                             _%tl229299229980%_
                             _%e229300229983%_
                             _%hd229301229986%_
                             _%tl229302229988%_
                             _%e229303229991%_
                             _%hd229304229994%_
                             _%tl229305229996%_))))
                     (_%__match235310235311%_
                      (lambda (_%e229235230117%_
                               _%hd229236230120%_
                               _%tl229237230122%_
                               _%e229238230125%_
                               _%hd229239230128%_
                               _%tl229240230130%_
                               _%e229241230133%_
                               _%hd229242230136%_
                               _%tl229243230138%_
                               _%e229244230141%_
                               _%hd229245230144%_
                               _%tl229246230146%_
                               _%e229247230149%_
                               _%hd229248230152%_
                               _%tl229249230154%_
                               _%e229250230157%_
                               _%hd229251230160%_
                               _%tl229252230162%_
                               _%e229253230165%_
                               _%hd229254230168%_
                               _%tl229255230170%_
                               _%e229256230173%_
                               _%hd229257230176%_
                               _%tl229258230178%_
                               _%e229259230181%_
                               _%hd229260230184%_
                               _%tl229261230186%_
                               _%e229262230189%_
                               _%hd229263230192%_
                               _%tl229264230194%_
                               _%__splice235209235210%_
                               _%target229265230197%_
                               _%tl229267230199%_)
                        (letrec ((_%loop229268230202%_
                                  (lambda (_%hd229266230205%_
                                           _%args229272230207%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229266230205%_))
                                        (let ((_%e229269230209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229266230205%_))))
                                          (let ((_%lp-tl229271230214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229269230209%_)))
                                                (_%lp-hd229270230212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229269230209%_))))
                                            (_%loop229268230202%_
                                             _%lp-tl229271230214%_
                                             (cons _%lp-hd229270230212%_
                                                   _%args229272230207%_))))
                                        (let ((_%args229273230217%_
                                               (reverse _%args229272230207%_)))
                                          (let ((_%g229231230219%_
                                                 _%args229273230217%_)
                                                (_%g229232230220%_
                                                 _%hd229263230192%_)
                                                (_%g229233230221%_
                                                 _%hd229254230168%_)
                                                (_%g229234230222%_
                                                 _%hd229245230144%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229234230222%_
                                                        'call-method))
                                                     (let ((__tmp235899
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229218%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229233230221%_
                                                        __tmp235899)))
                                                (_%__kont235207235208%_
                                                 _%g229231230219%_
                                                 _%g229232230220%_
                                                 _%g229233230221%_
                                                 _%g229234230222%_)
                                                (_%__match235498235499%_
                                                 _%e229235230117%_
                                                 _%hd229236230120%_
                                                 _%tl229237230122%_
                                                 _%e229238230125%_
                                                 _%hd229239230128%_
                                                 _%tl229240230130%_
                                                 _%e229241230133%_
                                                 _%hd229242230136%_
                                                 _%tl229243230138%_
                                                 _%e229244230141%_
                                                 _%hd229245230144%_
                                                 _%tl229246230146%_
                                                 _%e229247230149%_
                                                 _%hd229248230152%_
                                                 _%tl229249230154%_
                                                 _%e229250230157%_
                                                 _%hd229251230160%_
                                                 _%tl229252230162%_
                                                 _%e229253230165%_
                                                 _%hd229254230168%_
                                                 _%tl229255230170%_
                                                 _%e229256230173%_
                                                 _%hd229257230176%_
                                                 _%tl229258230178%_
                                                 _%e229259230181%_
                                                 _%hd229260230184%_
                                                 _%tl229261230186%_
                                                 _%e229262230189%_
                                                 _%hd229263230192%_
                                                 _%tl229264230194%_))))))))
                          (_%loop229268230202%_ _%target229265230197%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235205235206%_))
                    (let ((_%e229235230117%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235205235206%_))))
                      (let ((_%tl229237230122%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229235230117%_)))
                            (_%hd229236230120%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229235230117%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229237230122%_))
                            (let ((_%e229238230125%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229237230122%_))))
                              (let ((_%tl229240230130%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229238230125%_)))
                                    (_%hd229239230128%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229238230125%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229239230128%_))
                                    (let ((_%e229241230133%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229239230128%_))))
                                      (let ((_%tl229243230138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229241230133%_)))
                                            (_%hd229242230136%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229241230133%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229242230136%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229242230136%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229243230138%_))
                                                    (let ((_%e229244230141%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229243230138%_))))
                                                      (let ((_%tl229246230146%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229244230141%_)))
                    (_%hd229245230144%_
                     (let () (declare (not safe)) (##car _%e229244230141%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229246230146%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229240230130%_))
                        (let ((_%e229247230149%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229240230130%_))))
                          (let ((_%tl229249230154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229247230149%_)))
                                (_%hd229248230152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229247230149%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229248230152%_))
                                (let ((_%e229250230157%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229248230152%_))))
                                  (let ((_%tl229252230162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229250230157%_)))
                                        (_%hd229251230160%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229250230157%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229251230160%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd229251230160%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229252230162%_))
                                                (let ((_%e229253230165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229252230162%_))))
                                                  (let ((_%tl229255230170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229253230165%_)))
                                                        (_%hd229254230168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229253230165%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229255230170%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229249230154%_))
                                                            (let ((_%e229256230173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229249230154%_))))
                      (let ((_%tl229258230178%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229256230173%_)))
                            (_%hd229257230176%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229256230173%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd229257230176%_))
                            (let ((_%e229259230181%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd229257230176%_))))
                              (let ((_%tl229261230186%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229259230181%_)))
                                    (_%hd229260230184%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229259230181%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229260230184%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd229260230184%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229261230186%_))
                                            (let ((_%e229262230189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229261230186%_))))
                                              (let ((_%tl229264230194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229262230189%_)))
                                                    (_%hd229263230192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229262230189%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl229264230194%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl229258230178%_))
                                                        (let ((_%__splice235209235210%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl229258230178%_
                          '0))))
                  (let ((_%tl229267230199%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235209235210%_ '1)))
                        (_%target229265230197%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235209235210%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229267230199%_))
                        (_%__match235310235311%_
                         _%e229235230117%_
                         _%hd229236230120%_
                         _%tl229237230122%_
                         _%e229238230125%_
                         _%hd229239230128%_
                         _%tl229240230130%_
                         _%e229241230133%_
                         _%hd229242230136%_
                         _%tl229243230138%_
                         _%e229244230141%_
                         _%hd229245230144%_
                         _%tl229246230146%_
                         _%e229247230149%_
                         _%hd229248230152%_
                         _%tl229249230154%_
                         _%e229250230157%_
                         _%hd229251230160%_
                         _%tl229252230162%_
                         _%e229253230165%_
                         _%hd229254230168%_
                         _%tl229255230170%_
                         _%e229256230173%_
                         _%hd229257230176%_
                         _%tl229258230178%_
                         _%e229259230181%_
                         _%hd229260230184%_
                         _%tl229261230186%_
                         _%e229262230189%_
                         _%hd229263230192%_
                         _%tl229264230194%_
                         _%__splice235209235210%_
                         _%target229265230197%_
                         _%tl229267230199%_)
                        (_%__match235498235499%_
                         _%e229235230117%_
                         _%hd229236230120%_
                         _%tl229237230122%_
                         _%e229238230125%_
                         _%hd229239230128%_
                         _%tl229240230130%_
                         _%e229241230133%_
                         _%hd229242230136%_
                         _%tl229243230138%_
                         _%e229244230141%_
                         _%hd229245230144%_
                         _%tl229246230146%_
                         _%e229247230149%_
                         _%hd229248230152%_
                         _%tl229249230154%_
                         _%e229250230157%_
                         _%hd229251230160%_
                         _%tl229252230162%_
                         _%e229253230165%_
                         _%hd229254230168%_
                         _%tl229255230170%_
                         _%e229256230173%_
                         _%hd229257230176%_
                         _%tl229258230178%_
                         _%e229259230181%_
                         _%hd229260230184%_
                         _%tl229261230186%_
                         _%e229262230189%_
                         _%hd229263230192%_
                         _%tl229264230194%_))))
                (_%__match235498235499%_
                 _%e229235230117%_
                 _%hd229236230120%_
                 _%tl229237230122%_
                 _%e229238230125%_
                 _%hd229239230128%_
                 _%tl229240230130%_
                 _%e229241230133%_
                 _%hd229242230136%_
                 _%tl229243230138%_
                 _%e229244230141%_
                 _%hd229245230144%_
                 _%tl229246230146%_
                 _%e229247230149%_
                 _%hd229248230152%_
                 _%tl229249230154%_
                 _%e229250230157%_
                 _%hd229251230160%_
                 _%tl229252230162%_
                 _%e229253230165%_
                 _%hd229254230168%_
                 _%tl229255230170%_
                 _%e229256230173%_
                 _%hd229257230176%_
                 _%tl229258230178%_
                 _%e229259230181%_
                 _%hd229260230184%_
                 _%tl229261230186%_
                 _%e229262230189%_
                 _%hd229263230192%_
                 _%tl229264230194%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match235702235703%_
                                                     _%e229235230117%_
                                                     _%hd229236230120%_
                                                     _%tl229237230122%_
                                                     _%e229238230125%_
                                                     _%hd229239230128%_
                                                     _%tl229240230130%_
                                                     _%e229241230133%_
                                                     _%hd229242230136%_
                                                     _%tl229243230138%_
                                                     _%e229244230141%_
                                                     _%hd229245230144%_
                                                     _%tl229246230146%_
                                                     _%e229247230149%_
                                                     _%hd229248230152%_
                                                     _%tl229249230154%_
                                                     _%e229250230157%_
                                                     _%hd229251230160%_
                                                     _%tl229252230162%_
                                                     _%e229253230165%_
                                                     _%hd229254230168%_
                                                     _%tl229255230170%_
                                                     _%e229256230173%_
                                                     _%hd229257230176%_
                                                     _%tl229258230178%_))))
                                            (_%__match235702235703%_
                                             _%e229235230117%_
                                             _%hd229236230120%_
                                             _%tl229237230122%_
                                             _%e229238230125%_
                                             _%hd229239230128%_
                                             _%tl229240230130%_
                                             _%e229241230133%_
                                             _%hd229242230136%_
                                             _%tl229243230138%_
                                             _%e229244230141%_
                                             _%hd229245230144%_
                                             _%tl229246230146%_
                                             _%e229247230149%_
                                             _%hd229248230152%_
                                             _%tl229249230154%_
                                             _%e229250230157%_
                                             _%hd229251230160%_
                                             _%tl229252230162%_
                                             _%e229253230165%_
                                             _%hd229254230168%_
                                             _%tl229255230170%_
                                             _%e229256230173%_
                                             _%hd229257230176%_
                                             _%tl229258230178%_))
                                        (_%__match235378235379%_
                                         _%e229235230117%_
                                         _%hd229236230120%_
                                         _%tl229237230122%_
                                         _%e229238230125%_
                                         _%hd229239230128%_
                                         _%tl229240230130%_
                                         _%e229241230133%_
                                         _%hd229242230136%_
                                         _%tl229243230138%_
                                         _%e229244230141%_
                                         _%hd229245230144%_
                                         _%tl229246230146%_
                                         _%e229247230149%_
                                         _%hd229248230152%_
                                         _%tl229249230154%_
                                         _%e229250230157%_
                                         _%hd229251230160%_
                                         _%tl229252230162%_
                                         _%e229253230165%_
                                         _%hd229254230168%_
                                         _%tl229255230170%_
                                         _%e229256230173%_
                                         _%hd229257230176%_
                                         _%tl229258230178%_
                                         _%e229259230181%_
                                         _%hd229260230184%_
                                         _%tl229261230186%_))
                                    (_%__match235702235703%_
                                     _%e229235230117%_
                                     _%hd229236230120%_
                                     _%tl229237230122%_
                                     _%e229238230125%_
                                     _%hd229239230128%_
                                     _%tl229240230130%_
                                     _%e229241230133%_
                                     _%hd229242230136%_
                                     _%tl229243230138%_
                                     _%e229244230141%_
                                     _%hd229245230144%_
                                     _%tl229246230146%_
                                     _%e229247230149%_
                                     _%hd229248230152%_
                                     _%tl229249230154%_
                                     _%e229250230157%_
                                     _%hd229251230160%_
                                     _%tl229252230162%_
                                     _%e229253230165%_
                                     _%hd229254230168%_
                                     _%tl229255230170%_
                                     _%e229256230173%_
                                     _%hd229257230176%_
                                     _%tl229258230178%_))))
                            (_%__match235702235703%_
                             _%e229235230117%_
                             _%hd229236230120%_
                             _%tl229237230122%_
                             _%e229238230125%_
                             _%hd229239230128%_
                             _%tl229240230130%_
                             _%e229241230133%_
                             _%hd229242230136%_
                             _%tl229243230138%_
                             _%e229244230141%_
                             _%hd229245230144%_
                             _%tl229246230146%_
                             _%e229247230149%_
                             _%hd229248230152%_
                             _%tl229249230154%_
                             _%e229250230157%_
                             _%hd229251230160%_
                             _%tl229252230162%_
                             _%e229253230165%_
                             _%hd229254230168%_
                             _%tl229255230170%_
                             _%e229256230173%_
                             _%hd229257230176%_
                             _%tl229258230178%_))))
                    (_%__match235640235641%_
                     _%e229235230117%_
                     _%hd229236230120%_
                     _%tl229237230122%_
                     _%e229238230125%_
                     _%hd229239230128%_
                     _%tl229240230130%_
                     _%e229241230133%_
                     _%hd229242230136%_
                     _%tl229243230138%_
                     _%e229244230141%_
                     _%hd229245230144%_
                     _%tl229246230146%_
                     _%e229247230149%_
                     _%hd229248230152%_
                     _%tl229249230154%_
                     _%e229250230157%_
                     _%hd229251230160%_
                     _%tl229252230162%_
                     _%e229253230165%_
                     _%hd229254230168%_
                     _%tl229255230170%_))
                (_%__kont235223235224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont235223235224%_))
                                            (_%__kont235223235224%_))
                                        (_%__kont235223235224%_))))
                                (_%__kont235223235224%_))))
                        (_%__kont235223235224%_))
                    (_%__kont235223235224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235223235224%_))
                                                (_%__kont235223235224%_))
                                            (_%__kont235223235224%_))))
                                    (_%__kont235223235224%_))))
                            (_%__kont235223235224%_))))
                    (_%__kont235223235224%_))))))))))
