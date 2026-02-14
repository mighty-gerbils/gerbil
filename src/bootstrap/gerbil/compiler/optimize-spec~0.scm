(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771101410)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp235662 (list gxc#::identity::t))
            (__tmp235661 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp235662
         '()
         __tmp235661
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args234459%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args234459%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp235663
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
        (__make-atomic-promise __tmp235663)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx234451%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self234454%_
                (let ((__obj235654
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj235654))
               (__tmp235664
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234454%_ _%stx234451%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235664
           gxc#current-compile-method
           _%self234454%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp235666 (list gxc#::false::t))
            (__tmp235665 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp235666
         '()
         __tmp235665
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args234448%_
        (apply make-instance gxc#::extract-receiver::t _%$args234448%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp235667
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
        (__make-atomic-promise __tmp235667)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx234440%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self234443%_
                (let ((__obj235656
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj235656))
               (__tmp235668
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234443%_ _%stx234440%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235668
           gxc#current-compile-method
           _%self234443%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp235670 (list gxc#::void::t))
            (__tmp235669 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp235670
         '(receiver methods slots)
         __tmp235669
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args234437%_
        (apply make-instance gxc#::collect-object-refs::t _%$args234437%_)))
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
      (let ((__tmp235671
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
        (__make-atomic-promise __tmp235671)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords234406%_
               _%receiver234401234407%_
               _%methods234402234408%_
               _%slots234403234409%_
               _%stx234410%_)
        (let* ((_%receiver234413%_
                (if (eq? _%receiver234401234407%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234401234407%_))
               (_%methods234415%_
                (if (eq? _%methods234402234408%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234402234408%_))
               (_%slots234417%_
                (if (eq? _%slots234403234409%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234403234409%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self234419%_
                  (let ((__obj235658
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
                       __obj235658
                       _%receiver234413%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235658
                       _%methods234415%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235658
                       _%slots234417%_
                       '3
                       '#f
                       '#f))
                    __obj235658))
                 (__tmp235672
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self234419%_ _%stx234410%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235672
             gxc#current-compile-method
             _%self234419%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords234426%_ . _%args234427%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords234426%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234426%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234426%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234426%_
                  'slots:
                  absent-value))
               _%args234427%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args234404234433%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args234404234433%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp235674 (list gxc#::basic-xform-expression::t))
            (__tmp235673 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp235674
         '(receiver klass methods slots)
         __tmp235673
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args234397%_
        (apply make-instance gxc#::subst-object-refs::t _%$args234397%_)))
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
      (let ((__tmp235675
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
        (__make-atomic-promise __tmp235675)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords234363%_
               _%receiver234357234364%_
               _%klass234358234365%_
               _%methods234359234366%_
               _%slots234360234367%_
               _%stx234368%_)
        (let* ((_%receiver234371%_
                (if (eq? _%receiver234357234364%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234357234364%_))
               (_%klass234373%_
                (if (eq? _%klass234358234365%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass234358234365%_))
               (_%methods234375%_
                (if (eq? _%methods234359234366%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234359234366%_))
               (_%slots234377%_
                (if (eq? _%slots234360234367%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234360234367%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self234379%_
                  (let ((__obj235660
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
                       __obj235660
                       _%receiver234371%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235660
                       _%klass234373%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235660
                       _%methods234375%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235660
                       _%slots234377%_
                       '4
                       '#f
                       '#f))
                    __obj235660))
                 (__tmp235676
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self234379%_ _%stx234368%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235676
             gxc#current-compile-method
             _%self234379%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords234386%_ . _%args234387%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords234386%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234386%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234386%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234386%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234386%_
                  'slots:
                  absent-value))
               _%args234387%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args234361234393%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args234361234393%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self231488%_ _%stx231489%_)
        (letrec ((_%generate-method-bind231491%_
                  (lambda (_%$klass234349%_
                           _%$method-table234350%_
                           _%id234351%_
                           _%$id234352%_)
                    (let ((_%$tmp234354%_
                           (let ((__tmp235677
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235677))))
                      (cons (cons _%$id234352%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp234354%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table234350%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id234351%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp234354%_ '()))
                    (cons (cons '%#ref (cons _%$tmp234354%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id234351%_
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
                 (_%generate-slot-bind231492%_
                  (lambda (_%$klass234343%_ _%id234344%_ _%$id234345%_)
                    (let ((_%$tmp234347%_
                           (let ((__tmp235678
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235678))))
                      (cons (cons _%$id234345%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp234347%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass234343%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id234344%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp234347%_ '()))
                        (cons (cons '%#ref (cons _%$tmp234347%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id234344%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl231493%_
                  (lambda (_%$klass234337%_
                           _%$method-table234338%_
                           _%methods-bind234339%_
                           _%slots-bind234340%_
                           _%specializer-impl234341%_)
                    (let ((__tmp235679
                           (cons '%#lambda
                                 (cons (cons _%$klass234337%_
                                             (cons _%$method-table234338%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind234340%_
                                                            _%methods-bind234339%_))
                                                         (cons _%specializer-impl234341%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235679 _%stx231489%_))))
                 (_%generate-specializer-def231494%_
                  (lambda (_%id234333%_
                           _%specializer-id234334%_
                           _%specializer-impl234335%_)
                    (let ((__tmp235680
                           (cons '%#begin
                                 (cons _%stx231489%_
                                       (cons (let ((__tmp235681
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id234334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl234335%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235681
                                                _%stx231489%_))
                                             (cons (let ((__tmp235682
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id234333%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id234334%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235682
                                                      _%stx231489%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235680 _%stx231489%_)))))
          (let* ((_%__stx234548234549%_ _%stx231489%_)
                 (_%g231497231517%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234548234549%_)))))
            (let ((_%__kont234550234551%_
                   (lambda (_%g231499231561%_ _%g231500231562%_)
                     (let ((_%method-calls231581%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs231582%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty231583%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?231585%_
                                 (lambda ()
                                   (if (let ((__tmp235683
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls231581%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235683))
                                       (let ((__tmp235684
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs231582%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235684))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g231499231561%_))
                             (let* ((_%__stx234462234463%_ _%g231499231561%_)
                                    (_%g231969231987%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx234462234463%_)))))
                               (let ((_%__kont234464234465%_
                                      (lambda (_%g231971232023%_
                                               _%g231972232024%_
                                               _%g231973232025%_)
                                        (let ((_%receiver232045%_
                                               (let ((_%$e232042%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g231971232023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e232042%_
                                                     _%$e232042%_
                                                     _%g231973232025%_))))
                                          (for-each
                                           (lambda (_%g232046232048%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver232045%_
                                              _%method-calls231581%_
                                              _%slot-refs231582%_
                                              _%g232046232048%_))
                                           _%g231971232023%_)
                                          (if (_%no-specializer?231585%_)
                                              _%stx231489%_
                                              (let* ((_%specializer-id232057%_
                                                      (let* ((_%id232051%_
                                                              (let ((__tmp235685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231500231562%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235685 '"::specialize")))
                     (_%specializer-id232054%_
                      (let ((__tmp235686
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231489%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232051%_ __tmp235686))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232054%_))
                _%specializer-id232054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232059%_
                                                      (let ((__tmp235687
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235687)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232061%_
                                                      (let ((__tmp235688
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235688)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232063%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231581%_)))
                                                     (_%$methods232067%_
                                                      (let ((__tmp235689
                                                             (lambda (_%id232065%_)
                                                               (let ((__tmp235690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232065%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235690)))))
                (declare (not safe))
                (##map __tmp235689 _%methods232063%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232076%_
                                                      (let ((__tmp235691
                                                             (lambda (_%g232068232071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232069232073%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231581%_
                          _%g232068232071%_
                          _%g232069232073%_)))))
                (declare (not safe))
                (##for-each __tmp235691 _%methods232063%_ _%$methods232067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232086%_
                                                      (let ((__tmp235692
                                                             (lambda (_%g232078232081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232079232083%_)
                       (_%generate-method-bind231491%_
                        _%$klass232059%_
                        _%$method-table232061%_
                        _%g232078232081%_
                        _%g232079232083%_))))
                (declare (not safe))
                (##map __tmp235692 _%methods232063%_ _%$methods232067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232088%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231582%_)))
                                                     (_%$slots232092%_
                                                      (let ((__tmp235693
                                                             (lambda (_%id232090%_)
                                                               (let ((__tmp235694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232090%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235694)))))
                (declare (not safe))
                (##map __tmp235693 _%slots232088%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232101%_
                                                      (let ((__tmp235695
                                                             (lambda (_%g232093232096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232094232098%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231582%_
                          _%g232093232096%_
                          _%g232094232098%_)))))
                (declare (not safe))
                (##for-each __tmp235695 _%slots232088%_ _%$slots232092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232110%_
                                                      (let ((__tmp235696
                                                             (lambda (_%g232102232105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232103232107%_)
                       (_%generate-slot-bind231492%_
                        _%$klass232059%_
                        _%g232102232105%_
                        _%g232103232107%_))))
                (declare (not safe))
                (##map __tmp235696 _%slots232088%_ _%$slots232092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body232116%_
                                                      (map (lambda (_%g232111232113%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver232045%_
                                                              _%$klass232059%_
                                                              _%method-calls231581%_
                                                              _%slot-refs231582%_
                                                              _%g232111232113%_))
                                                           _%g231971232023%_))
                                                     (_%specializer-impl232118%_
                                                      (let ((__tmp235697
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g231973232025%_ _%g231972232024%_)
                                 _%specializer-body232116%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235697 _%stx231489%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232120%_
                                                      (_%generate-specializer-impl231493%_
                                                       _%$klass232059%_
                                                       _%$method-table232061%_
                                                       _%methods-bind232086%_
                                                       _%slots-bind232110%_
                                                       _%specializer-impl232118%_)))
                                                (let ((__tmp235699
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231500231562%_)))
                                                      (__tmp235698
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232057%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235699
                                                   '" => "
                                                   __tmp235698))
                                                (_%generate-specializer-def231494%_
                                                 _%g231500231562%_
                                                 _%specializer-id232057%_
                                                 _%specializer-impl232120%_))))))
                                     (_%__kont234466234467%_
                                      (lambda () _%stx231489%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx234462234463%_))
                                     (let ((_%e231974231999%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx234462234463%_))))
                                       (let ((_%tl231976232004%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231974231999%_)))
                                             (_%hd231975232002%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231974231999%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231976232004%_))
                                             (let ((_%e231977232007%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl231976232004%_))))
                                               (let ((_%tl231979232012%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231977232007%_)))
                                                     (_%hd231978232010%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231977232007%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd231978232010%_))
                                                     (let ((_%e231980232015%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231978232010%_))))
                                                       (let ((_%tl231982232020%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e231980232015%_)))
                     (_%hd231981232018%_
                      (let () (declare (not safe)) (##car _%e231980232015%_))))
                 (_%__kont234464234465%_
                  _%tl231979232012%_
                  _%tl231982232020%_
                  _%hd231981232018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont234466234467%_))))
                                             (_%__kont234466234467%_))))
                                     (_%__kont234466234467%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g231499231561%_))
                                 (let* ((_%g232127232146%_
                                         (lambda (_%g232128232143%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g232128232143%_))))
                                        (_%g232126232442%_
                                         (lambda (_%g232128232149%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g232128232149%_))
                                               (let ((_%e232130232151%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g232128232149%_))))
                                                 (let ((_%hd232131232154%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232130232151%_)))
                                                       (_%tl232132232156%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232130232151%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl232132232156%_))
                                                       (let ((_g235700_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl232132232156%_ '0))))
                 (begin
                   (let ((_g235701_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g235700_)
                                (##values-length _g235700_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g235701_ 2)))
                         (error "Context expects 2 values" _g235701_)))
                   (let ((_%target232133232159%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235700_ 0)))
                         (_%tl232135232161%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235700_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl232135232161%_))
                         (letrec ((_%loop232136232164%_
                                   (lambda (_%hd232134232167%_
                                            _%clause232140232169%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232134232167%_))
                                         (let ((_%e232137232171%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232134232167%_))))
                                           (let ((_%lp-hd232138232174%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232137232171%_)))
                                                 (_%lp-tl232139232176%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232137232171%_))))
                                             (_%loop232136232164%_
                                              _%lp-tl232139232176%_
                                              (cons _%lp-hd232138232174%_
                                                    _%clause232140232169%_))))
                                         (let ((_%clause232141232179%_
                                                (reverse _%clause232140232169%_)))
                                           ((lambda (_%g232129232181%_)
                                              (for-each
                                               (lambda (_%clause232195%_)
                                                 (let* ((_%__stx234488234489%_
                                                         _%clause232195%_)
                                                        (_%g232198232213%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx234488234489%_)))))
                                                   (let ((_%__kont234490234491%_
                                                          (lambda (_%g232200232241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g232201232242%_
                           _%g232202232243%_)
                    (let ((_%receiver232262%_
                           (let ((_%$e232259%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g232200232241%_))))
                             (if _%$e232259%_
                                 _%$e232259%_
                                 _%g232202232243%_))))
                      (for-each
                       (lambda (_%g232263232265%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver232262%_
                          _%method-calls231581%_
                          _%slot-refs231582%_
                          _%g232263232265%_))
                       _%g232200232241%_))))
                 (_%__kont234492234493%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx234488234489%_))
                                                         (let ((_%e232203232225%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx234488234489%_))))
                   (let ((_%tl232205232230%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e232203232225%_)))
                         (_%hd232204232228%_
                          (let ()
                            (declare (not safe))
                            (##car _%e232203232225%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd232204232228%_))
                         (let ((_%e232206232233%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd232204232228%_))))
                           (let ((_%tl232208232238%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e232206232233%_)))
                                 (_%hd232207232236%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e232206232233%_))))
                             (_%__kont234490234491%_
                              _%tl232205232230%_
                              _%tl232208232238%_
                              _%hd232207232236%_)))
                         (_%__kont234492234493%_))))
                 (_%__kont234492234493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp235702
                                                      (lambda (_%g232270232273%_
                                                               _%g232271232275%_)
                                                        (cons _%g232270232273%_
                                                              _%g232271232275%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235702
                                                  '()
                                                  _%g232129232181%_)))
                                              (if (_%no-specializer?231585%_)
                                                  _%stx231489%_
                                                  (let* ((_%specializer-id232284%_
                                                          (let* ((_%id232278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235703
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231500231562%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235703 '"::specialize")))
                         (_%specializer-id232281%_
                          (let ((__tmp235704
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231489%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id232278%_
                             __tmp235704))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id232281%_))
                    _%specializer-id232281%_))
                 (_%$klass232286%_
                  (let ((__tmp235705
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235705)))
                 (_%$method-table232288%_
                  (let ((__tmp235706
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235706)))
                 (_%methods232290%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231581%_)))
                 (_%$methods232294%_
                  (let ((__tmp235707
                         (lambda (_%id232292%_)
                           (let ((__tmp235708 (gensym _%id232292%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235708)))))
                    (declare (not safe))
                    (##map __tmp235707 _%methods232290%_)))
                 (_%_232303%_
                  (let ((__tmp235709
                         (lambda (_%g232295232298%_ _%g232296232300%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231581%_
                              _%g232295232298%_
                              _%g232296232300%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235709
                     _%methods232290%_
                     _%$methods232294%_)))
                 (_%methods-bind232313%_
                  (let ((__tmp235710
                         (lambda (_%g232305232308%_ _%g232306232310%_)
                           (_%generate-method-bind231491%_
                            _%$klass232286%_
                            _%$method-table232288%_
                            _%g232305232308%_
                            _%g232306232310%_))))
                    (declare (not safe))
                    (##map __tmp235710 _%methods232290%_ _%$methods232294%_)))
                 (_%slots232315%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231582%_)))
                 (_%$slots232319%_
                  (let ((__tmp235711
                         (lambda (_%id232317%_)
                           (let ((__tmp235712 (gensym _%id232317%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235712)))))
                    (declare (not safe))
                    (##map __tmp235711 _%slots232315%_)))
                 (_%_232328%_
                  (let ((__tmp235713
                         (lambda (_%g232320232323%_ _%g232321232325%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231582%_
                              _%g232320232323%_
                              _%g232321232325%_)))))
                    (declare (not safe))
                    (##for-each __tmp235713 _%slots232315%_ _%$slots232319%_)))
                 (_%slots-bind232337%_
                  (let ((__tmp235714
                         (lambda (_%g232329232332%_ _%g232330232334%_)
                           (_%generate-slot-bind231492%_
                            _%$klass232286%_
                            _%g232329232332%_
                            _%g232330232334%_))))
                    (declare (not safe))
                    (##map __tmp235714 _%slots232315%_ _%$slots232319%_)))
                 (_%specializer-clauses232435%_
                  (map (lambda (_%clause232339%_)
                         (let* ((_%__stx234508234509%_ _%clause232339%_)
                                (_%g232342232357%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx234508234509%_)))))
                           (let ((_%__kont234510234511%_
                                  (lambda (_%g232344232385%_
                                           _%g232345232386%_
                                           _%g232346232387%_)
                                    (let* ((_%receiver232416%_
                                            (let ((_%$e232413%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g232344232385%_))))
                                              (if _%$e232413%_
                                                  _%$e232413%_
                                                  _%g232346232387%_)))
                                           (_%body232422%_
                                            (map (lambda (_%g232417232419%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver232416%_
                                                    _%$klass232286%_
                                                    _%method-calls231581%_
                                                    _%slot-refs231582%_
                                                    _%g232417232419%_))
                                                 _%g232344232385%_)))
                                      (cons (cons _%g232346232387%_
                                                  _%g232345232386%_)
                                            _%body232422%_))))
                                 (_%__kont234512234513%_
                                  (lambda () _%clause232339%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx234508234509%_))
                                 (let ((_%e232347232369%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx234508234509%_))))
                                   (let ((_%tl232349232374%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e232347232369%_)))
                                         (_%hd232348232372%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e232347232369%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232348232372%_))
                                         (let ((_%e232350232377%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232348232372%_))))
                                           (let ((_%tl232352232382%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232350232377%_)))
                                                 (_%hd232351232380%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232350232377%_))))
                                             (_%__kont234510234511%_
                                              _%tl232349232374%_
                                              _%tl232352232382%_
                                              _%hd232351232380%_)))
                                         (_%__kont234512234513%_))))
                                 (_%__kont234512234513%_)))))
                       (let ((__tmp235715
                              (lambda (_%g232427232430%_ _%g232428232432%_)
                                (cons _%g232427232430%_ _%g232428232432%_))))
                         (declare (not safe))
                         (foldr__0 __tmp235715 '() _%g232129232181%_))))
                 (_%specializer-impl232437%_
                  (let ((__tmp235716
                         (cons '%#case-lambda _%specializer-clauses232435%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235716 _%stx231489%_)))
                 (_%specializer-impl232439%_
                  (_%generate-specializer-impl231493%_
                   _%$klass232286%_
                   _%$method-table232288%_
                   _%methods-bind232313%_
                   _%slots-bind232337%_
                   _%specializer-impl232437%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235718
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231500231562%_)))
                                                          (__tmp235717
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id232284%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235718
                                                       '" => "
                                                       __tmp235717))
                                                    (_%generate-specializer-def231494%_
                                                     _%g231500231562%_
                                                     _%specializer-id232284%_
                                                     _%specializer-impl232439%_))))
                                            _%clause232141232179%_))))))
                           (_%loop232136232164%_ _%target232133232159%_ '()))
                         (_%g232127232146%_ _%g232128232149%_)))))
               (_%g232127232146%_ _%g232128232149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232127232146%_
                                                _%g232128232149%_)))))
                                   (_%g232126232442%_ _%g231499231561%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g231499231561%_))
                                     (let* ((_%g232446232476%_
                                             (lambda (_%g232447232473%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g232447232473%_))))
                                            (_%g232445233103%_
                                             (lambda (_%g232447232479%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g232447232479%_))
                                                   (let ((_%e232451232481%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g232447232479%_))))
                                                     (let ((_%hd232452232484%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232451232481%_)))
                                                           (_%tl232453232486%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232451232481%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl232453232486%_))
                                                           (let ((_%e232454232489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl232453232486%_))))
                     (let ((_%hd232455232492%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232454232489%_)))
                           (_%tl232456232494%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232454232489%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232455232492%_))
                           (let ((_%e232457232497%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232455232492%_))))
                             (let ((_%hd232458232500%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232457232497%_)))
                                   (_%tl232459232502%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232457232497%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232458232500%_))
                                   (let ((_%e232460232505%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232458232500%_))))
                                     (let ((_%hd232461232508%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232460232505%_)))
                                           (_%tl232462232510%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232460232505%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd232461232508%_))
                                           (let ((_%e232463232513%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd232461232508%_))))
                                             (let ((_%hd232464232516%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232463232513%_)))
                                                   (_%tl232465232518%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232463232513%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232465232518%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl232462232510%_))
                                                       (let ((_%e232466232521%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl232462232510%_))))
                 (let ((_%hd232467232524%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232466232521%_)))
                       (_%tl232468232526%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232466232521%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232468232526%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl232459232502%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232456232494%_))
                               (let ((_%e232469232529%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232456232494%_))))
                                 (let ((_%hd232470232532%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232469232529%_)))
                                       (_%tl232471232534%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232469232529%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232471232534%_))
                                       ((lambda (_%g232448232537%_
                                                 _%g232449232538%_
                                                 _%g232450232539%_)
                                          (let* ((_%g232563232581%_
                                                  (lambda (_%g232564232578%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232564232578%_))))
                                                 (_%g232562232637%_
                                                  (lambda (_%g232564232584%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232564232584%_))
                                                        (let ((_%e232568232586%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232564232584%_))))
                  (let ((_%hd232569232589%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232568232586%_)))
                        (_%tl232570232591%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232568232586%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl232570232591%_))
                        (let ((_%e232571232594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl232570232591%_))))
                          (let ((_%hd232572232597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e232571232594%_)))
                                (_%tl232573232599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e232571232594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd232572232597%_))
                                (let ((_%e232574232602%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd232572232597%_))))
                                  (let ((_%hd232575232605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232574232602%_)))
                                        (_%tl232576232607%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232574232602%_))))
                                    ((lambda (_%g232565232610%_
                                              _%g232566232611%_
                                              _%g232567232612%_)
                                       (let ((_%receiver232631%_
                                              (let ((_%$e232628%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g232565232610%_))))
                                                (if _%$e232628%_
                                                    _%$e232628%_
                                                    _%g232567232612%_))))
                                         (for-each
                                          (lambda (_%g232632232634%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver232631%_
                                             _%method-calls231581%_
                                             _%slot-refs231582%_
                                             _%g232632232634%_))
                                          _%g232565232610%_)))
                                     _%tl232573232599%_
                                     _%tl232576232607%_
                                     _%hd232575232605%_)))
                                (_%g232563232581%_ _%g232564232584%_))))
                        (_%g232563232581%_ _%g232564232584%_))))
                (_%g232563232581%_ _%g232564232584%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232562232637%_
                                             _%g232449232538%_))
                                          (let* ((_%g232640232659%_
                                                  (lambda (_%g232641232656%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232641232656%_))))
                                                 (_%g232639232781%_
                                                  (lambda (_%g232641232662%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232641232662%_))
                                                        (let ((_%e232643232664%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232641232662%_))))
                  (let ((_%hd232644232667%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232643232664%_)))
                        (_%tl232645232669%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232643232664%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232645232669%_))
                        (let ((_g235719_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl232645232669%_
                                  '0))))
                          (begin
                            (let ((_g235720_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g235719_)
                                         (##values-length _g235719_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g235720_ 2)))
                                  (error "Context expects 2 values"
                                         _g235720_)))
                            (let ((_%target232646232672%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235719_ 0)))
                                  (_%tl232648232674%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235719_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232648232674%_))
                                  (letrec ((_%loop232649232677%_
                                            (lambda (_%hd232647232680%_
                                                     _%clause232653232682%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd232647232680%_))
                                                  (let ((_%e232650232684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd232647232680%_))))
                                                    (let ((_%lp-hd232651232687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232650232684%_)))
                                                          (_%lp-tl232652232689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232650232684%_))))
                                                      (_%loop232649232677%_
                                                       _%lp-tl232652232689%_
                                                       (cons _%lp-hd232651232687%_
                                                             _%clause232653232682%_))))
                                                  (let ((_%clause232654232692%_
                                                         (reverse _%clause232653232682%_)))
                                                    ((lambda (_%g232642232694%_)
                                                       (for-each
                                                        (lambda (_%clause232707%_)
                                                          (let* ((_%g232709232724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g232710232721%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g232710232721%_))))
                         (_%g232708232771%_
                          (lambda (_%g232710232727%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g232710232727%_))
                                (let ((_%e232714232729%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g232710232727%_))))
                                  (let ((_%hd232715232732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232714232729%_)))
                                        (_%tl232716232734%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232714232729%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232715232732%_))
                                        (let ((_%e232717232737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232715232732%_))))
                                          (let ((_%hd232718232740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232717232737%_)))
                                                (_%tl232719232742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232717232737%_))))
                                            ((lambda (_%g232711232745%_
                                                      _%g232712232746%_
                                                      _%g232713232747%_)
                                               (let ((_%receiver232765%_
                                                      (let ((_%$e232762%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g232711232745%_))))
                (if _%$e232762%_ _%$e232762%_ _%g232713232747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g232766232768%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver232765%_
                                                     _%method-calls231581%_
                                                     _%slot-refs231582%_
                                                     _%g232766232768%_))
                                                  _%g232711232745%_)))
                                             _%tl232716232734%_
                                             _%tl232719232742%_
                                             _%hd232718232740%_)))
                                        (_%g232709232724%_
                                         _%g232710232727%_))))
                                (_%g232709232724%_ _%g232710232727%_)))))
                    (_%g232708232771%_ _%clause232707%_)))
                (let ((__tmp235721
                       (lambda (_%g232773232776%_ _%g232774232778%_)
                         (cons _%g232773232776%_ _%g232774232778%_))))
                  (declare (not safe))
                  (foldr__0 __tmp235721 '() _%g232642232694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause232654232692%_))))))
                                    (_%loop232649232677%_
                                     _%target232646232672%_
                                     '()))
                                  (_%g232640232659%_ _%g232641232662%_)))))
                        (_%g232640232659%_ _%g232641232662%_))))
                (_%g232640232659%_ _%g232641232662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232639232781%_
                                             _%g232448232537%_))
                                          (if (_%no-specializer?231585%_)
                                              _%stx231489%_
                                              (let* ((_%specializer-id232790%_
                                                      (let* ((_%id232784%_
                                                              (let ((__tmp235722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231500231562%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235722 '"::specialize")))
                     (_%specializer-id232787%_
                      (let ((__tmp235723
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231489%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232784%_ __tmp235723))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232787%_))
                _%specializer-id232787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232792%_
                                                      (let ((__tmp235724
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235724)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232794%_
                                                      (let ((__tmp235725
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235725)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232796%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231581%_)))
                                                     (_%$methods232800%_
                                                      (let ((__tmp235726
                                                             (lambda (_%id232798%_)
                                                               (let ((__tmp235727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232798%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235727)))))
                (declare (not safe))
                (##map __tmp235726 _%methods232796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232809%_
                                                      (let ((__tmp235728
                                                             (lambda (_%g232801232804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232802232806%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231581%_
                          _%g232801232804%_
                          _%g232802232806%_)))))
                (declare (not safe))
                (##for-each __tmp235728 _%methods232796%_ _%$methods232800%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232819%_
                                                      (let ((__tmp235729
                                                             (lambda (_%g232811232814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232812232816%_)
                       (_%generate-method-bind231491%_
                        _%$klass232792%_
                        _%$method-table232794%_
                        _%g232811232814%_
                        _%g232812232816%_))))
                (declare (not safe))
                (##map __tmp235729 _%methods232796%_ _%$methods232800%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232821%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231582%_)))
                                                     (_%$slots232825%_
                                                      (let ((__tmp235730
                                                             (lambda (_%id232823%_)
                                                               (let ((__tmp235731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232823%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235731)))))
                (declare (not safe))
                (##map __tmp235730 _%slots232821%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232834%_
                                                      (let ((__tmp235732
                                                             (lambda (_%g232826232829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232827232831%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231582%_
                          _%g232826232829%_
                          _%g232827232831%_)))))
                (declare (not safe))
                (##for-each __tmp235732 _%slots232821%_ _%$slots232825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232843%_
                                                      (let ((__tmp235733
                                                             (lambda (_%g232835232838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232836232840%_)
                       (_%generate-slot-bind231492%_
                        _%$klass232792%_
                        _%g232835232838%_
                        _%g232836232840%_))))
                (declare (not safe))
                (##map __tmp235733 _%slots232821%_ _%$slots232825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr232935%_
                                                      (let* ((_%g232845232863%_
                                                              (lambda (_%g232846232860%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232846232860%_))))
                     (_%g232844232932%_
                      (lambda (_%g232846232866%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232846232866%_))
                            (let ((_%e232850232868%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232846232866%_))))
                              (let ((_%hd232851232871%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232850232868%_)))
                                    (_%tl232852232873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232850232868%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232852232873%_))
                                    (let ((_%e232853232876%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232852232873%_))))
                                      (let ((_%hd232854232879%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232853232876%_)))
                                            (_%tl232855232881%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232853232876%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232854232879%_))
                                            (let ((_%e232856232884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232854232879%_))))
                                              (let ((_%hd232857232887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232856232884%_)))
                                                    (_%tl232858232889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232856232884%_))))
                                                ((lambda (_%g232847232892%_
                                                          _%g232848232893%_
                                                          _%g232849232894%_)
                                                   (let* ((_%receiver232923%_
                                                           (let ((_%$e232920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g232847232892%_))))
                     (if _%$e232920%_ _%$e232920%_ _%g232849232894%_)))
                  (_%body232929%_
                   (map (lambda (_%g232924232926%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver232923%_
                           _%$klass232792%_
                           _%method-calls231581%_
                           _%slot-refs231582%_
                           _%g232924232926%_))
                        _%g232847232892%_))
                  (__tmp235734
                   (cons '%#lambda
                         (cons (cons _%g232849232894%_ _%g232848232893%_)
                               _%body232929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235734
                                                      _%g232449232538%_)))
                                                 _%tl232855232881%_
                                                 _%tl232858232889%_
                                                 _%hd232857232887%_)))
                                            (_%g232845232863%_
                                             _%g232846232866%_))))
                                    (_%g232845232863%_ _%g232846232866%_))))
                            (_%g232845232863%_ _%g232846232866%_)))))
                (_%g232844232932%_ _%g232449232538%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr233096%_
                                                      (let* ((_%g232937232956%_
                                                              (lambda (_%g232938232953%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232938232953%_))))
                     (_%g232936233093%_
                      (lambda (_%g232938232959%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232938232959%_))
                            (let ((_%e232940232961%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232938232959%_))))
                              (let ((_%hd232941232964%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232940232961%_)))
                                    (_%tl232942232966%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232940232961%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl232942232966%_))
                                    (let ((_g235735_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl232942232966%_
                                              '0))))
                                      (begin
                                        (let ((_g235736_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g235735_)
                                                     (##values-length
                                                      _g235735_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g235736_ 2)))
                                              (error "Context expects 2 values"
                                                     _g235736_)))
                                        (let ((_%target232943232969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235735_ 0)))
                                              (_%tl232945232971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235735_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232945232971%_))
                                              (letrec ((_%loop232946232974%_
                                                        (lambda (_%hd232944232977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause232950232979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd232944232977%_))
                      (let ((_%e232947232981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd232944232977%_))))
                        (let ((_%lp-hd232948232984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232947232981%_)))
                              (_%lp-tl232949232986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232947232981%_))))
                          (_%loop232946232974%_
                           _%lp-tl232949232986%_
                           (cons _%lp-hd232948232984%_
                                 _%clause232950232979%_))))
                      (let ((_%clause232951232989%_
                             (reverse _%clause232950232979%_)))
                        ((lambda (_%g232939232991%_)
                           (let* ((_%clauses233091%_
                                   (map (lambda (_%clause233005%_)
                                          (let* ((_%__stx234528234529%_
                                                  _%clause233005%_)
                                                 (_%g233008233023%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx234528234529%_)))))
                                            (let ((_%__kont234530234531%_
                                                   (lambda (_%g233010233051%_
                                                            _%g233011233052%_
                                                            _%g233012233053%_)
                                                     (let* ((_%receiver233072%_
                                                             (let ((_%$e233069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g233010233051%_))))
                       (if _%$e233069%_ _%$e233069%_ _%g233012233053%_)))
                    (_%body233078%_
                     (map (lambda (_%g233073233075%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver233072%_
                             _%$klass232792%_
                             _%method-calls231581%_
                             _%slot-refs231582%_
                             _%g233073233075%_))
                          _%g233010233051%_)))
               (cons (cons _%g233012233053%_ _%g233011233052%_)
                     _%body233078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234532234533%_
                                                   (lambda ()
                                                     _%clause233005%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx234528234529%_))
                                                  (let ((_%e233013233035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx234528234529%_))))
                                                    (let ((_%tl233015233040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233013233035%_)))
                                                          (_%hd233014233038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233013233035%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd233014233038%_))
                                                          (let ((_%e233016233043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd233014233038%_))))
                    (let ((_%tl233018233048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233016233043%_)))
                          (_%hd233017233046%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233016233043%_))))
                      (_%__kont234530234531%_
                       _%tl233015233040%_
                       _%tl233018233048%_
                       _%hd233017233046%_)))
                  (_%__kont234532234533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234532234533%_)))))
                                        (let ((__tmp235737
                                               (lambda (_%g233083233086%_
                                                        _%g233084233088%_)
                                                 (cons _%g233083233086%_
                                                       _%g233084233088%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp235737
                                           '()
                                           _%g232939232991%_))))
                                  (__tmp235738
                                   (cons '%#case-lambda _%clauses233091%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235738
                              _%g232448232537%_)))
                         _%clause232951232989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop232946232974%_
                                                 _%target232943232969%_
                                                 '()))
                                              (_%g232937232956%_
                                               _%g232938232959%_)))))
                                    (_%g232937232956%_ _%g232938232959%_))))
                            (_%g232937232956%_ _%g232938232959%_)))))
                (_%g232936233093%_ _%g232448232537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233098%_
                                                      (let ((__tmp235739
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g232450232539%_ '())
                                             (cons _%specializer-lambda-expr232935%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr233096%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235739 _%stx231489%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233100%_
                                                      (_%generate-specializer-impl231493%_
                                                       _%$klass232792%_
                                                       _%$method-table232794%_
                                                       _%methods-bind232819%_
                                                       _%slots-bind232843%_
                                                       _%specializer-impl233098%_)))
                                                (let ((__tmp235741
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231500231562%_)))
                                                      (__tmp235740
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232790%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235741
                                                   '" => "
                                                   __tmp235740))
                                                (_%generate-specializer-def231494%_
                                                 _%g231500231562%_
                                                 _%specializer-id232790%_
                                                 _%specializer-impl233100%_))))
                                        _%hd232470232532%_
                                        _%hd232467232524%_
                                        _%hd232464232516%_)
                                       (_%g232446232476%_ _%g232447232479%_))))
                               (_%g232446232476%_ _%g232447232479%_))
                           (_%g232446232476%_ _%g232447232479%_))
                       (_%g232446232476%_ _%g232447232479%_))))
               (_%g232446232476%_ _%g232447232479%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232446232476%_
                                                    _%g232447232479%_))))
                                           (_%g232446232476%_
                                            _%g232447232479%_))))
                                   (_%g232446232476%_ _%g232447232479%_))))
                           (_%g232446232476%_ _%g232447232479%_))))
                   (_%g232446232476%_ _%g232447232479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232446232476%_
                                                    _%g232447232479%_)))))
                                       (_%g232445233103%_ _%g231499231561%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g231499231561%_))
                                         (let* ((_%g233107233160%_
                                                 (lambda (_%g233108233157%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233108233157%_))))
                                                (_%g233106234325%_
                                                 (lambda (_%g233108233163%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233108233163%_))
                                                       (let ((_%e233114233165%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233108233163%_))))
                 (let ((_%hd233115233168%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233114233165%_)))
                       (_%tl233116233170%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233114233165%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd233115233168%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd233115233168%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233116233170%_))
                               (let ((_%e233117233173%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233116233170%_))))
                                 (let ((_%hd233118233176%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233117233173%_)))
                                       (_%tl233119233178%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233117233173%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233118233176%_))
                                       (let ((_%e233120233181%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233118233176%_))))
                                         (let ((_%hd233121233184%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233120233181%_)))
                                               (_%tl233122233186%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233120233181%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233121233184%_))
                                               (let ((_%e233123233189%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233121233184%_))))
                                                 (let ((_%hd233124233192%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233123233189%_)))
                                                       (_%tl233125233194%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233123233189%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd233124233192%_))
                                                       (let ((_%e233126233197%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd233124233192%_))))
                 (let ((_%hd233127233200%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233126233197%_)))
                       (_%tl233128233202%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233126233197%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233128233202%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl233125233194%_))
                           (let ((_%e233129233205%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl233125233194%_))))
                             (let ((_%hd233130233208%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233129233205%_)))
                                   (_%tl233131233210%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233129233205%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233130233208%_))
                                   (let ((_%e233132233213%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233130233208%_))))
                                     (let ((_%hd233133233216%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233132233213%_)))
                                           (_%tl233134233218%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233132233213%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd233133233216%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd233133233216%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl233134233218%_))
                                                   (let ((_%e233135233221%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl233134233218%_))))
                                                     (let ((_%hd233136233224%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233135233221%_)))
                                                           (_%tl233137233226%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233135233221%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd233136233224%_))
                                                           (let ((_%e233138233229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd233136233224%_))))
                     (let ((_%hd233139233232%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233138233229%_)))
                           (_%tl233140233234%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233138233229%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233139233232%_))
                           (let ((_%e233141233237%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233139233232%_))))
                             (let ((_%hd233142233240%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233141233237%_)))
                                   (_%tl233143233242%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233141233237%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233142233240%_))
                                   (let ((_%e233144233245%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233142233240%_))))
                                     (let ((_%hd233145233248%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233144233245%_)))
                                           (_%tl233146233250%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233144233245%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233146233250%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl233143233242%_))
                                               (let ((_%e233147233253%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl233143233242%_))))
                                                 (let ((_%hd233148233256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233147233253%_)))
                                                       (_%tl233149233258%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233147233253%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233149233258%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl233140233234%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl233137233226%_))
                       (let ((_%e233150233261%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233137233226%_))))
                         (let ((_%hd233151233264%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233150233261%_)))
                               (_%tl233152233266%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233150233261%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233152233266%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl233131233210%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233122233186%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl233119233178%_))
                                           (let ((_%e233153233269%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl233119233178%_))))
                                             (let ((_%hd233154233272%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233153233269%_)))
                                                   (_%tl233155233274%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233153233269%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233155233274%_))
                                                   ((lambda (_%g233109233277%_
                                                             _%g233110233278%_
                                                             _%g233111233279%_
                                                             _%g233112233280%_
                                                             _%g233113233281%_)
                                                      (let* ((_%g233321233383%_
                                                              (lambda (_%g233322233380%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233322233380%_))))
                     (_%g233320234322%_
                      (lambda (_%g233322233386%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233322233386%_))
                            (let ((_%e233328233388%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233322233386%_))))
                              (let ((_%hd233329233391%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233328233388%_)))
                                    (_%tl233330233393%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233328233388%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd233329233391%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd233329233391%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl233330233393%_))
                                            (let ((_%e233331233396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl233330233393%_))))
                                              (let ((_%hd233332233399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233331233396%_)))
                                                    (_%tl233333233401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233331233396%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233333233401%_))
                                                    (let ((_%e233334233404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233333233401%_))))
                                                      (let ((_%hd233335233407%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233334233404%_)))
                    (_%tl233336233409%_
                     (let () (declare (not safe)) (##cdr _%e233334233404%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd233335233407%_))
                    (let ((_%e233337233412%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd233335233407%_))))
                      (let ((_%hd233338233415%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233337233412%_)))
                            (_%tl233339233417%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233337233412%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd233338233415%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd233338233415%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233339233417%_))
                                    (let ((_%e233340233420%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233339233417%_))))
                                      (let ((_%hd233341233423%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233340233420%_)))
                                            (_%tl233342233425%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233340233420%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233341233423%_))
                                            (let ((_%e233343233428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233341233423%_))))
                                              (let ((_%hd233344233431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233343233428%_)))
                                                    (_%tl233345233433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233343233428%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd233344233431%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd233344233431%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl233345233433%_))
                                                            (let ((_%e233346233436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl233345233433%_))))
                      (let ((_%hd233347233439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233346233436%_)))
                            (_%tl233348233441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233346233436%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233348233441%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl233342233425%_))
                                (let ((_%e233349233444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl233342233425%_))))
                                  (let ((_%hd233350233447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233349233444%_)))
                                        (_%tl233351233449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233349233444%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233350233447%_))
                                        (let ((_%e233352233452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233350233447%_))))
                                          (let ((_%hd233353233455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233352233452%_)))
                                                (_%tl233354233457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233352233452%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd233353233455%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd233353233455%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl233354233457%_))
                                                        (let ((_%e233355233460%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl233354233457%_))))
                  (let ((_%hd233356233463%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233355233460%_)))
                        (_%tl233357233465%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233355233460%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl233357233465%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233351233449%_))
                            (let ((_%e233358233468%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233351233449%_))))
                              (let ((_%hd233359233471%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233358233468%_)))
                                    (_%tl233360233473%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233358233468%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd233359233471%_))
                                    (let ((_%e233361233476%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd233359233471%_))))
                                      (let ((_%hd233362233479%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233361233476%_)))
                                            (_%tl233363233481%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233361233476%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd233362233479%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd233362233479%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233363233481%_))
                                                    (let ((_%e233364233484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233363233481%_))))
                                                      (let ((_%hd233365233487%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233364233484%_)))
                    (_%tl233366233489%_
                     (let () (declare (not safe)) (##cdr _%e233364233484%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl233366233489%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233360233473%_))
                        (if (let ((__tmp235742
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl233360233473%_))))
                              (declare (not safe))
                              (##fx>= __tmp235742 '1))
                            (let ((_g235743_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233360233473%_
                                      '1))))
                              (begin
                                (let ((_g235744_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235743_)
                                             (##values-length _g235743_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235744_ 2)))
                                      (error "Context expects 2 values"
                                             _g235744_)))
                                (let ((_%target233367233492%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235743_ 0)))
                                      (_%tl233369233494%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235743_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl233369233494%_))
                                      (let ((_%e233376233497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl233369233494%_))))
                                        (let ((_%hd233377233500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233376233497%_)))
                                              (_%tl233378233502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233376233497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl233378233502%_))
                                              (letrec ((_%loop233370233505%_
                                                        (lambda (_%hd233368233508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref233374233510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233368233508%_))
                      (let ((_%e233371233512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233368233508%_))))
                        (let ((_%lp-hd233372233515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233371233512%_)))
                              (_%lp-tl233373233517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233371233512%_))))
                          (_%loop233370233505%_
                           _%lp-tl233373233517%_
                           (cons _%lp-hd233372233515%_
                                 _%kw-ref233374233510%_))))
                      (let ((_%kw-ref233375233520%_
                             (reverse _%kw-ref233374233510%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233336233409%_))
                            ((lambda (_%g233323233522%_
                                      _%g233324233523%_
                                      _%g233325233524%_
                                      _%g233326233525%_
                                      _%g233327233526%_)
                               (let* ((_%kw-count233577%_
                                       (length (let ((__tmp235745
                                                      (lambda (_%g233569233572%_
                                                               _%g233570233574%_)
                                                        (cons _%g233569233572%_
                                                              _%g233570233574%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235745
                                                  '()
                                                  _%g233324233523%_))))
                                      (_%self-index233579%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count233577%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g233111233279%_))
                                     (let* ((_%g233583233597%_
                                             (lambda (_%g233584233594%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233584233594%_))))
                                            (_%g233582233720%_
                                             (lambda (_%g233584233600%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233584233600%_))
                                                   (let ((_%e233587233602%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233584233600%_))))
                                                     (let ((_%hd233588233605%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233587233602%_)))
                                                           (_%tl233589233607%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233587233602%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233589233607%_))
                                                           (let ((_%e233590233610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233589233607%_))))
                     (let ((_%hd233591233613%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233590233610%_)))
                           (_%tl233592233615%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233590233610%_))))
                       ((lambda (_%g233585233618%_ _%g233586233619%_)
                          (let* ((_%self233636%_
                                  (list-ref
                                   _%g233586233619%_
                                   _%self-index233579%_))
                                 (_%receiver233641%_
                                  (let ((_%$e233638%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g233585233618%_))))
                                    (if _%$e233638%_
                                        _%$e233638%_
                                        _%self233636%_))))
                            (for-each
                             (lambda (_%g233643233645%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver233641%_
                                _%method-calls231581%_
                                _%slot-refs231582%_
                                _%g233643233645%_))
                             _%g233585233618%_)
                            (if (_%no-specializer?231585%_)
                                _%stx231489%_
                                (let* ((_%specializer-id233654%_
                                        (let* ((_%id233648%_
                                                (let ((__tmp235746
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231500231562%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp235746
                                                   '"::specialize")))
                                               (_%specializer-id233651%_
                                                (let ((__tmp235747
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx231489%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id233648%_
                                                   __tmp235747))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id233651%_))
                                          _%specializer-id233651%_))
                                       (_%$klass233656%_
                                        (let ((__tmp235748
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235748)))
                                       (_%$method-table233658%_
                                        (let ((__tmp235749
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235749)))
                                       (_%methods233660%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls231581%_)))
                                       (_%$methods233664%_
                                        (let ((__tmp235750
                                               (lambda (_%id233662%_)
                                                 (let ((__tmp235751
                                                        (gensym _%id233662%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235751)))))
                                          (declare (not safe))
                                          (##map __tmp235750
                                                 _%methods233660%_)))
                                       (_%_233673%_
                                        (let ((__tmp235752
                                               (lambda (_%g233665233668%_
                                                        _%g233666233670%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls231581%_
                                                    _%g233665233668%_
                                                    _%g233666233670%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235752
                                           _%methods233660%_
                                           _%$methods233664%_)))
                                       (_%methods-bind233683%_
                                        (let ((__tmp235753
                                               (lambda (_%g233675233678%_
                                                        _%g233676233680%_)
                                                 (_%generate-method-bind231491%_
                                                  _%$klass233656%_
                                                  _%$method-table233658%_
                                                  _%g233675233678%_
                                                  _%g233676233680%_))))
                                          (declare (not safe))
                                          (##map __tmp235753
                                                 _%methods233660%_
                                                 _%$methods233664%_)))
                                       (_%slots233685%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs231582%_)))
                                       (_%$slots233689%_
                                        (let ((__tmp235754
                                               (lambda (_%id233687%_)
                                                 (let ((__tmp235755
                                                        (gensym _%id233687%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235755)))))
                                          (declare (not safe))
                                          (##map __tmp235754 _%slots233685%_)))
                                       (_%_233698%_
                                        (let ((__tmp235756
                                               (lambda (_%g233690233693%_
                                                        _%g233691233695%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs231582%_
                                                    _%g233690233693%_
                                                    _%g233691233695%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235756
                                           _%slots233685%_
                                           _%$slots233689%_)))
                                       (_%slots-bind233707%_
                                        (let ((__tmp235757
                                               (lambda (_%g233699233702%_
                                                        _%g233700233704%_)
                                                 (_%generate-slot-bind231492%_
                                                  _%$klass233656%_
                                                  _%g233699233702%_
                                                  _%g233700233704%_))))
                                          (declare (not safe))
                                          (##map __tmp235757
                                                 _%slots233685%_
                                                 _%$slots233689%_)))
                                       (_%specializer-impl233715%_
                                        (let* ((_%specializer-body233713%_
                                                (map (lambda (_%g233708233710%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver233641%_
                                                        _%$klass233656%_
                                                        _%method-calls231581%_
                                                        _%slot-refs231582%_
                                                        _%g233708233710%_))
                                                     _%g233585233618%_))
                                               (__tmp235758
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g233113233281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g233112233280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp235759
                                   (cons '%#lambda
                                         (cons _%g233586233619%_
                                               _%specializer-body233713%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp235759
                               _%g233111233279%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g233110233278%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g233109233277%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp235758
                                           _%stx231489%_)))
                                       (_%specializer-impl233717%_
                                        (_%generate-specializer-impl231493%_
                                         _%$klass233656%_
                                         _%$method-table233658%_
                                         _%methods-bind233683%_
                                         _%slots-bind233707%_
                                         _%specializer-impl233715%_)))
                                  (let ((__tmp235761
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g231500231562%_)))
                                        (__tmp235760
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id233654%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp235761
                                     '" => "
                                     __tmp235760))
                                  (_%generate-specializer-def231494%_
                                   _%g231500231562%_
                                   _%specializer-id233654%_
                                   _%specializer-impl233717%_)))))
                        _%tl233592233615%_
                        _%hd233591233613%_)))
                   (_%g233583233597%_ _%g233584233600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233583233597%_
                                                    _%g233584233600%_)))))
                                       (_%g233582233720%_ _%g233111233279%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g233111233279%_))
                                         (let* ((_%g233724233754%_
                                                 (lambda (_%g233725233751%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233725233751%_))))
                                                (_%g233723234318%_
                                                 (lambda (_%g233725233757%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233725233757%_))
                                                       (let ((_%e233729233759%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233725233757%_))))
                 (let ((_%hd233730233762%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233729233759%_)))
                       (_%tl233731233764%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233729233759%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl233731233764%_))
                       (let ((_%e233732233767%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233731233764%_))))
                         (let ((_%hd233733233770%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233732233767%_)))
                               (_%tl233734233772%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233732233767%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd233733233770%_))
                               (let ((_%e233735233775%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd233733233770%_))))
                                 (let ((_%hd233736233778%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233735233775%_)))
                                       (_%tl233737233780%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233735233775%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233736233778%_))
                                       (let ((_%e233738233783%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233736233778%_))))
                                         (let ((_%hd233739233786%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233738233783%_)))
                                               (_%tl233740233788%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233738233783%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233739233786%_))
                                               (let ((_%e233741233791%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233739233786%_))))
                                                 (let ((_%hd233742233794%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233741233791%_)))
                                                       (_%tl233743233796%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233741233791%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233743233796%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233740233788%_))
                                                           (let ((_%e233744233799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233740233788%_))))
                     (let ((_%hd233745233802%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233744233799%_)))
                           (_%tl233746233804%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233744233799%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233746233804%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233737233780%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl233734233772%_))
                                   (let ((_%e233747233807%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl233734233772%_))))
                                     (let ((_%hd233748233810%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233747233807%_)))
                                           (_%tl233749233812%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233747233807%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233749233812%_))
                                           ((lambda (_%g233726233815%_
                                                     _%g233727233816%_
                                                     _%g233728233817%_)
                                              (let* ((_%g233841233855%_
                                                      (lambda (_%g233842233852%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233842233852%_))))
                                                     (_%g233840233902%_
                                                      (lambda (_%g233842233858%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233842233858%_))
                                                            (let ((_%e233845233860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233842233858%_))))
                      (let ((_%hd233846233863%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233845233860%_)))
                            (_%tl233847233865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233845233860%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233847233865%_))
                            (let ((_%e233848233868%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233847233865%_))))
                              (let ((_%hd233849233871%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233848233868%_)))
                                    (_%tl233850233873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233848233868%_))))
                                ((lambda (_%g233843233876%_ _%g233844233877%_)
                                   (let* ((_%self233890%_
                                           (list-ref
                                            _%g233844233877%_
                                            _%self-index233579%_))
                                          (_%receiver233895%_
                                           (let ((_%$e233892%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g233843233876%_))))
                                             (if _%$e233892%_
                                                 _%$e233892%_
                                                 _%self233890%_))))
                                     (for-each
                                      (lambda (_%g233897233899%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver233895%_
                                         _%method-calls231581%_
                                         _%slot-refs231582%_
                                         _%g233897233899%_))
                                      _%g233843233876%_)))
                                 _%tl233850233873%_
                                 _%hd233849233871%_)))
                            (_%g233841233855%_ _%g233842233858%_))))
                    (_%g233841233855%_ _%g233842233858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233840233902%_
                                                 _%g233727233816%_))
                                              (let* ((_%g233905233924%_
                                                      (lambda (_%g233906233921%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233906233921%_))))
                                                     (_%g233904234033%_
                                                      (lambda (_%g233906233927%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233906233927%_))
                                                            (let ((_%e233908233929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233906233927%_))))
                      (let ((_%hd233909233932%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233908233929%_)))
                            (_%tl233910233934%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233908233929%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl233910233934%_))
                            (let ((_g235762_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233910233934%_
                                      '0))))
                              (begin
                                (let ((_g235763_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235762_)
                                             (##values-length _g235762_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235763_ 2)))
                                      (error "Context expects 2 values"
                                             _g235763_)))
                                (let ((_%target233911233937%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235762_ 0)))
                                      (_%tl233913233939%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235762_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl233913233939%_))
                                      (letrec ((_%loop233914233942%_
                                                (lambda (_%hd233912233945%_
                                                         _%clause233918233947%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd233912233945%_))
                                                      (let ((_%e233915233949%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd233912233945%_))))
                (let ((_%lp-hd233916233952%_
                       (let () (declare (not safe)) (##car _%e233915233949%_)))
                      (_%lp-tl233917233954%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e233915233949%_))))
                  (_%loop233914233942%_
                   _%lp-tl233917233954%_
                   (cons _%lp-hd233916233952%_ _%clause233918233947%_))))
              (let ((_%clause233919233957%_ (reverse _%clause233918233947%_)))
                ((lambda (_%g233907233959%_)
                   (for-each
                    (lambda (_%clause233972%_)
                      (let* ((_%g233974233985%_
                              (lambda (_%g233975233982%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g233975233982%_))))
                             (_%g233973234023%_
                              (lambda (_%g233975233988%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g233975233988%_))
                                    (let ((_%e233978233990%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g233975233988%_))))
                                      (let ((_%hd233979233993%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233978233990%_)))
                                            (_%tl233980233995%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233978233990%_))))
                                        ((lambda (_%g233976233998%_
                                                  _%g233977233999%_)
                                           (let* ((_%self234011%_
                                                   (list-ref
                                                    _%g233977233999%_
                                                    _%self-index233579%_))
                                                  (_%receiver234016%_
                                                   (let ((_%$e234013%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g233976233998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e234013%_
                                                         _%$e234013%_
                                                         _%self234011%_))))
                                             (for-each
                                              (lambda (_%g234018234020%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver234016%_
                                                 _%method-calls231581%_
                                                 _%slot-refs231582%_
                                                 _%g234018234020%_))
                                              _%g233976233998%_)))
                                         _%tl233980233995%_
                                         _%hd233979233993%_)))
                                    (_%g233974233985%_ _%g233975233988%_)))))
                        (_%g233973234023%_ _%clause233972%_)))
                    (let ((__tmp235764
                           (lambda (_%g234025234028%_ _%g234026234030%_)
                             (cons _%g234025234028%_ _%g234026234030%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235764 '() _%g233907233959%_))))
                 _%clause233919233957%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop233914233942%_
                                         _%target233911233937%_
                                         '()))
                                      (_%g233905233924%_ _%g233906233927%_)))))
                            (_%g233905233924%_ _%g233906233927%_))))
                    (_%g233905233924%_ _%g233906233927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233904234033%_
                                                 _%g233726233815%_))
                                              (if (_%no-specializer?231585%_)
                                                  _%stx231489%_
                                                  (let* ((_%specializer-id234042%_
                                                          (let* ((_%id234036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235765
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231500231562%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235765 '"::specialize")))
                         (_%specializer-id234039%_
                          (let ((__tmp235766
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231489%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id234036%_
                             __tmp235766))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id234039%_))
                    _%specializer-id234039%_))
                 (_%$klass234044%_
                  (let ((__tmp235767
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235767)))
                 (_%$method-table234046%_
                  (let ((__tmp235768
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235768)))
                 (_%methods234048%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231581%_)))
                 (_%$methods234052%_
                  (let ((__tmp235769
                         (lambda (_%id234050%_)
                           (let ((__tmp235770 (gensym _%id234050%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235770)))))
                    (declare (not safe))
                    (##map __tmp235769 _%methods234048%_)))
                 (_%_234061%_
                  (let ((__tmp235771
                         (lambda (_%g234053234056%_ _%g234054234058%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231581%_
                              _%g234053234056%_
                              _%g234054234058%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235771
                     _%methods234048%_
                     _%$methods234052%_)))
                 (_%methods-bind234071%_
                  (let ((__tmp235772
                         (lambda (_%g234063234066%_ _%g234064234068%_)
                           (_%generate-method-bind231491%_
                            _%$klass234044%_
                            _%$method-table234046%_
                            _%g234063234066%_
                            _%g234064234068%_))))
                    (declare (not safe))
                    (##map __tmp235772 _%methods234048%_ _%$methods234052%_)))
                 (_%slots234073%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231582%_)))
                 (_%$slots234077%_
                  (let ((__tmp235773
                         (lambda (_%id234075%_)
                           (let ((__tmp235774 (gensym _%id234075%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235774)))))
                    (declare (not safe))
                    (##map __tmp235773 _%slots234073%_)))
                 (_%_234086%_
                  (let ((__tmp235775
                         (lambda (_%g234078234081%_ _%g234079234083%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231582%_
                              _%g234078234081%_
                              _%g234079234083%_)))))
                    (declare (not safe))
                    (##for-each __tmp235775 _%slots234073%_ _%$slots234077%_)))
                 (_%slots-bind234095%_
                  (let ((__tmp235776
                         (lambda (_%g234087234090%_ _%g234088234092%_)
                           (_%generate-slot-bind231492%_
                            _%$klass234044%_
                            _%g234087234090%_
                            _%g234088234092%_))))
                    (declare (not safe))
                    (##map __tmp235776 _%slots234073%_ _%$slots234077%_)))
                 (_%specializer-lambda-expr234173%_
                  (let* ((_%g234097234111%_
                          (lambda (_%g234098234108%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234098234108%_))))
                         (_%g234096234170%_
                          (lambda (_%g234098234114%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234098234114%_))
                                (let ((_%e234101234116%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234098234114%_))))
                                  (let ((_%hd234102234119%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234101234116%_)))
                                        (_%tl234103234121%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234101234116%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl234103234121%_))
                                        (let ((_%e234104234124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl234103234121%_))))
                                          (let ((_%hd234105234127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e234104234124%_)))
                                                (_%tl234106234129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e234104234124%_))))
                                            ((lambda (_%g234099234132%_
                                                      _%g234100234133%_)
                                               (let* ((_%self234156%_
                                                       (list-ref
                                                        _%g234100234133%_
                                                        _%self-index233579%_))
                                                      (_%receiver234161%_
                                                       (let ((_%$e234158%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g234099234132%_))))
                 (if _%$e234158%_ _%$e234158%_ _%self234156%_)))
              (_%body234167%_
               (map (lambda (_%g234162234164%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver234161%_
                       _%$klass234044%_
                       _%method-calls231581%_
                       _%slot-refs231582%_
                       _%g234162234164%_))
                    _%g234099234132%_))
              (__tmp235777
               (cons '%#lambda (cons _%g234100234133%_ _%body234167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp235777
                                                  _%g233727233816%_)))
                                             _%tl234106234129%_
                                             _%hd234105234127%_)))
                                        (_%g234097234111%_
                                         _%g234098234114%_))))
                                (_%g234097234111%_ _%g234098234114%_)))))
                    (_%g234096234170%_ _%g233727233816%_)))
                 (_%specializer-case-lambda-expr234311%_
                  (let* ((_%g234175234194%_
                          (lambda (_%g234176234191%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234176234191%_))))
                         (_%g234174234308%_
                          (lambda (_%g234176234197%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234176234197%_))
                                (let ((_%e234178234199%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234176234197%_))))
                                  (let ((_%hd234179234202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234178234199%_)))
                                        (_%tl234180234204%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234178234199%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl234180234204%_))
                                        (let ((_g235778_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl234180234204%_
                                                  '0))))
                                          (begin
                                            (let ((_g235779_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g235778_)
                                                         (##values-length
                                                          _g235778_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g235779_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g235779_)))
                                            (let ((_%target234181234207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235778_
                                                      0)))
                                                  (_%tl234183234209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235778_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl234183234209%_))
                                                  (letrec ((_%loop234184234212%_
                                                            (lambda (_%hd234182234215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause234188234217%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd234182234215%_))
                          (let ((_%e234185234219%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd234182234215%_))))
                            (let ((_%lp-hd234186234222%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234185234219%_)))
                                  (_%lp-tl234187234224%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234185234219%_))))
                              (_%loop234184234212%_
                               _%lp-tl234187234224%_
                               (cons _%lp-hd234186234222%_
                                     _%clause234188234217%_))))
                          (let ((_%clause234189234227%_
                                 (reverse _%clause234188234217%_)))
                            ((lambda (_%g234177234229%_)
                               (let* ((_%clauses234306%_
                                       (map (lambda (_%clause234243%_)
                                              (let* ((_%g234245234256%_
                                                      (lambda (_%g234246234253%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234246234253%_))))
                                                     (_%g234244234296%_
                                                      (lambda (_%g234246234259%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234246234259%_))
                                                            (let ((_%e234249234261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234246234259%_))))
                      (let ((_%hd234250234264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234249234261%_)))
                            (_%tl234251234266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234249234261%_))))
                        ((lambda (_%g234247234269%_ _%g234248234270%_)
                           (let* ((_%self234282%_
                                   (list-ref
                                    _%g234248234270%_
                                    _%self-index233579%_))
                                  (_%receiver234287%_
                                   (let ((_%$e234284%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g234247234269%_))))
                                     (if _%$e234284%_
                                         _%$e234284%_
                                         _%self234282%_)))
                                  (_%body234293%_
                                   (map (lambda (_%g234288234290%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver234287%_
                                           _%$klass234044%_
                                           _%method-calls231581%_
                                           _%slot-refs231582%_
                                           _%g234288234290%_))
                                        _%g234247234269%_)))
                             (cons _%g234248234270%_ _%body234293%_)))
                         _%tl234251234266%_
                         _%hd234250234264%_)))
                    (_%g234245234256%_ _%g234246234259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234244234296%_
                                                 _%clause234243%_)))
                                            (let ((__tmp235780
                                                   (lambda (_%g234298234301%_
                                                            _%g234299234303%_)
                                                     (cons _%g234298234301%_
                                                           _%g234299234303%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp235780
                                               '()
                                               _%g234177234229%_))))
                                      (__tmp235781
                                       (cons '%#case-lambda
                                             _%clauses234306%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp235781
                                  _%g233726233815%_)))
                             _%clause234189234227%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop234184234212%_
                                                     _%target234181234207%_
                                                     '()))
                                                  (_%g234175234194%_
                                                   _%g234176234197%_)))))
                                        (_%g234175234194%_
                                         _%g234176234197%_))))
                                (_%g234175234194%_ _%g234176234197%_)))))
                    (_%g234174234308%_ _%g233726233815%_)))
                 (_%specializer-impl234313%_
                  (let ((__tmp235782
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g233113233281%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g233112233280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp235783
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g233728233817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr234173%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr234311%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235783
                                                _%stx231489%_))
                                             '()))
                                 '())
                           (cons _%g233110233278%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g233109233277%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235782 _%stx231489%_)))
                 (_%specializer-impl234315%_
                  (_%generate-specializer-impl231493%_
                   _%$klass234044%_
                   _%$method-table234046%_
                   _%methods-bind234071%_
                   _%slots-bind234095%_
                   _%specializer-impl234313%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231500231562%_)))
                                                          (__tmp235784
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id234042%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235785
                                                       '" => "
                                                       __tmp235784))
                                                    (_%generate-specializer-def231494%_
                                                     _%g231500231562%_
                                                     _%specializer-id234042%_
                                                     _%specializer-impl234315%_))))
                                            _%hd233748233810%_
                                            _%hd233745233802%_
                                            _%hd233742233794%_)
                                           (_%g233724233754%_
                                            _%g233725233757%_))))
                                   (_%g233724233754%_ _%g233725233757%_))
                               (_%g233724233754%_ _%g233725233757%_))
                           (_%g233724233754%_ _%g233725233757%_))))
                   (_%g233724233754%_ _%g233725233757%_))
               (_%g233724233754%_ _%g233725233757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233724233754%_
                                                _%g233725233757%_))))
                                       (_%g233724233754%_ _%g233725233757%_))))
                               (_%g233724233754%_ _%g233725233757%_))))
                       (_%g233724233754%_ _%g233725233757%_))))
               (_%g233724233754%_ _%g233725233757%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233723234318%_
                                            _%g233111233279%_))
                                         _%stx231489%_))))
                             _%hd233377233500%_
                             _%kw-ref233375233520%_
                             _%hd233365233487%_
                             _%hd233356233463%_
                             _%hd233347233439%_)
                            (_%g233321233383%_ _%g233322233386%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233370233505%_
                                                 _%target233367233492%_
                                                 '()))
                                              (_%g233321233383%_
                                               _%g233322233386%_))))
                                      (_%g233321233383%_ _%g233322233386%_)))))
                            (_%g233321233383%_ _%g233322233386%_))
                        (_%g233321233383%_ _%g233322233386%_))
                    (_%g233321233383%_ _%g233322233386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233321233383%_
                                                     _%g233322233386%_))
                                                (_%g233321233383%_
                                                 _%g233322233386%_))
                                            (_%g233321233383%_
                                             _%g233322233386%_))))
                                    (_%g233321233383%_ _%g233322233386%_))))
                            (_%g233321233383%_ _%g233322233386%_))
                        (_%g233321233383%_ _%g233322233386%_))))
                (_%g233321233383%_ _%g233322233386%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233321233383%_
                                                     _%g233322233386%_))
                                                (_%g233321233383%_
                                                 _%g233322233386%_))))
                                        (_%g233321233383%_
                                         _%g233322233386%_))))
                                (_%g233321233383%_ _%g233322233386%_))
                            (_%g233321233383%_ _%g233322233386%_))))
                    (_%g233321233383%_ _%g233322233386%_))
                (_%g233321233383%_ _%g233322233386%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233321233383%_
                                                     _%g233322233386%_))))
                                            (_%g233321233383%_
                                             _%g233322233386%_))))
                                    (_%g233321233383%_ _%g233322233386%_))
                                (_%g233321233383%_ _%g233322233386%_))
                            (_%g233321233383%_ _%g233322233386%_))))
                    (_%g233321233383%_ _%g233322233386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233321233383%_
                                                     _%g233322233386%_))))
                                            (_%g233321233383%_
                                             _%g233322233386%_))
                                        (_%g233321233383%_ _%g233322233386%_))
                                    (_%g233321233383%_ _%g233322233386%_))))
                            (_%g233321233383%_ _%g233322233386%_)))))
                (_%g233320234322%_ _%g233110233278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd233154233272%_
                                                    _%hd233151233264%_
                                                    _%hd233148233256%_
                                                    _%hd233145233248%_
                                                    _%hd233127233200%_)
                                                   (_%g233107233160%_
                                                    _%g233108233163%_))))
                                           (_%g233107233160%_
                                            _%g233108233163%_))
                                       (_%g233107233160%_ _%g233108233163%_))
                                   (_%g233107233160%_ _%g233108233163%_))
                               (_%g233107233160%_ _%g233108233163%_))))
                       (_%g233107233160%_ _%g233108233163%_))
                   (_%g233107233160%_ _%g233108233163%_))
               (_%g233107233160%_ _%g233108233163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233107233160%_
                                                _%g233108233163%_))
                                           (_%g233107233160%_
                                            _%g233108233163%_))))
                                   (_%g233107233160%_ _%g233108233163%_))))
                           (_%g233107233160%_ _%g233108233163%_))))
                   (_%g233107233160%_ _%g233108233163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233107233160%_
                                                    _%g233108233163%_))
                                               (_%g233107233160%_
                                                _%g233108233163%_))
                                           (_%g233107233160%_
                                            _%g233108233163%_))))
                                   (_%g233107233160%_ _%g233108233163%_))))
                           (_%g233107233160%_ _%g233108233163%_))
                       (_%g233107233160%_ _%g233108233163%_))))
               (_%g233107233160%_ _%g233108233163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233107233160%_
                                                _%g233108233163%_))))
                                       (_%g233107233160%_ _%g233108233163%_))))
                               (_%g233107233160%_ _%g233108233163%_))
                           (_%g233107233160%_ _%g233108233163%_))
                       (_%g233107233160%_ _%g233108233163%_))))
               (_%g233107233160%_ _%g233108233163%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233106234325%_
                                            _%g231499231561%_))
                                         _%stx231489%_))))))))
                  (_%__kont234552234553%_ (lambda () _%stx231489%_)))
              (let ((_%__match234581234582%_
                     (lambda (_%e231501231529%_
                              _%hd231502231532%_
                              _%tl231503231534%_
                              _%e231504231537%_
                              _%hd231505231540%_
                              _%tl231506231542%_
                              _%e231507231545%_
                              _%hd231508231548%_
                              _%tl231509231550%_
                              _%e231510231553%_
                              _%hd231511231556%_
                              _%tl231512231558%_)
                       (let ((_%g231499231561%_ _%hd231511231556%_)
                             (_%g231500231562%_ _%hd231508231548%_))
                         (if (let ((__tmp235786
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g231500231562%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp235786))
                             (_%__kont234550234551%_
                              _%g231499231561%_
                              _%g231500231562%_)
                             (_%__kont234552234553%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234548234549%_))
                    (let ((_%e231501231529%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234548234549%_))))
                      (let ((_%tl231503231534%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231501231529%_)))
                            (_%hd231502231532%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231501231529%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231503231534%_))
                            (let ((_%e231504231537%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231503231534%_))))
                              (let ((_%tl231506231542%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231504231537%_)))
                                    (_%hd231505231540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231504231537%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231505231540%_))
                                    (let ((_%e231507231545%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231505231540%_))))
                                      (let ((_%tl231509231550%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231507231545%_)))
                                            (_%hd231508231548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231507231545%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231509231550%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231506231542%_))
                                                (let ((_%e231510231553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231506231542%_))))
                                                  (let ((_%tl231512231558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231510231553%_)))
                                                        (_%hd231511231556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231510231553%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231512231558%_))
                                                        (_%__match234581234582%_
                                                         _%e231501231529%_
                                                         _%hd231502231532%_
                                                         _%tl231503231534%_
                                                         _%e231504231537%_
                                                         _%hd231505231540%_
                                                         _%tl231506231542%_
                                                         _%e231507231545%_
                                                         _%hd231508231548%_
                                                         _%tl231509231550%_
                                                         _%e231510231553%_
                                                         _%hd231511231556%_
                                                         _%tl231512231558%_)
                                                        (_%__kont234552234553%_))))
                                                (_%__kont234552234553%_))
                                            (_%__kont234552234553%_))))
                                    (_%__kont234552234553%_))))
                            (_%__kont234552234553%_))))
                    (_%__kont234552234553%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self231341%_ _%stx231342%_)
        (let* ((_%__stx234584234585%_ _%stx231342%_)
               (_%g231345231378%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234584234585%_)))))
          (let ((_%__kont234586234587%_
                 (lambda (_%g231347231468%_) _%g231347231468%_))
                (_%__kont234588234589%_
                 (lambda (_%g231363231407%_ _%g231364231408%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self231341%_ _%g231363231407%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx234584234585%_))
                (let ((_%e231348231428%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx234584234585%_))))
                  (let ((_%tl231350231433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231348231428%_)))
                        (_%hd231349231431%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231348231428%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231350231433%_))
                        (let ((_%e231351231436%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl231350231433%_))))
                          (let ((_%tl231353231441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231351231436%_)))
                                (_%hd231352231439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231351231436%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd231352231439%_))
                                (let ((_%e231354231444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231352231439%_))))
                                  (let ((_%tl231356231449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231354231444%_)))
                                        (_%hd231355231447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231354231444%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd231355231447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd231355231447%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231356231449%_))
                                                (let ((_%e231357231452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231356231449%_))))
                                                  (let ((_%tl231359231457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231357231452%_)))
                                                        (_%hd231358231455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231357231452%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231359231457%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231353231441%_))
                                                            (let ((_%e231360231460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231353231441%_))))
                      (let ((_%tl231362231465%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231360231460%_)))
                            (_%hd231361231463%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231360231460%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231362231465%_))
                            (_%__kont234586234587%_ _%hd231358231455%_)
                            (let ()
                              (declare (not safe))
                              (_%g231345231378%_)))))
                    (let () (declare (not safe)) (_%g231345231378%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl231353231441%_))
                    (let ((_%e231371231399%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231353231441%_))))
                      (let ((_%tl231373231404%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231371231399%_)))
                            (_%hd231372231402%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231371231399%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231373231404%_))
                            (_%__kont234588234589%_
                             _%hd231372231402%_
                             _%hd231352231439%_)
                            (let ()
                              (declare (not safe))
                              (_%g231345231378%_)))))
                    (let () (declare (not safe)) (_%g231345231378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231353231441%_))
                                                    (let ((_%e231371231399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231353231441%_))))
                                                      (let ((_%tl231373231404%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e231371231399%_)))
                    (_%hd231372231402%_
                     (let () (declare (not safe)) (##car _%e231371231399%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl231373231404%_))
                    (_%__kont234588234589%_
                     _%hd231372231402%_
                     _%hd231352231439%_)
                    (let () (declare (not safe)) (_%g231345231378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231345231378%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231353231441%_))
                                                (let ((_%e231371231399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231353231441%_))))
                                                  (let ((_%tl231373231404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231371231399%_)))
                                                        (_%hd231372231402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231371231399%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231373231404%_))
                                                        (_%__kont234588234589%_
                                                         _%hd231372231402%_
                                                         _%hd231352231439%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g231345231378%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g231345231378%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231353231441%_))
                                            (let ((_%e231371231399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231353231441%_))))
                                              (let ((_%tl231373231404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231371231399%_)))
                                                    (_%hd231372231402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231371231399%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl231373231404%_))
                                                    (_%__kont234588234589%_
                                                     _%hd231372231402%_
                                                     _%hd231352231439%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231345231378%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g231345231378%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231353231441%_))
                                    (let ((_%e231371231399%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231353231441%_))))
                                      (let ((_%tl231373231404%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231371231399%_)))
                                            (_%hd231372231402%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231371231399%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231373231404%_))
                                            (_%__kont234588234589%_
                                             _%hd231372231402%_
                                             _%hd231352231439%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g231345231378%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g231345231378%_))))))
                        (let () (declare (not safe)) (_%g231345231378%_)))))
                (let () (declare (not safe)) (_%g231345231378%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self231257%_ _%stx231258%_)
        (let* ((_%g231260231281%_
                (lambda (_%g231261231278%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g231261231278%_))))
               (_%g231259231338%_
                (lambda (_%g231261231284%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g231261231284%_))
                      (let ((_%e231265231286%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231261231284%_))))
                        (let ((_%hd231266231289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231265231286%_)))
                              (_%tl231267231291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231265231286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231267231291%_))
                              (let ((_%e231268231294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231267231291%_))))
                                (let ((_%hd231269231297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231268231294%_)))
                                      (_%tl231270231299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231268231294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl231270231299%_))
                                      (let ((_%e231271231302%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl231270231299%_))))
                                        (let ((_%hd231272231305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231271231302%_)))
                                              (_%tl231273231307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231271231302%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231273231307%_))
                                              (let ((_%e231274231310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl231273231307%_))))
                                                (let ((_%hd231275231313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231274231310%_)))
                                                      (_%tl231276231315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231274231310%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl231276231315%_))
                                                      ((lambda (_%g231262231318%_
                                                                _%g231263231319%_
                                                                _%g231264231320%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self231257%_
                                                            _%g231263231319%_)))
                                                       _%hd231275231313%_
                                                       _%hd231272231305%_
                                                       _%hd231269231297%_)
                                                      (_%g231260231281%_
                                                       _%g231261231284%_))))
                                              (_%g231260231281%_
                                               _%g231261231284%_))))
                                      (_%g231260231281%_ _%g231261231284%_))))
                              (_%g231260231281%_ _%g231261231284%_))))
                      (_%g231260231281%_ _%g231261231284%_)))))
          (_%g231259231338%_ _%stx231258%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self230222%_ _%stx230223%_)
        (let* ((_%__stx234650234651%_ _%stx230223%_)
               (_%g230231230453%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234650234651%_)))))
          (let ((_%__kont234652234653%_
                 (lambda (_%g230233231206%_
                          _%g230234231207%_
                          _%g230235231208%_
                          _%g230236231209%_)
                   (let ((__tmp235788
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230222%_ 'methods)))
                         (__tmp235787
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230234231207%_))))
                     (declare (not safe))
                     (hash-put! __tmp235788 __tmp235787 '#t))
                   (for-each
                    (lambda (_%g231242231244%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230222%_ _%g231242231244%_)))
                    (let ((__tmp235789
                           (lambda (_%g231246231249%_ _%g231247231251%_)
                             (cons _%g231246231249%_ _%g231247231251%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235789 '() _%g230233231206%_)))))
                (_%__kont234656234657%_
                 (lambda (_%g230276231043%_
                          _%g230277231044%_
                          _%g230278231045%_
                          _%g230279231046%_
                          _%g230280231047%_)
                   (let ((__tmp235791
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230222%_ 'methods)))
                         (__tmp235790
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230277231044%_))))
                     (declare (not safe))
                     (hash-put! __tmp235791 __tmp235790 '#t))
                   (for-each
                    (lambda (_%g231087231089%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230222%_ _%g231087231089%_)))
                    (let ((__tmp235792
                           (lambda (_%g231091231094%_ _%g231092231096%_)
                             (cons _%g231091231094%_ _%g231092231096%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235792 '() _%g230276231043%_)))))
                (_%__kont234660234661%_
                 (lambda (_%g230329230878%_
                          _%g230330230879%_
                          _%g230331230880%_)
                   (let ((__tmp235794
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230222%_ 'slots)))
                         (__tmp235793
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230329230878%_))))
                     (declare (not safe))
                     (hash-put! __tmp235794 __tmp235793 '#t))))
                (_%__kont234662234663%_
                 (lambda (_%g230362230755%_
                          _%g230363230756%_
                          _%g230364230757%_
                          _%g230365230758%_)
                   (let ((__tmp235796
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230222%_ 'slots)))
                         (__tmp235795
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230363230756%_))))
                     (declare (not safe))
                     (hash-put! __tmp235796 __tmp235795 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230222%_ _%g230362230755%_))))
                (_%__kont234664234665%_
                 (lambda (_%g230399230629%_ _%g230400230630%_)
                   (let* ((_%accessor230652%_
                           (let ((__tmp235797
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g230400230630%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235797)))
                          (_%klass230654%_
                           (let ((__tmp235798
                                  (##structure-ref
                                   _%accessor230652%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230223%_
                              __tmp235798)))
                          (_%slot230656%_
                           (##structure-ref
                            _%accessor230652%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor230652%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230654%_
                                    _%slot230656%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230654%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235800
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230222%_ 'slots)))
                               (__tmp235799
                                (##structure-ref
                                 _%accessor230652%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp235800 __tmp235799 '#t))))))
                (_%__kont234666234667%_
                 (lambda (_%g230422230529%_
                          _%g230423230530%_
                          _%g230424230531%_)
                   (let* ((_%mutator230558%_
                           (let ((__tmp235801
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g230424230531%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235801)))
                          (_%klass230560%_
                           (let ((__tmp235802
                                  (##structure-ref
                                   _%mutator230558%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230223%_
                              __tmp235802)))
                          (_%slot230562%_
                           (##structure-ref
                            _%mutator230558%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator230558%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230560%_
                                    _%slot230562%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230560%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235803
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230222%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp235803 _%slot230562%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self230222%_ _%g230422230529%_)))))
                (_%__kont234668234669%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self230222%_ _%stx230223%_)))))
            (let* ((_%__match235149235150%_
                    (lambda (_%e230425230465%_
                             _%hd230426230468%_
                             _%tl230427230470%_
                             _%e230428230473%_
                             _%hd230429230476%_
                             _%tl230430230478%_
                             _%e230431230481%_
                             _%hd230432230484%_
                             _%tl230433230486%_
                             _%e230434230489%_
                             _%hd230435230492%_
                             _%tl230436230494%_
                             _%e230437230497%_
                             _%hd230438230500%_
                             _%tl230439230502%_
                             _%e230440230505%_
                             _%hd230441230508%_
                             _%tl230442230510%_
                             _%e230443230513%_
                             _%hd230444230516%_
                             _%tl230445230518%_
                             _%e230446230521%_
                             _%hd230447230524%_
                             _%tl230448230526%_)
                      (let ((_%g230422230529%_ _%hd230447230524%_)
                            (_%g230423230530%_ _%hd230444230516%_)
                            (_%g230424230531%_ _%hd230435230492%_))
                        (if (and (let ((__tmp235804
                                        (let ((__tmp235805
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g230424230531%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235805))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235804
                                    'gxc#!mutator::t))
                                 (let ((__tmp235806
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230222%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230423230530%_
                                    __tmp235806)))
                            (_%__kont234666234667%_
                             _%g230422230529%_
                             _%g230423230530%_
                             _%g230424230531%_)
                            (_%__kont234668234669%_)))))
                   (_%__match235147235148%_
                    (lambda (_%e230425230465%_
                             _%hd230426230468%_
                             _%tl230427230470%_
                             _%e230428230473%_
                             _%hd230429230476%_
                             _%tl230430230478%_
                             _%e230431230481%_
                             _%hd230432230484%_
                             _%tl230433230486%_
                             _%e230434230489%_
                             _%hd230435230492%_
                             _%tl230436230494%_
                             _%e230437230497%_
                             _%hd230438230500%_
                             _%tl230439230502%_
                             _%e230440230505%_
                             _%hd230441230508%_
                             _%tl230442230510%_
                             _%e230443230513%_
                             _%hd230444230516%_
                             _%tl230445230518%_
                             _%e230446230521%_
                             _%hd230447230524%_
                             _%tl230448230526%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230448230526%_))
                          (_%__match235149235150%_
                           _%e230425230465%_
                           _%hd230426230468%_
                           _%tl230427230470%_
                           _%e230428230473%_
                           _%hd230429230476%_
                           _%tl230430230478%_
                           _%e230431230481%_
                           _%hd230432230484%_
                           _%tl230433230486%_
                           _%e230434230489%_
                           _%hd230435230492%_
                           _%tl230436230494%_
                           _%e230437230497%_
                           _%hd230438230500%_
                           _%tl230439230502%_
                           _%e230440230505%_
                           _%hd230441230508%_
                           _%tl230442230510%_
                           _%e230443230513%_
                           _%hd230444230516%_
                           _%tl230445230518%_
                           _%e230446230521%_
                           _%hd230447230524%_
                           _%tl230448230526%_)
                          (_%__kont234668234669%_))))
                   (_%__match235141235142%_
                    (lambda (_%e230425230465%_
                             _%hd230426230468%_
                             _%tl230427230470%_
                             _%e230428230473%_
                             _%hd230429230476%_
                             _%tl230430230478%_
                             _%e230431230481%_
                             _%hd230432230484%_
                             _%tl230433230486%_
                             _%e230434230489%_
                             _%hd230435230492%_
                             _%tl230436230494%_
                             _%e230437230497%_
                             _%hd230438230500%_
                             _%tl230439230502%_
                             _%e230440230505%_
                             _%hd230441230508%_
                             _%tl230442230510%_
                             _%e230443230513%_
                             _%hd230444230516%_
                             _%tl230445230518%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230439230502%_))
                          (let ((_%e230446230521%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230439230502%_))))
                            (let ((_%tl230448230526%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230446230521%_)))
                                  (_%hd230447230524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230446230521%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230448230526%_))
                                  (_%__match235149235150%_
                                   _%e230425230465%_
                                   _%hd230426230468%_
                                   _%tl230427230470%_
                                   _%e230428230473%_
                                   _%hd230429230476%_
                                   _%tl230430230478%_
                                   _%e230431230481%_
                                   _%hd230432230484%_
                                   _%tl230433230486%_
                                   _%e230434230489%_
                                   _%hd230435230492%_
                                   _%tl230436230494%_
                                   _%e230437230497%_
                                   _%hd230438230500%_
                                   _%tl230439230502%_
                                   _%e230440230505%_
                                   _%hd230441230508%_
                                   _%tl230442230510%_
                                   _%e230443230513%_
                                   _%hd230444230516%_
                                   _%tl230445230518%_
                                   _%e230446230521%_
                                   _%hd230447230524%_
                                   _%tl230448230526%_)
                                  (_%__kont234668234669%_))))
                          (_%__kont234668234669%_))))
                   (_%__match235087235088%_
                    (lambda (_%e230401230573%_
                             _%hd230402230576%_
                             _%tl230403230578%_
                             _%e230404230581%_
                             _%hd230405230584%_
                             _%tl230406230586%_
                             _%e230407230589%_
                             _%hd230408230592%_
                             _%tl230409230594%_
                             _%e230410230597%_
                             _%hd230411230600%_
                             _%tl230412230602%_
                             _%e230413230605%_
                             _%hd230414230608%_
                             _%tl230415230610%_
                             _%e230416230613%_
                             _%hd230417230616%_
                             _%tl230418230618%_
                             _%e230419230621%_
                             _%hd230420230624%_
                             _%tl230421230626%_)
                      (let ((_%g230399230629%_ _%hd230420230624%_)
                            (_%g230400230630%_ _%hd230411230600%_))
                        (if (and (let ((__tmp235807
                                        (let ((__tmp235808
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g230400230630%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235808))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235807
                                    'gxc#!accessor::t))
                                 (let ((__tmp235809
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230222%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230399230629%_
                                    __tmp235809)))
                            (_%__kont234664234665%_
                             _%g230399230629%_
                             _%g230400230630%_)
                            (_%__kont234668234669%_)))))
                   (_%__match235085235086%_
                    (lambda (_%e230401230573%_
                             _%hd230402230576%_
                             _%tl230403230578%_
                             _%e230404230581%_
                             _%hd230405230584%_
                             _%tl230406230586%_
                             _%e230407230589%_
                             _%hd230408230592%_
                             _%tl230409230594%_
                             _%e230410230597%_
                             _%hd230411230600%_
                             _%tl230412230602%_
                             _%e230413230605%_
                             _%hd230414230608%_
                             _%tl230415230610%_
                             _%e230416230613%_
                             _%hd230417230616%_
                             _%tl230418230618%_
                             _%e230419230621%_
                             _%hd230420230624%_
                             _%tl230421230626%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230415230610%_))
                          (_%__match235087235088%_
                           _%e230401230573%_
                           _%hd230402230576%_
                           _%tl230403230578%_
                           _%e230404230581%_
                           _%hd230405230584%_
                           _%tl230406230586%_
                           _%e230407230589%_
                           _%hd230408230592%_
                           _%tl230409230594%_
                           _%e230410230597%_
                           _%hd230411230600%_
                           _%tl230412230602%_
                           _%e230413230605%_
                           _%hd230414230608%_
                           _%tl230415230610%_
                           _%e230416230613%_
                           _%hd230417230616%_
                           _%tl230418230618%_
                           _%e230419230621%_
                           _%hd230420230624%_
                           _%tl230421230626%_)
                          (_%__match235141235142%_
                           _%e230401230573%_
                           _%hd230402230576%_
                           _%tl230403230578%_
                           _%e230404230581%_
                           _%hd230405230584%_
                           _%tl230406230586%_
                           _%e230407230589%_
                           _%hd230408230592%_
                           _%tl230409230594%_
                           _%e230410230597%_
                           _%hd230411230600%_
                           _%tl230412230602%_
                           _%e230413230605%_
                           _%hd230414230608%_
                           _%tl230415230610%_
                           _%e230416230613%_
                           _%hd230417230616%_
                           _%tl230418230618%_
                           _%e230419230621%_
                           _%hd230420230624%_
                           _%tl230421230626%_))))
                   (_%__match235031235032%_
                    (lambda (_%e230366230667%_
                             _%hd230367230670%_
                             _%tl230368230672%_
                             _%e230369230675%_
                             _%hd230370230678%_
                             _%tl230371230680%_
                             _%e230372230683%_
                             _%hd230373230686%_
                             _%tl230374230688%_
                             _%e230375230691%_
                             _%hd230376230694%_
                             _%tl230377230696%_
                             _%e230378230699%_
                             _%hd230379230702%_
                             _%tl230380230704%_
                             _%e230381230707%_
                             _%hd230382230710%_
                             _%tl230383230712%_
                             _%e230384230715%_
                             _%hd230385230718%_
                             _%tl230386230720%_
                             _%e230387230723%_
                             _%hd230388230726%_
                             _%tl230389230728%_
                             _%e230390230731%_
                             _%hd230391230734%_
                             _%tl230392230736%_
                             _%e230393230739%_
                             _%hd230394230742%_
                             _%tl230395230744%_
                             _%e230396230747%_
                             _%hd230397230750%_
                             _%tl230398230752%_)
                      (let ((_%g230362230755%_ _%hd230397230750%_)
                            (_%g230363230756%_ _%hd230394230742%_)
                            (_%g230364230757%_ _%hd230385230718%_)
                            (_%g230365230758%_ _%hd230376230694%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230365230758%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230365230758%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp235810
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230222%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230364230757%_
                                    __tmp235810)))
                            (_%__kont234662234663%_
                             _%g230362230755%_
                             _%g230363230756%_
                             _%g230364230757%_
                             _%g230365230758%_)
                            (_%__kont234668234669%_)))))
                   (_%__match235023235024%_
                    (lambda (_%e230366230667%_
                             _%hd230367230670%_
                             _%tl230368230672%_
                             _%e230369230675%_
                             _%hd230370230678%_
                             _%tl230371230680%_
                             _%e230372230683%_
                             _%hd230373230686%_
                             _%tl230374230688%_
                             _%e230375230691%_
                             _%hd230376230694%_
                             _%tl230377230696%_
                             _%e230378230699%_
                             _%hd230379230702%_
                             _%tl230380230704%_
                             _%e230381230707%_
                             _%hd230382230710%_
                             _%tl230383230712%_
                             _%e230384230715%_
                             _%hd230385230718%_
                             _%tl230386230720%_
                             _%e230387230723%_
                             _%hd230388230726%_
                             _%tl230389230728%_
                             _%e230390230731%_
                             _%hd230391230734%_
                             _%tl230392230736%_
                             _%e230393230739%_
                             _%hd230394230742%_
                             _%tl230395230744%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230389230728%_))
                          (let ((_%e230396230747%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230389230728%_))))
                            (let ((_%tl230398230752%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230396230747%_)))
                                  (_%hd230397230750%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230396230747%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230398230752%_))
                                  (_%__match235031235032%_
                                   _%e230366230667%_
                                   _%hd230367230670%_
                                   _%tl230368230672%_
                                   _%e230369230675%_
                                   _%hd230370230678%_
                                   _%tl230371230680%_
                                   _%e230372230683%_
                                   _%hd230373230686%_
                                   _%tl230374230688%_
                                   _%e230375230691%_
                                   _%hd230376230694%_
                                   _%tl230377230696%_
                                   _%e230378230699%_
                                   _%hd230379230702%_
                                   _%tl230380230704%_
                                   _%e230381230707%_
                                   _%hd230382230710%_
                                   _%tl230383230712%_
                                   _%e230384230715%_
                                   _%hd230385230718%_
                                   _%tl230386230720%_
                                   _%e230387230723%_
                                   _%hd230388230726%_
                                   _%tl230389230728%_
                                   _%e230390230731%_
                                   _%hd230391230734%_
                                   _%tl230392230736%_
                                   _%e230393230739%_
                                   _%hd230394230742%_
                                   _%tl230395230744%_
                                   _%e230396230747%_
                                   _%hd230397230750%_
                                   _%tl230398230752%_)
                                  (_%__kont234668234669%_))))
                          (_%__match235147235148%_
                           _%e230366230667%_
                           _%hd230367230670%_
                           _%tl230368230672%_
                           _%e230369230675%_
                           _%hd230370230678%_
                           _%tl230371230680%_
                           _%e230372230683%_
                           _%hd230373230686%_
                           _%tl230374230688%_
                           _%e230375230691%_
                           _%hd230376230694%_
                           _%tl230377230696%_
                           _%e230378230699%_
                           _%hd230379230702%_
                           _%tl230380230704%_
                           _%e230381230707%_
                           _%hd230382230710%_
                           _%tl230383230712%_
                           _%e230384230715%_
                           _%hd230385230718%_
                           _%tl230386230720%_
                           _%e230387230723%_
                           _%hd230388230726%_
                           _%tl230389230728%_))))
                   (_%__match234945234946%_
                    (lambda (_%e230332230798%_
                             _%hd230333230801%_
                             _%tl230334230803%_
                             _%e230335230806%_
                             _%hd230336230809%_
                             _%tl230337230811%_
                             _%e230338230814%_
                             _%hd230339230817%_
                             _%tl230340230819%_
                             _%e230341230822%_
                             _%hd230342230825%_
                             _%tl230343230827%_
                             _%e230344230830%_
                             _%hd230345230833%_
                             _%tl230346230835%_
                             _%e230347230838%_
                             _%hd230348230841%_
                             _%tl230349230843%_
                             _%e230350230846%_
                             _%hd230351230849%_
                             _%tl230352230851%_
                             _%e230353230854%_
                             _%hd230354230857%_
                             _%tl230355230859%_
                             _%e230356230862%_
                             _%hd230357230865%_
                             _%tl230358230867%_
                             _%e230359230870%_
                             _%hd230360230873%_
                             _%tl230361230875%_)
                      (let ((_%g230329230878%_ _%hd230360230873%_)
                            (_%g230330230879%_ _%hd230351230849%_)
                            (_%g230331230880%_ _%hd230342230825%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230331230880%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230331230880%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp235811
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230222%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230330230879%_
                                    __tmp235811)))
                            (_%__kont234660234661%_
                             _%g230329230878%_
                             _%g230330230879%_
                             _%g230331230880%_)
                            (_%__match235149235150%_
                             _%e230332230798%_
                             _%hd230333230801%_
                             _%tl230334230803%_
                             _%e230335230806%_
                             _%hd230336230809%_
                             _%tl230337230811%_
                             _%e230338230814%_
                             _%hd230339230817%_
                             _%tl230340230819%_
                             _%e230341230822%_
                             _%hd230342230825%_
                             _%tl230343230827%_
                             _%e230344230830%_
                             _%hd230345230833%_
                             _%tl230346230835%_
                             _%e230347230838%_
                             _%hd230348230841%_
                             _%tl230349230843%_
                             _%e230350230846%_
                             _%hd230351230849%_
                             _%tl230352230851%_
                             _%e230353230854%_
                             _%hd230354230857%_
                             _%tl230355230859%_)))))
                   (_%__match234943234944%_
                    (lambda (_%e230332230798%_
                             _%hd230333230801%_
                             _%tl230334230803%_
                             _%e230335230806%_
                             _%hd230336230809%_
                             _%tl230337230811%_
                             _%e230338230814%_
                             _%hd230339230817%_
                             _%tl230340230819%_
                             _%e230341230822%_
                             _%hd230342230825%_
                             _%tl230343230827%_
                             _%e230344230830%_
                             _%hd230345230833%_
                             _%tl230346230835%_
                             _%e230347230838%_
                             _%hd230348230841%_
                             _%tl230349230843%_
                             _%e230350230846%_
                             _%hd230351230849%_
                             _%tl230352230851%_
                             _%e230353230854%_
                             _%hd230354230857%_
                             _%tl230355230859%_
                             _%e230356230862%_
                             _%hd230357230865%_
                             _%tl230358230867%_
                             _%e230359230870%_
                             _%hd230360230873%_
                             _%tl230361230875%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230355230859%_))
                          (_%__match234945234946%_
                           _%e230332230798%_
                           _%hd230333230801%_
                           _%tl230334230803%_
                           _%e230335230806%_
                           _%hd230336230809%_
                           _%tl230337230811%_
                           _%e230338230814%_
                           _%hd230339230817%_
                           _%tl230340230819%_
                           _%e230341230822%_
                           _%hd230342230825%_
                           _%tl230343230827%_
                           _%e230344230830%_
                           _%hd230345230833%_
                           _%tl230346230835%_
                           _%e230347230838%_
                           _%hd230348230841%_
                           _%tl230349230843%_
                           _%e230350230846%_
                           _%hd230351230849%_
                           _%tl230352230851%_
                           _%e230353230854%_
                           _%hd230354230857%_
                           _%tl230355230859%_
                           _%e230356230862%_
                           _%hd230357230865%_
                           _%tl230358230867%_
                           _%e230359230870%_
                           _%hd230360230873%_
                           _%tl230361230875%_)
                          (_%__match235023235024%_
                           _%e230332230798%_
                           _%hd230333230801%_
                           _%tl230334230803%_
                           _%e230335230806%_
                           _%hd230336230809%_
                           _%tl230337230811%_
                           _%e230338230814%_
                           _%hd230339230817%_
                           _%tl230340230819%_
                           _%e230341230822%_
                           _%hd230342230825%_
                           _%tl230343230827%_
                           _%e230344230830%_
                           _%hd230345230833%_
                           _%tl230346230835%_
                           _%e230347230838%_
                           _%hd230348230841%_
                           _%tl230349230843%_
                           _%e230350230846%_
                           _%hd230351230849%_
                           _%tl230352230851%_
                           _%e230353230854%_
                           _%hd230354230857%_
                           _%tl230355230859%_
                           _%e230356230862%_
                           _%hd230357230865%_
                           _%tl230358230867%_
                           _%e230359230870%_
                           _%hd230360230873%_
                           _%tl230361230875%_))))
                   (_%__match234933234934%_
                    (lambda (_%e230332230798%_
                             _%hd230333230801%_
                             _%tl230334230803%_
                             _%e230335230806%_
                             _%hd230336230809%_
                             _%tl230337230811%_
                             _%e230338230814%_
                             _%hd230339230817%_
                             _%tl230340230819%_
                             _%e230341230822%_
                             _%hd230342230825%_
                             _%tl230343230827%_
                             _%e230344230830%_
                             _%hd230345230833%_
                             _%tl230346230835%_
                             _%e230347230838%_
                             _%hd230348230841%_
                             _%tl230349230843%_
                             _%e230350230846%_
                             _%hd230351230849%_
                             _%tl230352230851%_
                             _%e230353230854%_
                             _%hd230354230857%_
                             _%tl230355230859%_
                             _%e230356230862%_
                             _%hd230357230865%_
                             _%tl230358230867%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd230357230865%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230358230867%_))
                              (let ((_%e230359230870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230358230867%_))))
                                (let ((_%tl230361230875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230359230870%_)))
                                      (_%hd230360230873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230359230870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230361230875%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl230355230859%_))
                                          (_%__match234945234946%_
                                           _%e230332230798%_
                                           _%hd230333230801%_
                                           _%tl230334230803%_
                                           _%e230335230806%_
                                           _%hd230336230809%_
                                           _%tl230337230811%_
                                           _%e230338230814%_
                                           _%hd230339230817%_
                                           _%tl230340230819%_
                                           _%e230341230822%_
                                           _%hd230342230825%_
                                           _%tl230343230827%_
                                           _%e230344230830%_
                                           _%hd230345230833%_
                                           _%tl230346230835%_
                                           _%e230347230838%_
                                           _%hd230348230841%_
                                           _%tl230349230843%_
                                           _%e230350230846%_
                                           _%hd230351230849%_
                                           _%tl230352230851%_
                                           _%e230353230854%_
                                           _%hd230354230857%_
                                           _%tl230355230859%_
                                           _%e230356230862%_
                                           _%hd230357230865%_
                                           _%tl230358230867%_
                                           _%e230359230870%_
                                           _%hd230360230873%_
                                           _%tl230361230875%_)
                                          (_%__match235023235024%_
                                           _%e230332230798%_
                                           _%hd230333230801%_
                                           _%tl230334230803%_
                                           _%e230335230806%_
                                           _%hd230336230809%_
                                           _%tl230337230811%_
                                           _%e230338230814%_
                                           _%hd230339230817%_
                                           _%tl230340230819%_
                                           _%e230341230822%_
                                           _%hd230342230825%_
                                           _%tl230343230827%_
                                           _%e230344230830%_
                                           _%hd230345230833%_
                                           _%tl230346230835%_
                                           _%e230347230838%_
                                           _%hd230348230841%_
                                           _%tl230349230843%_
                                           _%e230350230846%_
                                           _%hd230351230849%_
                                           _%tl230352230851%_
                                           _%e230353230854%_
                                           _%hd230354230857%_
                                           _%tl230355230859%_
                                           _%e230356230862%_
                                           _%hd230357230865%_
                                           _%tl230358230867%_
                                           _%e230359230870%_
                                           _%hd230360230873%_
                                           _%tl230361230875%_))
                                      (_%__match235147235148%_
                                       _%e230332230798%_
                                       _%hd230333230801%_
                                       _%tl230334230803%_
                                       _%e230335230806%_
                                       _%hd230336230809%_
                                       _%tl230337230811%_
                                       _%e230338230814%_
                                       _%hd230339230817%_
                                       _%tl230340230819%_
                                       _%e230341230822%_
                                       _%hd230342230825%_
                                       _%tl230343230827%_
                                       _%e230344230830%_
                                       _%hd230345230833%_
                                       _%tl230346230835%_
                                       _%e230347230838%_
                                       _%hd230348230841%_
                                       _%tl230349230843%_
                                       _%e230350230846%_
                                       _%hd230351230849%_
                                       _%tl230352230851%_
                                       _%e230353230854%_
                                       _%hd230354230857%_
                                       _%tl230355230859%_))))
                              (_%__match235147235148%_
                               _%e230332230798%_
                               _%hd230333230801%_
                               _%tl230334230803%_
                               _%e230335230806%_
                               _%hd230336230809%_
                               _%tl230337230811%_
                               _%e230338230814%_
                               _%hd230339230817%_
                               _%tl230340230819%_
                               _%e230341230822%_
                               _%hd230342230825%_
                               _%tl230343230827%_
                               _%e230344230830%_
                               _%hd230345230833%_
                               _%tl230346230835%_
                               _%e230347230838%_
                               _%hd230348230841%_
                               _%tl230349230843%_
                               _%e230350230846%_
                               _%hd230351230849%_
                               _%tl230352230851%_
                               _%e230353230854%_
                               _%hd230354230857%_
                               _%tl230355230859%_))
                          (_%__match235147235148%_
                           _%e230332230798%_
                           _%hd230333230801%_
                           _%tl230334230803%_
                           _%e230335230806%_
                           _%hd230336230809%_
                           _%tl230337230811%_
                           _%e230338230814%_
                           _%hd230339230817%_
                           _%tl230340230819%_
                           _%e230341230822%_
                           _%hd230342230825%_
                           _%tl230343230827%_
                           _%e230344230830%_
                           _%hd230345230833%_
                           _%tl230346230835%_
                           _%e230347230838%_
                           _%hd230348230841%_
                           _%tl230349230843%_
                           _%e230350230846%_
                           _%hd230351230849%_
                           _%tl230352230851%_
                           _%e230353230854%_
                           _%hd230354230857%_
                           _%tl230355230859%_))))
                   (_%__match234865234866%_
                    (lambda (_%e230281230917%_
                             _%hd230282230920%_
                             _%tl230283230922%_
                             _%e230284230925%_
                             _%hd230285230928%_
                             _%tl230286230930%_
                             _%e230287230933%_
                             _%hd230288230936%_
                             _%tl230289230938%_
                             _%e230290230941%_
                             _%hd230291230944%_
                             _%tl230292230946%_
                             _%e230293230949%_
                             _%hd230294230952%_
                             _%tl230295230954%_
                             _%e230296230957%_
                             _%hd230297230960%_
                             _%tl230298230962%_
                             _%e230299230965%_
                             _%hd230300230968%_
                             _%tl230301230970%_
                             _%e230302230973%_
                             _%hd230303230976%_
                             _%tl230304230978%_
                             _%e230305230981%_
                             _%hd230306230984%_
                             _%tl230307230986%_
                             _%e230308230989%_
                             _%hd230309230992%_
                             _%tl230310230994%_
                             _%e230311230997%_
                             _%hd230312231000%_
                             _%tl230313231002%_
                             _%e230314231005%_
                             _%hd230315231008%_
                             _%tl230316231010%_
                             _%e230317231013%_
                             _%hd230318231016%_
                             _%tl230319231018%_
                             _%__splice234658234659%_
                             _%target230320231021%_
                             _%tl230322231023%_)
                      (letrec ((_%loop230323231026%_
                                (lambda (_%hd230321231029%_
                                         _%args230327231031%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230321231029%_))
                                      (let ((_%e230324231033%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230321231029%_))))
                                        (let ((_%lp-tl230326231038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230324231033%_)))
                                              (_%lp-hd230325231036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230324231033%_))))
                                          (_%loop230323231026%_
                                           _%lp-tl230326231038%_
                                           (cons _%lp-hd230325231036%_
                                                 _%args230327231031%_))))
                                      (let ((_%args230328231041%_
                                             (reverse _%args230327231031%_)))
                                        (let ((_%g230276231043%_
                                               _%args230328231041%_)
                                              (_%g230277231044%_
                                               _%hd230318231016%_)
                                              (_%g230278231045%_
                                               _%hd230309230992%_)
                                              (_%g230279231046%_
                                               _%hd230300230968%_)
                                              (_%g230280231047%_
                                               _%hd230291230944%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230280231047%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230279231046%_
                                                      'call-method))
                                                   (let ((__tmp235812
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230222%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230278231045%_
                                                      __tmp235812)))
                                              (_%__kont234656234657%_
                                               _%g230276231043%_
                                               _%g230277231044%_
                                               _%g230278231045%_
                                               _%g230279231046%_
                                               _%g230280231047%_)
                                              (_%__kont234668234669%_))))))))
                        (_%loop230323231026%_ _%target230320231021%_ '()))))
                   (_%__match234823234824%_
                    (lambda (_%e230281230917%_
                             _%hd230282230920%_
                             _%tl230283230922%_
                             _%e230284230925%_
                             _%hd230285230928%_
                             _%tl230286230930%_
                             _%e230287230933%_
                             _%hd230288230936%_
                             _%tl230289230938%_
                             _%e230290230941%_
                             _%hd230291230944%_
                             _%tl230292230946%_
                             _%e230293230949%_
                             _%hd230294230952%_
                             _%tl230295230954%_
                             _%e230296230957%_
                             _%hd230297230960%_
                             _%tl230298230962%_
                             _%e230299230965%_
                             _%hd230300230968%_
                             _%tl230301230970%_
                             _%e230302230973%_
                             _%hd230303230976%_
                             _%tl230304230978%_
                             _%e230305230981%_
                             _%hd230306230984%_
                             _%tl230307230986%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd230306230984%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230307230986%_))
                              (let ((_%e230308230989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230307230986%_))))
                                (let ((_%tl230310230994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230308230989%_)))
                                      (_%hd230309230992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230308230989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230310230994%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230304230978%_))
                                          (let ((_%e230311230997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230304230978%_))))
                                            (let ((_%tl230313231002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230311230997%_)))
                                                  (_%hd230312231000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230311230997%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd230312231000%_))
                                                  (let ((_%e230314231005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd230312231000%_))))
                                                    (let ((_%tl230316231010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230314231005%_)))
                                                          (_%hd230315231008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230314231005%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd230315231008%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd230315231008%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230316231010%_))
                          (let ((_%e230317231013%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230316231010%_))))
                            (let ((_%tl230319231018%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230317231013%_)))
                                  (_%hd230318231016%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230317231013%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230319231018%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230313231002%_))
                                      (let ((_%__splice234658234659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl230313231002%_
                                                '0))))
                                        (let ((_%tl230322231023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234658234659%_
                                                  '1)))
                                              (_%target230320231021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234658234659%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230322231023%_))
                                              (_%__match234865234866%_
                                               _%e230281230917%_
                                               _%hd230282230920%_
                                               _%tl230283230922%_
                                               _%e230284230925%_
                                               _%hd230285230928%_
                                               _%tl230286230930%_
                                               _%e230287230933%_
                                               _%hd230288230936%_
                                               _%tl230289230938%_
                                               _%e230290230941%_
                                               _%hd230291230944%_
                                               _%tl230292230946%_
                                               _%e230293230949%_
                                               _%hd230294230952%_
                                               _%tl230295230954%_
                                               _%e230296230957%_
                                               _%hd230297230960%_
                                               _%tl230298230962%_
                                               _%e230299230965%_
                                               _%hd230300230968%_
                                               _%tl230301230970%_
                                               _%e230302230973%_
                                               _%hd230303230976%_
                                               _%tl230304230978%_
                                               _%e230305230981%_
                                               _%hd230306230984%_
                                               _%tl230307230986%_
                                               _%e230308230989%_
                                               _%hd230309230992%_
                                               _%tl230310230994%_
                                               _%e230311230997%_
                                               _%hd230312231000%_
                                               _%tl230313231002%_
                                               _%e230314231005%_
                                               _%hd230315231008%_
                                               _%tl230316231010%_
                                               _%e230317231013%_
                                               _%hd230318231016%_
                                               _%tl230319231018%_
                                               _%__splice234658234659%_
                                               _%target230320231021%_
                                               _%tl230322231023%_)
                                              (_%__kont234668234669%_))))
                                      (_%__kont234668234669%_))
                                  (_%__kont234668234669%_))))
                          (_%__kont234668234669%_))
                      (_%__kont234668234669%_))
                  (_%__kont234668234669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234668234669%_))))
                                          (_%__match235147235148%_
                                           _%e230281230917%_
                                           _%hd230282230920%_
                                           _%tl230283230922%_
                                           _%e230284230925%_
                                           _%hd230285230928%_
                                           _%tl230286230930%_
                                           _%e230287230933%_
                                           _%hd230288230936%_
                                           _%tl230289230938%_
                                           _%e230290230941%_
                                           _%hd230291230944%_
                                           _%tl230292230946%_
                                           _%e230293230949%_
                                           _%hd230294230952%_
                                           _%tl230295230954%_
                                           _%e230296230957%_
                                           _%hd230297230960%_
                                           _%tl230298230962%_
                                           _%e230299230965%_
                                           _%hd230300230968%_
                                           _%tl230301230970%_
                                           _%e230302230973%_
                                           _%hd230303230976%_
                                           _%tl230304230978%_))
                                      (_%__match235147235148%_
                                       _%e230281230917%_
                                       _%hd230282230920%_
                                       _%tl230283230922%_
                                       _%e230284230925%_
                                       _%hd230285230928%_
                                       _%tl230286230930%_
                                       _%e230287230933%_
                                       _%hd230288230936%_
                                       _%tl230289230938%_
                                       _%e230290230941%_
                                       _%hd230291230944%_
                                       _%tl230292230946%_
                                       _%e230293230949%_
                                       _%hd230294230952%_
                                       _%tl230295230954%_
                                       _%e230296230957%_
                                       _%hd230297230960%_
                                       _%tl230298230962%_
                                       _%e230299230965%_
                                       _%hd230300230968%_
                                       _%tl230301230970%_
                                       _%e230302230973%_
                                       _%hd230303230976%_
                                       _%tl230304230978%_))))
                              (_%__match235147235148%_
                               _%e230281230917%_
                               _%hd230282230920%_
                               _%tl230283230922%_
                               _%e230284230925%_
                               _%hd230285230928%_
                               _%tl230286230930%_
                               _%e230287230933%_
                               _%hd230288230936%_
                               _%tl230289230938%_
                               _%e230290230941%_
                               _%hd230291230944%_
                               _%tl230292230946%_
                               _%e230293230949%_
                               _%hd230294230952%_
                               _%tl230295230954%_
                               _%e230296230957%_
                               _%hd230297230960%_
                               _%tl230298230962%_
                               _%e230299230965%_
                               _%hd230300230968%_
                               _%tl230301230970%_
                               _%e230302230973%_
                               _%hd230303230976%_
                               _%tl230304230978%_))
                          (_%__match234933234934%_
                           _%e230281230917%_
                           _%hd230282230920%_
                           _%tl230283230922%_
                           _%e230284230925%_
                           _%hd230285230928%_
                           _%tl230286230930%_
                           _%e230287230933%_
                           _%hd230288230936%_
                           _%tl230289230938%_
                           _%e230290230941%_
                           _%hd230291230944%_
                           _%tl230292230946%_
                           _%e230293230949%_
                           _%hd230294230952%_
                           _%tl230295230954%_
                           _%e230296230957%_
                           _%hd230297230960%_
                           _%tl230298230962%_
                           _%e230299230965%_
                           _%hd230300230968%_
                           _%tl230301230970%_
                           _%e230302230973%_
                           _%hd230303230976%_
                           _%tl230304230978%_
                           _%e230305230981%_
                           _%hd230306230984%_
                           _%tl230307230986%_))))
                   (_%__match234755234756%_
                    (lambda (_%e230237231104%_
                             _%hd230238231107%_
                             _%tl230239231109%_
                             _%e230240231112%_
                             _%hd230241231115%_
                             _%tl230242231117%_
                             _%e230243231120%_
                             _%hd230244231123%_
                             _%tl230245231125%_
                             _%e230246231128%_
                             _%hd230247231131%_
                             _%tl230248231133%_
                             _%e230249231136%_
                             _%hd230250231139%_
                             _%tl230251231141%_
                             _%e230252231144%_
                             _%hd230253231147%_
                             _%tl230254231149%_
                             _%e230255231152%_
                             _%hd230256231155%_
                             _%tl230257231157%_
                             _%e230258231160%_
                             _%hd230259231163%_
                             _%tl230260231165%_
                             _%e230261231168%_
                             _%hd230262231171%_
                             _%tl230263231173%_
                             _%e230264231176%_
                             _%hd230265231179%_
                             _%tl230266231181%_
                             _%__splice234654234655%_
                             _%target230267231184%_
                             _%tl230269231186%_)
                      (letrec ((_%loop230270231189%_
                                (lambda (_%hd230268231192%_
                                         _%args230274231194%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230268231192%_))
                                      (let ((_%e230271231196%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230268231192%_))))
                                        (let ((_%lp-tl230273231201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230271231196%_)))
                                              (_%lp-hd230272231199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230271231196%_))))
                                          (_%loop230270231189%_
                                           _%lp-tl230273231201%_
                                           (cons _%lp-hd230272231199%_
                                                 _%args230274231194%_))))
                                      (let ((_%args230275231204%_
                                             (reverse _%args230274231194%_)))
                                        (let ((_%g230233231206%_
                                               _%args230275231204%_)
                                              (_%g230234231207%_
                                               _%hd230265231179%_)
                                              (_%g230235231208%_
                                               _%hd230256231155%_)
                                              (_%g230236231209%_
                                               _%hd230247231131%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230236231209%_
                                                      'call-method))
                                                   (let ((__tmp235813
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230222%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230235231208%_
                                                      __tmp235813)))
                                              (_%__kont234652234653%_
                                               _%g230233231206%_
                                               _%g230234231207%_
                                               _%g230235231208%_
                                               _%g230236231209%_)
                                              (_%__match234943234944%_
                                               _%e230237231104%_
                                               _%hd230238231107%_
                                               _%tl230239231109%_
                                               _%e230240231112%_
                                               _%hd230241231115%_
                                               _%tl230242231117%_
                                               _%e230243231120%_
                                               _%hd230244231123%_
                                               _%tl230245231125%_
                                               _%e230246231128%_
                                               _%hd230247231131%_
                                               _%tl230248231133%_
                                               _%e230249231136%_
                                               _%hd230250231139%_
                                               _%tl230251231141%_
                                               _%e230252231144%_
                                               _%hd230253231147%_
                                               _%tl230254231149%_
                                               _%e230255231152%_
                                               _%hd230256231155%_
                                               _%tl230257231157%_
                                               _%e230258231160%_
                                               _%hd230259231163%_
                                               _%tl230260231165%_
                                               _%e230261231168%_
                                               _%hd230262231171%_
                                               _%tl230263231173%_
                                               _%e230264231176%_
                                               _%hd230265231179%_
                                               _%tl230266231181%_))))))))
                        (_%loop230270231189%_ _%target230267231184%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx234650234651%_))
                  (let ((_%e230237231104%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx234650234651%_))))
                    (let ((_%tl230239231109%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230237231104%_)))
                          (_%hd230238231107%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230237231104%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230239231109%_))
                          (let ((_%e230240231112%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230239231109%_))))
                            (let ((_%tl230242231117%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230240231112%_)))
                                  (_%hd230241231115%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230240231112%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd230241231115%_))
                                  (let ((_%e230243231120%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd230241231115%_))))
                                    (let ((_%tl230245231125%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e230243231120%_)))
                                          (_%hd230244231123%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e230243231120%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd230244231123%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd230244231123%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl230245231125%_))
                                                  (let ((_%e230246231128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl230245231125%_))))
                                                    (let ((_%tl230248231133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230246231128%_)))
                                                          (_%hd230247231131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230246231128%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl230248231133%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl230242231117%_))
                      (let ((_%e230249231136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl230242231117%_))))
                        (let ((_%tl230251231141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230249231136%_)))
                              (_%hd230250231139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230249231136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd230250231139%_))
                              (let ((_%e230252231144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd230250231139%_))))
                                (let ((_%tl230254231149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230252231144%_)))
                                      (_%hd230253231147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230252231144%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd230253231147%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd230253231147%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230254231149%_))
                                              (let ((_%e230255231152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230254231149%_))))
                                                (let ((_%tl230257231157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230255231152%_)))
                                                      (_%hd230256231155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230255231152%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230257231157%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl230251231141%_))
                                                          (let ((_%e230258231160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl230251231141%_))))
                    (let ((_%tl230260231165%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230258231160%_)))
                          (_%hd230259231163%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230258231160%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230259231163%_))
                          (let ((_%e230261231168%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230259231163%_))))
                            (let ((_%tl230263231173%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230261231168%_)))
                                  (_%hd230262231171%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230261231168%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd230262231171%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd230262231171%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230263231173%_))
                                          (let ((_%e230264231176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230263231173%_))))
                                            (let ((_%tl230266231181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230264231176%_)))
                                                  (_%hd230265231179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230264231176%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230266231181%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl230260231165%_))
                                                      (let ((_%__splice234654234655%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl230260231165%_
                        '0))))
                (let ((_%tl230269231186%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234654234655%_ '1)))
                      (_%target230267231184%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234654234655%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl230269231186%_))
                      (_%__match234755234756%_
                       _%e230237231104%_
                       _%hd230238231107%_
                       _%tl230239231109%_
                       _%e230240231112%_
                       _%hd230241231115%_
                       _%tl230242231117%_
                       _%e230243231120%_
                       _%hd230244231123%_
                       _%tl230245231125%_
                       _%e230246231128%_
                       _%hd230247231131%_
                       _%tl230248231133%_
                       _%e230249231136%_
                       _%hd230250231139%_
                       _%tl230251231141%_
                       _%e230252231144%_
                       _%hd230253231147%_
                       _%tl230254231149%_
                       _%e230255231152%_
                       _%hd230256231155%_
                       _%tl230257231157%_
                       _%e230258231160%_
                       _%hd230259231163%_
                       _%tl230260231165%_
                       _%e230261231168%_
                       _%hd230262231171%_
                       _%tl230263231173%_
                       _%e230264231176%_
                       _%hd230265231179%_
                       _%tl230266231181%_
                       _%__splice234654234655%_
                       _%target230267231184%_
                       _%tl230269231186%_)
                      (_%__match234943234944%_
                       _%e230237231104%_
                       _%hd230238231107%_
                       _%tl230239231109%_
                       _%e230240231112%_
                       _%hd230241231115%_
                       _%tl230242231117%_
                       _%e230243231120%_
                       _%hd230244231123%_
                       _%tl230245231125%_
                       _%e230246231128%_
                       _%hd230247231131%_
                       _%tl230248231133%_
                       _%e230249231136%_
                       _%hd230250231139%_
                       _%tl230251231141%_
                       _%e230252231144%_
                       _%hd230253231147%_
                       _%tl230254231149%_
                       _%e230255231152%_
                       _%hd230256231155%_
                       _%tl230257231157%_
                       _%e230258231160%_
                       _%hd230259231163%_
                       _%tl230260231165%_
                       _%e230261231168%_
                       _%hd230262231171%_
                       _%tl230263231173%_
                       _%e230264231176%_
                       _%hd230265231179%_
                       _%tl230266231181%_))))
              (_%__match234943234944%_
               _%e230237231104%_
               _%hd230238231107%_
               _%tl230239231109%_
               _%e230240231112%_
               _%hd230241231115%_
               _%tl230242231117%_
               _%e230243231120%_
               _%hd230244231123%_
               _%tl230245231125%_
               _%e230246231128%_
               _%hd230247231131%_
               _%tl230248231133%_
               _%e230249231136%_
               _%hd230250231139%_
               _%tl230251231141%_
               _%e230252231144%_
               _%hd230253231147%_
               _%tl230254231149%_
               _%e230255231152%_
               _%hd230256231155%_
               _%tl230257231157%_
               _%e230258231160%_
               _%hd230259231163%_
               _%tl230260231165%_
               _%e230261231168%_
               _%hd230262231171%_
               _%tl230263231173%_
               _%e230264231176%_
               _%hd230265231179%_
               _%tl230266231181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match235147235148%_
                                                   _%e230237231104%_
                                                   _%hd230238231107%_
                                                   _%tl230239231109%_
                                                   _%e230240231112%_
                                                   _%hd230241231115%_
                                                   _%tl230242231117%_
                                                   _%e230243231120%_
                                                   _%hd230244231123%_
                                                   _%tl230245231125%_
                                                   _%e230246231128%_
                                                   _%hd230247231131%_
                                                   _%tl230248231133%_
                                                   _%e230249231136%_
                                                   _%hd230250231139%_
                                                   _%tl230251231141%_
                                                   _%e230252231144%_
                                                   _%hd230253231147%_
                                                   _%tl230254231149%_
                                                   _%e230255231152%_
                                                   _%hd230256231155%_
                                                   _%tl230257231157%_
                                                   _%e230258231160%_
                                                   _%hd230259231163%_
                                                   _%tl230260231165%_))))
                                          (_%__match235147235148%_
                                           _%e230237231104%_
                                           _%hd230238231107%_
                                           _%tl230239231109%_
                                           _%e230240231112%_
                                           _%hd230241231115%_
                                           _%tl230242231117%_
                                           _%e230243231120%_
                                           _%hd230244231123%_
                                           _%tl230245231125%_
                                           _%e230246231128%_
                                           _%hd230247231131%_
                                           _%tl230248231133%_
                                           _%e230249231136%_
                                           _%hd230250231139%_
                                           _%tl230251231141%_
                                           _%e230252231144%_
                                           _%hd230253231147%_
                                           _%tl230254231149%_
                                           _%e230255231152%_
                                           _%hd230256231155%_
                                           _%tl230257231157%_
                                           _%e230258231160%_
                                           _%hd230259231163%_
                                           _%tl230260231165%_))
                                      (_%__match234823234824%_
                                       _%e230237231104%_
                                       _%hd230238231107%_
                                       _%tl230239231109%_
                                       _%e230240231112%_
                                       _%hd230241231115%_
                                       _%tl230242231117%_
                                       _%e230243231120%_
                                       _%hd230244231123%_
                                       _%tl230245231125%_
                                       _%e230246231128%_
                                       _%hd230247231131%_
                                       _%tl230248231133%_
                                       _%e230249231136%_
                                       _%hd230250231139%_
                                       _%tl230251231141%_
                                       _%e230252231144%_
                                       _%hd230253231147%_
                                       _%tl230254231149%_
                                       _%e230255231152%_
                                       _%hd230256231155%_
                                       _%tl230257231157%_
                                       _%e230258231160%_
                                       _%hd230259231163%_
                                       _%tl230260231165%_
                                       _%e230261231168%_
                                       _%hd230262231171%_
                                       _%tl230263231173%_))
                                  (_%__match235147235148%_
                                   _%e230237231104%_
                                   _%hd230238231107%_
                                   _%tl230239231109%_
                                   _%e230240231112%_
                                   _%hd230241231115%_
                                   _%tl230242231117%_
                                   _%e230243231120%_
                                   _%hd230244231123%_
                                   _%tl230245231125%_
                                   _%e230246231128%_
                                   _%hd230247231131%_
                                   _%tl230248231133%_
                                   _%e230249231136%_
                                   _%hd230250231139%_
                                   _%tl230251231141%_
                                   _%e230252231144%_
                                   _%hd230253231147%_
                                   _%tl230254231149%_
                                   _%e230255231152%_
                                   _%hd230256231155%_
                                   _%tl230257231157%_
                                   _%e230258231160%_
                                   _%hd230259231163%_
                                   _%tl230260231165%_))))
                          (_%__match235147235148%_
                           _%e230237231104%_
                           _%hd230238231107%_
                           _%tl230239231109%_
                           _%e230240231112%_
                           _%hd230241231115%_
                           _%tl230242231117%_
                           _%e230243231120%_
                           _%hd230244231123%_
                           _%tl230245231125%_
                           _%e230246231128%_
                           _%hd230247231131%_
                           _%tl230248231133%_
                           _%e230249231136%_
                           _%hd230250231139%_
                           _%tl230251231141%_
                           _%e230252231144%_
                           _%hd230253231147%_
                           _%tl230254231149%_
                           _%e230255231152%_
                           _%hd230256231155%_
                           _%tl230257231157%_
                           _%e230258231160%_
                           _%hd230259231163%_
                           _%tl230260231165%_))))
                  (_%__match235085235086%_
                   _%e230237231104%_
                   _%hd230238231107%_
                   _%tl230239231109%_
                   _%e230240231112%_
                   _%hd230241231115%_
                   _%tl230242231117%_
                   _%e230243231120%_
                   _%hd230244231123%_
                   _%tl230245231125%_
                   _%e230246231128%_
                   _%hd230247231131%_
                   _%tl230248231133%_
                   _%e230249231136%_
                   _%hd230250231139%_
                   _%tl230251231141%_
                   _%e230252231144%_
                   _%hd230253231147%_
                   _%tl230254231149%_
                   _%e230255231152%_
                   _%hd230256231155%_
                   _%tl230257231157%_))
              (_%__kont234668234669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont234668234669%_))
                                          (_%__kont234668234669%_))
                                      (_%__kont234668234669%_))))
                              (_%__kont234668234669%_))))
                      (_%__kont234668234669%_))
                  (_%__kont234668234669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234668234669%_))
                                              (_%__kont234668234669%_))
                                          (_%__kont234668234669%_))))
                                  (_%__kont234668234669%_))))
                          (_%__kont234668234669%_))))
                  (_%__kont234668234669%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self229165%_ _%stx229166%_)
        (letrec ((_%force-e229168%_
                  (lambda (_%target230220%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target230220%_ '()))
                                      '()))))))
          (let* ((_%__stx235152235153%_ _%stx229166%_)
                 (_%g229176229398%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235152235153%_)))))
            (let ((_%__kont235154235155%_
                   (lambda (_%g229178230166%_
                            _%g229179230167%_
                            _%g229180230168%_
                            _%g229181230169%_)
                     (let ((_%$method230214%_
                            (let ((__tmp235815
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229165%_ 'methods)))
                                  (__tmp235814
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229179230167%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235815 __tmp235814)))
                           (_%args230215%_
                            (map (lambda (_%g230202230204%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229165%_
                                      _%g230202230204%_)))
                                 (let ((__tmp235816
                                        (lambda (_%g230206230209%_
                                                 _%g230207230211%_)
                                          (cons _%g230206230209%_
                                                _%g230207230211%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235816
                                    '()
                                    _%g229178230166%_)))))
                       (let ((__tmp235817
                              (cons '%#call
                                    (cons (_%force-e229168%_ _%$method230214%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229165%_
                                                               'receiver))
                                                            '()))
                                                _%args230215%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235817 _%stx229166%_)))))
                  (_%__kont235158235159%_
                   (lambda (_%g229221230000%_
                            _%g229222230001%_
                            _%g229223230002%_
                            _%g229224230003%_
                            _%g229225230004%_)
                     (let ((_%$method230056%_
                            (let ((__tmp235819
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229165%_ 'methods)))
                                  (__tmp235818
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229222230001%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235819 __tmp235818)))
                           (_%args230057%_
                            (map (lambda (_%g230044230046%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229165%_
                                      _%g230044230046%_)))
                                 (let ((__tmp235820
                                        (lambda (_%g230048230051%_
                                                 _%g230049230053%_)
                                          (cons _%g230048230051%_
                                                _%g230049230053%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235820
                                    '()
                                    _%g229221230000%_)))))
                       (let ((__tmp235821
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e229168%_
                                                 _%$method230056%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229165%_ 'receiver))
                          '()))
              _%args230057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235821 _%stx229166%_)))))
                  (_%__kont235162235163%_
                   (lambda (_%g229274229833%_
                            _%g229275229834%_
                            _%g229276229835%_)
                     (let* ((_%$field229867%_
                             (let ((__tmp235823
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self229165%_ 'slots)))
                                   (__tmp235822
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g229274229833%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp235823 __tmp235822)))
                            (__tmp235824
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self229165%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field229867%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self229165%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp235824 _%stx229166%_))))
                  (_%__kont235164235165%_
                   (lambda (_%g229307229707%_
                            _%g229308229708%_
                            _%g229309229709%_
                            _%g229310229710%_)
                     (let ((_%$field229745%_
                            (let ((__tmp235826
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229165%_ 'slots)))
                                  (__tmp235825
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229308229708%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235826 __tmp235825)))
                           (_%expr229746%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self229165%_
                               _%g229307229707%_))))
                       (let ((__tmp235827
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self229165%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field229745%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229165%_ 'receiver))
                          '()))
              (cons _%expr229746%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235827 _%stx229166%_)))))
                  (_%__kont235166235167%_
                   (lambda (_%g229344229579%_ _%g229345229580%_)
                     (let* ((_%accessor229602%_
                             (let ((__tmp235828
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229345229580%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235828)))
                            (_%klass229604%_
                             (let ((__tmp235829
                                    (##structure-ref
                                     _%accessor229602%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229166%_
                                __tmp235829)))
                            (_%slot229606%_
                             (##structure-ref
                              _%accessor229602%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor229602%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229604%_
                                      _%slot229606%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229604%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx229166%_
                           (let* ((_%$field229612%_
                                   (let ((__tmp235830
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229165%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235830 _%slot229606%_)))
                                  (__tmp235831
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229165%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229165%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235831
                              _%stx229166%_))))))
                  (_%__kont235168235169%_
                   (lambda (_%g229367229474%_
                            _%g229368229475%_
                            _%g229369229476%_)
                     (let* ((_%mutator229504%_
                             (let ((__tmp235832
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229369229476%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235832)))
                            (_%klass229506%_
                             (let ((__tmp235833
                                    (##structure-ref
                                     _%mutator229504%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229166%_
                                __tmp235833)))
                            (_%slot229508%_
                             (##structure-ref
                              _%mutator229504%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr229510%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self229165%_
                                _%g229367229474%_))))
                       (if (if (##structure-ref
                                _%mutator229504%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229506%_
                                      _%slot229508%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229506%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp235834
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g229369229476%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g229368229475%_
                                                                '()))
                                                    (cons _%expr229510%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp235834 _%stx229166%_))
                           (let* ((_%$field229516%_
                                   (let ((__tmp235835
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229165%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235835 _%slot229508%_)))
                                  (__tmp235836
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229165%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229165%_ 'receiver))
                               '()))
                   (cons _%expr229510%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235836
                              _%stx229166%_))))))
                  (_%__kont235170235171%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self229165%_ _%stx229166%_)))))
              (let* ((_%__match235651235652%_
                      (lambda (_%e229370229410%_
                               _%hd229371229413%_
                               _%tl229372229415%_
                               _%e229373229418%_
                               _%hd229374229421%_
                               _%tl229375229423%_
                               _%e229376229426%_
                               _%hd229377229429%_
                               _%tl229378229431%_
                               _%e229379229434%_
                               _%hd229380229437%_
                               _%tl229381229439%_
                               _%e229382229442%_
                               _%hd229383229445%_
                               _%tl229384229447%_
                               _%e229385229450%_
                               _%hd229386229453%_
                               _%tl229387229455%_
                               _%e229388229458%_
                               _%hd229389229461%_
                               _%tl229390229463%_
                               _%e229391229466%_
                               _%hd229392229469%_
                               _%tl229393229471%_)
                        (let ((_%g229367229474%_ _%hd229392229469%_)
                              (_%g229368229475%_ _%hd229389229461%_)
                              (_%g229369229476%_ _%hd229380229437%_))
                          (if (and (let ((__tmp235837
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229165%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229368229475%_
                                      __tmp235837))
                                   (let ((__tmp235838
                                          (let ((__tmp235839
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229369229476%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235839))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235838
                                      'gxc#!mutator::t)))
                              (_%__kont235168235169%_
                               _%g229367229474%_
                               _%g229368229475%_
                               _%g229369229476%_)
                              (_%__kont235170235171%_)))))
                     (_%__match235649235650%_
                      (lambda (_%e229370229410%_
                               _%hd229371229413%_
                               _%tl229372229415%_
                               _%e229373229418%_
                               _%hd229374229421%_
                               _%tl229375229423%_
                               _%e229376229426%_
                               _%hd229377229429%_
                               _%tl229378229431%_
                               _%e229379229434%_
                               _%hd229380229437%_
                               _%tl229381229439%_
                               _%e229382229442%_
                               _%hd229383229445%_
                               _%tl229384229447%_
                               _%e229385229450%_
                               _%hd229386229453%_
                               _%tl229387229455%_
                               _%e229388229458%_
                               _%hd229389229461%_
                               _%tl229390229463%_
                               _%e229391229466%_
                               _%hd229392229469%_
                               _%tl229393229471%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229393229471%_))
                            (_%__match235651235652%_
                             _%e229370229410%_
                             _%hd229371229413%_
                             _%tl229372229415%_
                             _%e229373229418%_
                             _%hd229374229421%_
                             _%tl229375229423%_
                             _%e229376229426%_
                             _%hd229377229429%_
                             _%tl229378229431%_
                             _%e229379229434%_
                             _%hd229380229437%_
                             _%tl229381229439%_
                             _%e229382229442%_
                             _%hd229383229445%_
                             _%tl229384229447%_
                             _%e229385229450%_
                             _%hd229386229453%_
                             _%tl229387229455%_
                             _%e229388229458%_
                             _%hd229389229461%_
                             _%tl229390229463%_
                             _%e229391229466%_
                             _%hd229392229469%_
                             _%tl229393229471%_)
                            (_%__kont235170235171%_))))
                     (_%__match235643235644%_
                      (lambda (_%e229370229410%_
                               _%hd229371229413%_
                               _%tl229372229415%_
                               _%e229373229418%_
                               _%hd229374229421%_
                               _%tl229375229423%_
                               _%e229376229426%_
                               _%hd229377229429%_
                               _%tl229378229431%_
                               _%e229379229434%_
                               _%hd229380229437%_
                               _%tl229381229439%_
                               _%e229382229442%_
                               _%hd229383229445%_
                               _%tl229384229447%_
                               _%e229385229450%_
                               _%hd229386229453%_
                               _%tl229387229455%_
                               _%e229388229458%_
                               _%hd229389229461%_
                               _%tl229390229463%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229384229447%_))
                            (let ((_%e229391229466%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229384229447%_))))
                              (let ((_%tl229393229471%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229391229466%_)))
                                    (_%hd229392229469%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229391229466%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229393229471%_))
                                    (_%__match235651235652%_
                                     _%e229370229410%_
                                     _%hd229371229413%_
                                     _%tl229372229415%_
                                     _%e229373229418%_
                                     _%hd229374229421%_
                                     _%tl229375229423%_
                                     _%e229376229426%_
                                     _%hd229377229429%_
                                     _%tl229378229431%_
                                     _%e229379229434%_
                                     _%hd229380229437%_
                                     _%tl229381229439%_
                                     _%e229382229442%_
                                     _%hd229383229445%_
                                     _%tl229384229447%_
                                     _%e229385229450%_
                                     _%hd229386229453%_
                                     _%tl229387229455%_
                                     _%e229388229458%_
                                     _%hd229389229461%_
                                     _%tl229390229463%_
                                     _%e229391229466%_
                                     _%hd229392229469%_
                                     _%tl229393229471%_)
                                    (_%__kont235170235171%_))))
                            (_%__kont235170235171%_))))
                     (_%__match235589235590%_
                      (lambda (_%e229346229523%_
                               _%hd229347229526%_
                               _%tl229348229528%_
                               _%e229349229531%_
                               _%hd229350229534%_
                               _%tl229351229536%_
                               _%e229352229539%_
                               _%hd229353229542%_
                               _%tl229354229544%_
                               _%e229355229547%_
                               _%hd229356229550%_
                               _%tl229357229552%_
                               _%e229358229555%_
                               _%hd229359229558%_
                               _%tl229360229560%_
                               _%e229361229563%_
                               _%hd229362229566%_
                               _%tl229363229568%_
                               _%e229364229571%_
                               _%hd229365229574%_
                               _%tl229366229576%_)
                        (let ((_%g229344229579%_ _%hd229365229574%_)
                              (_%g229345229580%_ _%hd229356229550%_))
                          (if (and (let ((__tmp235840
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229165%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229344229579%_
                                      __tmp235840))
                                   (let ((__tmp235841
                                          (let ((__tmp235842
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229345229580%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235842))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235841
                                      'gxc#!accessor::t)))
                              (_%__kont235166235167%_
                               _%g229344229579%_
                               _%g229345229580%_)
                              (_%__kont235170235171%_)))))
                     (_%__match235587235588%_
                      (lambda (_%e229346229523%_
                               _%hd229347229526%_
                               _%tl229348229528%_
                               _%e229349229531%_
                               _%hd229350229534%_
                               _%tl229351229536%_
                               _%e229352229539%_
                               _%hd229353229542%_
                               _%tl229354229544%_
                               _%e229355229547%_
                               _%hd229356229550%_
                               _%tl229357229552%_
                               _%e229358229555%_
                               _%hd229359229558%_
                               _%tl229360229560%_
                               _%e229361229563%_
                               _%hd229362229566%_
                               _%tl229363229568%_
                               _%e229364229571%_
                               _%hd229365229574%_
                               _%tl229366229576%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229360229560%_))
                            (_%__match235589235590%_
                             _%e229346229523%_
                             _%hd229347229526%_
                             _%tl229348229528%_
                             _%e229349229531%_
                             _%hd229350229534%_
                             _%tl229351229536%_
                             _%e229352229539%_
                             _%hd229353229542%_
                             _%tl229354229544%_
                             _%e229355229547%_
                             _%hd229356229550%_
                             _%tl229357229552%_
                             _%e229358229555%_
                             _%hd229359229558%_
                             _%tl229360229560%_
                             _%e229361229563%_
                             _%hd229362229566%_
                             _%tl229363229568%_
                             _%e229364229571%_
                             _%hd229365229574%_
                             _%tl229366229576%_)
                            (_%__match235643235644%_
                             _%e229346229523%_
                             _%hd229347229526%_
                             _%tl229348229528%_
                             _%e229349229531%_
                             _%hd229350229534%_
                             _%tl229351229536%_
                             _%e229352229539%_
                             _%hd229353229542%_
                             _%tl229354229544%_
                             _%e229355229547%_
                             _%hd229356229550%_
                             _%tl229357229552%_
                             _%e229358229555%_
                             _%hd229359229558%_
                             _%tl229360229560%_
                             _%e229361229563%_
                             _%hd229362229566%_
                             _%tl229363229568%_
                             _%e229364229571%_
                             _%hd229365229574%_
                             _%tl229366229576%_))))
                     (_%__match235533235534%_
                      (lambda (_%e229311229619%_
                               _%hd229312229622%_
                               _%tl229313229624%_
                               _%e229314229627%_
                               _%hd229315229630%_
                               _%tl229316229632%_
                               _%e229317229635%_
                               _%hd229318229638%_
                               _%tl229319229640%_
                               _%e229320229643%_
                               _%hd229321229646%_
                               _%tl229322229648%_
                               _%e229323229651%_
                               _%hd229324229654%_
                               _%tl229325229656%_
                               _%e229326229659%_
                               _%hd229327229662%_
                               _%tl229328229664%_
                               _%e229329229667%_
                               _%hd229330229670%_
                               _%tl229331229672%_
                               _%e229332229675%_
                               _%hd229333229678%_
                               _%tl229334229680%_
                               _%e229335229683%_
                               _%hd229336229686%_
                               _%tl229337229688%_
                               _%e229338229691%_
                               _%hd229339229694%_
                               _%tl229340229696%_
                               _%e229341229699%_
                               _%hd229342229702%_
                               _%tl229343229704%_)
                        (let ((_%g229307229707%_ _%hd229342229702%_)
                              (_%g229308229708%_ _%hd229339229694%_)
                              (_%g229309229709%_ _%hd229330229670%_)
                              (_%g229310229710%_ _%hd229321229646%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229310229710%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229310229710%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp235843
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229165%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229309229709%_
                                      __tmp235843)))
                              (_%__kont235164235165%_
                               _%g229307229707%_
                               _%g229308229708%_
                               _%g229309229709%_
                               _%g229310229710%_)
                              (_%__kont235170235171%_)))))
                     (_%__match235525235526%_
                      (lambda (_%e229311229619%_
                               _%hd229312229622%_
                               _%tl229313229624%_
                               _%e229314229627%_
                               _%hd229315229630%_
                               _%tl229316229632%_
                               _%e229317229635%_
                               _%hd229318229638%_
                               _%tl229319229640%_
                               _%e229320229643%_
                               _%hd229321229646%_
                               _%tl229322229648%_
                               _%e229323229651%_
                               _%hd229324229654%_
                               _%tl229325229656%_
                               _%e229326229659%_
                               _%hd229327229662%_
                               _%tl229328229664%_
                               _%e229329229667%_
                               _%hd229330229670%_
                               _%tl229331229672%_
                               _%e229332229675%_
                               _%hd229333229678%_
                               _%tl229334229680%_
                               _%e229335229683%_
                               _%hd229336229686%_
                               _%tl229337229688%_
                               _%e229338229691%_
                               _%hd229339229694%_
                               _%tl229340229696%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229334229680%_))
                            (let ((_%e229341229699%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229334229680%_))))
                              (let ((_%tl229343229704%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229341229699%_)))
                                    (_%hd229342229702%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229341229699%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229343229704%_))
                                    (_%__match235533235534%_
                                     _%e229311229619%_
                                     _%hd229312229622%_
                                     _%tl229313229624%_
                                     _%e229314229627%_
                                     _%hd229315229630%_
                                     _%tl229316229632%_
                                     _%e229317229635%_
                                     _%hd229318229638%_
                                     _%tl229319229640%_
                                     _%e229320229643%_
                                     _%hd229321229646%_
                                     _%tl229322229648%_
                                     _%e229323229651%_
                                     _%hd229324229654%_
                                     _%tl229325229656%_
                                     _%e229326229659%_
                                     _%hd229327229662%_
                                     _%tl229328229664%_
                                     _%e229329229667%_
                                     _%hd229330229670%_
                                     _%tl229331229672%_
                                     _%e229332229675%_
                                     _%hd229333229678%_
                                     _%tl229334229680%_
                                     _%e229335229683%_
                                     _%hd229336229686%_
                                     _%tl229337229688%_
                                     _%e229338229691%_
                                     _%hd229339229694%_
                                     _%tl229340229696%_
                                     _%e229341229699%_
                                     _%hd229342229702%_
                                     _%tl229343229704%_)
                                    (_%__kont235170235171%_))))
                            (_%__match235649235650%_
                             _%e229311229619%_
                             _%hd229312229622%_
                             _%tl229313229624%_
                             _%e229314229627%_
                             _%hd229315229630%_
                             _%tl229316229632%_
                             _%e229317229635%_
                             _%hd229318229638%_
                             _%tl229319229640%_
                             _%e229320229643%_
                             _%hd229321229646%_
                             _%tl229322229648%_
                             _%e229323229651%_
                             _%hd229324229654%_
                             _%tl229325229656%_
                             _%e229326229659%_
                             _%hd229327229662%_
                             _%tl229328229664%_
                             _%e229329229667%_
                             _%hd229330229670%_
                             _%tl229331229672%_
                             _%e229332229675%_
                             _%hd229333229678%_
                             _%tl229334229680%_))))
                     (_%__match235447235448%_
                      (lambda (_%e229277229753%_
                               _%hd229278229756%_
                               _%tl229279229758%_
                               _%e229280229761%_
                               _%hd229281229764%_
                               _%tl229282229766%_
                               _%e229283229769%_
                               _%hd229284229772%_
                               _%tl229285229774%_
                               _%e229286229777%_
                               _%hd229287229780%_
                               _%tl229288229782%_
                               _%e229289229785%_
                               _%hd229290229788%_
                               _%tl229291229790%_
                               _%e229292229793%_
                               _%hd229293229796%_
                               _%tl229294229798%_
                               _%e229295229801%_
                               _%hd229296229804%_
                               _%tl229297229806%_
                               _%e229298229809%_
                               _%hd229299229812%_
                               _%tl229300229814%_
                               _%e229301229817%_
                               _%hd229302229820%_
                               _%tl229303229822%_
                               _%e229304229825%_
                               _%hd229305229828%_
                               _%tl229306229830%_)
                        (let ((_%g229274229833%_ _%hd229305229828%_)
                              (_%g229275229834%_ _%hd229296229804%_)
                              (_%g229276229835%_ _%hd229287229780%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229276229835%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229276229835%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp235844
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229165%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229275229834%_
                                      __tmp235844)))
                              (_%__kont235162235163%_
                               _%g229274229833%_
                               _%g229275229834%_
                               _%g229276229835%_)
                              (_%__match235651235652%_
                               _%e229277229753%_
                               _%hd229278229756%_
                               _%tl229279229758%_
                               _%e229280229761%_
                               _%hd229281229764%_
                               _%tl229282229766%_
                               _%e229283229769%_
                               _%hd229284229772%_
                               _%tl229285229774%_
                               _%e229286229777%_
                               _%hd229287229780%_
                               _%tl229288229782%_
                               _%e229289229785%_
                               _%hd229290229788%_
                               _%tl229291229790%_
                               _%e229292229793%_
                               _%hd229293229796%_
                               _%tl229294229798%_
                               _%e229295229801%_
                               _%hd229296229804%_
                               _%tl229297229806%_
                               _%e229298229809%_
                               _%hd229299229812%_
                               _%tl229300229814%_)))))
                     (_%__match235445235446%_
                      (lambda (_%e229277229753%_
                               _%hd229278229756%_
                               _%tl229279229758%_
                               _%e229280229761%_
                               _%hd229281229764%_
                               _%tl229282229766%_
                               _%e229283229769%_
                               _%hd229284229772%_
                               _%tl229285229774%_
                               _%e229286229777%_
                               _%hd229287229780%_
                               _%tl229288229782%_
                               _%e229289229785%_
                               _%hd229290229788%_
                               _%tl229291229790%_
                               _%e229292229793%_
                               _%hd229293229796%_
                               _%tl229294229798%_
                               _%e229295229801%_
                               _%hd229296229804%_
                               _%tl229297229806%_
                               _%e229298229809%_
                               _%hd229299229812%_
                               _%tl229300229814%_
                               _%e229301229817%_
                               _%hd229302229820%_
                               _%tl229303229822%_
                               _%e229304229825%_
                               _%hd229305229828%_
                               _%tl229306229830%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229300229814%_))
                            (_%__match235447235448%_
                             _%e229277229753%_
                             _%hd229278229756%_
                             _%tl229279229758%_
                             _%e229280229761%_
                             _%hd229281229764%_
                             _%tl229282229766%_
                             _%e229283229769%_
                             _%hd229284229772%_
                             _%tl229285229774%_
                             _%e229286229777%_
                             _%hd229287229780%_
                             _%tl229288229782%_
                             _%e229289229785%_
                             _%hd229290229788%_
                             _%tl229291229790%_
                             _%e229292229793%_
                             _%hd229293229796%_
                             _%tl229294229798%_
                             _%e229295229801%_
                             _%hd229296229804%_
                             _%tl229297229806%_
                             _%e229298229809%_
                             _%hd229299229812%_
                             _%tl229300229814%_
                             _%e229301229817%_
                             _%hd229302229820%_
                             _%tl229303229822%_
                             _%e229304229825%_
                             _%hd229305229828%_
                             _%tl229306229830%_)
                            (_%__match235525235526%_
                             _%e229277229753%_
                             _%hd229278229756%_
                             _%tl229279229758%_
                             _%e229280229761%_
                             _%hd229281229764%_
                             _%tl229282229766%_
                             _%e229283229769%_
                             _%hd229284229772%_
                             _%tl229285229774%_
                             _%e229286229777%_
                             _%hd229287229780%_
                             _%tl229288229782%_
                             _%e229289229785%_
                             _%hd229290229788%_
                             _%tl229291229790%_
                             _%e229292229793%_
                             _%hd229293229796%_
                             _%tl229294229798%_
                             _%e229295229801%_
                             _%hd229296229804%_
                             _%tl229297229806%_
                             _%e229298229809%_
                             _%hd229299229812%_
                             _%tl229300229814%_
                             _%e229301229817%_
                             _%hd229302229820%_
                             _%tl229303229822%_
                             _%e229304229825%_
                             _%hd229305229828%_
                             _%tl229306229830%_))))
                     (_%__match235435235436%_
                      (lambda (_%e229277229753%_
                               _%hd229278229756%_
                               _%tl229279229758%_
                               _%e229280229761%_
                               _%hd229281229764%_
                               _%tl229282229766%_
                               _%e229283229769%_
                               _%hd229284229772%_
                               _%tl229285229774%_
                               _%e229286229777%_
                               _%hd229287229780%_
                               _%tl229288229782%_
                               _%e229289229785%_
                               _%hd229290229788%_
                               _%tl229291229790%_
                               _%e229292229793%_
                               _%hd229293229796%_
                               _%tl229294229798%_
                               _%e229295229801%_
                               _%hd229296229804%_
                               _%tl229297229806%_
                               _%e229298229809%_
                               _%hd229299229812%_
                               _%tl229300229814%_
                               _%e229301229817%_
                               _%hd229302229820%_
                               _%tl229303229822%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd229302229820%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229303229822%_))
                                (let ((_%e229304229825%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229303229822%_))))
                                  (let ((_%tl229306229830%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229304229825%_)))
                                        (_%hd229305229828%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229304229825%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229306229830%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229300229814%_))
                                            (_%__match235447235448%_
                                             _%e229277229753%_
                                             _%hd229278229756%_
                                             _%tl229279229758%_
                                             _%e229280229761%_
                                             _%hd229281229764%_
                                             _%tl229282229766%_
                                             _%e229283229769%_
                                             _%hd229284229772%_
                                             _%tl229285229774%_
                                             _%e229286229777%_
                                             _%hd229287229780%_
                                             _%tl229288229782%_
                                             _%e229289229785%_
                                             _%hd229290229788%_
                                             _%tl229291229790%_
                                             _%e229292229793%_
                                             _%hd229293229796%_
                                             _%tl229294229798%_
                                             _%e229295229801%_
                                             _%hd229296229804%_
                                             _%tl229297229806%_
                                             _%e229298229809%_
                                             _%hd229299229812%_
                                             _%tl229300229814%_
                                             _%e229301229817%_
                                             _%hd229302229820%_
                                             _%tl229303229822%_
                                             _%e229304229825%_
                                             _%hd229305229828%_
                                             _%tl229306229830%_)
                                            (_%__match235525235526%_
                                             _%e229277229753%_
                                             _%hd229278229756%_
                                             _%tl229279229758%_
                                             _%e229280229761%_
                                             _%hd229281229764%_
                                             _%tl229282229766%_
                                             _%e229283229769%_
                                             _%hd229284229772%_
                                             _%tl229285229774%_
                                             _%e229286229777%_
                                             _%hd229287229780%_
                                             _%tl229288229782%_
                                             _%e229289229785%_
                                             _%hd229290229788%_
                                             _%tl229291229790%_
                                             _%e229292229793%_
                                             _%hd229293229796%_
                                             _%tl229294229798%_
                                             _%e229295229801%_
                                             _%hd229296229804%_
                                             _%tl229297229806%_
                                             _%e229298229809%_
                                             _%hd229299229812%_
                                             _%tl229300229814%_
                                             _%e229301229817%_
                                             _%hd229302229820%_
                                             _%tl229303229822%_
                                             _%e229304229825%_
                                             _%hd229305229828%_
                                             _%tl229306229830%_))
                                        (_%__match235649235650%_
                                         _%e229277229753%_
                                         _%hd229278229756%_
                                         _%tl229279229758%_
                                         _%e229280229761%_
                                         _%hd229281229764%_
                                         _%tl229282229766%_
                                         _%e229283229769%_
                                         _%hd229284229772%_
                                         _%tl229285229774%_
                                         _%e229286229777%_
                                         _%hd229287229780%_
                                         _%tl229288229782%_
                                         _%e229289229785%_
                                         _%hd229290229788%_
                                         _%tl229291229790%_
                                         _%e229292229793%_
                                         _%hd229293229796%_
                                         _%tl229294229798%_
                                         _%e229295229801%_
                                         _%hd229296229804%_
                                         _%tl229297229806%_
                                         _%e229298229809%_
                                         _%hd229299229812%_
                                         _%tl229300229814%_))))
                                (_%__match235649235650%_
                                 _%e229277229753%_
                                 _%hd229278229756%_
                                 _%tl229279229758%_
                                 _%e229280229761%_
                                 _%hd229281229764%_
                                 _%tl229282229766%_
                                 _%e229283229769%_
                                 _%hd229284229772%_
                                 _%tl229285229774%_
                                 _%e229286229777%_
                                 _%hd229287229780%_
                                 _%tl229288229782%_
                                 _%e229289229785%_
                                 _%hd229290229788%_
                                 _%tl229291229790%_
                                 _%e229292229793%_
                                 _%hd229293229796%_
                                 _%tl229294229798%_
                                 _%e229295229801%_
                                 _%hd229296229804%_
                                 _%tl229297229806%_
                                 _%e229298229809%_
                                 _%hd229299229812%_
                                 _%tl229300229814%_))
                            (_%__match235649235650%_
                             _%e229277229753%_
                             _%hd229278229756%_
                             _%tl229279229758%_
                             _%e229280229761%_
                             _%hd229281229764%_
                             _%tl229282229766%_
                             _%e229283229769%_
                             _%hd229284229772%_
                             _%tl229285229774%_
                             _%e229286229777%_
                             _%hd229287229780%_
                             _%tl229288229782%_
                             _%e229289229785%_
                             _%hd229290229788%_
                             _%tl229291229790%_
                             _%e229292229793%_
                             _%hd229293229796%_
                             _%tl229294229798%_
                             _%e229295229801%_
                             _%hd229296229804%_
                             _%tl229297229806%_
                             _%e229298229809%_
                             _%hd229299229812%_
                             _%tl229300229814%_))))
                     (_%__match235367235368%_
                      (lambda (_%e229226229874%_
                               _%hd229227229877%_
                               _%tl229228229879%_
                               _%e229229229882%_
                               _%hd229230229885%_
                               _%tl229231229887%_
                               _%e229232229890%_
                               _%hd229233229893%_
                               _%tl229234229895%_
                               _%e229235229898%_
                               _%hd229236229901%_
                               _%tl229237229903%_
                               _%e229238229906%_
                               _%hd229239229909%_
                               _%tl229240229911%_
                               _%e229241229914%_
                               _%hd229242229917%_
                               _%tl229243229919%_
                               _%e229244229922%_
                               _%hd229245229925%_
                               _%tl229246229927%_
                               _%e229247229930%_
                               _%hd229248229933%_
                               _%tl229249229935%_
                               _%e229250229938%_
                               _%hd229251229941%_
                               _%tl229252229943%_
                               _%e229253229946%_
                               _%hd229254229949%_
                               _%tl229255229951%_
                               _%e229256229954%_
                               _%hd229257229957%_
                               _%tl229258229959%_
                               _%e229259229962%_
                               _%hd229260229965%_
                               _%tl229261229967%_
                               _%e229262229970%_
                               _%hd229263229973%_
                               _%tl229264229975%_
                               _%__splice235160235161%_
                               _%target229265229978%_
                               _%tl229267229980%_)
                        (letrec ((_%loop229268229983%_
                                  (lambda (_%hd229266229986%_
                                           _%args229272229988%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229266229986%_))
                                        (let ((_%e229269229990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229266229986%_))))
                                          (let ((_%lp-tl229271229995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229269229990%_)))
                                                (_%lp-hd229270229993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229269229990%_))))
                                            (_%loop229268229983%_
                                             _%lp-tl229271229995%_
                                             (cons _%lp-hd229270229993%_
                                                   _%args229272229988%_))))
                                        (let ((_%args229273229998%_
                                               (reverse _%args229272229988%_)))
                                          (let ((_%g229221230000%_
                                                 _%args229273229998%_)
                                                (_%g229222230001%_
                                                 _%hd229263229973%_)
                                                (_%g229223230002%_
                                                 _%hd229254229949%_)
                                                (_%g229224230003%_
                                                 _%hd229245229925%_)
                                                (_%g229225230004%_
                                                 _%hd229236229901%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229225230004%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229224230003%_
                                                        'call-method))
                                                     (let ((__tmp235845
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229165%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229223230002%_
                                                        __tmp235845)))
                                                (_%__kont235158235159%_
                                                 _%g229221230000%_
                                                 _%g229222230001%_
                                                 _%g229223230002%_
                                                 _%g229224230003%_
                                                 _%g229225230004%_)
                                                (_%__kont235170235171%_))))))))
                          (_%loop229268229983%_ _%target229265229978%_ '()))))
                     (_%__match235325235326%_
                      (lambda (_%e229226229874%_
                               _%hd229227229877%_
                               _%tl229228229879%_
                               _%e229229229882%_
                               _%hd229230229885%_
                               _%tl229231229887%_
                               _%e229232229890%_
                               _%hd229233229893%_
                               _%tl229234229895%_
                               _%e229235229898%_
                               _%hd229236229901%_
                               _%tl229237229903%_
                               _%e229238229906%_
                               _%hd229239229909%_
                               _%tl229240229911%_
                               _%e229241229914%_
                               _%hd229242229917%_
                               _%tl229243229919%_
                               _%e229244229922%_
                               _%hd229245229925%_
                               _%tl229246229927%_
                               _%e229247229930%_
                               _%hd229248229933%_
                               _%tl229249229935%_
                               _%e229250229938%_
                               _%hd229251229941%_
                               _%tl229252229943%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd229251229941%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229252229943%_))
                                (let ((_%e229253229946%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229252229943%_))))
                                  (let ((_%tl229255229951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229253229946%_)))
                                        (_%hd229254229949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229253229946%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229255229951%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229249229935%_))
                                            (let ((_%e229256229954%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229249229935%_))))
                                              (let ((_%tl229258229959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229256229954%_)))
                                                    (_%hd229257229957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229256229954%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd229257229957%_))
                                                    (let ((_%e229259229962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229257229957%_))))
                                                      (let ((_%tl229261229967%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229259229962%_)))
                    (_%hd229260229965%_
                     (let () (declare (not safe)) (##car _%e229259229962%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd229260229965%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd229260229965%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229261229967%_))
                            (let ((_%e229262229970%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229261229967%_))))
                              (let ((_%tl229264229975%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229262229970%_)))
                                    (_%hd229263229973%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229262229970%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229264229975%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl229258229959%_))
                                        (let ((_%__splice235160235161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl229258229959%_
                                                  '0))))
                                          (let ((_%tl229267229980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235160235161%_
                                                    '1)))
                                                (_%target229265229978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235160235161%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl229267229980%_))
                                                (_%__match235367235368%_
                                                 _%e229226229874%_
                                                 _%hd229227229877%_
                                                 _%tl229228229879%_
                                                 _%e229229229882%_
                                                 _%hd229230229885%_
                                                 _%tl229231229887%_
                                                 _%e229232229890%_
                                                 _%hd229233229893%_
                                                 _%tl229234229895%_
                                                 _%e229235229898%_
                                                 _%hd229236229901%_
                                                 _%tl229237229903%_
                                                 _%e229238229906%_
                                                 _%hd229239229909%_
                                                 _%tl229240229911%_
                                                 _%e229241229914%_
                                                 _%hd229242229917%_
                                                 _%tl229243229919%_
                                                 _%e229244229922%_
                                                 _%hd229245229925%_
                                                 _%tl229246229927%_
                                                 _%e229247229930%_
                                                 _%hd229248229933%_
                                                 _%tl229249229935%_
                                                 _%e229250229938%_
                                                 _%hd229251229941%_
                                                 _%tl229252229943%_
                                                 _%e229253229946%_
                                                 _%hd229254229949%_
                                                 _%tl229255229951%_
                                                 _%e229256229954%_
                                                 _%hd229257229957%_
                                                 _%tl229258229959%_
                                                 _%e229259229962%_
                                                 _%hd229260229965%_
                                                 _%tl229261229967%_
                                                 _%e229262229970%_
                                                 _%hd229263229973%_
                                                 _%tl229264229975%_
                                                 _%__splice235160235161%_
                                                 _%target229265229978%_
                                                 _%tl229267229980%_)
                                                (_%__kont235170235171%_))))
                                        (_%__kont235170235171%_))
                                    (_%__kont235170235171%_))))
                            (_%__kont235170235171%_))
                        (_%__kont235170235171%_))
                    (_%__kont235170235171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235170235171%_))))
                                            (_%__match235649235650%_
                                             _%e229226229874%_
                                             _%hd229227229877%_
                                             _%tl229228229879%_
                                             _%e229229229882%_
                                             _%hd229230229885%_
                                             _%tl229231229887%_
                                             _%e229232229890%_
                                             _%hd229233229893%_
                                             _%tl229234229895%_
                                             _%e229235229898%_
                                             _%hd229236229901%_
                                             _%tl229237229903%_
                                             _%e229238229906%_
                                             _%hd229239229909%_
                                             _%tl229240229911%_
                                             _%e229241229914%_
                                             _%hd229242229917%_
                                             _%tl229243229919%_
                                             _%e229244229922%_
                                             _%hd229245229925%_
                                             _%tl229246229927%_
                                             _%e229247229930%_
                                             _%hd229248229933%_
                                             _%tl229249229935%_))
                                        (_%__match235649235650%_
                                         _%e229226229874%_
                                         _%hd229227229877%_
                                         _%tl229228229879%_
                                         _%e229229229882%_
                                         _%hd229230229885%_
                                         _%tl229231229887%_
                                         _%e229232229890%_
                                         _%hd229233229893%_
                                         _%tl229234229895%_
                                         _%e229235229898%_
                                         _%hd229236229901%_
                                         _%tl229237229903%_
                                         _%e229238229906%_
                                         _%hd229239229909%_
                                         _%tl229240229911%_
                                         _%e229241229914%_
                                         _%hd229242229917%_
                                         _%tl229243229919%_
                                         _%e229244229922%_
                                         _%hd229245229925%_
                                         _%tl229246229927%_
                                         _%e229247229930%_
                                         _%hd229248229933%_
                                         _%tl229249229935%_))))
                                (_%__match235649235650%_
                                 _%e229226229874%_
                                 _%hd229227229877%_
                                 _%tl229228229879%_
                                 _%e229229229882%_
                                 _%hd229230229885%_
                                 _%tl229231229887%_
                                 _%e229232229890%_
                                 _%hd229233229893%_
                                 _%tl229234229895%_
                                 _%e229235229898%_
                                 _%hd229236229901%_
                                 _%tl229237229903%_
                                 _%e229238229906%_
                                 _%hd229239229909%_
                                 _%tl229240229911%_
                                 _%e229241229914%_
                                 _%hd229242229917%_
                                 _%tl229243229919%_
                                 _%e229244229922%_
                                 _%hd229245229925%_
                                 _%tl229246229927%_
                                 _%e229247229930%_
                                 _%hd229248229933%_
                                 _%tl229249229935%_))
                            (_%__match235435235436%_
                             _%e229226229874%_
                             _%hd229227229877%_
                             _%tl229228229879%_
                             _%e229229229882%_
                             _%hd229230229885%_
                             _%tl229231229887%_
                             _%e229232229890%_
                             _%hd229233229893%_
                             _%tl229234229895%_
                             _%e229235229898%_
                             _%hd229236229901%_
                             _%tl229237229903%_
                             _%e229238229906%_
                             _%hd229239229909%_
                             _%tl229240229911%_
                             _%e229241229914%_
                             _%hd229242229917%_
                             _%tl229243229919%_
                             _%e229244229922%_
                             _%hd229245229925%_
                             _%tl229246229927%_
                             _%e229247229930%_
                             _%hd229248229933%_
                             _%tl229249229935%_
                             _%e229250229938%_
                             _%hd229251229941%_
                             _%tl229252229943%_))))
                     (_%__match235257235258%_
                      (lambda (_%e229182230064%_
                               _%hd229183230067%_
                               _%tl229184230069%_
                               _%e229185230072%_
                               _%hd229186230075%_
                               _%tl229187230077%_
                               _%e229188230080%_
                               _%hd229189230083%_
                               _%tl229190230085%_
                               _%e229191230088%_
                               _%hd229192230091%_
                               _%tl229193230093%_
                               _%e229194230096%_
                               _%hd229195230099%_
                               _%tl229196230101%_
                               _%e229197230104%_
                               _%hd229198230107%_
                               _%tl229199230109%_
                               _%e229200230112%_
                               _%hd229201230115%_
                               _%tl229202230117%_
                               _%e229203230120%_
                               _%hd229204230123%_
                               _%tl229205230125%_
                               _%e229206230128%_
                               _%hd229207230131%_
                               _%tl229208230133%_
                               _%e229209230136%_
                               _%hd229210230139%_
                               _%tl229211230141%_
                               _%__splice235156235157%_
                               _%target229212230144%_
                               _%tl229214230146%_)
                        (letrec ((_%loop229215230149%_
                                  (lambda (_%hd229213230152%_
                                           _%args229219230154%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229213230152%_))
                                        (let ((_%e229216230156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229213230152%_))))
                                          (let ((_%lp-tl229218230161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229216230156%_)))
                                                (_%lp-hd229217230159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229216230156%_))))
                                            (_%loop229215230149%_
                                             _%lp-tl229218230161%_
                                             (cons _%lp-hd229217230159%_
                                                   _%args229219230154%_))))
                                        (let ((_%args229220230164%_
                                               (reverse _%args229219230154%_)))
                                          (let ((_%g229178230166%_
                                                 _%args229220230164%_)
                                                (_%g229179230167%_
                                                 _%hd229210230139%_)
                                                (_%g229180230168%_
                                                 _%hd229201230115%_)
                                                (_%g229181230169%_
                                                 _%hd229192230091%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229181230169%_
                                                        'call-method))
                                                     (let ((__tmp235846
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229165%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229180230168%_
                                                        __tmp235846)))
                                                (_%__kont235154235155%_
                                                 _%g229178230166%_
                                                 _%g229179230167%_
                                                 _%g229180230168%_
                                                 _%g229181230169%_)
                                                (_%__match235445235446%_
                                                 _%e229182230064%_
                                                 _%hd229183230067%_
                                                 _%tl229184230069%_
                                                 _%e229185230072%_
                                                 _%hd229186230075%_
                                                 _%tl229187230077%_
                                                 _%e229188230080%_
                                                 _%hd229189230083%_
                                                 _%tl229190230085%_
                                                 _%e229191230088%_
                                                 _%hd229192230091%_
                                                 _%tl229193230093%_
                                                 _%e229194230096%_
                                                 _%hd229195230099%_
                                                 _%tl229196230101%_
                                                 _%e229197230104%_
                                                 _%hd229198230107%_
                                                 _%tl229199230109%_
                                                 _%e229200230112%_
                                                 _%hd229201230115%_
                                                 _%tl229202230117%_
                                                 _%e229203230120%_
                                                 _%hd229204230123%_
                                                 _%tl229205230125%_
                                                 _%e229206230128%_
                                                 _%hd229207230131%_
                                                 _%tl229208230133%_
                                                 _%e229209230136%_
                                                 _%hd229210230139%_
                                                 _%tl229211230141%_))))))))
                          (_%loop229215230149%_ _%target229212230144%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235152235153%_))
                    (let ((_%e229182230064%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235152235153%_))))
                      (let ((_%tl229184230069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229182230064%_)))
                            (_%hd229183230067%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229182230064%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229184230069%_))
                            (let ((_%e229185230072%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229184230069%_))))
                              (let ((_%tl229187230077%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229185230072%_)))
                                    (_%hd229186230075%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229185230072%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229186230075%_))
                                    (let ((_%e229188230080%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229186230075%_))))
                                      (let ((_%tl229190230085%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229188230080%_)))
                                            (_%hd229189230083%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229188230080%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229189230083%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229189230083%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229190230085%_))
                                                    (let ((_%e229191230088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229190230085%_))))
                                                      (let ((_%tl229193230093%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229191230088%_)))
                    (_%hd229192230091%_
                     (let () (declare (not safe)) (##car _%e229191230088%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229193230093%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229187230077%_))
                        (let ((_%e229194230096%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229187230077%_))))
                          (let ((_%tl229196230101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229194230096%_)))
                                (_%hd229195230099%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229194230096%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229195230099%_))
                                (let ((_%e229197230104%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229195230099%_))))
                                  (let ((_%tl229199230109%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229197230104%_)))
                                        (_%hd229198230107%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229197230104%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229198230107%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd229198230107%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229199230109%_))
                                                (let ((_%e229200230112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229199230109%_))))
                                                  (let ((_%tl229202230117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229200230112%_)))
                                                        (_%hd229201230115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229200230112%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229202230117%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229196230101%_))
                                                            (let ((_%e229203230120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229196230101%_))))
                      (let ((_%tl229205230125%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229203230120%_)))
                            (_%hd229204230123%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229203230120%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd229204230123%_))
                            (let ((_%e229206230128%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd229204230123%_))))
                              (let ((_%tl229208230133%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229206230128%_)))
                                    (_%hd229207230131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229206230128%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229207230131%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd229207230131%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229208230133%_))
                                            (let ((_%e229209230136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229208230133%_))))
                                              (let ((_%tl229211230141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229209230136%_)))
                                                    (_%hd229210230139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229209230136%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl229211230141%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl229205230125%_))
                                                        (let ((_%__splice235156235157%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl229205230125%_
                          '0))))
                  (let ((_%tl229214230146%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235156235157%_ '1)))
                        (_%target229212230144%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235156235157%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229214230146%_))
                        (_%__match235257235258%_
                         _%e229182230064%_
                         _%hd229183230067%_
                         _%tl229184230069%_
                         _%e229185230072%_
                         _%hd229186230075%_
                         _%tl229187230077%_
                         _%e229188230080%_
                         _%hd229189230083%_
                         _%tl229190230085%_
                         _%e229191230088%_
                         _%hd229192230091%_
                         _%tl229193230093%_
                         _%e229194230096%_
                         _%hd229195230099%_
                         _%tl229196230101%_
                         _%e229197230104%_
                         _%hd229198230107%_
                         _%tl229199230109%_
                         _%e229200230112%_
                         _%hd229201230115%_
                         _%tl229202230117%_
                         _%e229203230120%_
                         _%hd229204230123%_
                         _%tl229205230125%_
                         _%e229206230128%_
                         _%hd229207230131%_
                         _%tl229208230133%_
                         _%e229209230136%_
                         _%hd229210230139%_
                         _%tl229211230141%_
                         _%__splice235156235157%_
                         _%target229212230144%_
                         _%tl229214230146%_)
                        (_%__match235445235446%_
                         _%e229182230064%_
                         _%hd229183230067%_
                         _%tl229184230069%_
                         _%e229185230072%_
                         _%hd229186230075%_
                         _%tl229187230077%_
                         _%e229188230080%_
                         _%hd229189230083%_
                         _%tl229190230085%_
                         _%e229191230088%_
                         _%hd229192230091%_
                         _%tl229193230093%_
                         _%e229194230096%_
                         _%hd229195230099%_
                         _%tl229196230101%_
                         _%e229197230104%_
                         _%hd229198230107%_
                         _%tl229199230109%_
                         _%e229200230112%_
                         _%hd229201230115%_
                         _%tl229202230117%_
                         _%e229203230120%_
                         _%hd229204230123%_
                         _%tl229205230125%_
                         _%e229206230128%_
                         _%hd229207230131%_
                         _%tl229208230133%_
                         _%e229209230136%_
                         _%hd229210230139%_
                         _%tl229211230141%_))))
                (_%__match235445235446%_
                 _%e229182230064%_
                 _%hd229183230067%_
                 _%tl229184230069%_
                 _%e229185230072%_
                 _%hd229186230075%_
                 _%tl229187230077%_
                 _%e229188230080%_
                 _%hd229189230083%_
                 _%tl229190230085%_
                 _%e229191230088%_
                 _%hd229192230091%_
                 _%tl229193230093%_
                 _%e229194230096%_
                 _%hd229195230099%_
                 _%tl229196230101%_
                 _%e229197230104%_
                 _%hd229198230107%_
                 _%tl229199230109%_
                 _%e229200230112%_
                 _%hd229201230115%_
                 _%tl229202230117%_
                 _%e229203230120%_
                 _%hd229204230123%_
                 _%tl229205230125%_
                 _%e229206230128%_
                 _%hd229207230131%_
                 _%tl229208230133%_
                 _%e229209230136%_
                 _%hd229210230139%_
                 _%tl229211230141%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match235649235650%_
                                                     _%e229182230064%_
                                                     _%hd229183230067%_
                                                     _%tl229184230069%_
                                                     _%e229185230072%_
                                                     _%hd229186230075%_
                                                     _%tl229187230077%_
                                                     _%e229188230080%_
                                                     _%hd229189230083%_
                                                     _%tl229190230085%_
                                                     _%e229191230088%_
                                                     _%hd229192230091%_
                                                     _%tl229193230093%_
                                                     _%e229194230096%_
                                                     _%hd229195230099%_
                                                     _%tl229196230101%_
                                                     _%e229197230104%_
                                                     _%hd229198230107%_
                                                     _%tl229199230109%_
                                                     _%e229200230112%_
                                                     _%hd229201230115%_
                                                     _%tl229202230117%_
                                                     _%e229203230120%_
                                                     _%hd229204230123%_
                                                     _%tl229205230125%_))))
                                            (_%__match235649235650%_
                                             _%e229182230064%_
                                             _%hd229183230067%_
                                             _%tl229184230069%_
                                             _%e229185230072%_
                                             _%hd229186230075%_
                                             _%tl229187230077%_
                                             _%e229188230080%_
                                             _%hd229189230083%_
                                             _%tl229190230085%_
                                             _%e229191230088%_
                                             _%hd229192230091%_
                                             _%tl229193230093%_
                                             _%e229194230096%_
                                             _%hd229195230099%_
                                             _%tl229196230101%_
                                             _%e229197230104%_
                                             _%hd229198230107%_
                                             _%tl229199230109%_
                                             _%e229200230112%_
                                             _%hd229201230115%_
                                             _%tl229202230117%_
                                             _%e229203230120%_
                                             _%hd229204230123%_
                                             _%tl229205230125%_))
                                        (_%__match235325235326%_
                                         _%e229182230064%_
                                         _%hd229183230067%_
                                         _%tl229184230069%_
                                         _%e229185230072%_
                                         _%hd229186230075%_
                                         _%tl229187230077%_
                                         _%e229188230080%_
                                         _%hd229189230083%_
                                         _%tl229190230085%_
                                         _%e229191230088%_
                                         _%hd229192230091%_
                                         _%tl229193230093%_
                                         _%e229194230096%_
                                         _%hd229195230099%_
                                         _%tl229196230101%_
                                         _%e229197230104%_
                                         _%hd229198230107%_
                                         _%tl229199230109%_
                                         _%e229200230112%_
                                         _%hd229201230115%_
                                         _%tl229202230117%_
                                         _%e229203230120%_
                                         _%hd229204230123%_
                                         _%tl229205230125%_
                                         _%e229206230128%_
                                         _%hd229207230131%_
                                         _%tl229208230133%_))
                                    (_%__match235649235650%_
                                     _%e229182230064%_
                                     _%hd229183230067%_
                                     _%tl229184230069%_
                                     _%e229185230072%_
                                     _%hd229186230075%_
                                     _%tl229187230077%_
                                     _%e229188230080%_
                                     _%hd229189230083%_
                                     _%tl229190230085%_
                                     _%e229191230088%_
                                     _%hd229192230091%_
                                     _%tl229193230093%_
                                     _%e229194230096%_
                                     _%hd229195230099%_
                                     _%tl229196230101%_
                                     _%e229197230104%_
                                     _%hd229198230107%_
                                     _%tl229199230109%_
                                     _%e229200230112%_
                                     _%hd229201230115%_
                                     _%tl229202230117%_
                                     _%e229203230120%_
                                     _%hd229204230123%_
                                     _%tl229205230125%_))))
                            (_%__match235649235650%_
                             _%e229182230064%_
                             _%hd229183230067%_
                             _%tl229184230069%_
                             _%e229185230072%_
                             _%hd229186230075%_
                             _%tl229187230077%_
                             _%e229188230080%_
                             _%hd229189230083%_
                             _%tl229190230085%_
                             _%e229191230088%_
                             _%hd229192230091%_
                             _%tl229193230093%_
                             _%e229194230096%_
                             _%hd229195230099%_
                             _%tl229196230101%_
                             _%e229197230104%_
                             _%hd229198230107%_
                             _%tl229199230109%_
                             _%e229200230112%_
                             _%hd229201230115%_
                             _%tl229202230117%_
                             _%e229203230120%_
                             _%hd229204230123%_
                             _%tl229205230125%_))))
                    (_%__match235587235588%_
                     _%e229182230064%_
                     _%hd229183230067%_
                     _%tl229184230069%_
                     _%e229185230072%_
                     _%hd229186230075%_
                     _%tl229187230077%_
                     _%e229188230080%_
                     _%hd229189230083%_
                     _%tl229190230085%_
                     _%e229191230088%_
                     _%hd229192230091%_
                     _%tl229193230093%_
                     _%e229194230096%_
                     _%hd229195230099%_
                     _%tl229196230101%_
                     _%e229197230104%_
                     _%hd229198230107%_
                     _%tl229199230109%_
                     _%e229200230112%_
                     _%hd229201230115%_
                     _%tl229202230117%_))
                (_%__kont235170235171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont235170235171%_))
                                            (_%__kont235170235171%_))
                                        (_%__kont235170235171%_))))
                                (_%__kont235170235171%_))))
                        (_%__kont235170235171%_))
                    (_%__kont235170235171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235170235171%_))
                                                (_%__kont235170235171%_))
                                            (_%__kont235170235171%_))))
                                    (_%__kont235170235171%_))))
                            (_%__kont235170235171%_))))
                    (_%__kont235170235171%_))))))))))
