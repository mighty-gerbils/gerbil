(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1781697569)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp240648 (list gxc#::identity::t))
            (__tmp240647 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp240648
         '()
         __tmp240647
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args239445%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args239445%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp240649
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
        (__make-atomic-promise __tmp240649)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx239437%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self239440%_
                (let ((__obj240640
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj240640))
               (__tmp240650
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self239440%_ _%stx239437%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp240650
           gxc#current-compile-method
           _%self239440%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp240652 (list gxc#::false::t))
            (__tmp240651 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp240652
         '()
         __tmp240651
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args239434%_
        (apply make-instance gxc#::extract-receiver::t _%$args239434%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp240653
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
        (__make-atomic-promise __tmp240653)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx239426%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self239429%_
                (let ((__obj240642
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj240642))
               (__tmp240654
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self239429%_ _%stx239426%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp240654
           gxc#current-compile-method
           _%self239429%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp240656 (list gxc#::void::t))
            (__tmp240655 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp240656
         '(receiver methods slots)
         __tmp240655
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args239423%_
        (apply make-instance gxc#::collect-object-refs::t _%$args239423%_)))
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
      (let ((__tmp240657
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
        (__make-atomic-promise __tmp240657)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords239392%_
               _%$%receiver239387239393%_
               _%$%methods239388239394%_
               _%$%slots239389239395%_
               _%stx239396%_)
        (let* ((_%receiver239399%_
                (if (eq? _%$%receiver239387239393%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver239387239393%_))
               (_%methods239401%_
                (if (eq? _%$%methods239388239394%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods239388239394%_))
               (_%slots239403%_
                (if (eq? _%$%slots239389239395%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots239389239395%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self239405%_
                  (let ((__obj240644
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
                       __obj240644
                       _%receiver239399%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj240644
                       _%methods239401%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj240644
                       _%slots239403%_
                       '3
                       '#f
                       '#f))
                    __obj240644))
                 (__tmp240658
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self239405%_ _%stx239396%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp240658
             gxc#current-compile-method
             _%self239405%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords239412%_ . _%args239413%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords239412%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords239412%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords239412%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords239412%_
                  'slots:
                  absent-value))
               _%args239413%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args239390239419%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args239390239419%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp240660 (list gxc#::basic-xform-expression::t))
            (__tmp240659 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp240660
         '(receiver klass methods slots)
         __tmp240659
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args239383%_
        (apply make-instance gxc#::subst-object-refs::t _%$args239383%_)))
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
      (let ((__tmp240661
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
        (__make-atomic-promise __tmp240661)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords239349%_
               _%$%receiver239343239350%_
               _%$%klass239344239351%_
               _%$%methods239345239352%_
               _%$%slots239346239353%_
               _%stx239354%_)
        (let* ((_%receiver239357%_
                (if (eq? _%$%receiver239343239350%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver239343239350%_))
               (_%klass239359%_
                (if (eq? _%$%klass239344239351%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass239344239351%_))
               (_%methods239361%_
                (if (eq? _%$%methods239345239352%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods239345239352%_))
               (_%slots239363%_
                (if (eq? _%$%slots239346239353%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots239346239353%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self239365%_
                  (let ((__obj240646
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
                       __obj240646
                       _%receiver239357%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj240646
                       _%klass239359%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj240646
                       _%methods239361%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj240646
                       _%slots239363%_
                       '4
                       '#f
                       '#f))
                    __obj240646))
                 (__tmp240662
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self239365%_ _%stx239354%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp240662
             gxc#current-compile-method
             _%self239365%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords239372%_ . _%args239373%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords239372%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords239372%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords239372%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords239372%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords239372%_
                  'slots:
                  absent-value))
               _%args239373%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args239347239379%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args239347239379%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self236474%_ _%stx236475%_)
        (letrec ((_%generate-method-bind236477%_
                  (lambda (_%$klass239335%_
                           _%$method-table239336%_
                           _%id239337%_
                           _%$id239338%_)
                    (let ((_%$tmp239340%_
                           (let ((__tmp240663
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp240663))))
                      (cons (cons _%$id239338%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp239340%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table239336%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id239337%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp239340%_ '()))
                    (cons (cons '%#ref (cons _%$tmp239340%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id239337%_
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
                 (_%generate-slot-bind236478%_
                  (lambda (_%$klass239329%_ _%id239330%_ _%$id239331%_)
                    (let ((_%$tmp239333%_
                           (let ((__tmp240664
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp240664))))
                      (cons (cons _%$id239331%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp239333%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass239329%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id239330%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp239333%_ '()))
                        (cons (cons '%#ref (cons _%$tmp239333%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id239330%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl236479%_
                  (lambda (_%$klass239323%_
                           _%$method-table239324%_
                           _%methods-bind239325%_
                           _%slots-bind239326%_
                           _%specializer-impl239327%_)
                    (let ((__tmp240665
                           (cons '%#lambda
                                 (cons (cons _%$klass239323%_
                                             (cons _%$method-table239324%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind239326%_
                                                            _%methods-bind239325%_))
                                                         (cons _%specializer-impl239327%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp240665 _%stx236475%_))))
                 (_%generate-specializer-def236480%_
                  (lambda (_%id239319%_
                           _%specializer-id239320%_
                           _%specializer-impl239321%_)
                    (let ((__tmp240666
                           (cons '%#begin
                                 (cons _%stx236475%_
                                       (cons (let ((__tmp240667
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id239320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl239321%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp240667
                                                _%stx236475%_))
                                             (cons (let ((__tmp240668
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id239319%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id239320%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp240668
                                                      _%stx236475%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp240666 _%stx236475%_)))))
          (let* ((_%__stx239534239535%_ _%stx236475%_)
                 (_%$%g236483236503%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx239534239535%_)))))
            (let ((_%__kont239536239537%_
                   (lambda (_%$%g236485236547%_ _%$%g236486236548%_)
                     (let ((_%method-calls236567%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs236568%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty236569%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?236571%_
                                 (lambda ()
                                   (if (let ((__tmp240669
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls236567%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp240669))
                                       (let ((__tmp240670
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs236568%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp240670))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g236485236547%_))
                             (let* ((_%__stx239448239449%_ _%$%g236485236547%_)
                                    (_%$%g236955236973%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx239448239449%_)))))
                               (let ((_%__kont239450239451%_
                                      (lambda (_%$%g236957237009%_
                                               _%$%g236958237010%_
                                               _%$%g236959237011%_)
                                        (let ((_%receiver237031%_
                                               (let ((_%$e237028%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g236957237009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e237028%_
                                                     _%$e237028%_
                                                     _%$%g236959237011%_))))
                                          (for-each
                                           (lambda (_%$%g237032237034%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver237031%_
                                              _%method-calls236567%_
                                              _%slot-refs236568%_
                                              _%$%g237032237034%_))
                                           _%$%g236957237009%_)
                                          (if (_%no-specializer?236571%_)
                                              _%stx236475%_
                                              (let* ((_%specializer-id237043%_
                                                      (let* ((_%id237037%_
                                                              (let ((__tmp240671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g236486236548%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp240671 '"::specialize")))
                     (_%specializer-id237040%_
                      (let ((__tmp240672
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx236475%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id237037%_ __tmp240672))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id237040%_))
                _%specializer-id237040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass237045%_
                                                      (let ((__tmp240673
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp240673)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table237047%_
                                                      (let ((__tmp240674
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp240674)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods237049%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls236567%_)))
                                                     (_%$methods237053%_
                                                      (let ((__tmp240675
                                                             (lambda (_%id237051%_)
                                                               (let ((__tmp240676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id237051%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp240676)))))
                (declare (not safe))
                (##map __tmp240675 _%methods237049%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_237062%_
                                                      (let ((__tmp240677
                                                             (lambda (_%$%g237054237057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g237055237059%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls236567%_
                          _%$%g237054237057%_
                          _%$%g237055237059%_)))))
                (declare (not safe))
                (##for-each __tmp240677 _%methods237049%_ _%$methods237053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind237072%_
                                                      (let ((__tmp240678
                                                             (lambda (_%$%g237064237067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g237065237069%_)
                       (_%generate-method-bind236477%_
                        _%$klass237045%_
                        _%$method-table237047%_
                        _%$%g237064237067%_
                        _%$%g237065237069%_))))
                (declare (not safe))
                (##map __tmp240678 _%methods237049%_ _%$methods237053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots237074%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs236568%_)))
                                                     (_%$slots237078%_
                                                      (let ((__tmp240679
                                                             (lambda (_%id237076%_)
                                                               (let ((__tmp240680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id237076%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp240680)))))
                (declare (not safe))
                (##map __tmp240679 _%slots237074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_237087%_
                                                      (let ((__tmp240681
                                                             (lambda (_%$%g237079237082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g237080237084%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs236568%_
                          _%$%g237079237082%_
                          _%$%g237080237084%_)))))
                (declare (not safe))
                (##for-each __tmp240681 _%slots237074%_ _%$slots237078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind237096%_
                                                      (let ((__tmp240682
                                                             (lambda (_%$%g237088237091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g237089237093%_)
                       (_%generate-slot-bind236478%_
                        _%$klass237045%_
                        _%$%g237088237091%_
                        _%$%g237089237093%_))))
                (declare (not safe))
                (##map __tmp240682 _%slots237074%_ _%$slots237078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body237102%_
                                                      (map (lambda (_%$%g237097237099%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver237031%_
                                                              _%$klass237045%_
                                                              _%method-calls236567%_
                                                              _%slot-refs236568%_
                                                              _%$%g237097237099%_))
                                                           _%$%g236957237009%_))
                                                     (_%specializer-impl237104%_
                                                      (let ((__tmp240683
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g236959237011%_ _%$%g236958237010%_)
                                 _%specializer-body237102%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp240683 _%stx236475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl237106%_
                                                      (_%generate-specializer-impl236479%_
                                                       _%$klass237045%_
                                                       _%$method-table237047%_
                                                       _%methods-bind237072%_
                                                       _%slots-bind237096%_
                                                       _%specializer-impl237104%_)))
                                                (let ((__tmp240685
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g236486236548%_)))
                                                      (__tmp240684
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id237043%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp240685
                                                   '" => "
                                                   __tmp240684))
                                                (_%generate-specializer-def236480%_
                                                 _%$%g236486236548%_
                                                 _%specializer-id237043%_
                                                 _%specializer-impl237106%_))))))
                                     (_%__kont239452239453%_
                                      (lambda () _%stx236475%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx239448239449%_))
                                     (let ((_%$%e236960236985%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx239448239449%_))))
                                       (let ((_%$%tl236962236990%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e236960236985%_)))
                                             (_%$%hd236961236988%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e236960236985%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl236962236990%_))
                                             (let ((_%$%e236963236993%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl236962236990%_))))
                                               (let ((_%$%tl236965236998%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e236963236993%_)))
                                                     (_%$%hd236964236996%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e236963236993%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd236964236996%_))
                                                     (let ((_%$%e236966237001%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd236964236996%_))))
                                                       (let ((_%$%tl236968237006%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e236966237001%_)))
                     (_%$%hd236967237004%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e236966237001%_))))
                 (_%__kont239450239451%_
                  _%$%tl236965236998%_
                  _%$%tl236968237006%_
                  _%$%hd236967237004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont239452239453%_))))
                                             (_%__kont239452239453%_))))
                                     (_%__kont239452239453%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g236485236547%_))
                                 (let* ((_%$%g237113237132%_
                                         (lambda (_%$%g237114237129%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g237114237129%_))))
                                        (_%$%g237112237428%_
                                         (lambda (_%$%g237114237135%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g237114237135%_))
                                               (let ((_%$%e237116237137%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g237114237135%_))))
                                                 (let ((_%$%hd237117237140%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e237116237137%_)))
                                                       (_%$%tl237118237142%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e237116237137%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl237118237142%_))
                                                       (let ((_g240686_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl237118237142%_ '0))))
                 (begin
                   (let ((_g240687_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g240686_)
                                (##values-length _g240686_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g240687_ 2)))
                         (error "Context expects 2 values" _g240687_)))
                   (let ((_%$%target237119237145%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g240686_ 0)))
                         (_%$%tl237121237147%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g240686_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl237121237147%_))
                         (letrec ((_%$%loop237122237150%_
                                   (lambda (_%$%hd237120237153%_
                                            _%$%clause237126237155%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd237120237153%_))
                                         (let ((_%$%e237123237157%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd237120237153%_))))
                                           (let ((_%$%lp-hd237124237160%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e237123237157%_)))
                                                 (_%$%lp-tl237125237162%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e237123237157%_))))
                                             (_%$%loop237122237150%_
                                              _%$%lp-tl237125237162%_
                                              (cons _%$%lp-hd237124237160%_
                                                    _%$%clause237126237155%_))))
                                         (let ((_%$%clause237127237165%_
                                                (reverse _%$%clause237126237155%_)))
                                           (for-each
                                            (lambda (_%clause237181%_)
                                              (let* ((_%__stx239474239475%_
                                                      _%clause237181%_)
                                                     (_%$%g237184237199%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx239474239475%_)))))
                                                (let ((_%__kont239476239477%_
                                                       (lambda (_%$%g237186237227%_
                                                                _%$%g237187237228%_
                                                                _%$%g237188237229%_)
                                                         (let ((_%receiver237248%_
                                                                (let ((_%$e237245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g237186237227%_))))
                          (if _%$e237245%_ _%$e237245%_ _%$%g237188237229%_))))
                   (for-each
                    (lambda (_%$%g237249237251%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver237248%_
                       _%method-calls236567%_
                       _%slot-refs236568%_
                       _%$%g237249237251%_))
                    _%$%g237186237227%_))))
              (_%__kont239478239479%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx239474239475%_))
                                                      (let ((_%$%e237189237211%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx239474239475%_))))
                (let ((_%$%tl237191237216%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e237189237211%_)))
                      (_%$%hd237190237214%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e237189237211%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd237190237214%_))
                      (let ((_%$%e237192237219%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd237190237214%_))))
                        (let ((_%$%tl237194237224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e237192237219%_)))
                              (_%$%hd237193237222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e237192237219%_))))
                          (_%__kont239476239477%_
                           _%$%tl237191237216%_
                           _%$%tl237194237224%_
                           _%$%hd237193237222%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp240688
                                                   (lambda (_%$%g237256237259%_
                                                            _%$%g237257237261%_)
                                                     (cons _%$%g237256237259%_
                                                           _%$%g237257237261%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp240688
                                               '()
                                               _%$%clause237127237165%_)))
                                           (if (_%no-specializer?236571%_)
                                               _%stx236475%_
                                               (let* ((_%specializer-id237270%_
                                                       (let* ((_%id237264%_
                                                               (let ((__tmp240689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g236486236548%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp240689 '"::specialize")))
                      (_%specializer-id237267%_
                       (let ((__tmp240690
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx236475%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id237264%_ __tmp240690))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id237267%_))
                 _%specializer-id237267%_))
              (_%$klass237272%_
               (let ((__tmp240691
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp240691)))
              (_%$method-table237274%_
               (let ((__tmp240692
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp240692)))
              (_%methods237276%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls236567%_)))
              (_%$methods237280%_
               (let ((__tmp240693
                      (lambda (_%id237278%_)
                        (let ((__tmp240694 (gensym _%id237278%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp240694)))))
                 (declare (not safe))
                 (##map __tmp240693 _%methods237276%_)))
              (_%_237289%_
               (let ((__tmp240695
                      (lambda (_%$%g237281237284%_ _%$%g237282237286%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls236567%_
                           _%$%g237281237284%_
                           _%$%g237282237286%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp240695
                  _%methods237276%_
                  _%$methods237280%_)))
              (_%methods-bind237299%_
               (let ((__tmp240696
                      (lambda (_%$%g237291237294%_ _%$%g237292237296%_)
                        (_%generate-method-bind236477%_
                         _%$klass237272%_
                         _%$method-table237274%_
                         _%$%g237291237294%_
                         _%$%g237292237296%_))))
                 (declare (not safe))
                 (##map __tmp240696 _%methods237276%_ _%$methods237280%_)))
              (_%slots237301%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs236568%_)))
              (_%$slots237305%_
               (let ((__tmp240697
                      (lambda (_%id237303%_)
                        (let ((__tmp240698 (gensym _%id237303%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp240698)))))
                 (declare (not safe))
                 (##map __tmp240697 _%slots237301%_)))
              (_%_237314%_
               (let ((__tmp240699
                      (lambda (_%$%g237306237309%_ _%$%g237307237311%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs236568%_
                           _%$%g237306237309%_
                           _%$%g237307237311%_)))))
                 (declare (not safe))
                 (##for-each __tmp240699 _%slots237301%_ _%$slots237305%_)))
              (_%slots-bind237323%_
               (let ((__tmp240700
                      (lambda (_%$%g237315237318%_ _%$%g237316237320%_)
                        (_%generate-slot-bind236478%_
                         _%$klass237272%_
                         _%$%g237315237318%_
                         _%$%g237316237320%_))))
                 (declare (not safe))
                 (##map __tmp240700 _%slots237301%_ _%$slots237305%_)))
              (_%specializer-clauses237421%_
               (map (lambda (_%clause237325%_)
                      (let* ((_%__stx239494239495%_ _%clause237325%_)
                             (_%$%g237328237343%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx239494239495%_)))))
                        (let ((_%__kont239496239497%_
                               (lambda (_%$%g237330237371%_
                                        _%$%g237331237372%_
                                        _%$%g237332237373%_)
                                 (let* ((_%receiver237402%_
                                         (let ((_%$e237399%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g237330237371%_))))
                                           (if _%$e237399%_
                                               _%$e237399%_
                                               _%$%g237332237373%_)))
                                        (_%body237408%_
                                         (map (lambda (_%$%g237403237405%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver237402%_
                                                 _%$klass237272%_
                                                 _%method-calls236567%_
                                                 _%slot-refs236568%_
                                                 _%$%g237403237405%_))
                                              _%$%g237330237371%_)))
                                   (cons (cons _%$%g237332237373%_
                                               _%$%g237331237372%_)
                                         _%body237408%_))))
                              (_%__kont239498239499%_
                               (lambda () _%clause237325%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx239494239495%_))
                              (let ((_%$%e237333237355%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx239494239495%_))))
                                (let ((_%$%tl237335237360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e237333237355%_)))
                                      (_%$%hd237334237358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e237333237355%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd237334237358%_))
                                      (let ((_%$%e237336237363%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd237334237358%_))))
                                        (let ((_%$%tl237338237368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e237336237363%_)))
                                              (_%$%hd237337237366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e237336237363%_))))
                                          (_%__kont239496239497%_
                                           _%$%tl237335237360%_
                                           _%$%tl237338237368%_
                                           _%$%hd237337237366%_)))
                                      (_%__kont239498239499%_))))
                              (_%__kont239498239499%_)))))
                    (let ((__tmp240701
                           (lambda (_%$%g237413237416%_ _%$%g237414237418%_)
                             (cons _%$%g237413237416%_ _%$%g237414237418%_))))
                      (declare (not safe))
                      (foldr__0 __tmp240701 '() _%$%clause237127237165%_))))
              (_%specializer-impl237423%_
               (let ((__tmp240702
                      (cons '%#case-lambda _%specializer-clauses237421%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp240702 _%stx236475%_)))
              (_%specializer-impl237425%_
               (_%generate-specializer-impl236479%_
                _%$klass237272%_
                _%$method-table237274%_
                _%methods-bind237299%_
                _%slots-bind237323%_
                _%specializer-impl237423%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp240704
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g236486236548%_)))
                                                       (__tmp240703
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id237270%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp240704
                                                    '" => "
                                                    __tmp240703))
                                                 (_%generate-specializer-def236480%_
                                                  _%$%g236486236548%_
                                                  _%specializer-id237270%_
                                                  _%specializer-impl237425%_))))))))
                           (_%$%loop237122237150%_
                            _%$%target237119237145%_
                            '()))
                         (_%$%g237113237132%_ _%$%g237114237135%_)))))
               (_%$%g237113237132%_ _%$%g237114237135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g237113237132%_
                                                _%$%g237114237135%_)))))
                                   (_%$%g237112237428%_ _%$%g236485236547%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g236485236547%_))
                                     (let* ((_%$%g237432237462%_
                                             (lambda (_%$%g237433237459%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g237433237459%_))))
                                            (_%$%g237431238089%_
                                             (lambda (_%$%g237433237465%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g237433237465%_))
                                                   (let ((_%$%e237437237467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g237433237465%_))))
                                                     (let ((_%$%hd237438237470%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e237437237467%_)))
                                                           (_%$%tl237439237472%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e237437237467%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl237439237472%_))
                                                           (let ((_%$%e237440237475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl237439237472%_))))
                     (let ((_%$%hd237441237478%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e237440237475%_)))
                           (_%$%tl237442237480%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e237440237475%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd237441237478%_))
                           (let ((_%$%e237443237483%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd237441237478%_))))
                             (let ((_%$%hd237444237486%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e237443237483%_)))
                                   (_%$%tl237445237488%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e237443237483%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd237444237486%_))
                                   (let ((_%$%e237446237491%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd237444237486%_))))
                                     (let ((_%$%hd237447237494%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e237446237491%_)))
                                           (_%$%tl237448237496%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e237446237491%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd237447237494%_))
                                           (let ((_%$%e237449237499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd237447237494%_))))
                                             (let ((_%$%hd237450237502%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e237449237499%_)))
                                                   (_%$%tl237451237504%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e237449237499%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl237451237504%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl237448237496%_))
                                                       (let ((_%$%e237452237507%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl237448237496%_))))
                 (let ((_%$%hd237453237510%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e237452237507%_)))
                       (_%$%tl237454237512%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e237452237507%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl237454237512%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl237445237488%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl237442237480%_))
                               (let ((_%$%e237455237515%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl237442237480%_))))
                                 (let ((_%$%hd237456237518%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e237455237515%_)))
                                       (_%$%tl237457237520%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e237455237515%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl237457237520%_))
                                       (let ()
                                         (let* ((_%$%g237549237567%_
                                                 (lambda (_%$%g237550237564%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g237550237564%_))))
                                                (_%$%g237548237623%_
                                                 (lambda (_%$%g237550237570%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g237550237570%_))
                                                       (let ((_%$%e237554237572%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g237550237570%_))))
                 (let ((_%$%hd237555237575%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e237554237572%_)))
                       (_%$%tl237556237577%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e237554237572%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl237556237577%_))
                       (let ((_%$%e237557237580%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl237556237577%_))))
                         (let ((_%$%hd237558237583%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e237557237580%_)))
                               (_%$%tl237559237585%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e237557237580%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd237558237583%_))
                               (let ((_%$%e237560237588%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd237558237583%_))))
                                 (let ((_%$%hd237561237591%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e237560237588%_)))
                                       (_%$%tl237562237593%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e237560237588%_))))
                                   (let ((_%receiver237617%_
                                          (let ((_%$e237614%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl237559237585%_))))
                                            (if _%$e237614%_
                                                _%$e237614%_
                                                _%$%hd237561237591%_))))
                                     (for-each
                                      (lambda (_%$%g237618237620%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver237617%_
                                         _%method-calls236567%_
                                         _%slot-refs236568%_
                                         _%$%g237618237620%_))
                                      _%$%tl237559237585%_))))
                               (_%$%g237549237567%_ _%$%g237550237570%_))))
                       (_%$%g237549237567%_ _%$%g237550237570%_))))
               (_%$%g237549237567%_ _%$%g237550237570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g237548237623%_
                                            _%$%hd237453237510%_))
                                         (let* ((_%$%g237626237645%_
                                                 (lambda (_%$%g237627237642%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g237627237642%_))))
                                                (_%$%g237625237767%_
                                                 (lambda (_%$%g237627237648%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g237627237648%_))
                                                       (let ((_%$%e237629237650%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g237627237648%_))))
                 (let ((_%$%hd237630237653%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e237629237650%_)))
                       (_%$%tl237631237655%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e237629237650%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl237631237655%_))
                       (let ((_g240705_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl237631237655%_
                                 '0))))
                         (begin
                           (let ((_g240706_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g240705_)
                                        (##values-length _g240705_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g240706_ 2)))
                                 (error "Context expects 2 values" _g240706_)))
                           (let ((_%$%target237632237658%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g240705_ 0)))
                                 (_%$%tl237634237660%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g240705_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl237634237660%_))
                                 (letrec ((_%$%loop237635237663%_
                                           (lambda (_%$%hd237633237666%_
                                                    _%$%clause237639237668%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd237633237666%_))
                                                 (let ((_%$%e237636237670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd237633237666%_))))
                                                   (let ((_%$%lp-hd237637237673%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e237636237670%_)))
                                                         (_%$%lp-tl237638237675%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e237636237670%_))))
                                                     (_%$%loop237635237663%_
                                                      _%$%lp-tl237638237675%_
                                                      (cons _%$%lp-hd237637237673%_
                                                            _%$%clause237639237668%_))))
                                                 (let ((_%$%clause237640237678%_
                                                        (reverse _%$%clause237639237668%_)))
                                                   (for-each
                                                    (lambda (_%clause237693%_)
                                                      (let* ((_%$%g237695237710%_
                                                              (lambda (_%$%g237696237707%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g237696237707%_))))
                     (_%$%g237694237757%_
                      (lambda (_%$%g237696237713%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g237696237713%_))
                            (let ((_%$%e237700237715%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g237696237713%_))))
                              (let ((_%$%hd237701237718%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e237700237715%_)))
                                    (_%$%tl237702237720%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e237700237715%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd237701237718%_))
                                    (let ((_%$%e237703237723%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd237701237718%_))))
                                      (let ((_%$%hd237704237726%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e237703237723%_)))
                                            (_%$%tl237705237728%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e237703237723%_))))
                                        (let ((_%receiver237751%_
                                               (let ((_%$e237748%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl237702237720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e237748%_
                                                     _%$e237748%_
                                                     _%$%hd237704237726%_))))
                                          (for-each
                                           (lambda (_%$%g237752237754%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver237751%_
                                              _%method-calls236567%_
                                              _%slot-refs236568%_
                                              _%$%g237752237754%_))
                                           _%$%tl237702237720%_))))
                                    (_%$%g237695237710%_
                                     _%$%g237696237713%_))))
                            (_%$%g237695237710%_ _%$%g237696237713%_)))))
                (_%$%g237694237757%_ _%clause237693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp240707
                                                           (lambda (_%$%g237759237762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g237760237764%_)
                     (cons _%$%g237759237762%_ _%$%g237760237764%_))))
              (declare (not safe))
              (foldr__0 __tmp240707 '() _%$%clause237640237678%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop237635237663%_
                                    _%$%target237632237658%_
                                    '()))
                                 (_%$%g237626237645%_ _%$%g237627237648%_)))))
                       (_%$%g237626237645%_ _%$%g237627237648%_))))
               (_%$%g237626237645%_ _%$%g237627237648%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g237625237767%_
                                            _%$%hd237456237518%_))
                                         (if (_%no-specializer?236571%_)
                                             _%stx236475%_
                                             (let* ((_%specializer-id237776%_
                                                     (let* ((_%id237770%_
                                                             (let ((__tmp240708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g236486236548%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp240708 '"::specialize")))
                    (_%specializer-id237773%_
                     (let ((__tmp240709
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx236475%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id237770%_ __tmp240709))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id237773%_))
               _%specializer-id237773%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass237778%_
                                                     (let ((__tmp240710
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp240710)))
                                                    (_%$method-table237780%_
                                                     (let ((__tmp240711
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp240711)))
                                                    (_%methods237782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls236567%_)))
                                                    (_%$methods237786%_
                                                     (let ((__tmp240712
                                                            (lambda (_%id237784%_)
                                                              (let ((__tmp240713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id237784%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp240713)))))
               (declare (not safe))
               (##map __tmp240712 _%methods237782%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_237795%_
                                                     (let ((__tmp240714
                                                            (lambda (_%$%g237787237790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g237788237792%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls236567%_
                         _%$%g237787237790%_
                         _%$%g237788237792%_)))))
               (declare (not safe))
               (##for-each __tmp240714 _%methods237782%_ _%$methods237786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind237805%_
                                                     (let ((__tmp240715
                                                            (lambda (_%$%g237797237800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g237798237802%_)
                      (_%generate-method-bind236477%_
                       _%$klass237778%_
                       _%$method-table237780%_
                       _%$%g237797237800%_
                       _%$%g237798237802%_))))
               (declare (not safe))
               (##map __tmp240715 _%methods237782%_ _%$methods237786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots237807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs236568%_)))
                                                    (_%$slots237811%_
                                                     (let ((__tmp240716
                                                            (lambda (_%id237809%_)
                                                              (let ((__tmp240717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id237809%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp240717)))))
               (declare (not safe))
               (##map __tmp240716 _%slots237807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_237820%_
                                                     (let ((__tmp240718
                                                            (lambda (_%$%g237812237815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g237813237817%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs236568%_
                         _%$%g237812237815%_
                         _%$%g237813237817%_)))))
               (declare (not safe))
               (##for-each __tmp240718 _%slots237807%_ _%$slots237811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind237829%_
                                                     (let ((__tmp240719
                                                            (lambda (_%$%g237821237824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g237822237826%_)
                      (_%generate-slot-bind236478%_
                       _%$klass237778%_
                       _%$%g237821237824%_
                       _%$%g237822237826%_))))
               (declare (not safe))
               (##map __tmp240719 _%slots237807%_ _%$slots237811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr237921%_
                                                     (let* ((_%$%g237831237849%_
                                                             (lambda (_%$%g237832237846%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g237832237846%_))))
                    (_%$%g237830237918%_
                     (lambda (_%$%g237832237852%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g237832237852%_))
                           (let ((_%$%e237836237854%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g237832237852%_))))
                             (let ((_%$%hd237837237857%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e237836237854%_)))
                                   (_%$%tl237838237859%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e237836237854%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl237838237859%_))
                                   (let ((_%$%e237839237862%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl237838237859%_))))
                                     (let ((_%$%hd237840237865%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e237839237862%_)))
                                           (_%$%tl237841237867%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e237839237862%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd237840237865%_))
                                           (let ((_%$%e237842237870%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd237840237865%_))))
                                             (let ((_%$%hd237843237873%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e237842237870%_)))
                                                   (_%$%tl237844237875%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e237842237870%_))))
                                               (let* ((_%receiver237909%_
                                                       (let ((_%$e237906%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl237841237867%_))))
                 (if _%$e237906%_ _%$e237906%_ _%$%hd237843237873%_)))
              (_%body237915%_
               (map (lambda (_%$%g237910237912%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver237909%_
                       _%$klass237778%_
                       _%method-calls236567%_
                       _%slot-refs236568%_
                       _%$%g237910237912%_))
                    _%$%tl237841237867%_))
              (__tmp240720
               (cons '%#lambda
                     (cons (cons _%$%hd237843237873%_ _%$%tl237844237875%_)
                           _%body237915%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp240720
                                                  _%$%hd237453237510%_))))
                                           (_%$%g237831237849%_
                                            _%$%g237832237852%_))))
                                   (_%$%g237831237849%_ _%$%g237832237852%_))))
                           (_%$%g237831237849%_ _%$%g237832237852%_)))))
               (_%$%g237830237918%_ _%$%hd237453237510%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr238082%_
                                                     (let* ((_%$%g237923237942%_
                                                             (lambda (_%$%g237924237939%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g237924237939%_))))
                    (_%$%g237922238079%_
                     (lambda (_%$%g237924237945%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g237924237945%_))
                           (let ((_%$%e237926237947%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g237924237945%_))))
                             (let ((_%$%hd237927237950%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e237926237947%_)))
                                   (_%$%tl237928237952%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e237926237947%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl237928237952%_))
                                   (let ((_g240721_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl237928237952%_
                                             '0))))
                                     (begin
                                       (let ((_g240722_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g240721_)
                                                    (##values-length _g240721_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g240722_ 2)))
                                             (error "Context expects 2 values"
                                                    _g240722_)))
                                       (let ((_%$%target237929237955%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g240721_ 0)))
                                             (_%$%tl237931237957%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g240721_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl237931237957%_))
                                             (letrec ((_%$%loop237932237960%_
                                                       (lambda (_%$%hd237930237963%_
                                                                _%$%clause237936237965%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd237930237963%_))
                     (let ((_%$%e237933237967%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd237930237963%_))))
                       (let ((_%$%lp-hd237934237970%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e237933237967%_)))
                             (_%$%lp-tl237935237972%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e237933237967%_))))
                         (_%$%loop237932237960%_
                          _%$%lp-tl237935237972%_
                          (cons _%$%lp-hd237934237970%_
                                _%$%clause237936237965%_))))
                     (let* ((_%$%clause237937237975%_
                             (reverse _%$%clause237936237965%_))
                            (_%clauses238077%_
                             (map (lambda (_%clause237991%_)
                                    (let* ((_%__stx239514239515%_
                                            _%clause237991%_)
                                           (_%$%g237994238009%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx239514239515%_)))))
                                      (let ((_%__kont239516239517%_
                                             (lambda (_%$%g237996238037%_
                                                      _%$%g237997238038%_
                                                      _%$%g237998238039%_)
                                               (let* ((_%receiver238058%_
                                                       (let ((_%$e238055%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g237996238037%_))))
                 (if _%$e238055%_ _%$e238055%_ _%$%g237998238039%_)))
              (_%body238064%_
               (map (lambda (_%$%g238059238061%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver238058%_
                       _%$klass237778%_
                       _%method-calls236567%_
                       _%slot-refs236568%_
                       _%$%g238059238061%_))
                    _%$%g237996238037%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g237998238039%_
                                                             _%$%g237997238038%_)
                                                       _%body238064%_))))
                                            (_%__kont239518239519%_
                                             (lambda () _%clause237991%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx239514239515%_))
                                            (let ((_%$%e237999238021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx239514239515%_))))
                                              (let ((_%$%tl238001238026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e237999238021%_)))
                                                    (_%$%hd238000238024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e237999238021%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd238000238024%_))
                                                    (let ((_%$%e238002238029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd238000238024%_))))
                                                      (let ((_%$%tl238004238034%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e238002238029%_)))
                    (_%$%hd238003238032%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e238002238029%_))))
                (_%__kont239516239517%_
                 _%$%tl238001238026%_
                 _%$%tl238004238034%_
                 _%$%hd238003238032%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont239518239519%_))))
                                            (_%__kont239518239519%_)))))
                                  (let ((__tmp240723
                                         (lambda (_%$%g238069238072%_
                                                  _%$%g238070238074%_)
                                           (cons _%$%g238069238072%_
                                                 _%$%g238070238074%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp240723
                                     '()
                                     _%$%clause237937237975%_))))
                            (__tmp240724
                             (cons '%#case-lambda _%clauses238077%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp240724
                        _%$%hd237456237518%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop237932237960%_
                                                _%$%target237929237955%_
                                                '()))
                                             (_%$%g237923237942%_
                                              _%$%g237924237945%_)))))
                                   (_%$%g237923237942%_ _%$%g237924237945%_))))
                           (_%$%g237923237942%_ _%$%g237924237945%_)))))
               (_%$%g237922238079%_ _%$%hd237456237518%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl238084%_
                                                     (let ((__tmp240725
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd237450237502%_ '())
                                            (cons _%specializer-lambda-expr237921%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr238082%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp240725 _%stx236475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl238086%_
                                                     (_%generate-specializer-impl236479%_
                                                      _%$klass237778%_
                                                      _%$method-table237780%_
                                                      _%methods-bind237805%_
                                                      _%slots-bind237829%_
                                                      _%specializer-impl238084%_)))
                                               (let ((__tmp240727
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g236486236548%_)))
                                                     (__tmp240726
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id237776%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp240727
                                                  '" => "
                                                  __tmp240726))
                                               (_%generate-specializer-def236480%_
                                                _%$%g236486236548%_
                                                _%specializer-id237776%_
                                                _%specializer-impl238086%_))))
                                       (_%$%g237432237462%_
                                        _%$%g237433237465%_))))
                               (_%$%g237432237462%_ _%$%g237433237465%_))
                           (_%$%g237432237462%_ _%$%g237433237465%_))
                       (_%$%g237432237462%_ _%$%g237433237465%_))))
               (_%$%g237432237462%_ _%$%g237433237465%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g237432237462%_
                                                    _%$%g237433237465%_))))
                                           (_%$%g237432237462%_
                                            _%$%g237433237465%_))))
                                   (_%$%g237432237462%_ _%$%g237433237465%_))))
                           (_%$%g237432237462%_ _%$%g237433237465%_))))
                   (_%$%g237432237462%_ _%$%g237433237465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g237432237462%_
                                                    _%$%g237433237465%_)))))
                                       (_%$%g237431238089%_
                                        _%$%g236485236547%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g236485236547%_))
                                         (let* ((_%$%g238093238146%_
                                                 (lambda (_%$%g238094238143%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g238094238143%_))))
                                                (_%$%g238092239311%_
                                                 (lambda (_%$%g238094238149%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g238094238149%_))
                                                       (let ((_%$%e238100238151%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g238094238149%_))))
                 (let ((_%$%hd238101238154%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e238100238151%_)))
                       (_%$%tl238102238156%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e238100238151%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd238101238154%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd238101238154%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl238102238156%_))
                               (let ((_%$%e238103238159%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl238102238156%_))))
                                 (let ((_%$%hd238104238162%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e238103238159%_)))
                                       (_%$%tl238105238164%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e238103238159%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd238104238162%_))
                                       (let ((_%$%e238106238167%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd238104238162%_))))
                                         (let ((_%$%hd238107238170%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e238106238167%_)))
                                               (_%$%tl238108238172%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e238106238167%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd238107238170%_))
                                               (let ((_%$%e238109238175%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd238107238170%_))))
                                                 (let ((_%$%hd238110238178%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e238109238175%_)))
                                                       (_%$%tl238111238180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e238109238175%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd238110238178%_))
                                                       (let ((_%$%e238112238183%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd238110238178%_))))
                 (let ((_%$%hd238113238186%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e238112238183%_)))
                       (_%$%tl238114238188%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e238112238183%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl238114238188%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl238111238180%_))
                           (let ((_%$%e238115238191%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl238111238180%_))))
                             (let ((_%$%hd238116238194%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e238115238191%_)))
                                   (_%$%tl238117238196%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e238115238191%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd238116238194%_))
                                   (let ((_%$%e238118238199%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd238116238194%_))))
                                     (let ((_%$%hd238119238202%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e238118238199%_)))
                                           (_%$%tl238120238204%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e238118238199%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd238119238202%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd238119238202%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl238120238204%_))
                                                   (let ((_%$%e238121238207%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl238120238204%_))))
                                                     (let ((_%$%hd238122238210%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e238121238207%_)))
                                                           (_%$%tl238123238212%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e238121238207%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd238122238210%_))
                                                           (let ((_%$%e238124238215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd238122238210%_))))
                     (let ((_%$%hd238125238218%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e238124238215%_)))
                           (_%$%tl238126238220%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e238124238215%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd238125238218%_))
                           (let ((_%$%e238127238223%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd238125238218%_))))
                             (let ((_%$%hd238128238226%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e238127238223%_)))
                                   (_%$%tl238129238228%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e238127238223%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd238128238226%_))
                                   (let ((_%$%e238130238231%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd238128238226%_))))
                                     (let ((_%$%hd238131238234%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e238130238231%_)))
                                           (_%$%tl238132238236%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e238130238231%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl238132238236%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl238129238228%_))
                                               (let ((_%$%e238133238239%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl238129238228%_))))
                                                 (let ((_%$%hd238134238242%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e238133238239%_)))
                                                       (_%$%tl238135238244%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e238133238239%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl238135238244%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl238126238220%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl238123238212%_))
                       (let ((_%$%e238136238247%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl238123238212%_))))
                         (let ((_%$%hd238137238250%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e238136238247%_)))
                               (_%$%tl238138238252%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e238136238247%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl238138238252%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl238117238196%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl238108238172%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl238105238164%_))
                                           (let ((_%$%e238139238255%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl238105238164%_))))
                                             (let ((_%$%hd238140238258%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e238139238255%_)))
                                                   (_%$%tl238141238260%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e238139238255%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl238141238260%_))
                                                   (let* ((_%$%g238307238369%_
                                                           (lambda (_%$%g238308238366%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g238308238366%_))))
                  (_%$%g238306239308%_
                   (lambda (_%$%g238308238372%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g238308238372%_))
                         (let ((_%$%e238314238374%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g238308238372%_))))
                           (let ((_%$%hd238315238377%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e238314238374%_)))
                                 (_%$%tl238316238379%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e238314238374%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd238315238377%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd238315238377%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl238316238379%_))
                                         (let ((_%$%e238317238382%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl238316238379%_))))
                                           (let ((_%$%hd238318238385%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e238317238382%_)))
                                                 (_%$%tl238319238387%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e238317238382%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl238319238387%_))
                                                 (let ((_%$%e238320238390%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl238319238387%_))))
                                                   (let ((_%$%hd238321238393%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e238320238390%_)))
                                                         (_%$%tl238322238395%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e238320238390%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd238321238393%_))
                                                         (let ((_%$%e238323238398%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd238321238393%_))))
                   (let ((_%$%hd238324238401%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e238323238398%_)))
                         (_%$%tl238325238403%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e238323238398%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd238324238401%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd238324238401%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl238325238403%_))
                                 (let ((_%$%e238326238406%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl238325238403%_))))
                                   (let ((_%$%hd238327238409%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e238326238406%_)))
                                         (_%$%tl238328238411%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e238326238406%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd238327238409%_))
                                         (let ((_%$%e238329238414%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd238327238409%_))))
                                           (let ((_%$%hd238330238417%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e238329238414%_)))
                                                 (_%$%tl238331238419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e238329238414%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd238330238417%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd238330238417%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl238331238419%_))
                                                         (let ((_%$%e238332238422%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl238331238419%_))))
                   (let ((_%$%hd238333238425%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e238332238422%_)))
                         (_%$%tl238334238427%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e238332238422%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl238334238427%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl238328238411%_))
                             (let ((_%$%e238335238430%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl238328238411%_))))
                               (let ((_%$%hd238336238433%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e238335238430%_)))
                                     (_%$%tl238337238435%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e238335238430%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd238336238433%_))
                                     (let ((_%$%e238338238438%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd238336238433%_))))
                                       (let ((_%$%hd238339238441%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e238338238438%_)))
                                             (_%$%tl238340238443%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e238338238438%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd238339238441%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd238339238441%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl238340238443%_))
                                                     (let ((_%$%e238341238446%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl238340238443%_))))
                                                       (let ((_%$%hd238342238449%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e238341238446%_)))
                     (_%$%tl238343238451%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e238341238446%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl238343238451%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl238337238435%_))
                         (let ((_%$%e238344238454%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl238337238435%_))))
                           (let ((_%$%hd238345238457%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e238344238454%_)))
                                 (_%$%tl238346238459%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e238344238454%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd238345238457%_))
                                 (let ((_%$%e238347238462%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd238345238457%_))))
                                   (let ((_%$%hd238348238465%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e238347238462%_)))
                                         (_%$%tl238349238467%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e238347238462%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd238348238465%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd238348238465%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl238349238467%_))
                                                 (let ((_%$%e238350238470%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl238349238467%_))))
                                                   (let ((_%$%hd238351238473%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e238350238470%_)))
                                                         (_%$%tl238352238475%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e238350238470%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl238352238475%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl238346238459%_))
                     (if (let ((__tmp240728
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl238346238459%_))))
                           (declare (not safe))
                           (##fx>= __tmp240728 '1))
                         (let ((_g240729_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl238346238459%_
                                   '1))))
                           (begin
                             (let ((_g240730_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g240729_)
                                          (##values-length _g240729_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g240730_ 2)))
                                   (error "Context expects 2 values"
                                          _g240730_)))
                             (let ((_%$%target238353238478%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g240729_ 0)))
                                   (_%$%tl238355238480%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g240729_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl238355238480%_))
                                   (let ((_%$%e238362238483%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl238355238480%_))))
                                     (let ((_%$%hd238363238486%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e238362238483%_)))
                                           (_%$%tl238364238488%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e238362238483%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl238364238488%_))
                                           (letrec ((_%$%loop238356238491%_
                                                     (lambda (_%$%hd238354238494%_
                                                              _%$%kw-ref238360238496%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd238354238494%_))
                                                           (let ((_%$%e238357238498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd238354238494%_))))
                     (let ((_%$%lp-hd238358238501%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e238357238498%_)))
                           (_%$%lp-tl238359238503%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e238357238498%_))))
                       (_%$%loop238356238491%_
                        _%$%lp-tl238359238503%_
                        (cons _%$%lp-hd238358238501%_
                              _%$%kw-ref238360238496%_))))
                   (let ((_%$%kw-ref238361238506%_
                          (reverse _%$%kw-ref238360238496%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl238322238395%_))
                         (let* ((_%kw-count238563%_
                                 (length (let ((__tmp240731
                                                (lambda (_%$%g238555238558%_
                                                         _%$%g238556238560%_)
                                                  (cons _%$%g238555238558%_
                                                        _%$%g238556238560%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp240731
                                            '()
                                            _%$%kw-ref238361238506%_))))
                                (_%self-index238565%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count238563%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd238134238242%_))
                               (let* ((_%$%g238569238583%_
                                       (lambda (_%$%g238570238580%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g238570238580%_))))
                                      (_%$%g238568238706%_
                                       (lambda (_%$%g238570238586%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g238570238586%_))
                                             (let ((_%$%e238573238588%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g238570238586%_))))
                                               (let ((_%$%hd238574238591%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e238573238588%_)))
                                                     (_%$%tl238575238593%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e238573238588%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl238575238593%_))
                                                     (let ((_%$%e238576238596%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl238575238593%_))))
                                                       (let ((_%$%hd238577238599%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e238576238596%_)))
                     (_%$%tl238578238601%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e238576238596%_))))
                 (let* ((_%self238622%_
                         (list-ref _%$%hd238577238599%_ _%self-index238565%_))
                        (_%receiver238627%_
                         (let ((_%$e238624%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl238578238601%_))))
                           (if _%$e238624%_ _%$e238624%_ _%self238622%_))))
                   (for-each
                    (lambda (_%$%g238629238631%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver238627%_
                       _%method-calls236567%_
                       _%slot-refs236568%_
                       _%$%g238629238631%_))
                    _%$%tl238578238601%_)
                   (if (_%no-specializer?236571%_)
                       _%stx236475%_
                       (let* ((_%specializer-id238640%_
                               (let* ((_%id238634%_
                                       (let ((__tmp240732
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g236486236548%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp240732
                                          '"::specialize")))
                                      (_%specializer-id238637%_
                                       (let ((__tmp240733
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx236475%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id238634%_
                                          __tmp240733))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id238637%_))
                                 _%specializer-id238637%_))
                              (_%$klass238642%_
                               (let ((__tmp240734
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp240734)))
                              (_%$method-table238644%_
                               (let ((__tmp240735
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp240735)))
                              (_%methods238646%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls236567%_)))
                              (_%$methods238650%_
                               (let ((__tmp240736
                                      (lambda (_%id238648%_)
                                        (let ((__tmp240737
                                               (gensym _%id238648%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp240737)))))
                                 (declare (not safe))
                                 (##map __tmp240736 _%methods238646%_)))
                              (_%_238659%_
                               (let ((__tmp240738
                                      (lambda (_%$%g238651238654%_
                                               _%$%g238652238656%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls236567%_
                                           _%$%g238651238654%_
                                           _%$%g238652238656%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp240738
                                  _%methods238646%_
                                  _%$methods238650%_)))
                              (_%methods-bind238669%_
                               (let ((__tmp240739
                                      (lambda (_%$%g238661238664%_
                                               _%$%g238662238666%_)
                                        (_%generate-method-bind236477%_
                                         _%$klass238642%_
                                         _%$method-table238644%_
                                         _%$%g238661238664%_
                                         _%$%g238662238666%_))))
                                 (declare (not safe))
                                 (##map __tmp240739
                                        _%methods238646%_
                                        _%$methods238650%_)))
                              (_%slots238671%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs236568%_)))
                              (_%$slots238675%_
                               (let ((__tmp240740
                                      (lambda (_%id238673%_)
                                        (let ((__tmp240741
                                               (gensym _%id238673%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp240741)))))
                                 (declare (not safe))
                                 (##map __tmp240740 _%slots238671%_)))
                              (_%_238684%_
                               (let ((__tmp240742
                                      (lambda (_%$%g238676238679%_
                                               _%$%g238677238681%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs236568%_
                                           _%$%g238676238679%_
                                           _%$%g238677238681%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp240742
                                  _%slots238671%_
                                  _%$slots238675%_)))
                              (_%slots-bind238693%_
                               (let ((__tmp240743
                                      (lambda (_%$%g238685238688%_
                                               _%$%g238686238690%_)
                                        (_%generate-slot-bind236478%_
                                         _%$klass238642%_
                                         _%$%g238685238688%_
                                         _%$%g238686238690%_))))
                                 (declare (not safe))
                                 (##map __tmp240743
                                        _%slots238671%_
                                        _%$slots238675%_)))
                              (_%specializer-impl238701%_
                               (let* ((_%specializer-body238699%_
                                       (map (lambda (_%$%g238694238696%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver238627%_
                                               _%$klass238642%_
                                               _%method-calls236567%_
                                               _%slot-refs236568%_
                                               _%$%g238694238696%_))
                                            _%$%tl238578238601%_))
                                      (__tmp240744
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd238113238186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd238131238234%_
                                                           '())
                                                     (cons (let ((__tmp240745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd238577238599%_
                                      _%specializer-body238699%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp240745 _%$%hd238134238242%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd238137238250%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd238140238258%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp240744
                                  _%stx236475%_)))
                              (_%specializer-impl238703%_
                               (_%generate-specializer-impl236479%_
                                _%$klass238642%_
                                _%$method-table238644%_
                                _%methods-bind238669%_
                                _%slots-bind238693%_
                                _%specializer-impl238701%_)))
                         (let ((__tmp240747
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g236486236548%_)))
                               (__tmp240746
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id238640%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp240747
                            '" => "
                            __tmp240746))
                         (_%generate-specializer-def236480%_
                          _%$%g236486236548%_
                          _%specializer-id238640%_
                          _%specializer-impl238703%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g238569238583%_
                                                      _%$%g238570238586%_))))
                                             (_%$%g238569238583%_
                                              _%$%g238570238586%_)))))
                                 (_%$%g238568238706%_ _%$%hd238134238242%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd238134238242%_))
                                   (let* ((_%$%g238710238740%_
                                           (lambda (_%$%g238711238737%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g238711238737%_))))
                                          (_%$%g238709239304%_
                                           (lambda (_%$%g238711238743%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g238711238743%_))
                                                 (let ((_%$%e238715238745%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g238711238743%_))))
                                                   (let ((_%$%hd238716238748%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e238715238745%_)))
                                                         (_%$%tl238717238750%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e238715238745%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl238717238750%_))
                                                         (let ((_%$%e238718238753%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl238717238750%_))))
                   (let ((_%$%hd238719238756%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e238718238753%_)))
                         (_%$%tl238720238758%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e238718238753%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd238719238756%_))
                         (let ((_%$%e238721238761%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd238719238756%_))))
                           (let ((_%$%hd238722238764%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e238721238761%_)))
                                 (_%$%tl238723238766%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e238721238761%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd238722238764%_))
                                 (let ((_%$%e238724238769%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd238722238764%_))))
                                   (let ((_%$%hd238725238772%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e238724238769%_)))
                                         (_%$%tl238726238774%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e238724238769%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd238725238772%_))
                                         (let ((_%$%e238727238777%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd238725238772%_))))
                                           (let ((_%$%hd238728238780%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e238727238777%_)))
                                                 (_%$%tl238729238782%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e238727238777%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl238729238782%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl238726238774%_))
                                                     (let ((_%$%e238730238785%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl238726238774%_))))
                                                       (let ((_%$%hd238731238788%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e238730238785%_)))
                     (_%$%tl238732238790%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e238730238785%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl238732238790%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl238723238766%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl238720238758%_))
                             (let ((_%$%e238733238793%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl238720238758%_))))
                               (let ((_%$%hd238734238796%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e238733238793%_)))
                                     (_%$%tl238735238798%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e238733238793%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl238735238798%_))
                                     (let ()
                                       (let* ((_%$%g238827238841%_
                                               (lambda (_%$%g238828238838%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g238828238838%_))))
                                              (_%$%g238826238888%_
                                               (lambda (_%$%g238828238844%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g238828238844%_))
                                                     (let ((_%$%e238831238846%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g238828238844%_))))
                                                       (let ((_%$%hd238832238849%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e238831238846%_)))
                     (_%$%tl238833238851%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e238831238846%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl238833238851%_))
                     (let ((_%$%e238834238854%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl238833238851%_))))
                       (let ((_%$%hd238835238857%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e238834238854%_)))
                             (_%$%tl238836238859%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e238834238854%_))))
                         (let* ((_%self238876%_
                                 (list-ref
                                  _%$%hd238835238857%_
                                  _%self-index238565%_))
                                (_%receiver238881%_
                                 (let ((_%$e238878%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl238836238859%_))))
                                   (if _%$e238878%_
                                       _%$e238878%_
                                       _%self238876%_))))
                           (for-each
                            (lambda (_%$%g238883238885%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver238881%_
                               _%method-calls236567%_
                               _%slot-refs236568%_
                               _%$%g238883238885%_))
                            _%$%tl238836238859%_))))
                     (_%$%g238827238841%_ _%$%g238828238844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g238827238841%_
                                                      _%$%g238828238844%_)))))
                                         (_%$%g238826238888%_
                                          _%$%hd238731238788%_))
                                       (let* ((_%$%g238891238910%_
                                               (lambda (_%$%g238892238907%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g238892238907%_))))
                                              (_%$%g238890239019%_
                                               (lambda (_%$%g238892238913%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g238892238913%_))
                                                     (let ((_%$%e238894238915%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g238892238913%_))))
                                                       (let ((_%$%hd238895238918%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e238894238915%_)))
                     (_%$%tl238896238920%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e238894238915%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl238896238920%_))
                     (let ((_g240748_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl238896238920%_
                               '0))))
                       (begin
                         (let ((_g240749_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g240748_)
                                      (##values-length _g240748_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g240749_ 2)))
                               (error "Context expects 2 values" _g240749_)))
                         (let ((_%$%target238897238923%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g240748_ 0)))
                               (_%$%tl238899238925%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g240748_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl238899238925%_))
                               (letrec ((_%$%loop238900238928%_
                                         (lambda (_%$%hd238898238931%_
                                                  _%$%clause238904238933%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd238898238931%_))
                                               (let ((_%$%e238901238935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd238898238931%_))))
                                                 (let ((_%$%lp-hd238902238938%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e238901238935%_)))
                                                       (_%$%lp-tl238903238940%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e238901238935%_))))
                                                   (_%$%loop238900238928%_
                                                    _%$%lp-tl238903238940%_
                                                    (cons _%$%lp-hd238902238938%_
                                                          _%$%clause238904238933%_))))
                                               (let ((_%$%clause238905238943%_
                                                      (reverse _%$%clause238904238933%_)))
                                                 (for-each
                                                  (lambda (_%clause238958%_)
                                                    (let* ((_%$%g238960238971%_
                                                            (lambda (_%$%g238961238968%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g238961238968%_))))
                   (_%$%g238959239009%_
                    (lambda (_%$%g238961238974%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g238961238974%_))
                          (let ((_%$%e238964238976%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g238961238974%_))))
                            (let ((_%$%hd238965238979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e238964238976%_)))
                                  (_%$%tl238966238981%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e238964238976%_))))
                              (let* ((_%self238997%_
                                      (list-ref
                                       _%$%hd238965238979%_
                                       _%self-index238565%_))
                                     (_%receiver239002%_
                                      (let ((_%$e238999%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl238966238981%_))))
                                        (if _%$e238999%_
                                            _%$e238999%_
                                            _%self238997%_))))
                                (for-each
                                 (lambda (_%$%g239004239006%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver239002%_
                                    _%method-calls236567%_
                                    _%slot-refs236568%_
                                    _%$%g239004239006%_))
                                 _%$%tl238966238981%_))))
                          (_%$%g238960238971%_ _%$%g238961238974%_)))))
              (_%$%g238959239009%_ _%clause238958%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp240750
                                                         (lambda (_%$%g239011239014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g239012239016%_)
                   (cons _%$%g239011239014%_ _%$%g239012239016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp240750
                                                     '()
                                                     _%$%clause238905238943%_))))))))
                                 (_%$%loop238900238928%_
                                  _%$%target238897238923%_
                                  '()))
                               (_%$%g238891238910%_ _%$%g238892238913%_)))))
                     (_%$%g238891238910%_ _%$%g238892238913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g238891238910%_
                                                      _%$%g238892238913%_)))))
                                         (_%$%g238890239019%_
                                          _%$%hd238734238796%_))
                                       (if (_%no-specializer?236571%_)
                                           _%stx236475%_
                                           (let* ((_%specializer-id239028%_
                                                   (let* ((_%id239022%_
                                                           (let ((__tmp240751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236486236548%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp240751 '"::specialize")))
                  (_%specializer-id239025%_
                   (let ((__tmp240752
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx236475%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id239022%_ __tmp240752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id239025%_))
                                                     _%specializer-id239025%_))
                                                  (_%$klass239030%_
                                                   (let ((__tmp240753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp240753)))
                                                  (_%$method-table239032%_
                                                   (let ((__tmp240754
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp240754)))
                                                  (_%methods239034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls236567%_)))
                                                  (_%$methods239038%_
                                                   (let ((__tmp240755
                                                          (lambda (_%id239036%_)
                                                            (let ((__tmp240756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id239036%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp240756)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp240755
                                                            _%methods239034%_)))
                                                  (_%_239047%_
                                                   (let ((__tmp240757
                                                          (lambda (_%$%g239039239042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g239040239044%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls236567%_
                       _%$%g239039239042%_
                       _%$%g239040239044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp240757
                                                      _%methods239034%_
                                                      _%$methods239038%_)))
                                                  (_%methods-bind239057%_
                                                   (let ((__tmp240758
                                                          (lambda (_%$%g239049239052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g239050239054%_)
                    (_%generate-method-bind236477%_
                     _%$klass239030%_
                     _%$method-table239032%_
                     _%$%g239049239052%_
                     _%$%g239050239054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp240758
                                                            _%methods239034%_
                                                            _%$methods239038%_)))
                                                  (_%slots239059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs236568%_)))
                                                  (_%$slots239063%_
                                                   (let ((__tmp240759
                                                          (lambda (_%id239061%_)
                                                            (let ((__tmp240760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id239061%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp240760)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp240759
                                                            _%slots239059%_)))
                                                  (_%_239072%_
                                                   (let ((__tmp240761
                                                          (lambda (_%$%g239064239067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g239065239069%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs236568%_
                       _%$%g239064239067%_
                       _%$%g239065239069%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp240761
                                                      _%slots239059%_
                                                      _%$slots239063%_)))
                                                  (_%slots-bind239081%_
                                                   (let ((__tmp240762
                                                          (lambda (_%$%g239073239076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g239074239078%_)
                    (_%generate-slot-bind236478%_
                     _%$klass239030%_
                     _%$%g239073239076%_
                     _%$%g239074239078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp240762
                                                            _%slots239059%_
                                                            _%$slots239063%_)))
                                                  (_%specializer-lambda-expr239159%_
                                                   (let* ((_%$%g239083239097%_
                                                           (lambda (_%$%g239084239094%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g239084239094%_))))
                  (_%$%g239082239156%_
                   (lambda (_%$%g239084239100%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g239084239100%_))
                         (let ((_%$%e239087239102%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g239084239100%_))))
                           (let ((_%$%hd239088239105%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e239087239102%_)))
                                 (_%$%tl239089239107%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e239087239102%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl239089239107%_))
                                 (let ((_%$%e239090239110%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl239089239107%_))))
                                   (let ((_%$%hd239091239113%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e239090239110%_)))
                                         (_%$%tl239092239115%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e239090239110%_))))
                                     (let* ((_%self239142%_
                                             (list-ref
                                              _%$%hd239091239113%_
                                              _%self-index238565%_))
                                            (_%receiver239147%_
                                             (let ((_%$e239144%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl239092239115%_))))
                                               (if _%$e239144%_
                                                   _%$e239144%_
                                                   _%self239142%_)))
                                            (_%body239153%_
                                             (map (lambda (_%$%g239148239150%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver239147%_
                                                     _%$klass239030%_
                                                     _%method-calls236567%_
                                                     _%slot-refs236568%_
                                                     _%$%g239148239150%_))
                                                  _%$%tl239092239115%_))
                                            (__tmp240763
                                             (cons '%#lambda
                                                   (cons _%$%hd239091239113%_
                                                         _%body239153%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp240763
                                        _%$%hd238731238788%_))))
                                 (_%$%g239083239097%_ _%$%g239084239100%_))))
                         (_%$%g239083239097%_ _%$%g239084239100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239082239156%_
                                                      _%$%hd238731238788%_)))
                                                  (_%specializer-case-lambda-expr239297%_
                                                   (let* ((_%$%g239161239180%_
                                                           (lambda (_%$%g239162239177%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g239162239177%_))))
                  (_%$%g239160239294%_
                   (lambda (_%$%g239162239183%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g239162239183%_))
                         (let ((_%$%e239164239185%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g239162239183%_))))
                           (let ((_%$%hd239165239188%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e239164239185%_)))
                                 (_%$%tl239166239190%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e239164239185%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl239166239190%_))
                                 (let ((_g240764_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl239166239190%_
                                           '0))))
                                   (begin
                                     (let ((_g240765_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g240764_)
                                                  (##values-length _g240764_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g240765_ 2)))
                                           (error "Context expects 2 values"
                                                  _g240765_)))
                                     (let ((_%$%target239167239193%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g240764_ 0)))
                                           (_%$%tl239169239195%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g240764_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl239169239195%_))
                                           (letrec ((_%$%loop239170239198%_
                                                     (lambda (_%$%hd239168239201%_
                                                              _%$%clause239174239203%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd239168239201%_))
                                                           (let ((_%$%e239171239205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd239168239201%_))))
                     (let ((_%$%lp-hd239172239208%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e239171239205%_)))
                           (_%$%lp-tl239173239210%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e239171239205%_))))
                       (_%$%loop239170239198%_
                        _%$%lp-tl239173239210%_
                        (cons _%$%lp-hd239172239208%_
                              _%$%clause239174239203%_))))
                   (let* ((_%$%clause239175239213%_
                           (reverse _%$%clause239174239203%_))
                          (_%clauses239292%_
                           (map (lambda (_%clause239229%_)
                                  (let* ((_%$%g239231239242%_
                                          (lambda (_%$%g239232239239%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g239232239239%_))))
                                         (_%$%g239230239282%_
                                          (lambda (_%$%g239232239245%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g239232239245%_))
                                                (let ((_%$%e239235239247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g239232239245%_))))
                                                  (let ((_%$%hd239236239250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e239235239247%_)))
                                                        (_%$%tl239237239252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e239235239247%_))))
                                                    (let* ((_%self239268%_
                                                            (list-ref
                                                             _%$%hd239236239250%_
                                                             _%self-index238565%_))
                                                           (_%receiver239273%_
                                                            (let ((_%$e239270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl239237239252%_))))
                      (if _%$e239270%_ _%$e239270%_ _%self239268%_)))
                   (_%body239279%_
                    (map (lambda (_%$%g239274239276%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver239273%_
                            _%$klass239030%_
                            _%method-calls236567%_
                            _%slot-refs236568%_
                            _%$%g239274239276%_))
                         _%$%tl239237239252%_)))
              (cons _%$%hd239236239250%_ _%body239279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g239231239242%_
                                                 _%$%g239232239245%_)))))
                                    (_%$%g239230239282%_ _%clause239229%_)))
                                (let ((__tmp240766
                                       (lambda (_%$%g239284239287%_
                                                _%$%g239285239289%_)
                                         (cons _%$%g239284239287%_
                                               _%$%g239285239289%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp240766
                                   '()
                                   _%$%clause239175239213%_))))
                          (__tmp240767
                           (cons '%#case-lambda _%clauses239292%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp240767
                      _%$%hd238734238796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop239170239198%_
                                              _%$%target239167239193%_
                                              '()))
                                           (_%$%g239161239180%_
                                            _%$%g239162239183%_)))))
                                 (_%$%g239161239180%_ _%$%g239162239183%_))))
                         (_%$%g239161239180%_ _%$%g239162239183%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239160239294%_
                                                      _%$%hd238734238796%_)))
                                                  (_%specializer-impl239299%_
                                                   (let ((__tmp240768
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd238113238186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd238131238234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp240769
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd238728238780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr239159%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr239297%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp240769
                                         _%stx236475%_))
                                      '()))
                          '())
                    (cons _%$%hd238137238250%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd238140238258%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp240768
                                                      _%stx236475%_)))
                                                  (_%specializer-impl239301%_
                                                   (_%generate-specializer-impl236479%_
                                                    _%$klass239030%_
                                                    _%$method-table239032%_
                                                    _%methods-bind239057%_
                                                    _%slots-bind239081%_
                                                    _%specializer-impl239299%_)))
                                             (let ((__tmp240771
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g236486236548%_)))
                                                   (__tmp240770
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id239028%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp240771
                                                '" => "
                                                __tmp240770))
                                             (_%generate-specializer-def236480%_
                                              _%$%g236486236548%_
                                              _%specializer-id239028%_
                                              _%specializer-impl239301%_))))
                                     (_%$%g238710238740%_
                                      _%$%g238711238743%_))))
                             (_%$%g238710238740%_ _%$%g238711238743%_))
                         (_%$%g238710238740%_ _%$%g238711238743%_))
                     (_%$%g238710238740%_ _%$%g238711238743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g238710238740%_
                                                      _%$%g238711238743%_))
                                                 (_%$%g238710238740%_
                                                  _%$%g238711238743%_))))
                                         (_%$%g238710238740%_
                                          _%$%g238711238743%_))))
                                 (_%$%g238710238740%_ _%$%g238711238743%_))))
                         (_%$%g238710238740%_ _%$%g238711238743%_))))
                 (_%$%g238710238740%_ _%$%g238711238743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g238710238740%_
                                                  _%$%g238711238743%_)))))
                                     (_%$%g238709239304%_
                                      _%$%hd238134238242%_))
                                   _%stx236475%_)))
                         (_%$%g238307238369%_ _%$%g238308238372%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop238356238491%_
                                              _%$%target238353238478%_
                                              '()))
                                           (_%$%g238307238369%_
                                            _%$%g238308238372%_))))
                                   (_%$%g238307238369%_
                                    _%$%g238308238372%_)))))
                         (_%$%g238307238369%_ _%$%g238308238372%_))
                     (_%$%g238307238369%_ _%$%g238308238372%_))
                 (_%$%g238307238369%_ _%$%g238308238372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g238307238369%_
                                                  _%$%g238308238372%_))
                                             (_%$%g238307238369%_
                                              _%$%g238308238372%_))
                                         (_%$%g238307238369%_
                                          _%$%g238308238372%_))))
                                 (_%$%g238307238369%_ _%$%g238308238372%_))))
                         (_%$%g238307238369%_ _%$%g238308238372%_))
                     (_%$%g238307238369%_ _%$%g238308238372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g238307238369%_
                                                      _%$%g238308238372%_))
                                                 (_%$%g238307238369%_
                                                  _%$%g238308238372%_))
                                             (_%$%g238307238369%_
                                              _%$%g238308238372%_))))
                                     (_%$%g238307238369%_
                                      _%$%g238308238372%_))))
                             (_%$%g238307238369%_ _%$%g238308238372%_))
                         (_%$%g238307238369%_ _%$%g238308238372%_))))
                 (_%$%g238307238369%_ _%$%g238308238372%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g238307238369%_
                                                      _%$%g238308238372%_))
                                                 (_%$%g238307238369%_
                                                  _%$%g238308238372%_))))
                                         (_%$%g238307238369%_
                                          _%$%g238308238372%_))))
                                 (_%$%g238307238369%_ _%$%g238308238372%_))
                             (_%$%g238307238369%_ _%$%g238308238372%_))
                         (_%$%g238307238369%_ _%$%g238308238372%_))))
                 (_%$%g238307238369%_ _%$%g238308238372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g238307238369%_
                                                  _%$%g238308238372%_))))
                                         (_%$%g238307238369%_
                                          _%$%g238308238372%_))
                                     (_%$%g238307238369%_ _%$%g238308238372%_))
                                 (_%$%g238307238369%_ _%$%g238308238372%_))))
                         (_%$%g238307238369%_ _%$%g238308238372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g238306239308%_
                                                      _%$%hd238137238250%_))
                                                   (_%$%g238093238146%_
                                                    _%$%g238094238149%_))))
                                           (_%$%g238093238146%_
                                            _%$%g238094238149%_))
                                       (_%$%g238093238146%_
                                        _%$%g238094238149%_))
                                   (_%$%g238093238146%_ _%$%g238094238149%_))
                               (_%$%g238093238146%_ _%$%g238094238149%_))))
                       (_%$%g238093238146%_ _%$%g238094238149%_))
                   (_%$%g238093238146%_ _%$%g238094238149%_))
               (_%$%g238093238146%_ _%$%g238094238149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g238093238146%_
                                                _%$%g238094238149%_))
                                           (_%$%g238093238146%_
                                            _%$%g238094238149%_))))
                                   (_%$%g238093238146%_ _%$%g238094238149%_))))
                           (_%$%g238093238146%_ _%$%g238094238149%_))))
                   (_%$%g238093238146%_ _%$%g238094238149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g238093238146%_
                                                    _%$%g238094238149%_))
                                               (_%$%g238093238146%_
                                                _%$%g238094238149%_))
                                           (_%$%g238093238146%_
                                            _%$%g238094238149%_))))
                                   (_%$%g238093238146%_ _%$%g238094238149%_))))
                           (_%$%g238093238146%_ _%$%g238094238149%_))
                       (_%$%g238093238146%_ _%$%g238094238149%_))))
               (_%$%g238093238146%_ _%$%g238094238149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g238093238146%_
                                                _%$%g238094238149%_))))
                                       (_%$%g238093238146%_
                                        _%$%g238094238149%_))))
                               (_%$%g238093238146%_ _%$%g238094238149%_))
                           (_%$%g238093238146%_ _%$%g238094238149%_))
                       (_%$%g238093238146%_ _%$%g238094238149%_))))
               (_%$%g238093238146%_ _%$%g238094238149%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g238092239311%_
                                            _%$%g236485236547%_))
                                         _%stx236475%_))))))))
                  (_%__kont239538239539%_ (lambda () _%stx236475%_)))
              (let ((_%__match239567239568%_
                     (lambda (_%$%e236487236515%_
                              _%$%hd236488236518%_
                              _%$%tl236489236520%_
                              _%$%e236490236523%_
                              _%$%hd236491236526%_
                              _%$%tl236492236528%_
                              _%$%e236493236531%_
                              _%$%hd236494236534%_
                              _%$%tl236495236536%_
                              _%$%e236496236539%_
                              _%$%hd236497236542%_
                              _%$%tl236498236544%_)
                       (let ((_%$%g236485236547%_ _%$%hd236497236542%_)
                             (_%$%g236486236548%_ _%$%hd236494236534%_))
                         (if (let ((__tmp240772
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g236486236548%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp240772))
                             (_%__kont239536239537%_
                              _%$%g236485236547%_
                              _%$%g236486236548%_)
                             (_%__kont239538239539%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx239534239535%_))
                    (let ((_%$%e236487236515%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx239534239535%_))))
                      (let ((_%$%tl236489236520%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e236487236515%_)))
                            (_%$%hd236488236518%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e236487236515%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl236489236520%_))
                            (let ((_%$%e236490236523%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl236489236520%_))))
                              (let ((_%$%tl236492236528%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e236490236523%_)))
                                    (_%$%hd236491236526%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e236490236523%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd236491236526%_))
                                    (let ((_%$%e236493236531%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd236491236526%_))))
                                      (let ((_%$%tl236495236536%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e236493236531%_)))
                                            (_%$%hd236494236534%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e236493236531%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl236495236536%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl236492236528%_))
                                                (let ((_%$%e236496236539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl236492236528%_))))
                                                  (let ((_%$%tl236498236544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e236496236539%_)))
                                                        (_%$%hd236497236542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e236496236539%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl236498236544%_))
                                                        (_%__match239567239568%_
                                                         _%$%e236487236515%_
                                                         _%$%hd236488236518%_
                                                         _%$%tl236489236520%_
                                                         _%$%e236490236523%_
                                                         _%$%hd236491236526%_
                                                         _%$%tl236492236528%_
                                                         _%$%e236493236531%_
                                                         _%$%hd236494236534%_
                                                         _%$%tl236495236536%_
                                                         _%$%e236496236539%_
                                                         _%$%hd236497236542%_
                                                         _%$%tl236498236544%_)
                                                        (_%__kont239538239539%_))))
                                                (_%__kont239538239539%_))
                                            (_%__kont239538239539%_))))
                                    (_%__kont239538239539%_))))
                            (_%__kont239538239539%_))))
                    (_%__kont239538239539%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self236327%_ _%stx236328%_)
        (let* ((_%__stx239570239571%_ _%stx236328%_)
               (_%$%g236331236364%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx239570239571%_)))))
          (let ((_%__kont239572239573%_
                 (lambda (_%$%g236333236454%_) _%$%g236333236454%_))
                (_%__kont239574239575%_
                 (lambda (_%$%g236349236393%_ _%$%g236350236394%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self236327%_ _%$%g236349236393%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx239570239571%_))
                (let ((_%$%e236334236414%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx239570239571%_))))
                  (let ((_%$%tl236336236419%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e236334236414%_)))
                        (_%$%hd236335236417%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e236334236414%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl236336236419%_))
                        (let ((_%$%e236337236422%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl236336236419%_))))
                          (let ((_%$%tl236339236427%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e236337236422%_)))
                                (_%$%hd236338236425%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e236337236422%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd236338236425%_))
                                (let ((_%$%e236340236430%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd236338236425%_))))
                                  (let ((_%$%tl236342236435%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e236340236430%_)))
                                        (_%$%hd236341236433%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e236340236430%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd236341236433%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd236341236433%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl236342236435%_))
                                                (let ((_%$%e236343236438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl236342236435%_))))
                                                  (let ((_%$%tl236345236443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e236343236438%_)))
                                                        (_%$%hd236344236441%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e236343236438%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl236345236443%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl236339236427%_))
                                                            (let ((_%$%e236346236446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl236339236427%_))))
                      (let ((_%$%tl236348236451%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e236346236446%_)))
                            (_%$%hd236347236449%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e236346236446%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl236348236451%_))
                            (_%__kont239572239573%_ _%$%hd236344236441%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g236331236364%_)))))
                    (let () (declare (not safe)) (_%$%g236331236364%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl236339236427%_))
                    (let ((_%$%e236357236385%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl236339236427%_))))
                      (let ((_%$%tl236359236390%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e236357236385%_)))
                            (_%$%hd236358236388%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e236357236385%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl236359236390%_))
                            (_%__kont239574239575%_
                             _%$%hd236358236388%_
                             _%$%hd236338236425%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g236331236364%_)))))
                    (let () (declare (not safe)) (_%$%g236331236364%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl236339236427%_))
                                                    (let ((_%$%e236357236385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl236339236427%_))))
                                                      (let ((_%$%tl236359236390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e236357236385%_)))
                    (_%$%hd236358236388%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e236357236385%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl236359236390%_))
                    (_%__kont239574239575%_
                     _%$%hd236358236388%_
                     _%$%hd236338236425%_)
                    (let () (declare (not safe)) (_%$%g236331236364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g236331236364%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl236339236427%_))
                                                (let ((_%$%e236357236385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl236339236427%_))))
                                                  (let ((_%$%tl236359236390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e236357236385%_)))
                                                        (_%$%hd236358236388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e236357236385%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl236359236390%_))
                                                        (_%__kont239574239575%_
                                                         _%$%hd236358236388%_
                                                         _%$%hd236338236425%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g236331236364%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g236331236364%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl236339236427%_))
                                            (let ((_%$%e236357236385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl236339236427%_))))
                                              (let ((_%$%tl236359236390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e236357236385%_)))
                                                    (_%$%hd236358236388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e236357236385%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl236359236390%_))
                                                    (_%__kont239574239575%_
                                                     _%$%hd236358236388%_
                                                     _%$%hd236338236425%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g236331236364%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g236331236364%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl236339236427%_))
                                    (let ((_%$%e236357236385%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl236339236427%_))))
                                      (let ((_%$%tl236359236390%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e236357236385%_)))
                                            (_%$%hd236358236388%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e236357236385%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl236359236390%_))
                                            (_%__kont239574239575%_
                                             _%$%hd236358236388%_
                                             _%$%hd236338236425%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g236331236364%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g236331236364%_))))))
                        (let () (declare (not safe)) (_%$%g236331236364%_)))))
                (let () (declare (not safe)) (_%$%g236331236364%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self236243%_ _%stx236244%_)
        (let* ((_%$%g236246236267%_
                (lambda (_%$%g236247236264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g236247236264%_))))
               (_%$%g236245236324%_
                (lambda (_%$%g236247236270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g236247236270%_))
                      (let ((_%$%e236251236272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g236247236270%_))))
                        (let ((_%$%hd236252236275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e236251236272%_)))
                              (_%$%tl236253236277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e236251236272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl236253236277%_))
                              (let ((_%$%e236254236280%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl236253236277%_))))
                                (let ((_%$%hd236255236283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e236254236280%_)))
                                      (_%$%tl236256236285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e236254236280%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl236256236285%_))
                                      (let ((_%$%e236257236288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl236256236285%_))))
                                        (let ((_%$%hd236258236291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e236257236288%_)))
                                              (_%$%tl236259236293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e236257236288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl236259236293%_))
                                              (let ((_%$%e236260236296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl236259236293%_))))
                                                (let ((_%$%hd236261236299%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e236260236296%_)))
                                                      (_%$%tl236262236301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e236260236296%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl236262236301%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self236243%_
                                                         _%$%hd236258236291%_))
                                                      (_%$%g236246236267%_
                                                       _%$%g236247236270%_))))
                                              (_%$%g236246236267%_
                                               _%$%g236247236270%_))))
                                      (_%$%g236246236267%_
                                       _%$%g236247236270%_))))
                              (_%$%g236246236267%_ _%$%g236247236270%_))))
                      (_%$%g236246236267%_ _%$%g236247236270%_)))))
          (_%$%g236245236324%_ _%stx236244%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self235208%_ _%stx235209%_)
        (let* ((_%__stx239636239637%_ _%stx235209%_)
               (_%$%g235217235439%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx239636239637%_)))))
          (let ((_%__kont239638239639%_
                 (lambda (_%$%g235219236192%_
                          _%$%g235220236193%_
                          _%$%g235221236194%_
                          _%$%g235222236195%_)
                   (let ((__tmp240774
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self235208%_ 'methods)))
                         (__tmp240773
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g235220236193%_))))
                     (declare (not safe))
                     (hash-put! __tmp240774 __tmp240773 '#t))
                   (for-each
                    (lambda (_%$%g236228236230%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self235208%_ _%$%g236228236230%_)))
                    (let ((__tmp240775
                           (lambda (_%$%g236232236235%_ _%$%g236233236237%_)
                             (cons _%$%g236232236235%_ _%$%g236233236237%_))))
                      (declare (not safe))
                      (foldr__0 __tmp240775 '() _%$%g235219236192%_)))))
                (_%__kont239642239643%_
                 (lambda (_%$%g235262236029%_
                          _%$%g235263236030%_
                          _%$%g235264236031%_
                          _%$%g235265236032%_
                          _%$%g235266236033%_)
                   (let ((__tmp240777
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self235208%_ 'methods)))
                         (__tmp240776
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g235263236030%_))))
                     (declare (not safe))
                     (hash-put! __tmp240777 __tmp240776 '#t))
                   (for-each
                    (lambda (_%$%g236073236075%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self235208%_ _%$%g236073236075%_)))
                    (let ((__tmp240778
                           (lambda (_%$%g236077236080%_ _%$%g236078236082%_)
                             (cons _%$%g236077236080%_ _%$%g236078236082%_))))
                      (declare (not safe))
                      (foldr__0 __tmp240778 '() _%$%g235262236029%_)))))
                (_%__kont239646239647%_
                 (lambda (_%$%g235315235864%_
                          _%$%g235316235865%_
                          _%$%g235317235866%_)
                   (let ((__tmp240780
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self235208%_ 'slots)))
                         (__tmp240779
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g235315235864%_))))
                     (declare (not safe))
                     (hash-put! __tmp240780 __tmp240779 '#t))))
                (_%__kont239648239649%_
                 (lambda (_%$%g235348235741%_
                          _%$%g235349235742%_
                          _%$%g235350235743%_
                          _%$%g235351235744%_)
                   (let ((__tmp240782
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self235208%_ 'slots)))
                         (__tmp240781
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g235349235742%_))))
                     (declare (not safe))
                     (hash-put! __tmp240782 __tmp240781 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self235208%_ _%$%g235348235741%_))))
                (_%__kont239650239651%_
                 (lambda (_%$%g235385235615%_ _%$%g235386235616%_)
                   (let* ((_%accessor235638%_
                           (let ((__tmp240783
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g235386235616%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp240783)))
                          (_%klass235640%_
                           (let ((__tmp240784
                                  (##structure-ref
                                   _%accessor235638%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx235209%_
                              __tmp240784)))
                          (_%slot235642%_
                           (##structure-ref
                            _%accessor235638%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor235638%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass235640%_
                                    _%slot235642%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass235640%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp240786
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self235208%_ 'slots)))
                               (__tmp240785
                                (##structure-ref
                                 _%accessor235638%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp240786 __tmp240785 '#t))))))
                (_%__kont239652239653%_
                 (lambda (_%$%g235408235515%_
                          _%$%g235409235516%_
                          _%$%g235410235517%_)
                   (let* ((_%mutator235544%_
                           (let ((__tmp240787
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g235410235517%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp240787)))
                          (_%klass235546%_
                           (let ((__tmp240788
                                  (##structure-ref
                                   _%mutator235544%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx235209%_
                              __tmp240788)))
                          (_%slot235548%_
                           (##structure-ref
                            _%mutator235544%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator235544%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass235546%_
                                    _%slot235548%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass235546%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp240789
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self235208%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp240789 _%slot235548%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self235208%_
                        _%$%g235408235515%_)))))
                (_%__kont239654239655%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self235208%_ _%stx235209%_)))))
            (let* ((_%__match240135240136%_
                    (lambda (_%$%e235411235451%_
                             _%$%hd235412235454%_
                             _%$%tl235413235456%_
                             _%$%e235414235459%_
                             _%$%hd235415235462%_
                             _%$%tl235416235464%_
                             _%$%e235417235467%_
                             _%$%hd235418235470%_
                             _%$%tl235419235472%_
                             _%$%e235420235475%_
                             _%$%hd235421235478%_
                             _%$%tl235422235480%_
                             _%$%e235423235483%_
                             _%$%hd235424235486%_
                             _%$%tl235425235488%_
                             _%$%e235426235491%_
                             _%$%hd235427235494%_
                             _%$%tl235428235496%_
                             _%$%e235429235499%_
                             _%$%hd235430235502%_
                             _%$%tl235431235504%_
                             _%$%e235432235507%_
                             _%$%hd235433235510%_
                             _%$%tl235434235512%_)
                      (let ((_%$%g235408235515%_ _%$%hd235433235510%_)
                            (_%$%g235409235516%_ _%$%hd235430235502%_)
                            (_%$%g235410235517%_ _%$%hd235421235478%_))
                        (if (and (let ((__tmp240790
                                        (let ((__tmp240791
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g235410235517%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp240791))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp240790
                                    'gxc#!mutator::t))
                                 (let ((__tmp240792
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self235208%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g235409235516%_
                                    __tmp240792)))
                            (_%__kont239652239653%_
                             _%$%g235408235515%_
                             _%$%g235409235516%_
                             _%$%g235410235517%_)
                            (_%__kont239654239655%_)))))
                   (_%__match240133240134%_
                    (lambda (_%$%e235411235451%_
                             _%$%hd235412235454%_
                             _%$%tl235413235456%_
                             _%$%e235414235459%_
                             _%$%hd235415235462%_
                             _%$%tl235416235464%_
                             _%$%e235417235467%_
                             _%$%hd235418235470%_
                             _%$%tl235419235472%_
                             _%$%e235420235475%_
                             _%$%hd235421235478%_
                             _%$%tl235422235480%_
                             _%$%e235423235483%_
                             _%$%hd235424235486%_
                             _%$%tl235425235488%_
                             _%$%e235426235491%_
                             _%$%hd235427235494%_
                             _%$%tl235428235496%_
                             _%$%e235429235499%_
                             _%$%hd235430235502%_
                             _%$%tl235431235504%_
                             _%$%e235432235507%_
                             _%$%hd235433235510%_
                             _%$%tl235434235512%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl235434235512%_))
                          (_%__match240135240136%_
                           _%$%e235411235451%_
                           _%$%hd235412235454%_
                           _%$%tl235413235456%_
                           _%$%e235414235459%_
                           _%$%hd235415235462%_
                           _%$%tl235416235464%_
                           _%$%e235417235467%_
                           _%$%hd235418235470%_
                           _%$%tl235419235472%_
                           _%$%e235420235475%_
                           _%$%hd235421235478%_
                           _%$%tl235422235480%_
                           _%$%e235423235483%_
                           _%$%hd235424235486%_
                           _%$%tl235425235488%_
                           _%$%e235426235491%_
                           _%$%hd235427235494%_
                           _%$%tl235428235496%_
                           _%$%e235429235499%_
                           _%$%hd235430235502%_
                           _%$%tl235431235504%_
                           _%$%e235432235507%_
                           _%$%hd235433235510%_
                           _%$%tl235434235512%_)
                          (_%__kont239654239655%_))))
                   (_%__match240127240128%_
                    (lambda (_%$%e235411235451%_
                             _%$%hd235412235454%_
                             _%$%tl235413235456%_
                             _%$%e235414235459%_
                             _%$%hd235415235462%_
                             _%$%tl235416235464%_
                             _%$%e235417235467%_
                             _%$%hd235418235470%_
                             _%$%tl235419235472%_
                             _%$%e235420235475%_
                             _%$%hd235421235478%_
                             _%$%tl235422235480%_
                             _%$%e235423235483%_
                             _%$%hd235424235486%_
                             _%$%tl235425235488%_
                             _%$%e235426235491%_
                             _%$%hd235427235494%_
                             _%$%tl235428235496%_
                             _%$%e235429235499%_
                             _%$%hd235430235502%_
                             _%$%tl235431235504%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl235425235488%_))
                          (let ((_%$%e235432235507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl235425235488%_))))
                            (let ((_%$%tl235434235512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e235432235507%_)))
                                  (_%$%hd235433235510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e235432235507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl235434235512%_))
                                  (_%__match240135240136%_
                                   _%$%e235411235451%_
                                   _%$%hd235412235454%_
                                   _%$%tl235413235456%_
                                   _%$%e235414235459%_
                                   _%$%hd235415235462%_
                                   _%$%tl235416235464%_
                                   _%$%e235417235467%_
                                   _%$%hd235418235470%_
                                   _%$%tl235419235472%_
                                   _%$%e235420235475%_
                                   _%$%hd235421235478%_
                                   _%$%tl235422235480%_
                                   _%$%e235423235483%_
                                   _%$%hd235424235486%_
                                   _%$%tl235425235488%_
                                   _%$%e235426235491%_
                                   _%$%hd235427235494%_
                                   _%$%tl235428235496%_
                                   _%$%e235429235499%_
                                   _%$%hd235430235502%_
                                   _%$%tl235431235504%_
                                   _%$%e235432235507%_
                                   _%$%hd235433235510%_
                                   _%$%tl235434235512%_)
                                  (_%__kont239654239655%_))))
                          (_%__kont239654239655%_))))
                   (_%__match240073240074%_
                    (lambda (_%$%e235387235559%_
                             _%$%hd235388235562%_
                             _%$%tl235389235564%_
                             _%$%e235390235567%_
                             _%$%hd235391235570%_
                             _%$%tl235392235572%_
                             _%$%e235393235575%_
                             _%$%hd235394235578%_
                             _%$%tl235395235580%_
                             _%$%e235396235583%_
                             _%$%hd235397235586%_
                             _%$%tl235398235588%_
                             _%$%e235399235591%_
                             _%$%hd235400235594%_
                             _%$%tl235401235596%_
                             _%$%e235402235599%_
                             _%$%hd235403235602%_
                             _%$%tl235404235604%_
                             _%$%e235405235607%_
                             _%$%hd235406235610%_
                             _%$%tl235407235612%_)
                      (let ((_%$%g235385235615%_ _%$%hd235406235610%_)
                            (_%$%g235386235616%_ _%$%hd235397235586%_))
                        (if (and (let ((__tmp240793
                                        (let ((__tmp240794
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g235386235616%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp240794))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp240793
                                    'gxc#!accessor::t))
                                 (let ((__tmp240795
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self235208%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g235385235615%_
                                    __tmp240795)))
                            (_%__kont239650239651%_
                             _%$%g235385235615%_
                             _%$%g235386235616%_)
                            (_%__kont239654239655%_)))))
                   (_%__match240071240072%_
                    (lambda (_%$%e235387235559%_
                             _%$%hd235388235562%_
                             _%$%tl235389235564%_
                             _%$%e235390235567%_
                             _%$%hd235391235570%_
                             _%$%tl235392235572%_
                             _%$%e235393235575%_
                             _%$%hd235394235578%_
                             _%$%tl235395235580%_
                             _%$%e235396235583%_
                             _%$%hd235397235586%_
                             _%$%tl235398235588%_
                             _%$%e235399235591%_
                             _%$%hd235400235594%_
                             _%$%tl235401235596%_
                             _%$%e235402235599%_
                             _%$%hd235403235602%_
                             _%$%tl235404235604%_
                             _%$%e235405235607%_
                             _%$%hd235406235610%_
                             _%$%tl235407235612%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl235401235596%_))
                          (_%__match240073240074%_
                           _%$%e235387235559%_
                           _%$%hd235388235562%_
                           _%$%tl235389235564%_
                           _%$%e235390235567%_
                           _%$%hd235391235570%_
                           _%$%tl235392235572%_
                           _%$%e235393235575%_
                           _%$%hd235394235578%_
                           _%$%tl235395235580%_
                           _%$%e235396235583%_
                           _%$%hd235397235586%_
                           _%$%tl235398235588%_
                           _%$%e235399235591%_
                           _%$%hd235400235594%_
                           _%$%tl235401235596%_
                           _%$%e235402235599%_
                           _%$%hd235403235602%_
                           _%$%tl235404235604%_
                           _%$%e235405235607%_
                           _%$%hd235406235610%_
                           _%$%tl235407235612%_)
                          (_%__match240127240128%_
                           _%$%e235387235559%_
                           _%$%hd235388235562%_
                           _%$%tl235389235564%_
                           _%$%e235390235567%_
                           _%$%hd235391235570%_
                           _%$%tl235392235572%_
                           _%$%e235393235575%_
                           _%$%hd235394235578%_
                           _%$%tl235395235580%_
                           _%$%e235396235583%_
                           _%$%hd235397235586%_
                           _%$%tl235398235588%_
                           _%$%e235399235591%_
                           _%$%hd235400235594%_
                           _%$%tl235401235596%_
                           _%$%e235402235599%_
                           _%$%hd235403235602%_
                           _%$%tl235404235604%_
                           _%$%e235405235607%_
                           _%$%hd235406235610%_
                           _%$%tl235407235612%_))))
                   (_%__match240017240018%_
                    (lambda (_%$%e235352235653%_
                             _%$%hd235353235656%_
                             _%$%tl235354235658%_
                             _%$%e235355235661%_
                             _%$%hd235356235664%_
                             _%$%tl235357235666%_
                             _%$%e235358235669%_
                             _%$%hd235359235672%_
                             _%$%tl235360235674%_
                             _%$%e235361235677%_
                             _%$%hd235362235680%_
                             _%$%tl235363235682%_
                             _%$%e235364235685%_
                             _%$%hd235365235688%_
                             _%$%tl235366235690%_
                             _%$%e235367235693%_
                             _%$%hd235368235696%_
                             _%$%tl235369235698%_
                             _%$%e235370235701%_
                             _%$%hd235371235704%_
                             _%$%tl235372235706%_
                             _%$%e235373235709%_
                             _%$%hd235374235712%_
                             _%$%tl235375235714%_
                             _%$%e235376235717%_
                             _%$%hd235377235720%_
                             _%$%tl235378235722%_
                             _%$%e235379235725%_
                             _%$%hd235380235728%_
                             _%$%tl235381235730%_
                             _%$%e235382235733%_
                             _%$%hd235383235736%_
                             _%$%tl235384235738%_)
                      (let ((_%$%g235348235741%_ _%$%hd235383235736%_)
                            (_%$%g235349235742%_ _%$%hd235380235728%_)
                            (_%$%g235350235743%_ _%$%hd235371235704%_)
                            (_%$%g235351235744%_ _%$%hd235362235680%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g235351235744%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g235351235744%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp240796
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self235208%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g235350235743%_
                                    __tmp240796)))
                            (_%__kont239648239649%_
                             _%$%g235348235741%_
                             _%$%g235349235742%_
                             _%$%g235350235743%_
                             _%$%g235351235744%_)
                            (_%__kont239654239655%_)))))
                   (_%__match240009240010%_
                    (lambda (_%$%e235352235653%_
                             _%$%hd235353235656%_
                             _%$%tl235354235658%_
                             _%$%e235355235661%_
                             _%$%hd235356235664%_
                             _%$%tl235357235666%_
                             _%$%e235358235669%_
                             _%$%hd235359235672%_
                             _%$%tl235360235674%_
                             _%$%e235361235677%_
                             _%$%hd235362235680%_
                             _%$%tl235363235682%_
                             _%$%e235364235685%_
                             _%$%hd235365235688%_
                             _%$%tl235366235690%_
                             _%$%e235367235693%_
                             _%$%hd235368235696%_
                             _%$%tl235369235698%_
                             _%$%e235370235701%_
                             _%$%hd235371235704%_
                             _%$%tl235372235706%_
                             _%$%e235373235709%_
                             _%$%hd235374235712%_
                             _%$%tl235375235714%_
                             _%$%e235376235717%_
                             _%$%hd235377235720%_
                             _%$%tl235378235722%_
                             _%$%e235379235725%_
                             _%$%hd235380235728%_
                             _%$%tl235381235730%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl235375235714%_))
                          (let ((_%$%e235382235733%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl235375235714%_))))
                            (let ((_%$%tl235384235738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e235382235733%_)))
                                  (_%$%hd235383235736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e235382235733%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl235384235738%_))
                                  (_%__match240017240018%_
                                   _%$%e235352235653%_
                                   _%$%hd235353235656%_
                                   _%$%tl235354235658%_
                                   _%$%e235355235661%_
                                   _%$%hd235356235664%_
                                   _%$%tl235357235666%_
                                   _%$%e235358235669%_
                                   _%$%hd235359235672%_
                                   _%$%tl235360235674%_
                                   _%$%e235361235677%_
                                   _%$%hd235362235680%_
                                   _%$%tl235363235682%_
                                   _%$%e235364235685%_
                                   _%$%hd235365235688%_
                                   _%$%tl235366235690%_
                                   _%$%e235367235693%_
                                   _%$%hd235368235696%_
                                   _%$%tl235369235698%_
                                   _%$%e235370235701%_
                                   _%$%hd235371235704%_
                                   _%$%tl235372235706%_
                                   _%$%e235373235709%_
                                   _%$%hd235374235712%_
                                   _%$%tl235375235714%_
                                   _%$%e235376235717%_
                                   _%$%hd235377235720%_
                                   _%$%tl235378235722%_
                                   _%$%e235379235725%_
                                   _%$%hd235380235728%_
                                   _%$%tl235381235730%_
                                   _%$%e235382235733%_
                                   _%$%hd235383235736%_
                                   _%$%tl235384235738%_)
                                  (_%__kont239654239655%_))))
                          (_%__match240133240134%_
                           _%$%e235352235653%_
                           _%$%hd235353235656%_
                           _%$%tl235354235658%_
                           _%$%e235355235661%_
                           _%$%hd235356235664%_
                           _%$%tl235357235666%_
                           _%$%e235358235669%_
                           _%$%hd235359235672%_
                           _%$%tl235360235674%_
                           _%$%e235361235677%_
                           _%$%hd235362235680%_
                           _%$%tl235363235682%_
                           _%$%e235364235685%_
                           _%$%hd235365235688%_
                           _%$%tl235366235690%_
                           _%$%e235367235693%_
                           _%$%hd235368235696%_
                           _%$%tl235369235698%_
                           _%$%e235370235701%_
                           _%$%hd235371235704%_
                           _%$%tl235372235706%_
                           _%$%e235373235709%_
                           _%$%hd235374235712%_
                           _%$%tl235375235714%_))))
                   (_%__match239931239932%_
                    (lambda (_%$%e235318235784%_
                             _%$%hd235319235787%_
                             _%$%tl235320235789%_
                             _%$%e235321235792%_
                             _%$%hd235322235795%_
                             _%$%tl235323235797%_
                             _%$%e235324235800%_
                             _%$%hd235325235803%_
                             _%$%tl235326235805%_
                             _%$%e235327235808%_
                             _%$%hd235328235811%_
                             _%$%tl235329235813%_
                             _%$%e235330235816%_
                             _%$%hd235331235819%_
                             _%$%tl235332235821%_
                             _%$%e235333235824%_
                             _%$%hd235334235827%_
                             _%$%tl235335235829%_
                             _%$%e235336235832%_
                             _%$%hd235337235835%_
                             _%$%tl235338235837%_
                             _%$%e235339235840%_
                             _%$%hd235340235843%_
                             _%$%tl235341235845%_
                             _%$%e235342235848%_
                             _%$%hd235343235851%_
                             _%$%tl235344235853%_
                             _%$%e235345235856%_
                             _%$%hd235346235859%_
                             _%$%tl235347235861%_)
                      (let ((_%$%g235315235864%_ _%$%hd235346235859%_)
                            (_%$%g235316235865%_ _%$%hd235337235835%_)
                            (_%$%g235317235866%_ _%$%hd235328235811%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g235317235866%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g235317235866%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp240797
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self235208%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g235316235865%_
                                    __tmp240797)))
                            (_%__kont239646239647%_
                             _%$%g235315235864%_
                             _%$%g235316235865%_
                             _%$%g235317235866%_)
                            (_%__match240135240136%_
                             _%$%e235318235784%_
                             _%$%hd235319235787%_
                             _%$%tl235320235789%_
                             _%$%e235321235792%_
                             _%$%hd235322235795%_
                             _%$%tl235323235797%_
                             _%$%e235324235800%_
                             _%$%hd235325235803%_
                             _%$%tl235326235805%_
                             _%$%e235327235808%_
                             _%$%hd235328235811%_
                             _%$%tl235329235813%_
                             _%$%e235330235816%_
                             _%$%hd235331235819%_
                             _%$%tl235332235821%_
                             _%$%e235333235824%_
                             _%$%hd235334235827%_
                             _%$%tl235335235829%_
                             _%$%e235336235832%_
                             _%$%hd235337235835%_
                             _%$%tl235338235837%_
                             _%$%e235339235840%_
                             _%$%hd235340235843%_
                             _%$%tl235341235845%_)))))
                   (_%__match239929239930%_
                    (lambda (_%$%e235318235784%_
                             _%$%hd235319235787%_
                             _%$%tl235320235789%_
                             _%$%e235321235792%_
                             _%$%hd235322235795%_
                             _%$%tl235323235797%_
                             _%$%e235324235800%_
                             _%$%hd235325235803%_
                             _%$%tl235326235805%_
                             _%$%e235327235808%_
                             _%$%hd235328235811%_
                             _%$%tl235329235813%_
                             _%$%e235330235816%_
                             _%$%hd235331235819%_
                             _%$%tl235332235821%_
                             _%$%e235333235824%_
                             _%$%hd235334235827%_
                             _%$%tl235335235829%_
                             _%$%e235336235832%_
                             _%$%hd235337235835%_
                             _%$%tl235338235837%_
                             _%$%e235339235840%_
                             _%$%hd235340235843%_
                             _%$%tl235341235845%_
                             _%$%e235342235848%_
                             _%$%hd235343235851%_
                             _%$%tl235344235853%_
                             _%$%e235345235856%_
                             _%$%hd235346235859%_
                             _%$%tl235347235861%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl235341235845%_))
                          (_%__match239931239932%_
                           _%$%e235318235784%_
                           _%$%hd235319235787%_
                           _%$%tl235320235789%_
                           _%$%e235321235792%_
                           _%$%hd235322235795%_
                           _%$%tl235323235797%_
                           _%$%e235324235800%_
                           _%$%hd235325235803%_
                           _%$%tl235326235805%_
                           _%$%e235327235808%_
                           _%$%hd235328235811%_
                           _%$%tl235329235813%_
                           _%$%e235330235816%_
                           _%$%hd235331235819%_
                           _%$%tl235332235821%_
                           _%$%e235333235824%_
                           _%$%hd235334235827%_
                           _%$%tl235335235829%_
                           _%$%e235336235832%_
                           _%$%hd235337235835%_
                           _%$%tl235338235837%_
                           _%$%e235339235840%_
                           _%$%hd235340235843%_
                           _%$%tl235341235845%_
                           _%$%e235342235848%_
                           _%$%hd235343235851%_
                           _%$%tl235344235853%_
                           _%$%e235345235856%_
                           _%$%hd235346235859%_
                           _%$%tl235347235861%_)
                          (_%__match240009240010%_
                           _%$%e235318235784%_
                           _%$%hd235319235787%_
                           _%$%tl235320235789%_
                           _%$%e235321235792%_
                           _%$%hd235322235795%_
                           _%$%tl235323235797%_
                           _%$%e235324235800%_
                           _%$%hd235325235803%_
                           _%$%tl235326235805%_
                           _%$%e235327235808%_
                           _%$%hd235328235811%_
                           _%$%tl235329235813%_
                           _%$%e235330235816%_
                           _%$%hd235331235819%_
                           _%$%tl235332235821%_
                           _%$%e235333235824%_
                           _%$%hd235334235827%_
                           _%$%tl235335235829%_
                           _%$%e235336235832%_
                           _%$%hd235337235835%_
                           _%$%tl235338235837%_
                           _%$%e235339235840%_
                           _%$%hd235340235843%_
                           _%$%tl235341235845%_
                           _%$%e235342235848%_
                           _%$%hd235343235851%_
                           _%$%tl235344235853%_
                           _%$%e235345235856%_
                           _%$%hd235346235859%_
                           _%$%tl235347235861%_))))
                   (_%__match239919239920%_
                    (lambda (_%$%e235318235784%_
                             _%$%hd235319235787%_
                             _%$%tl235320235789%_
                             _%$%e235321235792%_
                             _%$%hd235322235795%_
                             _%$%tl235323235797%_
                             _%$%e235324235800%_
                             _%$%hd235325235803%_
                             _%$%tl235326235805%_
                             _%$%e235327235808%_
                             _%$%hd235328235811%_
                             _%$%tl235329235813%_
                             _%$%e235330235816%_
                             _%$%hd235331235819%_
                             _%$%tl235332235821%_
                             _%$%e235333235824%_
                             _%$%hd235334235827%_
                             _%$%tl235335235829%_
                             _%$%e235336235832%_
                             _%$%hd235337235835%_
                             _%$%tl235338235837%_
                             _%$%e235339235840%_
                             _%$%hd235340235843%_
                             _%$%tl235341235845%_
                             _%$%e235342235848%_
                             _%$%hd235343235851%_
                             _%$%tl235344235853%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd235343235851%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl235344235853%_))
                              (let ((_%$%e235345235856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl235344235853%_))))
                                (let ((_%$%tl235347235861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e235345235856%_)))
                                      (_%$%hd235346235859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e235345235856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl235347235861%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl235341235845%_))
                                          (_%__match239931239932%_
                                           _%$%e235318235784%_
                                           _%$%hd235319235787%_
                                           _%$%tl235320235789%_
                                           _%$%e235321235792%_
                                           _%$%hd235322235795%_
                                           _%$%tl235323235797%_
                                           _%$%e235324235800%_
                                           _%$%hd235325235803%_
                                           _%$%tl235326235805%_
                                           _%$%e235327235808%_
                                           _%$%hd235328235811%_
                                           _%$%tl235329235813%_
                                           _%$%e235330235816%_
                                           _%$%hd235331235819%_
                                           _%$%tl235332235821%_
                                           _%$%e235333235824%_
                                           _%$%hd235334235827%_
                                           _%$%tl235335235829%_
                                           _%$%e235336235832%_
                                           _%$%hd235337235835%_
                                           _%$%tl235338235837%_
                                           _%$%e235339235840%_
                                           _%$%hd235340235843%_
                                           _%$%tl235341235845%_
                                           _%$%e235342235848%_
                                           _%$%hd235343235851%_
                                           _%$%tl235344235853%_
                                           _%$%e235345235856%_
                                           _%$%hd235346235859%_
                                           _%$%tl235347235861%_)
                                          (_%__match240009240010%_
                                           _%$%e235318235784%_
                                           _%$%hd235319235787%_
                                           _%$%tl235320235789%_
                                           _%$%e235321235792%_
                                           _%$%hd235322235795%_
                                           _%$%tl235323235797%_
                                           _%$%e235324235800%_
                                           _%$%hd235325235803%_
                                           _%$%tl235326235805%_
                                           _%$%e235327235808%_
                                           _%$%hd235328235811%_
                                           _%$%tl235329235813%_
                                           _%$%e235330235816%_
                                           _%$%hd235331235819%_
                                           _%$%tl235332235821%_
                                           _%$%e235333235824%_
                                           _%$%hd235334235827%_
                                           _%$%tl235335235829%_
                                           _%$%e235336235832%_
                                           _%$%hd235337235835%_
                                           _%$%tl235338235837%_
                                           _%$%e235339235840%_
                                           _%$%hd235340235843%_
                                           _%$%tl235341235845%_
                                           _%$%e235342235848%_
                                           _%$%hd235343235851%_
                                           _%$%tl235344235853%_
                                           _%$%e235345235856%_
                                           _%$%hd235346235859%_
                                           _%$%tl235347235861%_))
                                      (_%__match240133240134%_
                                       _%$%e235318235784%_
                                       _%$%hd235319235787%_
                                       _%$%tl235320235789%_
                                       _%$%e235321235792%_
                                       _%$%hd235322235795%_
                                       _%$%tl235323235797%_
                                       _%$%e235324235800%_
                                       _%$%hd235325235803%_
                                       _%$%tl235326235805%_
                                       _%$%e235327235808%_
                                       _%$%hd235328235811%_
                                       _%$%tl235329235813%_
                                       _%$%e235330235816%_
                                       _%$%hd235331235819%_
                                       _%$%tl235332235821%_
                                       _%$%e235333235824%_
                                       _%$%hd235334235827%_
                                       _%$%tl235335235829%_
                                       _%$%e235336235832%_
                                       _%$%hd235337235835%_
                                       _%$%tl235338235837%_
                                       _%$%e235339235840%_
                                       _%$%hd235340235843%_
                                       _%$%tl235341235845%_))))
                              (_%__match240133240134%_
                               _%$%e235318235784%_
                               _%$%hd235319235787%_
                               _%$%tl235320235789%_
                               _%$%e235321235792%_
                               _%$%hd235322235795%_
                               _%$%tl235323235797%_
                               _%$%e235324235800%_
                               _%$%hd235325235803%_
                               _%$%tl235326235805%_
                               _%$%e235327235808%_
                               _%$%hd235328235811%_
                               _%$%tl235329235813%_
                               _%$%e235330235816%_
                               _%$%hd235331235819%_
                               _%$%tl235332235821%_
                               _%$%e235333235824%_
                               _%$%hd235334235827%_
                               _%$%tl235335235829%_
                               _%$%e235336235832%_
                               _%$%hd235337235835%_
                               _%$%tl235338235837%_
                               _%$%e235339235840%_
                               _%$%hd235340235843%_
                               _%$%tl235341235845%_))
                          (_%__match240133240134%_
                           _%$%e235318235784%_
                           _%$%hd235319235787%_
                           _%$%tl235320235789%_
                           _%$%e235321235792%_
                           _%$%hd235322235795%_
                           _%$%tl235323235797%_
                           _%$%e235324235800%_
                           _%$%hd235325235803%_
                           _%$%tl235326235805%_
                           _%$%e235327235808%_
                           _%$%hd235328235811%_
                           _%$%tl235329235813%_
                           _%$%e235330235816%_
                           _%$%hd235331235819%_
                           _%$%tl235332235821%_
                           _%$%e235333235824%_
                           _%$%hd235334235827%_
                           _%$%tl235335235829%_
                           _%$%e235336235832%_
                           _%$%hd235337235835%_
                           _%$%tl235338235837%_
                           _%$%e235339235840%_
                           _%$%hd235340235843%_
                           _%$%tl235341235845%_))))
                   (_%__match239851239852%_
                    (lambda (_%$%e235267235903%_
                             _%$%hd235268235906%_
                             _%$%tl235269235908%_
                             _%$%e235270235911%_
                             _%$%hd235271235914%_
                             _%$%tl235272235916%_
                             _%$%e235273235919%_
                             _%$%hd235274235922%_
                             _%$%tl235275235924%_
                             _%$%e235276235927%_
                             _%$%hd235277235930%_
                             _%$%tl235278235932%_
                             _%$%e235279235935%_
                             _%$%hd235280235938%_
                             _%$%tl235281235940%_
                             _%$%e235282235943%_
                             _%$%hd235283235946%_
                             _%$%tl235284235948%_
                             _%$%e235285235951%_
                             _%$%hd235286235954%_
                             _%$%tl235287235956%_
                             _%$%e235288235959%_
                             _%$%hd235289235962%_
                             _%$%tl235290235964%_
                             _%$%e235291235967%_
                             _%$%hd235292235970%_
                             _%$%tl235293235972%_
                             _%$%e235294235975%_
                             _%$%hd235295235978%_
                             _%$%tl235296235980%_
                             _%$%e235297235983%_
                             _%$%hd235298235986%_
                             _%$%tl235299235988%_
                             _%$%e235300235991%_
                             _%$%hd235301235994%_
                             _%$%tl235302235996%_
                             _%$%e235303235999%_
                             _%$%hd235304236002%_
                             _%$%tl235305236004%_
                             _%__splice239644239645%_
                             _%$%target235306236007%_
                             _%$%tl235308236009%_)
                      (letrec ((_%$%loop235309236012%_
                                (lambda (_%$%hd235307236015%_
                                         _%$%args235313236017%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd235307236015%_))
                                      (let ((_%$%e235310236019%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd235307236015%_))))
                                        (let ((_%$%lp-tl235312236024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e235310236019%_)))
                                              (_%$%lp-hd235311236022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e235310236019%_))))
                                          (_%$%loop235309236012%_
                                           _%$%lp-tl235312236024%_
                                           (cons _%$%lp-hd235311236022%_
                                                 _%$%args235313236017%_))))
                                      (let ((_%$%args235314236027%_
                                             (reverse _%$%args235313236017%_)))
                                        (let ((_%$%g235262236029%_
                                               _%$%args235314236027%_)
                                              (_%$%g235263236030%_
                                               _%$%hd235304236002%_)
                                              (_%$%g235264236031%_
                                               _%$%hd235295235978%_)
                                              (_%$%g235265236032%_
                                               _%$%hd235286235954%_)
                                              (_%$%g235266236033%_
                                               _%$%hd235277235930%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g235266236033%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g235265236032%_
                                                      'call-method))
                                                   (let ((__tmp240798
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self235208%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g235264236031%_
                                                      __tmp240798)))
                                              (_%__kont239642239643%_
                                               _%$%g235262236029%_
                                               _%$%g235263236030%_
                                               _%$%g235264236031%_
                                               _%$%g235265236032%_
                                               _%$%g235266236033%_)
                                              (_%__kont239654239655%_))))))))
                        (_%$%loop235309236012%_
                         _%$%target235306236007%_
                         '()))))
                   (_%__match239809239810%_
                    (lambda (_%$%e235267235903%_
                             _%$%hd235268235906%_
                             _%$%tl235269235908%_
                             _%$%e235270235911%_
                             _%$%hd235271235914%_
                             _%$%tl235272235916%_
                             _%$%e235273235919%_
                             _%$%hd235274235922%_
                             _%$%tl235275235924%_
                             _%$%e235276235927%_
                             _%$%hd235277235930%_
                             _%$%tl235278235932%_
                             _%$%e235279235935%_
                             _%$%hd235280235938%_
                             _%$%tl235281235940%_
                             _%$%e235282235943%_
                             _%$%hd235283235946%_
                             _%$%tl235284235948%_
                             _%$%e235285235951%_
                             _%$%hd235286235954%_
                             _%$%tl235287235956%_
                             _%$%e235288235959%_
                             _%$%hd235289235962%_
                             _%$%tl235290235964%_
                             _%$%e235291235967%_
                             _%$%hd235292235970%_
                             _%$%tl235293235972%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd235292235970%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl235293235972%_))
                              (let ((_%$%e235294235975%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl235293235972%_))))
                                (let ((_%$%tl235296235980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e235294235975%_)))
                                      (_%$%hd235295235978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e235294235975%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl235296235980%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl235290235964%_))
                                          (let ((_%$%e235297235983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl235290235964%_))))
                                            (let ((_%$%tl235299235988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e235297235983%_)))
                                                  (_%$%hd235298235986%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e235297235983%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd235298235986%_))
                                                  (let ((_%$%e235300235991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd235298235986%_))))
                                                    (let ((_%$%tl235302235996%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e235300235991%_)))
                                                          (_%$%hd235301235994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e235300235991%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd235301235994%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd235301235994%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl235302235996%_))
                          (let ((_%$%e235303235999%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl235302235996%_))))
                            (let ((_%$%tl235305236004%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e235303235999%_)))
                                  (_%$%hd235304236002%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e235303235999%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl235305236004%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl235299235988%_))
                                      (let ((_%__splice239644239645%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl235299235988%_
                                                '0))))
                                        (let ((_%$%tl235308236009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice239644239645%_
                                                  '1)))
                                              (_%$%target235306236007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice239644239645%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl235308236009%_))
                                              (_%__match239851239852%_
                                               _%$%e235267235903%_
                                               _%$%hd235268235906%_
                                               _%$%tl235269235908%_
                                               _%$%e235270235911%_
                                               _%$%hd235271235914%_
                                               _%$%tl235272235916%_
                                               _%$%e235273235919%_
                                               _%$%hd235274235922%_
                                               _%$%tl235275235924%_
                                               _%$%e235276235927%_
                                               _%$%hd235277235930%_
                                               _%$%tl235278235932%_
                                               _%$%e235279235935%_
                                               _%$%hd235280235938%_
                                               _%$%tl235281235940%_
                                               _%$%e235282235943%_
                                               _%$%hd235283235946%_
                                               _%$%tl235284235948%_
                                               _%$%e235285235951%_
                                               _%$%hd235286235954%_
                                               _%$%tl235287235956%_
                                               _%$%e235288235959%_
                                               _%$%hd235289235962%_
                                               _%$%tl235290235964%_
                                               _%$%e235291235967%_
                                               _%$%hd235292235970%_
                                               _%$%tl235293235972%_
                                               _%$%e235294235975%_
                                               _%$%hd235295235978%_
                                               _%$%tl235296235980%_
                                               _%$%e235297235983%_
                                               _%$%hd235298235986%_
                                               _%$%tl235299235988%_
                                               _%$%e235300235991%_
                                               _%$%hd235301235994%_
                                               _%$%tl235302235996%_
                                               _%$%e235303235999%_
                                               _%$%hd235304236002%_
                                               _%$%tl235305236004%_
                                               _%__splice239644239645%_
                                               _%$%target235306236007%_
                                               _%$%tl235308236009%_)
                                              (_%__kont239654239655%_))))
                                      (_%__kont239654239655%_))
                                  (_%__kont239654239655%_))))
                          (_%__kont239654239655%_))
                      (_%__kont239654239655%_))
                  (_%__kont239654239655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont239654239655%_))))
                                          (_%__match240133240134%_
                                           _%$%e235267235903%_
                                           _%$%hd235268235906%_
                                           _%$%tl235269235908%_
                                           _%$%e235270235911%_
                                           _%$%hd235271235914%_
                                           _%$%tl235272235916%_
                                           _%$%e235273235919%_
                                           _%$%hd235274235922%_
                                           _%$%tl235275235924%_
                                           _%$%e235276235927%_
                                           _%$%hd235277235930%_
                                           _%$%tl235278235932%_
                                           _%$%e235279235935%_
                                           _%$%hd235280235938%_
                                           _%$%tl235281235940%_
                                           _%$%e235282235943%_
                                           _%$%hd235283235946%_
                                           _%$%tl235284235948%_
                                           _%$%e235285235951%_
                                           _%$%hd235286235954%_
                                           _%$%tl235287235956%_
                                           _%$%e235288235959%_
                                           _%$%hd235289235962%_
                                           _%$%tl235290235964%_))
                                      (_%__match240133240134%_
                                       _%$%e235267235903%_
                                       _%$%hd235268235906%_
                                       _%$%tl235269235908%_
                                       _%$%e235270235911%_
                                       _%$%hd235271235914%_
                                       _%$%tl235272235916%_
                                       _%$%e235273235919%_
                                       _%$%hd235274235922%_
                                       _%$%tl235275235924%_
                                       _%$%e235276235927%_
                                       _%$%hd235277235930%_
                                       _%$%tl235278235932%_
                                       _%$%e235279235935%_
                                       _%$%hd235280235938%_
                                       _%$%tl235281235940%_
                                       _%$%e235282235943%_
                                       _%$%hd235283235946%_
                                       _%$%tl235284235948%_
                                       _%$%e235285235951%_
                                       _%$%hd235286235954%_
                                       _%$%tl235287235956%_
                                       _%$%e235288235959%_
                                       _%$%hd235289235962%_
                                       _%$%tl235290235964%_))))
                              (_%__match240133240134%_
                               _%$%e235267235903%_
                               _%$%hd235268235906%_
                               _%$%tl235269235908%_
                               _%$%e235270235911%_
                               _%$%hd235271235914%_
                               _%$%tl235272235916%_
                               _%$%e235273235919%_
                               _%$%hd235274235922%_
                               _%$%tl235275235924%_
                               _%$%e235276235927%_
                               _%$%hd235277235930%_
                               _%$%tl235278235932%_
                               _%$%e235279235935%_
                               _%$%hd235280235938%_
                               _%$%tl235281235940%_
                               _%$%e235282235943%_
                               _%$%hd235283235946%_
                               _%$%tl235284235948%_
                               _%$%e235285235951%_
                               _%$%hd235286235954%_
                               _%$%tl235287235956%_
                               _%$%e235288235959%_
                               _%$%hd235289235962%_
                               _%$%tl235290235964%_))
                          (_%__match239919239920%_
                           _%$%e235267235903%_
                           _%$%hd235268235906%_
                           _%$%tl235269235908%_
                           _%$%e235270235911%_
                           _%$%hd235271235914%_
                           _%$%tl235272235916%_
                           _%$%e235273235919%_
                           _%$%hd235274235922%_
                           _%$%tl235275235924%_
                           _%$%e235276235927%_
                           _%$%hd235277235930%_
                           _%$%tl235278235932%_
                           _%$%e235279235935%_
                           _%$%hd235280235938%_
                           _%$%tl235281235940%_
                           _%$%e235282235943%_
                           _%$%hd235283235946%_
                           _%$%tl235284235948%_
                           _%$%e235285235951%_
                           _%$%hd235286235954%_
                           _%$%tl235287235956%_
                           _%$%e235288235959%_
                           _%$%hd235289235962%_
                           _%$%tl235290235964%_
                           _%$%e235291235967%_
                           _%$%hd235292235970%_
                           _%$%tl235293235972%_))))
                   (_%__match239741239742%_
                    (lambda (_%$%e235223236090%_
                             _%$%hd235224236093%_
                             _%$%tl235225236095%_
                             _%$%e235226236098%_
                             _%$%hd235227236101%_
                             _%$%tl235228236103%_
                             _%$%e235229236106%_
                             _%$%hd235230236109%_
                             _%$%tl235231236111%_
                             _%$%e235232236114%_
                             _%$%hd235233236117%_
                             _%$%tl235234236119%_
                             _%$%e235235236122%_
                             _%$%hd235236236125%_
                             _%$%tl235237236127%_
                             _%$%e235238236130%_
                             _%$%hd235239236133%_
                             _%$%tl235240236135%_
                             _%$%e235241236138%_
                             _%$%hd235242236141%_
                             _%$%tl235243236143%_
                             _%$%e235244236146%_
                             _%$%hd235245236149%_
                             _%$%tl235246236151%_
                             _%$%e235247236154%_
                             _%$%hd235248236157%_
                             _%$%tl235249236159%_
                             _%$%e235250236162%_
                             _%$%hd235251236165%_
                             _%$%tl235252236167%_
                             _%__splice239640239641%_
                             _%$%target235253236170%_
                             _%$%tl235255236172%_)
                      (letrec ((_%$%loop235256236175%_
                                (lambda (_%$%hd235254236178%_
                                         _%$%args235260236180%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd235254236178%_))
                                      (let ((_%$%e235257236182%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd235254236178%_))))
                                        (let ((_%$%lp-tl235259236187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e235257236182%_)))
                                              (_%$%lp-hd235258236185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e235257236182%_))))
                                          (_%$%loop235256236175%_
                                           _%$%lp-tl235259236187%_
                                           (cons _%$%lp-hd235258236185%_
                                                 _%$%args235260236180%_))))
                                      (let ((_%$%args235261236190%_
                                             (reverse _%$%args235260236180%_)))
                                        (let ((_%$%g235219236192%_
                                               _%$%args235261236190%_)
                                              (_%$%g235220236193%_
                                               _%$%hd235251236165%_)
                                              (_%$%g235221236194%_
                                               _%$%hd235242236141%_)
                                              (_%$%g235222236195%_
                                               _%$%hd235233236117%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g235222236195%_
                                                      'call-method))
                                                   (let ((__tmp240799
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self235208%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g235221236194%_
                                                      __tmp240799)))
                                              (_%__kont239638239639%_
                                               _%$%g235219236192%_
                                               _%$%g235220236193%_
                                               _%$%g235221236194%_
                                               _%$%g235222236195%_)
                                              (_%__match239929239930%_
                                               _%$%e235223236090%_
                                               _%$%hd235224236093%_
                                               _%$%tl235225236095%_
                                               _%$%e235226236098%_
                                               _%$%hd235227236101%_
                                               _%$%tl235228236103%_
                                               _%$%e235229236106%_
                                               _%$%hd235230236109%_
                                               _%$%tl235231236111%_
                                               _%$%e235232236114%_
                                               _%$%hd235233236117%_
                                               _%$%tl235234236119%_
                                               _%$%e235235236122%_
                                               _%$%hd235236236125%_
                                               _%$%tl235237236127%_
                                               _%$%e235238236130%_
                                               _%$%hd235239236133%_
                                               _%$%tl235240236135%_
                                               _%$%e235241236138%_
                                               _%$%hd235242236141%_
                                               _%$%tl235243236143%_
                                               _%$%e235244236146%_
                                               _%$%hd235245236149%_
                                               _%$%tl235246236151%_
                                               _%$%e235247236154%_
                                               _%$%hd235248236157%_
                                               _%$%tl235249236159%_
                                               _%$%e235250236162%_
                                               _%$%hd235251236165%_
                                               _%$%tl235252236167%_))))))))
                        (_%$%loop235256236175%_
                         _%$%target235253236170%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx239636239637%_))
                  (let ((_%$%e235223236090%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx239636239637%_))))
                    (let ((_%$%tl235225236095%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e235223236090%_)))
                          (_%$%hd235224236093%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e235223236090%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl235225236095%_))
                          (let ((_%$%e235226236098%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl235225236095%_))))
                            (let ((_%$%tl235228236103%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e235226236098%_)))
                                  (_%$%hd235227236101%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e235226236098%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd235227236101%_))
                                  (let ((_%$%e235229236106%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd235227236101%_))))
                                    (let ((_%$%tl235231236111%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e235229236106%_)))
                                          (_%$%hd235230236109%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e235229236106%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd235230236109%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd235230236109%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl235231236111%_))
                                                  (let ((_%$%e235232236114%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl235231236111%_))))
                                                    (let ((_%$%tl235234236119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e235232236114%_)))
                                                          (_%$%hd235233236117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e235232236114%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl235234236119%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl235228236103%_))
                      (let ((_%$%e235235236122%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl235228236103%_))))
                        (let ((_%$%tl235237236127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e235235236122%_)))
                              (_%$%hd235236236125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e235235236122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd235236236125%_))
                              (let ((_%$%e235238236130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd235236236125%_))))
                                (let ((_%$%tl235240236135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e235238236130%_)))
                                      (_%$%hd235239236133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e235238236130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd235239236133%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd235239236133%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl235240236135%_))
                                              (let ((_%$%e235241236138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl235240236135%_))))
                                                (let ((_%$%tl235243236143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e235241236138%_)))
                                                      (_%$%hd235242236141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e235241236138%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl235243236143%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl235237236127%_))
                                                          (let ((_%$%e235244236146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl235237236127%_))))
                    (let ((_%$%tl235246236151%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e235244236146%_)))
                          (_%$%hd235245236149%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e235244236146%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd235245236149%_))
                          (let ((_%$%e235247236154%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd235245236149%_))))
                            (let ((_%$%tl235249236159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e235247236154%_)))
                                  (_%$%hd235248236157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e235247236154%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd235248236157%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd235248236157%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl235249236159%_))
                                          (let ((_%$%e235250236162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl235249236159%_))))
                                            (let ((_%$%tl235252236167%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e235250236162%_)))
                                                  (_%$%hd235251236165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e235250236162%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl235252236167%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl235246236151%_))
                                                      (let ((_%__splice239640239641%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl235246236151%_
                        '0))))
                (let ((_%$%tl235255236172%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice239640239641%_ '1)))
                      (_%$%target235253236170%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice239640239641%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl235255236172%_))
                      (_%__match239741239742%_
                       _%$%e235223236090%_
                       _%$%hd235224236093%_
                       _%$%tl235225236095%_
                       _%$%e235226236098%_
                       _%$%hd235227236101%_
                       _%$%tl235228236103%_
                       _%$%e235229236106%_
                       _%$%hd235230236109%_
                       _%$%tl235231236111%_
                       _%$%e235232236114%_
                       _%$%hd235233236117%_
                       _%$%tl235234236119%_
                       _%$%e235235236122%_
                       _%$%hd235236236125%_
                       _%$%tl235237236127%_
                       _%$%e235238236130%_
                       _%$%hd235239236133%_
                       _%$%tl235240236135%_
                       _%$%e235241236138%_
                       _%$%hd235242236141%_
                       _%$%tl235243236143%_
                       _%$%e235244236146%_
                       _%$%hd235245236149%_
                       _%$%tl235246236151%_
                       _%$%e235247236154%_
                       _%$%hd235248236157%_
                       _%$%tl235249236159%_
                       _%$%e235250236162%_
                       _%$%hd235251236165%_
                       _%$%tl235252236167%_
                       _%__splice239640239641%_
                       _%$%target235253236170%_
                       _%$%tl235255236172%_)
                      (_%__match239929239930%_
                       _%$%e235223236090%_
                       _%$%hd235224236093%_
                       _%$%tl235225236095%_
                       _%$%e235226236098%_
                       _%$%hd235227236101%_
                       _%$%tl235228236103%_
                       _%$%e235229236106%_
                       _%$%hd235230236109%_
                       _%$%tl235231236111%_
                       _%$%e235232236114%_
                       _%$%hd235233236117%_
                       _%$%tl235234236119%_
                       _%$%e235235236122%_
                       _%$%hd235236236125%_
                       _%$%tl235237236127%_
                       _%$%e235238236130%_
                       _%$%hd235239236133%_
                       _%$%tl235240236135%_
                       _%$%e235241236138%_
                       _%$%hd235242236141%_
                       _%$%tl235243236143%_
                       _%$%e235244236146%_
                       _%$%hd235245236149%_
                       _%$%tl235246236151%_
                       _%$%e235247236154%_
                       _%$%hd235248236157%_
                       _%$%tl235249236159%_
                       _%$%e235250236162%_
                       _%$%hd235251236165%_
                       _%$%tl235252236167%_))))
              (_%__match239929239930%_
               _%$%e235223236090%_
               _%$%hd235224236093%_
               _%$%tl235225236095%_
               _%$%e235226236098%_
               _%$%hd235227236101%_
               _%$%tl235228236103%_
               _%$%e235229236106%_
               _%$%hd235230236109%_
               _%$%tl235231236111%_
               _%$%e235232236114%_
               _%$%hd235233236117%_
               _%$%tl235234236119%_
               _%$%e235235236122%_
               _%$%hd235236236125%_
               _%$%tl235237236127%_
               _%$%e235238236130%_
               _%$%hd235239236133%_
               _%$%tl235240236135%_
               _%$%e235241236138%_
               _%$%hd235242236141%_
               _%$%tl235243236143%_
               _%$%e235244236146%_
               _%$%hd235245236149%_
               _%$%tl235246236151%_
               _%$%e235247236154%_
               _%$%hd235248236157%_
               _%$%tl235249236159%_
               _%$%e235250236162%_
               _%$%hd235251236165%_
               _%$%tl235252236167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match240133240134%_
                                                   _%$%e235223236090%_
                                                   _%$%hd235224236093%_
                                                   _%$%tl235225236095%_
                                                   _%$%e235226236098%_
                                                   _%$%hd235227236101%_
                                                   _%$%tl235228236103%_
                                                   _%$%e235229236106%_
                                                   _%$%hd235230236109%_
                                                   _%$%tl235231236111%_
                                                   _%$%e235232236114%_
                                                   _%$%hd235233236117%_
                                                   _%$%tl235234236119%_
                                                   _%$%e235235236122%_
                                                   _%$%hd235236236125%_
                                                   _%$%tl235237236127%_
                                                   _%$%e235238236130%_
                                                   _%$%hd235239236133%_
                                                   _%$%tl235240236135%_
                                                   _%$%e235241236138%_
                                                   _%$%hd235242236141%_
                                                   _%$%tl235243236143%_
                                                   _%$%e235244236146%_
                                                   _%$%hd235245236149%_
                                                   _%$%tl235246236151%_))))
                                          (_%__match240133240134%_
                                           _%$%e235223236090%_
                                           _%$%hd235224236093%_
                                           _%$%tl235225236095%_
                                           _%$%e235226236098%_
                                           _%$%hd235227236101%_
                                           _%$%tl235228236103%_
                                           _%$%e235229236106%_
                                           _%$%hd235230236109%_
                                           _%$%tl235231236111%_
                                           _%$%e235232236114%_
                                           _%$%hd235233236117%_
                                           _%$%tl235234236119%_
                                           _%$%e235235236122%_
                                           _%$%hd235236236125%_
                                           _%$%tl235237236127%_
                                           _%$%e235238236130%_
                                           _%$%hd235239236133%_
                                           _%$%tl235240236135%_
                                           _%$%e235241236138%_
                                           _%$%hd235242236141%_
                                           _%$%tl235243236143%_
                                           _%$%e235244236146%_
                                           _%$%hd235245236149%_
                                           _%$%tl235246236151%_))
                                      (_%__match239809239810%_
                                       _%$%e235223236090%_
                                       _%$%hd235224236093%_
                                       _%$%tl235225236095%_
                                       _%$%e235226236098%_
                                       _%$%hd235227236101%_
                                       _%$%tl235228236103%_
                                       _%$%e235229236106%_
                                       _%$%hd235230236109%_
                                       _%$%tl235231236111%_
                                       _%$%e235232236114%_
                                       _%$%hd235233236117%_
                                       _%$%tl235234236119%_
                                       _%$%e235235236122%_
                                       _%$%hd235236236125%_
                                       _%$%tl235237236127%_
                                       _%$%e235238236130%_
                                       _%$%hd235239236133%_
                                       _%$%tl235240236135%_
                                       _%$%e235241236138%_
                                       _%$%hd235242236141%_
                                       _%$%tl235243236143%_
                                       _%$%e235244236146%_
                                       _%$%hd235245236149%_
                                       _%$%tl235246236151%_
                                       _%$%e235247236154%_
                                       _%$%hd235248236157%_
                                       _%$%tl235249236159%_))
                                  (_%__match240133240134%_
                                   _%$%e235223236090%_
                                   _%$%hd235224236093%_
                                   _%$%tl235225236095%_
                                   _%$%e235226236098%_
                                   _%$%hd235227236101%_
                                   _%$%tl235228236103%_
                                   _%$%e235229236106%_
                                   _%$%hd235230236109%_
                                   _%$%tl235231236111%_
                                   _%$%e235232236114%_
                                   _%$%hd235233236117%_
                                   _%$%tl235234236119%_
                                   _%$%e235235236122%_
                                   _%$%hd235236236125%_
                                   _%$%tl235237236127%_
                                   _%$%e235238236130%_
                                   _%$%hd235239236133%_
                                   _%$%tl235240236135%_
                                   _%$%e235241236138%_
                                   _%$%hd235242236141%_
                                   _%$%tl235243236143%_
                                   _%$%e235244236146%_
                                   _%$%hd235245236149%_
                                   _%$%tl235246236151%_))))
                          (_%__match240133240134%_
                           _%$%e235223236090%_
                           _%$%hd235224236093%_
                           _%$%tl235225236095%_
                           _%$%e235226236098%_
                           _%$%hd235227236101%_
                           _%$%tl235228236103%_
                           _%$%e235229236106%_
                           _%$%hd235230236109%_
                           _%$%tl235231236111%_
                           _%$%e235232236114%_
                           _%$%hd235233236117%_
                           _%$%tl235234236119%_
                           _%$%e235235236122%_
                           _%$%hd235236236125%_
                           _%$%tl235237236127%_
                           _%$%e235238236130%_
                           _%$%hd235239236133%_
                           _%$%tl235240236135%_
                           _%$%e235241236138%_
                           _%$%hd235242236141%_
                           _%$%tl235243236143%_
                           _%$%e235244236146%_
                           _%$%hd235245236149%_
                           _%$%tl235246236151%_))))
                  (_%__match240071240072%_
                   _%$%e235223236090%_
                   _%$%hd235224236093%_
                   _%$%tl235225236095%_
                   _%$%e235226236098%_
                   _%$%hd235227236101%_
                   _%$%tl235228236103%_
                   _%$%e235229236106%_
                   _%$%hd235230236109%_
                   _%$%tl235231236111%_
                   _%$%e235232236114%_
                   _%$%hd235233236117%_
                   _%$%tl235234236119%_
                   _%$%e235235236122%_
                   _%$%hd235236236125%_
                   _%$%tl235237236127%_
                   _%$%e235238236130%_
                   _%$%hd235239236133%_
                   _%$%tl235240236135%_
                   _%$%e235241236138%_
                   _%$%hd235242236141%_
                   _%$%tl235243236143%_))
              (_%__kont239654239655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont239654239655%_))
                                          (_%__kont239654239655%_))
                                      (_%__kont239654239655%_))))
                              (_%__kont239654239655%_))))
                      (_%__kont239654239655%_))
                  (_%__kont239654239655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont239654239655%_))
                                              (_%__kont239654239655%_))
                                          (_%__kont239654239655%_))))
                                  (_%__kont239654239655%_))))
                          (_%__kont239654239655%_))))
                  (_%__kont239654239655%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self234151%_ _%stx234152%_)
        (letrec ((_%force-e234154%_
                  (lambda (_%target235206%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target235206%_ '()))
                                      '()))))))
          (let* ((_%__stx240138240139%_ _%stx234152%_)
                 (_%$%g234162234384%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx240138240139%_)))))
            (let ((_%__kont240140240141%_
                   (lambda (_%$%g234164235152%_
                            _%$%g234165235153%_
                            _%$%g234166235154%_
                            _%$%g234167235155%_)
                     (let ((_%$method235200%_
                            (let ((__tmp240801
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self234151%_ 'methods)))
                                  (__tmp240800
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g234165235153%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp240801 __tmp240800)))
                           (_%args235201%_
                            (map (lambda (_%$%g235188235190%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self234151%_
                                      _%$%g235188235190%_)))
                                 (let ((__tmp240802
                                        (lambda (_%$%g235192235195%_
                                                 _%$%g235193235197%_)
                                          (cons _%$%g235192235195%_
                                                _%$%g235193235197%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp240802
                                    '()
                                    _%$%g234164235152%_)))))
                       (let ((__tmp240803
                              (cons '%#call
                                    (cons (_%force-e234154%_ _%$method235200%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self234151%_
                                                               'receiver))
                                                            '()))
                                                _%args235201%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp240803 _%stx234152%_)))))
                  (_%__kont240144240145%_
                   (lambda (_%$%g234207234986%_
                            _%$%g234208234987%_
                            _%$%g234209234988%_
                            _%$%g234210234989%_
                            _%$%g234211234990%_)
                     (let ((_%$method235042%_
                            (let ((__tmp240805
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self234151%_ 'methods)))
                                  (__tmp240804
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g234208234987%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp240805 __tmp240804)))
                           (_%args235043%_
                            (map (lambda (_%$%g235030235032%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self234151%_
                                      _%$%g235030235032%_)))
                                 (let ((__tmp240806
                                        (lambda (_%$%g235034235037%_
                                                 _%$%g235035235039%_)
                                          (cons _%$%g235034235037%_
                                                _%$%g235035235039%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp240806
                                    '()
                                    _%$%g234207234986%_)))))
                       (let ((__tmp240807
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e234154%_
                                                 _%$method235042%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self234151%_ 'receiver))
                          '()))
              _%args235043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp240807 _%stx234152%_)))))
                  (_%__kont240148240149%_
                   (lambda (_%$%g234260234819%_
                            _%$%g234261234820%_
                            _%$%g234262234821%_)
                     (let* ((_%$field234853%_
                             (let ((__tmp240809
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self234151%_ 'slots)))
                                   (__tmp240808
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g234260234819%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp240809 __tmp240808)))
                            (__tmp240810
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self234151%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field234853%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self234151%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp240810 _%stx234152%_))))
                  (_%__kont240150240151%_
                   (lambda (_%$%g234293234693%_
                            _%$%g234294234694%_
                            _%$%g234295234695%_
                            _%$%g234296234696%_)
                     (let ((_%$field234731%_
                            (let ((__tmp240812
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self234151%_ 'slots)))
                                  (__tmp240811
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g234294234694%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp240812 __tmp240811)))
                           (_%expr234732%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self234151%_
                               _%$%g234293234693%_))))
                       (let ((__tmp240813
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self234151%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field234731%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self234151%_ 'receiver))
                          '()))
              (cons _%expr234732%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp240813 _%stx234152%_)))))
                  (_%__kont240152240153%_
                   (lambda (_%$%g234330234565%_ _%$%g234331234566%_)
                     (let* ((_%accessor234588%_
                             (let ((__tmp240814
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g234331234566%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp240814)))
                            (_%klass234590%_
                             (let ((__tmp240815
                                    (##structure-ref
                                     _%accessor234588%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx234152%_
                                __tmp240815)))
                            (_%slot234592%_
                             (##structure-ref
                              _%accessor234588%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor234588%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass234590%_
                                      _%slot234592%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass234590%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx234152%_
                           (let* ((_%$field234598%_
                                   (let ((__tmp240816
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self234151%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp240816 _%slot234592%_)))
                                  (__tmp240817
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self234151%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field234598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self234151%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp240817
                              _%stx234152%_))))))
                  (_%__kont240154240155%_
                   (lambda (_%$%g234353234460%_
                            _%$%g234354234461%_
                            _%$%g234355234462%_)
                     (let* ((_%mutator234490%_
                             (let ((__tmp240818
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g234355234462%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp240818)))
                            (_%klass234492%_
                             (let ((__tmp240819
                                    (##structure-ref
                                     _%mutator234490%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx234152%_
                                __tmp240819)))
                            (_%slot234494%_
                             (##structure-ref
                              _%mutator234490%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr234496%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self234151%_
                                _%$%g234353234460%_))))
                       (if (if (##structure-ref
                                _%mutator234490%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass234492%_
                                      _%slot234494%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass234492%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp240820
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g234355234462%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g234354234461%_
                                                                '()))
                                                    (cons _%expr234496%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp240820 _%stx234152%_))
                           (let* ((_%$field234502%_
                                   (let ((__tmp240821
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self234151%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp240821 _%slot234494%_)))
                                  (__tmp240822
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self234151%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field234502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self234151%_ 'receiver))
                               '()))
                   (cons _%expr234496%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp240822
                              _%stx234152%_))))))
                  (_%__kont240156240157%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self234151%_ _%stx234152%_)))))
              (let* ((_%__match240637240638%_
                      (lambda (_%$%e234356234396%_
                               _%$%hd234357234399%_
                               _%$%tl234358234401%_
                               _%$%e234359234404%_
                               _%$%hd234360234407%_
                               _%$%tl234361234409%_
                               _%$%e234362234412%_
                               _%$%hd234363234415%_
                               _%$%tl234364234417%_
                               _%$%e234365234420%_
                               _%$%hd234366234423%_
                               _%$%tl234367234425%_
                               _%$%e234368234428%_
                               _%$%hd234369234431%_
                               _%$%tl234370234433%_
                               _%$%e234371234436%_
                               _%$%hd234372234439%_
                               _%$%tl234373234441%_
                               _%$%e234374234444%_
                               _%$%hd234375234447%_
                               _%$%tl234376234449%_
                               _%$%e234377234452%_
                               _%$%hd234378234455%_
                               _%$%tl234379234457%_)
                        (let ((_%$%g234353234460%_ _%$%hd234378234455%_)
                              (_%$%g234354234461%_ _%$%hd234375234447%_)
                              (_%$%g234355234462%_ _%$%hd234366234423%_))
                          (if (and (let ((__tmp240823
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self234151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g234354234461%_
                                      __tmp240823))
                                   (let ((__tmp240824
                                          (let ((__tmp240825
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g234355234462%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp240825))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp240824
                                      'gxc#!mutator::t)))
                              (_%__kont240154240155%_
                               _%$%g234353234460%_
                               _%$%g234354234461%_
                               _%$%g234355234462%_)
                              (_%__kont240156240157%_)))))
                     (_%__match240635240636%_
                      (lambda (_%$%e234356234396%_
                               _%$%hd234357234399%_
                               _%$%tl234358234401%_
                               _%$%e234359234404%_
                               _%$%hd234360234407%_
                               _%$%tl234361234409%_
                               _%$%e234362234412%_
                               _%$%hd234363234415%_
                               _%$%tl234364234417%_
                               _%$%e234365234420%_
                               _%$%hd234366234423%_
                               _%$%tl234367234425%_
                               _%$%e234368234428%_
                               _%$%hd234369234431%_
                               _%$%tl234370234433%_
                               _%$%e234371234436%_
                               _%$%hd234372234439%_
                               _%$%tl234373234441%_
                               _%$%e234374234444%_
                               _%$%hd234375234447%_
                               _%$%tl234376234449%_
                               _%$%e234377234452%_
                               _%$%hd234378234455%_
                               _%$%tl234379234457%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl234379234457%_))
                            (_%__match240637240638%_
                             _%$%e234356234396%_
                             _%$%hd234357234399%_
                             _%$%tl234358234401%_
                             _%$%e234359234404%_
                             _%$%hd234360234407%_
                             _%$%tl234361234409%_
                             _%$%e234362234412%_
                             _%$%hd234363234415%_
                             _%$%tl234364234417%_
                             _%$%e234365234420%_
                             _%$%hd234366234423%_
                             _%$%tl234367234425%_
                             _%$%e234368234428%_
                             _%$%hd234369234431%_
                             _%$%tl234370234433%_
                             _%$%e234371234436%_
                             _%$%hd234372234439%_
                             _%$%tl234373234441%_
                             _%$%e234374234444%_
                             _%$%hd234375234447%_
                             _%$%tl234376234449%_
                             _%$%e234377234452%_
                             _%$%hd234378234455%_
                             _%$%tl234379234457%_)
                            (_%__kont240156240157%_))))
                     (_%__match240629240630%_
                      (lambda (_%$%e234356234396%_
                               _%$%hd234357234399%_
                               _%$%tl234358234401%_
                               _%$%e234359234404%_
                               _%$%hd234360234407%_
                               _%$%tl234361234409%_
                               _%$%e234362234412%_
                               _%$%hd234363234415%_
                               _%$%tl234364234417%_
                               _%$%e234365234420%_
                               _%$%hd234366234423%_
                               _%$%tl234367234425%_
                               _%$%e234368234428%_
                               _%$%hd234369234431%_
                               _%$%tl234370234433%_
                               _%$%e234371234436%_
                               _%$%hd234372234439%_
                               _%$%tl234373234441%_
                               _%$%e234374234444%_
                               _%$%hd234375234447%_
                               _%$%tl234376234449%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl234370234433%_))
                            (let ((_%$%e234377234452%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl234370234433%_))))
                              (let ((_%$%tl234379234457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e234377234452%_)))
                                    (_%$%hd234378234455%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e234377234452%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl234379234457%_))
                                    (_%__match240637240638%_
                                     _%$%e234356234396%_
                                     _%$%hd234357234399%_
                                     _%$%tl234358234401%_
                                     _%$%e234359234404%_
                                     _%$%hd234360234407%_
                                     _%$%tl234361234409%_
                                     _%$%e234362234412%_
                                     _%$%hd234363234415%_
                                     _%$%tl234364234417%_
                                     _%$%e234365234420%_
                                     _%$%hd234366234423%_
                                     _%$%tl234367234425%_
                                     _%$%e234368234428%_
                                     _%$%hd234369234431%_
                                     _%$%tl234370234433%_
                                     _%$%e234371234436%_
                                     _%$%hd234372234439%_
                                     _%$%tl234373234441%_
                                     _%$%e234374234444%_
                                     _%$%hd234375234447%_
                                     _%$%tl234376234449%_
                                     _%$%e234377234452%_
                                     _%$%hd234378234455%_
                                     _%$%tl234379234457%_)
                                    (_%__kont240156240157%_))))
                            (_%__kont240156240157%_))))
                     (_%__match240575240576%_
                      (lambda (_%$%e234332234509%_
                               _%$%hd234333234512%_
                               _%$%tl234334234514%_
                               _%$%e234335234517%_
                               _%$%hd234336234520%_
                               _%$%tl234337234522%_
                               _%$%e234338234525%_
                               _%$%hd234339234528%_
                               _%$%tl234340234530%_
                               _%$%e234341234533%_
                               _%$%hd234342234536%_
                               _%$%tl234343234538%_
                               _%$%e234344234541%_
                               _%$%hd234345234544%_
                               _%$%tl234346234546%_
                               _%$%e234347234549%_
                               _%$%hd234348234552%_
                               _%$%tl234349234554%_
                               _%$%e234350234557%_
                               _%$%hd234351234560%_
                               _%$%tl234352234562%_)
                        (let ((_%$%g234330234565%_ _%$%hd234351234560%_)
                              (_%$%g234331234566%_ _%$%hd234342234536%_))
                          (if (and (let ((__tmp240826
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self234151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g234330234565%_
                                      __tmp240826))
                                   (let ((__tmp240827
                                          (let ((__tmp240828
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g234331234566%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp240828))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp240827
                                      'gxc#!accessor::t)))
                              (_%__kont240152240153%_
                               _%$%g234330234565%_
                               _%$%g234331234566%_)
                              (_%__kont240156240157%_)))))
                     (_%__match240573240574%_
                      (lambda (_%$%e234332234509%_
                               _%$%hd234333234512%_
                               _%$%tl234334234514%_
                               _%$%e234335234517%_
                               _%$%hd234336234520%_
                               _%$%tl234337234522%_
                               _%$%e234338234525%_
                               _%$%hd234339234528%_
                               _%$%tl234340234530%_
                               _%$%e234341234533%_
                               _%$%hd234342234536%_
                               _%$%tl234343234538%_
                               _%$%e234344234541%_
                               _%$%hd234345234544%_
                               _%$%tl234346234546%_
                               _%$%e234347234549%_
                               _%$%hd234348234552%_
                               _%$%tl234349234554%_
                               _%$%e234350234557%_
                               _%$%hd234351234560%_
                               _%$%tl234352234562%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl234346234546%_))
                            (_%__match240575240576%_
                             _%$%e234332234509%_
                             _%$%hd234333234512%_
                             _%$%tl234334234514%_
                             _%$%e234335234517%_
                             _%$%hd234336234520%_
                             _%$%tl234337234522%_
                             _%$%e234338234525%_
                             _%$%hd234339234528%_
                             _%$%tl234340234530%_
                             _%$%e234341234533%_
                             _%$%hd234342234536%_
                             _%$%tl234343234538%_
                             _%$%e234344234541%_
                             _%$%hd234345234544%_
                             _%$%tl234346234546%_
                             _%$%e234347234549%_
                             _%$%hd234348234552%_
                             _%$%tl234349234554%_
                             _%$%e234350234557%_
                             _%$%hd234351234560%_
                             _%$%tl234352234562%_)
                            (_%__match240629240630%_
                             _%$%e234332234509%_
                             _%$%hd234333234512%_
                             _%$%tl234334234514%_
                             _%$%e234335234517%_
                             _%$%hd234336234520%_
                             _%$%tl234337234522%_
                             _%$%e234338234525%_
                             _%$%hd234339234528%_
                             _%$%tl234340234530%_
                             _%$%e234341234533%_
                             _%$%hd234342234536%_
                             _%$%tl234343234538%_
                             _%$%e234344234541%_
                             _%$%hd234345234544%_
                             _%$%tl234346234546%_
                             _%$%e234347234549%_
                             _%$%hd234348234552%_
                             _%$%tl234349234554%_
                             _%$%e234350234557%_
                             _%$%hd234351234560%_
                             _%$%tl234352234562%_))))
                     (_%__match240519240520%_
                      (lambda (_%$%e234297234605%_
                               _%$%hd234298234608%_
                               _%$%tl234299234610%_
                               _%$%e234300234613%_
                               _%$%hd234301234616%_
                               _%$%tl234302234618%_
                               _%$%e234303234621%_
                               _%$%hd234304234624%_
                               _%$%tl234305234626%_
                               _%$%e234306234629%_
                               _%$%hd234307234632%_
                               _%$%tl234308234634%_
                               _%$%e234309234637%_
                               _%$%hd234310234640%_
                               _%$%tl234311234642%_
                               _%$%e234312234645%_
                               _%$%hd234313234648%_
                               _%$%tl234314234650%_
                               _%$%e234315234653%_
                               _%$%hd234316234656%_
                               _%$%tl234317234658%_
                               _%$%e234318234661%_
                               _%$%hd234319234664%_
                               _%$%tl234320234666%_
                               _%$%e234321234669%_
                               _%$%hd234322234672%_
                               _%$%tl234323234674%_
                               _%$%e234324234677%_
                               _%$%hd234325234680%_
                               _%$%tl234326234682%_
                               _%$%e234327234685%_
                               _%$%hd234328234688%_
                               _%$%tl234329234690%_)
                        (let ((_%$%g234293234693%_ _%$%hd234328234688%_)
                              (_%$%g234294234694%_ _%$%hd234325234680%_)
                              (_%$%g234295234695%_ _%$%hd234316234656%_)
                              (_%$%g234296234696%_ _%$%hd234307234632%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g234296234696%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g234296234696%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp240829
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self234151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g234295234695%_
                                      __tmp240829)))
                              (_%__kont240150240151%_
                               _%$%g234293234693%_
                               _%$%g234294234694%_
                               _%$%g234295234695%_
                               _%$%g234296234696%_)
                              (_%__kont240156240157%_)))))
                     (_%__match240511240512%_
                      (lambda (_%$%e234297234605%_
                               _%$%hd234298234608%_
                               _%$%tl234299234610%_
                               _%$%e234300234613%_
                               _%$%hd234301234616%_
                               _%$%tl234302234618%_
                               _%$%e234303234621%_
                               _%$%hd234304234624%_
                               _%$%tl234305234626%_
                               _%$%e234306234629%_
                               _%$%hd234307234632%_
                               _%$%tl234308234634%_
                               _%$%e234309234637%_
                               _%$%hd234310234640%_
                               _%$%tl234311234642%_
                               _%$%e234312234645%_
                               _%$%hd234313234648%_
                               _%$%tl234314234650%_
                               _%$%e234315234653%_
                               _%$%hd234316234656%_
                               _%$%tl234317234658%_
                               _%$%e234318234661%_
                               _%$%hd234319234664%_
                               _%$%tl234320234666%_
                               _%$%e234321234669%_
                               _%$%hd234322234672%_
                               _%$%tl234323234674%_
                               _%$%e234324234677%_
                               _%$%hd234325234680%_
                               _%$%tl234326234682%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl234320234666%_))
                            (let ((_%$%e234327234685%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl234320234666%_))))
                              (let ((_%$%tl234329234690%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e234327234685%_)))
                                    (_%$%hd234328234688%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e234327234685%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl234329234690%_))
                                    (_%__match240519240520%_
                                     _%$%e234297234605%_
                                     _%$%hd234298234608%_
                                     _%$%tl234299234610%_
                                     _%$%e234300234613%_
                                     _%$%hd234301234616%_
                                     _%$%tl234302234618%_
                                     _%$%e234303234621%_
                                     _%$%hd234304234624%_
                                     _%$%tl234305234626%_
                                     _%$%e234306234629%_
                                     _%$%hd234307234632%_
                                     _%$%tl234308234634%_
                                     _%$%e234309234637%_
                                     _%$%hd234310234640%_
                                     _%$%tl234311234642%_
                                     _%$%e234312234645%_
                                     _%$%hd234313234648%_
                                     _%$%tl234314234650%_
                                     _%$%e234315234653%_
                                     _%$%hd234316234656%_
                                     _%$%tl234317234658%_
                                     _%$%e234318234661%_
                                     _%$%hd234319234664%_
                                     _%$%tl234320234666%_
                                     _%$%e234321234669%_
                                     _%$%hd234322234672%_
                                     _%$%tl234323234674%_
                                     _%$%e234324234677%_
                                     _%$%hd234325234680%_
                                     _%$%tl234326234682%_
                                     _%$%e234327234685%_
                                     _%$%hd234328234688%_
                                     _%$%tl234329234690%_)
                                    (_%__kont240156240157%_))))
                            (_%__match240635240636%_
                             _%$%e234297234605%_
                             _%$%hd234298234608%_
                             _%$%tl234299234610%_
                             _%$%e234300234613%_
                             _%$%hd234301234616%_
                             _%$%tl234302234618%_
                             _%$%e234303234621%_
                             _%$%hd234304234624%_
                             _%$%tl234305234626%_
                             _%$%e234306234629%_
                             _%$%hd234307234632%_
                             _%$%tl234308234634%_
                             _%$%e234309234637%_
                             _%$%hd234310234640%_
                             _%$%tl234311234642%_
                             _%$%e234312234645%_
                             _%$%hd234313234648%_
                             _%$%tl234314234650%_
                             _%$%e234315234653%_
                             _%$%hd234316234656%_
                             _%$%tl234317234658%_
                             _%$%e234318234661%_
                             _%$%hd234319234664%_
                             _%$%tl234320234666%_))))
                     (_%__match240433240434%_
                      (lambda (_%$%e234263234739%_
                               _%$%hd234264234742%_
                               _%$%tl234265234744%_
                               _%$%e234266234747%_
                               _%$%hd234267234750%_
                               _%$%tl234268234752%_
                               _%$%e234269234755%_
                               _%$%hd234270234758%_
                               _%$%tl234271234760%_
                               _%$%e234272234763%_
                               _%$%hd234273234766%_
                               _%$%tl234274234768%_
                               _%$%e234275234771%_
                               _%$%hd234276234774%_
                               _%$%tl234277234776%_
                               _%$%e234278234779%_
                               _%$%hd234279234782%_
                               _%$%tl234280234784%_
                               _%$%e234281234787%_
                               _%$%hd234282234790%_
                               _%$%tl234283234792%_
                               _%$%e234284234795%_
                               _%$%hd234285234798%_
                               _%$%tl234286234800%_
                               _%$%e234287234803%_
                               _%$%hd234288234806%_
                               _%$%tl234289234808%_
                               _%$%e234290234811%_
                               _%$%hd234291234814%_
                               _%$%tl234292234816%_)
                        (let ((_%$%g234260234819%_ _%$%hd234291234814%_)
                              (_%$%g234261234820%_ _%$%hd234282234790%_)
                              (_%$%g234262234821%_ _%$%hd234273234766%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g234262234821%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g234262234821%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp240830
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self234151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g234261234820%_
                                      __tmp240830)))
                              (_%__kont240148240149%_
                               _%$%g234260234819%_
                               _%$%g234261234820%_
                               _%$%g234262234821%_)
                              (_%__match240637240638%_
                               _%$%e234263234739%_
                               _%$%hd234264234742%_
                               _%$%tl234265234744%_
                               _%$%e234266234747%_
                               _%$%hd234267234750%_
                               _%$%tl234268234752%_
                               _%$%e234269234755%_
                               _%$%hd234270234758%_
                               _%$%tl234271234760%_
                               _%$%e234272234763%_
                               _%$%hd234273234766%_
                               _%$%tl234274234768%_
                               _%$%e234275234771%_
                               _%$%hd234276234774%_
                               _%$%tl234277234776%_
                               _%$%e234278234779%_
                               _%$%hd234279234782%_
                               _%$%tl234280234784%_
                               _%$%e234281234787%_
                               _%$%hd234282234790%_
                               _%$%tl234283234792%_
                               _%$%e234284234795%_
                               _%$%hd234285234798%_
                               _%$%tl234286234800%_)))))
                     (_%__match240431240432%_
                      (lambda (_%$%e234263234739%_
                               _%$%hd234264234742%_
                               _%$%tl234265234744%_
                               _%$%e234266234747%_
                               _%$%hd234267234750%_
                               _%$%tl234268234752%_
                               _%$%e234269234755%_
                               _%$%hd234270234758%_
                               _%$%tl234271234760%_
                               _%$%e234272234763%_
                               _%$%hd234273234766%_
                               _%$%tl234274234768%_
                               _%$%e234275234771%_
                               _%$%hd234276234774%_
                               _%$%tl234277234776%_
                               _%$%e234278234779%_
                               _%$%hd234279234782%_
                               _%$%tl234280234784%_
                               _%$%e234281234787%_
                               _%$%hd234282234790%_
                               _%$%tl234283234792%_
                               _%$%e234284234795%_
                               _%$%hd234285234798%_
                               _%$%tl234286234800%_
                               _%$%e234287234803%_
                               _%$%hd234288234806%_
                               _%$%tl234289234808%_
                               _%$%e234290234811%_
                               _%$%hd234291234814%_
                               _%$%tl234292234816%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl234286234800%_))
                            (_%__match240433240434%_
                             _%$%e234263234739%_
                             _%$%hd234264234742%_
                             _%$%tl234265234744%_
                             _%$%e234266234747%_
                             _%$%hd234267234750%_
                             _%$%tl234268234752%_
                             _%$%e234269234755%_
                             _%$%hd234270234758%_
                             _%$%tl234271234760%_
                             _%$%e234272234763%_
                             _%$%hd234273234766%_
                             _%$%tl234274234768%_
                             _%$%e234275234771%_
                             _%$%hd234276234774%_
                             _%$%tl234277234776%_
                             _%$%e234278234779%_
                             _%$%hd234279234782%_
                             _%$%tl234280234784%_
                             _%$%e234281234787%_
                             _%$%hd234282234790%_
                             _%$%tl234283234792%_
                             _%$%e234284234795%_
                             _%$%hd234285234798%_
                             _%$%tl234286234800%_
                             _%$%e234287234803%_
                             _%$%hd234288234806%_
                             _%$%tl234289234808%_
                             _%$%e234290234811%_
                             _%$%hd234291234814%_
                             _%$%tl234292234816%_)
                            (_%__match240511240512%_
                             _%$%e234263234739%_
                             _%$%hd234264234742%_
                             _%$%tl234265234744%_
                             _%$%e234266234747%_
                             _%$%hd234267234750%_
                             _%$%tl234268234752%_
                             _%$%e234269234755%_
                             _%$%hd234270234758%_
                             _%$%tl234271234760%_
                             _%$%e234272234763%_
                             _%$%hd234273234766%_
                             _%$%tl234274234768%_
                             _%$%e234275234771%_
                             _%$%hd234276234774%_
                             _%$%tl234277234776%_
                             _%$%e234278234779%_
                             _%$%hd234279234782%_
                             _%$%tl234280234784%_
                             _%$%e234281234787%_
                             _%$%hd234282234790%_
                             _%$%tl234283234792%_
                             _%$%e234284234795%_
                             _%$%hd234285234798%_
                             _%$%tl234286234800%_
                             _%$%e234287234803%_
                             _%$%hd234288234806%_
                             _%$%tl234289234808%_
                             _%$%e234290234811%_
                             _%$%hd234291234814%_
                             _%$%tl234292234816%_))))
                     (_%__match240421240422%_
                      (lambda (_%$%e234263234739%_
                               _%$%hd234264234742%_
                               _%$%tl234265234744%_
                               _%$%e234266234747%_
                               _%$%hd234267234750%_
                               _%$%tl234268234752%_
                               _%$%e234269234755%_
                               _%$%hd234270234758%_
                               _%$%tl234271234760%_
                               _%$%e234272234763%_
                               _%$%hd234273234766%_
                               _%$%tl234274234768%_
                               _%$%e234275234771%_
                               _%$%hd234276234774%_
                               _%$%tl234277234776%_
                               _%$%e234278234779%_
                               _%$%hd234279234782%_
                               _%$%tl234280234784%_
                               _%$%e234281234787%_
                               _%$%hd234282234790%_
                               _%$%tl234283234792%_
                               _%$%e234284234795%_
                               _%$%hd234285234798%_
                               _%$%tl234286234800%_
                               _%$%e234287234803%_
                               _%$%hd234288234806%_
                               _%$%tl234289234808%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd234288234806%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl234289234808%_))
                                (let ((_%$%e234290234811%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl234289234808%_))))
                                  (let ((_%$%tl234292234816%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e234290234811%_)))
                                        (_%$%hd234291234814%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e234290234811%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl234292234816%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl234286234800%_))
                                            (_%__match240433240434%_
                                             _%$%e234263234739%_
                                             _%$%hd234264234742%_
                                             _%$%tl234265234744%_
                                             _%$%e234266234747%_
                                             _%$%hd234267234750%_
                                             _%$%tl234268234752%_
                                             _%$%e234269234755%_
                                             _%$%hd234270234758%_
                                             _%$%tl234271234760%_
                                             _%$%e234272234763%_
                                             _%$%hd234273234766%_
                                             _%$%tl234274234768%_
                                             _%$%e234275234771%_
                                             _%$%hd234276234774%_
                                             _%$%tl234277234776%_
                                             _%$%e234278234779%_
                                             _%$%hd234279234782%_
                                             _%$%tl234280234784%_
                                             _%$%e234281234787%_
                                             _%$%hd234282234790%_
                                             _%$%tl234283234792%_
                                             _%$%e234284234795%_
                                             _%$%hd234285234798%_
                                             _%$%tl234286234800%_
                                             _%$%e234287234803%_
                                             _%$%hd234288234806%_
                                             _%$%tl234289234808%_
                                             _%$%e234290234811%_
                                             _%$%hd234291234814%_
                                             _%$%tl234292234816%_)
                                            (_%__match240511240512%_
                                             _%$%e234263234739%_
                                             _%$%hd234264234742%_
                                             _%$%tl234265234744%_
                                             _%$%e234266234747%_
                                             _%$%hd234267234750%_
                                             _%$%tl234268234752%_
                                             _%$%e234269234755%_
                                             _%$%hd234270234758%_
                                             _%$%tl234271234760%_
                                             _%$%e234272234763%_
                                             _%$%hd234273234766%_
                                             _%$%tl234274234768%_
                                             _%$%e234275234771%_
                                             _%$%hd234276234774%_
                                             _%$%tl234277234776%_
                                             _%$%e234278234779%_
                                             _%$%hd234279234782%_
                                             _%$%tl234280234784%_
                                             _%$%e234281234787%_
                                             _%$%hd234282234790%_
                                             _%$%tl234283234792%_
                                             _%$%e234284234795%_
                                             _%$%hd234285234798%_
                                             _%$%tl234286234800%_
                                             _%$%e234287234803%_
                                             _%$%hd234288234806%_
                                             _%$%tl234289234808%_
                                             _%$%e234290234811%_
                                             _%$%hd234291234814%_
                                             _%$%tl234292234816%_))
                                        (_%__match240635240636%_
                                         _%$%e234263234739%_
                                         _%$%hd234264234742%_
                                         _%$%tl234265234744%_
                                         _%$%e234266234747%_
                                         _%$%hd234267234750%_
                                         _%$%tl234268234752%_
                                         _%$%e234269234755%_
                                         _%$%hd234270234758%_
                                         _%$%tl234271234760%_
                                         _%$%e234272234763%_
                                         _%$%hd234273234766%_
                                         _%$%tl234274234768%_
                                         _%$%e234275234771%_
                                         _%$%hd234276234774%_
                                         _%$%tl234277234776%_
                                         _%$%e234278234779%_
                                         _%$%hd234279234782%_
                                         _%$%tl234280234784%_
                                         _%$%e234281234787%_
                                         _%$%hd234282234790%_
                                         _%$%tl234283234792%_
                                         _%$%e234284234795%_
                                         _%$%hd234285234798%_
                                         _%$%tl234286234800%_))))
                                (_%__match240635240636%_
                                 _%$%e234263234739%_
                                 _%$%hd234264234742%_
                                 _%$%tl234265234744%_
                                 _%$%e234266234747%_
                                 _%$%hd234267234750%_
                                 _%$%tl234268234752%_
                                 _%$%e234269234755%_
                                 _%$%hd234270234758%_
                                 _%$%tl234271234760%_
                                 _%$%e234272234763%_
                                 _%$%hd234273234766%_
                                 _%$%tl234274234768%_
                                 _%$%e234275234771%_
                                 _%$%hd234276234774%_
                                 _%$%tl234277234776%_
                                 _%$%e234278234779%_
                                 _%$%hd234279234782%_
                                 _%$%tl234280234784%_
                                 _%$%e234281234787%_
                                 _%$%hd234282234790%_
                                 _%$%tl234283234792%_
                                 _%$%e234284234795%_
                                 _%$%hd234285234798%_
                                 _%$%tl234286234800%_))
                            (_%__match240635240636%_
                             _%$%e234263234739%_
                             _%$%hd234264234742%_
                             _%$%tl234265234744%_
                             _%$%e234266234747%_
                             _%$%hd234267234750%_
                             _%$%tl234268234752%_
                             _%$%e234269234755%_
                             _%$%hd234270234758%_
                             _%$%tl234271234760%_
                             _%$%e234272234763%_
                             _%$%hd234273234766%_
                             _%$%tl234274234768%_
                             _%$%e234275234771%_
                             _%$%hd234276234774%_
                             _%$%tl234277234776%_
                             _%$%e234278234779%_
                             _%$%hd234279234782%_
                             _%$%tl234280234784%_
                             _%$%e234281234787%_
                             _%$%hd234282234790%_
                             _%$%tl234283234792%_
                             _%$%e234284234795%_
                             _%$%hd234285234798%_
                             _%$%tl234286234800%_))))
                     (_%__match240353240354%_
                      (lambda (_%$%e234212234860%_
                               _%$%hd234213234863%_
                               _%$%tl234214234865%_
                               _%$%e234215234868%_
                               _%$%hd234216234871%_
                               _%$%tl234217234873%_
                               _%$%e234218234876%_
                               _%$%hd234219234879%_
                               _%$%tl234220234881%_
                               _%$%e234221234884%_
                               _%$%hd234222234887%_
                               _%$%tl234223234889%_
                               _%$%e234224234892%_
                               _%$%hd234225234895%_
                               _%$%tl234226234897%_
                               _%$%e234227234900%_
                               _%$%hd234228234903%_
                               _%$%tl234229234905%_
                               _%$%e234230234908%_
                               _%$%hd234231234911%_
                               _%$%tl234232234913%_
                               _%$%e234233234916%_
                               _%$%hd234234234919%_
                               _%$%tl234235234921%_
                               _%$%e234236234924%_
                               _%$%hd234237234927%_
                               _%$%tl234238234929%_
                               _%$%e234239234932%_
                               _%$%hd234240234935%_
                               _%$%tl234241234937%_
                               _%$%e234242234940%_
                               _%$%hd234243234943%_
                               _%$%tl234244234945%_
                               _%$%e234245234948%_
                               _%$%hd234246234951%_
                               _%$%tl234247234953%_
                               _%$%e234248234956%_
                               _%$%hd234249234959%_
                               _%$%tl234250234961%_
                               _%__splice240146240147%_
                               _%$%target234251234964%_
                               _%$%tl234253234966%_)
                        (letrec ((_%$%loop234254234969%_
                                  (lambda (_%$%hd234252234972%_
                                           _%$%args234258234974%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd234252234972%_))
                                        (let ((_%$%e234255234976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd234252234972%_))))
                                          (let ((_%$%lp-tl234257234981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e234255234976%_)))
                                                (_%$%lp-hd234256234979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e234255234976%_))))
                                            (_%$%loop234254234969%_
                                             _%$%lp-tl234257234981%_
                                             (cons _%$%lp-hd234256234979%_
                                                   _%$%args234258234974%_))))
                                        (let ((_%$%args234259234984%_
                                               (reverse _%$%args234258234974%_)))
                                          (let ((_%$%g234207234986%_
                                                 _%$%args234259234984%_)
                                                (_%$%g234208234987%_
                                                 _%$%hd234249234959%_)
                                                (_%$%g234209234988%_
                                                 _%$%hd234240234935%_)
                                                (_%$%g234210234989%_
                                                 _%$%hd234231234911%_)
                                                (_%$%g234211234990%_
                                                 _%$%hd234222234887%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g234211234990%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g234210234989%_
                                                        'call-method))
                                                     (let ((__tmp240831
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self234151%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g234209234988%_
                                                        __tmp240831)))
                                                (_%__kont240144240145%_
                                                 _%$%g234207234986%_
                                                 _%$%g234208234987%_
                                                 _%$%g234209234988%_
                                                 _%$%g234210234989%_
                                                 _%$%g234211234990%_)
                                                (_%__kont240156240157%_))))))))
                          (_%$%loop234254234969%_
                           _%$%target234251234964%_
                           '()))))
                     (_%__match240311240312%_
                      (lambda (_%$%e234212234860%_
                               _%$%hd234213234863%_
                               _%$%tl234214234865%_
                               _%$%e234215234868%_
                               _%$%hd234216234871%_
                               _%$%tl234217234873%_
                               _%$%e234218234876%_
                               _%$%hd234219234879%_
                               _%$%tl234220234881%_
                               _%$%e234221234884%_
                               _%$%hd234222234887%_
                               _%$%tl234223234889%_
                               _%$%e234224234892%_
                               _%$%hd234225234895%_
                               _%$%tl234226234897%_
                               _%$%e234227234900%_
                               _%$%hd234228234903%_
                               _%$%tl234229234905%_
                               _%$%e234230234908%_
                               _%$%hd234231234911%_
                               _%$%tl234232234913%_
                               _%$%e234233234916%_
                               _%$%hd234234234919%_
                               _%$%tl234235234921%_
                               _%$%e234236234924%_
                               _%$%hd234237234927%_
                               _%$%tl234238234929%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd234237234927%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl234238234929%_))
                                (let ((_%$%e234239234932%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl234238234929%_))))
                                  (let ((_%$%tl234241234937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e234239234932%_)))
                                        (_%$%hd234240234935%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e234239234932%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl234241234937%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl234235234921%_))
                                            (let ((_%$%e234242234940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl234235234921%_))))
                                              (let ((_%$%tl234244234945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e234242234940%_)))
                                                    (_%$%hd234243234943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e234242234940%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd234243234943%_))
                                                    (let ((_%$%e234245234948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd234243234943%_))))
                                                      (let ((_%$%tl234247234953%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e234245234948%_)))
                    (_%$%hd234246234951%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e234245234948%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd234246234951%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd234246234951%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl234247234953%_))
                            (let ((_%$%e234248234956%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl234247234953%_))))
                              (let ((_%$%tl234250234961%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e234248234956%_)))
                                    (_%$%hd234249234959%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e234248234956%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl234250234961%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl234244234945%_))
                                        (let ((_%__splice240146240147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl234244234945%_
                                                  '0))))
                                          (let ((_%$%tl234253234966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice240146240147%_
                                                    '1)))
                                                (_%$%target234251234964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice240146240147%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl234253234966%_))
                                                (_%__match240353240354%_
                                                 _%$%e234212234860%_
                                                 _%$%hd234213234863%_
                                                 _%$%tl234214234865%_
                                                 _%$%e234215234868%_
                                                 _%$%hd234216234871%_
                                                 _%$%tl234217234873%_
                                                 _%$%e234218234876%_
                                                 _%$%hd234219234879%_
                                                 _%$%tl234220234881%_
                                                 _%$%e234221234884%_
                                                 _%$%hd234222234887%_
                                                 _%$%tl234223234889%_
                                                 _%$%e234224234892%_
                                                 _%$%hd234225234895%_
                                                 _%$%tl234226234897%_
                                                 _%$%e234227234900%_
                                                 _%$%hd234228234903%_
                                                 _%$%tl234229234905%_
                                                 _%$%e234230234908%_
                                                 _%$%hd234231234911%_
                                                 _%$%tl234232234913%_
                                                 _%$%e234233234916%_
                                                 _%$%hd234234234919%_
                                                 _%$%tl234235234921%_
                                                 _%$%e234236234924%_
                                                 _%$%hd234237234927%_
                                                 _%$%tl234238234929%_
                                                 _%$%e234239234932%_
                                                 _%$%hd234240234935%_
                                                 _%$%tl234241234937%_
                                                 _%$%e234242234940%_
                                                 _%$%hd234243234943%_
                                                 _%$%tl234244234945%_
                                                 _%$%e234245234948%_
                                                 _%$%hd234246234951%_
                                                 _%$%tl234247234953%_
                                                 _%$%e234248234956%_
                                                 _%$%hd234249234959%_
                                                 _%$%tl234250234961%_
                                                 _%__splice240146240147%_
                                                 _%$%target234251234964%_
                                                 _%$%tl234253234966%_)
                                                (_%__kont240156240157%_))))
                                        (_%__kont240156240157%_))
                                    (_%__kont240156240157%_))))
                            (_%__kont240156240157%_))
                        (_%__kont240156240157%_))
                    (_%__kont240156240157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont240156240157%_))))
                                            (_%__match240635240636%_
                                             _%$%e234212234860%_
                                             _%$%hd234213234863%_
                                             _%$%tl234214234865%_
                                             _%$%e234215234868%_
                                             _%$%hd234216234871%_
                                             _%$%tl234217234873%_
                                             _%$%e234218234876%_
                                             _%$%hd234219234879%_
                                             _%$%tl234220234881%_
                                             _%$%e234221234884%_
                                             _%$%hd234222234887%_
                                             _%$%tl234223234889%_
                                             _%$%e234224234892%_
                                             _%$%hd234225234895%_
                                             _%$%tl234226234897%_
                                             _%$%e234227234900%_
                                             _%$%hd234228234903%_
                                             _%$%tl234229234905%_
                                             _%$%e234230234908%_
                                             _%$%hd234231234911%_
                                             _%$%tl234232234913%_
                                             _%$%e234233234916%_
                                             _%$%hd234234234919%_
                                             _%$%tl234235234921%_))
                                        (_%__match240635240636%_
                                         _%$%e234212234860%_
                                         _%$%hd234213234863%_
                                         _%$%tl234214234865%_
                                         _%$%e234215234868%_
                                         _%$%hd234216234871%_
                                         _%$%tl234217234873%_
                                         _%$%e234218234876%_
                                         _%$%hd234219234879%_
                                         _%$%tl234220234881%_
                                         _%$%e234221234884%_
                                         _%$%hd234222234887%_
                                         _%$%tl234223234889%_
                                         _%$%e234224234892%_
                                         _%$%hd234225234895%_
                                         _%$%tl234226234897%_
                                         _%$%e234227234900%_
                                         _%$%hd234228234903%_
                                         _%$%tl234229234905%_
                                         _%$%e234230234908%_
                                         _%$%hd234231234911%_
                                         _%$%tl234232234913%_
                                         _%$%e234233234916%_
                                         _%$%hd234234234919%_
                                         _%$%tl234235234921%_))))
                                (_%__match240635240636%_
                                 _%$%e234212234860%_
                                 _%$%hd234213234863%_
                                 _%$%tl234214234865%_
                                 _%$%e234215234868%_
                                 _%$%hd234216234871%_
                                 _%$%tl234217234873%_
                                 _%$%e234218234876%_
                                 _%$%hd234219234879%_
                                 _%$%tl234220234881%_
                                 _%$%e234221234884%_
                                 _%$%hd234222234887%_
                                 _%$%tl234223234889%_
                                 _%$%e234224234892%_
                                 _%$%hd234225234895%_
                                 _%$%tl234226234897%_
                                 _%$%e234227234900%_
                                 _%$%hd234228234903%_
                                 _%$%tl234229234905%_
                                 _%$%e234230234908%_
                                 _%$%hd234231234911%_
                                 _%$%tl234232234913%_
                                 _%$%e234233234916%_
                                 _%$%hd234234234919%_
                                 _%$%tl234235234921%_))
                            (_%__match240421240422%_
                             _%$%e234212234860%_
                             _%$%hd234213234863%_
                             _%$%tl234214234865%_
                             _%$%e234215234868%_
                             _%$%hd234216234871%_
                             _%$%tl234217234873%_
                             _%$%e234218234876%_
                             _%$%hd234219234879%_
                             _%$%tl234220234881%_
                             _%$%e234221234884%_
                             _%$%hd234222234887%_
                             _%$%tl234223234889%_
                             _%$%e234224234892%_
                             _%$%hd234225234895%_
                             _%$%tl234226234897%_
                             _%$%e234227234900%_
                             _%$%hd234228234903%_
                             _%$%tl234229234905%_
                             _%$%e234230234908%_
                             _%$%hd234231234911%_
                             _%$%tl234232234913%_
                             _%$%e234233234916%_
                             _%$%hd234234234919%_
                             _%$%tl234235234921%_
                             _%$%e234236234924%_
                             _%$%hd234237234927%_
                             _%$%tl234238234929%_))))
                     (_%__match240243240244%_
                      (lambda (_%$%e234168235050%_
                               _%$%hd234169235053%_
                               _%$%tl234170235055%_
                               _%$%e234171235058%_
                               _%$%hd234172235061%_
                               _%$%tl234173235063%_
                               _%$%e234174235066%_
                               _%$%hd234175235069%_
                               _%$%tl234176235071%_
                               _%$%e234177235074%_
                               _%$%hd234178235077%_
                               _%$%tl234179235079%_
                               _%$%e234180235082%_
                               _%$%hd234181235085%_
                               _%$%tl234182235087%_
                               _%$%e234183235090%_
                               _%$%hd234184235093%_
                               _%$%tl234185235095%_
                               _%$%e234186235098%_
                               _%$%hd234187235101%_
                               _%$%tl234188235103%_
                               _%$%e234189235106%_
                               _%$%hd234190235109%_
                               _%$%tl234191235111%_
                               _%$%e234192235114%_
                               _%$%hd234193235117%_
                               _%$%tl234194235119%_
                               _%$%e234195235122%_
                               _%$%hd234196235125%_
                               _%$%tl234197235127%_
                               _%__splice240142240143%_
                               _%$%target234198235130%_
                               _%$%tl234200235132%_)
                        (letrec ((_%$%loop234201235135%_
                                  (lambda (_%$%hd234199235138%_
                                           _%$%args234205235140%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd234199235138%_))
                                        (let ((_%$%e234202235142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd234199235138%_))))
                                          (let ((_%$%lp-tl234204235147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e234202235142%_)))
                                                (_%$%lp-hd234203235145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e234202235142%_))))
                                            (_%$%loop234201235135%_
                                             _%$%lp-tl234204235147%_
                                             (cons _%$%lp-hd234203235145%_
                                                   _%$%args234205235140%_))))
                                        (let ((_%$%args234206235150%_
                                               (reverse _%$%args234205235140%_)))
                                          (let ((_%$%g234164235152%_
                                                 _%$%args234206235150%_)
                                                (_%$%g234165235153%_
                                                 _%$%hd234196235125%_)
                                                (_%$%g234166235154%_
                                                 _%$%hd234187235101%_)
                                                (_%$%g234167235155%_
                                                 _%$%hd234178235077%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g234167235155%_
                                                        'call-method))
                                                     (let ((__tmp240832
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self234151%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g234166235154%_
                                                        __tmp240832)))
                                                (_%__kont240140240141%_
                                                 _%$%g234164235152%_
                                                 _%$%g234165235153%_
                                                 _%$%g234166235154%_
                                                 _%$%g234167235155%_)
                                                (_%__match240431240432%_
                                                 _%$%e234168235050%_
                                                 _%$%hd234169235053%_
                                                 _%$%tl234170235055%_
                                                 _%$%e234171235058%_
                                                 _%$%hd234172235061%_
                                                 _%$%tl234173235063%_
                                                 _%$%e234174235066%_
                                                 _%$%hd234175235069%_
                                                 _%$%tl234176235071%_
                                                 _%$%e234177235074%_
                                                 _%$%hd234178235077%_
                                                 _%$%tl234179235079%_
                                                 _%$%e234180235082%_
                                                 _%$%hd234181235085%_
                                                 _%$%tl234182235087%_
                                                 _%$%e234183235090%_
                                                 _%$%hd234184235093%_
                                                 _%$%tl234185235095%_
                                                 _%$%e234186235098%_
                                                 _%$%hd234187235101%_
                                                 _%$%tl234188235103%_
                                                 _%$%e234189235106%_
                                                 _%$%hd234190235109%_
                                                 _%$%tl234191235111%_
                                                 _%$%e234192235114%_
                                                 _%$%hd234193235117%_
                                                 _%$%tl234194235119%_
                                                 _%$%e234195235122%_
                                                 _%$%hd234196235125%_
                                                 _%$%tl234197235127%_))))))))
                          (_%$%loop234201235135%_
                           _%$%target234198235130%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx240138240139%_))
                    (let ((_%$%e234168235050%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx240138240139%_))))
                      (let ((_%$%tl234170235055%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e234168235050%_)))
                            (_%$%hd234169235053%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e234168235050%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl234170235055%_))
                            (let ((_%$%e234171235058%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl234170235055%_))))
                              (let ((_%$%tl234173235063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e234171235058%_)))
                                    (_%$%hd234172235061%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e234171235058%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd234172235061%_))
                                    (let ((_%$%e234174235066%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd234172235061%_))))
                                      (let ((_%$%tl234176235071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e234174235066%_)))
                                            (_%$%hd234175235069%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e234174235066%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd234175235069%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd234175235069%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl234176235071%_))
                                                    (let ((_%$%e234177235074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl234176235071%_))))
                                                      (let ((_%$%tl234179235079%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e234177235074%_)))
                    (_%$%hd234178235077%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e234177235074%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl234179235079%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl234173235063%_))
                        (let ((_%$%e234180235082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl234173235063%_))))
                          (let ((_%$%tl234182235087%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e234180235082%_)))
                                (_%$%hd234181235085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e234180235082%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd234181235085%_))
                                (let ((_%$%e234183235090%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd234181235085%_))))
                                  (let ((_%$%tl234185235095%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e234183235090%_)))
                                        (_%$%hd234184235093%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e234183235090%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd234184235093%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd234184235093%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl234185235095%_))
                                                (let ((_%$%e234186235098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl234185235095%_))))
                                                  (let ((_%$%tl234188235103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e234186235098%_)))
                                                        (_%$%hd234187235101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e234186235098%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl234188235103%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl234182235087%_))
                                                            (let ((_%$%e234189235106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl234182235087%_))))
                      (let ((_%$%tl234191235111%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e234189235106%_)))
                            (_%$%hd234190235109%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e234189235106%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd234190235109%_))
                            (let ((_%$%e234192235114%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd234190235109%_))))
                              (let ((_%$%tl234194235119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e234192235114%_)))
                                    (_%$%hd234193235117%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e234192235114%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd234193235117%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd234193235117%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl234194235119%_))
                                            (let ((_%$%e234195235122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl234194235119%_))))
                                              (let ((_%$%tl234197235127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e234195235122%_)))
                                                    (_%$%hd234196235125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e234195235122%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl234197235127%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl234191235111%_))
                                                        (let ((_%__splice240142240143%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl234191235111%_
                          '0))))
                  (let ((_%$%tl234200235132%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice240142240143%_ '1)))
                        (_%$%target234198235130%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice240142240143%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl234200235132%_))
                        (_%__match240243240244%_
                         _%$%e234168235050%_
                         _%$%hd234169235053%_
                         _%$%tl234170235055%_
                         _%$%e234171235058%_
                         _%$%hd234172235061%_
                         _%$%tl234173235063%_
                         _%$%e234174235066%_
                         _%$%hd234175235069%_
                         _%$%tl234176235071%_
                         _%$%e234177235074%_
                         _%$%hd234178235077%_
                         _%$%tl234179235079%_
                         _%$%e234180235082%_
                         _%$%hd234181235085%_
                         _%$%tl234182235087%_
                         _%$%e234183235090%_
                         _%$%hd234184235093%_
                         _%$%tl234185235095%_
                         _%$%e234186235098%_
                         _%$%hd234187235101%_
                         _%$%tl234188235103%_
                         _%$%e234189235106%_
                         _%$%hd234190235109%_
                         _%$%tl234191235111%_
                         _%$%e234192235114%_
                         _%$%hd234193235117%_
                         _%$%tl234194235119%_
                         _%$%e234195235122%_
                         _%$%hd234196235125%_
                         _%$%tl234197235127%_
                         _%__splice240142240143%_
                         _%$%target234198235130%_
                         _%$%tl234200235132%_)
                        (_%__match240431240432%_
                         _%$%e234168235050%_
                         _%$%hd234169235053%_
                         _%$%tl234170235055%_
                         _%$%e234171235058%_
                         _%$%hd234172235061%_
                         _%$%tl234173235063%_
                         _%$%e234174235066%_
                         _%$%hd234175235069%_
                         _%$%tl234176235071%_
                         _%$%e234177235074%_
                         _%$%hd234178235077%_
                         _%$%tl234179235079%_
                         _%$%e234180235082%_
                         _%$%hd234181235085%_
                         _%$%tl234182235087%_
                         _%$%e234183235090%_
                         _%$%hd234184235093%_
                         _%$%tl234185235095%_
                         _%$%e234186235098%_
                         _%$%hd234187235101%_
                         _%$%tl234188235103%_
                         _%$%e234189235106%_
                         _%$%hd234190235109%_
                         _%$%tl234191235111%_
                         _%$%e234192235114%_
                         _%$%hd234193235117%_
                         _%$%tl234194235119%_
                         _%$%e234195235122%_
                         _%$%hd234196235125%_
                         _%$%tl234197235127%_))))
                (_%__match240431240432%_
                 _%$%e234168235050%_
                 _%$%hd234169235053%_
                 _%$%tl234170235055%_
                 _%$%e234171235058%_
                 _%$%hd234172235061%_
                 _%$%tl234173235063%_
                 _%$%e234174235066%_
                 _%$%hd234175235069%_
                 _%$%tl234176235071%_
                 _%$%e234177235074%_
                 _%$%hd234178235077%_
                 _%$%tl234179235079%_
                 _%$%e234180235082%_
                 _%$%hd234181235085%_
                 _%$%tl234182235087%_
                 _%$%e234183235090%_
                 _%$%hd234184235093%_
                 _%$%tl234185235095%_
                 _%$%e234186235098%_
                 _%$%hd234187235101%_
                 _%$%tl234188235103%_
                 _%$%e234189235106%_
                 _%$%hd234190235109%_
                 _%$%tl234191235111%_
                 _%$%e234192235114%_
                 _%$%hd234193235117%_
                 _%$%tl234194235119%_
                 _%$%e234195235122%_
                 _%$%hd234196235125%_
                 _%$%tl234197235127%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match240635240636%_
                                                     _%$%e234168235050%_
                                                     _%$%hd234169235053%_
                                                     _%$%tl234170235055%_
                                                     _%$%e234171235058%_
                                                     _%$%hd234172235061%_
                                                     _%$%tl234173235063%_
                                                     _%$%e234174235066%_
                                                     _%$%hd234175235069%_
                                                     _%$%tl234176235071%_
                                                     _%$%e234177235074%_
                                                     _%$%hd234178235077%_
                                                     _%$%tl234179235079%_
                                                     _%$%e234180235082%_
                                                     _%$%hd234181235085%_
                                                     _%$%tl234182235087%_
                                                     _%$%e234183235090%_
                                                     _%$%hd234184235093%_
                                                     _%$%tl234185235095%_
                                                     _%$%e234186235098%_
                                                     _%$%hd234187235101%_
                                                     _%$%tl234188235103%_
                                                     _%$%e234189235106%_
                                                     _%$%hd234190235109%_
                                                     _%$%tl234191235111%_))))
                                            (_%__match240635240636%_
                                             _%$%e234168235050%_
                                             _%$%hd234169235053%_
                                             _%$%tl234170235055%_
                                             _%$%e234171235058%_
                                             _%$%hd234172235061%_
                                             _%$%tl234173235063%_
                                             _%$%e234174235066%_
                                             _%$%hd234175235069%_
                                             _%$%tl234176235071%_
                                             _%$%e234177235074%_
                                             _%$%hd234178235077%_
                                             _%$%tl234179235079%_
                                             _%$%e234180235082%_
                                             _%$%hd234181235085%_
                                             _%$%tl234182235087%_
                                             _%$%e234183235090%_
                                             _%$%hd234184235093%_
                                             _%$%tl234185235095%_
                                             _%$%e234186235098%_
                                             _%$%hd234187235101%_
                                             _%$%tl234188235103%_
                                             _%$%e234189235106%_
                                             _%$%hd234190235109%_
                                             _%$%tl234191235111%_))
                                        (_%__match240311240312%_
                                         _%$%e234168235050%_
                                         _%$%hd234169235053%_
                                         _%$%tl234170235055%_
                                         _%$%e234171235058%_
                                         _%$%hd234172235061%_
                                         _%$%tl234173235063%_
                                         _%$%e234174235066%_
                                         _%$%hd234175235069%_
                                         _%$%tl234176235071%_
                                         _%$%e234177235074%_
                                         _%$%hd234178235077%_
                                         _%$%tl234179235079%_
                                         _%$%e234180235082%_
                                         _%$%hd234181235085%_
                                         _%$%tl234182235087%_
                                         _%$%e234183235090%_
                                         _%$%hd234184235093%_
                                         _%$%tl234185235095%_
                                         _%$%e234186235098%_
                                         _%$%hd234187235101%_
                                         _%$%tl234188235103%_
                                         _%$%e234189235106%_
                                         _%$%hd234190235109%_
                                         _%$%tl234191235111%_
                                         _%$%e234192235114%_
                                         _%$%hd234193235117%_
                                         _%$%tl234194235119%_))
                                    (_%__match240635240636%_
                                     _%$%e234168235050%_
                                     _%$%hd234169235053%_
                                     _%$%tl234170235055%_
                                     _%$%e234171235058%_
                                     _%$%hd234172235061%_
                                     _%$%tl234173235063%_
                                     _%$%e234174235066%_
                                     _%$%hd234175235069%_
                                     _%$%tl234176235071%_
                                     _%$%e234177235074%_
                                     _%$%hd234178235077%_
                                     _%$%tl234179235079%_
                                     _%$%e234180235082%_
                                     _%$%hd234181235085%_
                                     _%$%tl234182235087%_
                                     _%$%e234183235090%_
                                     _%$%hd234184235093%_
                                     _%$%tl234185235095%_
                                     _%$%e234186235098%_
                                     _%$%hd234187235101%_
                                     _%$%tl234188235103%_
                                     _%$%e234189235106%_
                                     _%$%hd234190235109%_
                                     _%$%tl234191235111%_))))
                            (_%__match240635240636%_
                             _%$%e234168235050%_
                             _%$%hd234169235053%_
                             _%$%tl234170235055%_
                             _%$%e234171235058%_
                             _%$%hd234172235061%_
                             _%$%tl234173235063%_
                             _%$%e234174235066%_
                             _%$%hd234175235069%_
                             _%$%tl234176235071%_
                             _%$%e234177235074%_
                             _%$%hd234178235077%_
                             _%$%tl234179235079%_
                             _%$%e234180235082%_
                             _%$%hd234181235085%_
                             _%$%tl234182235087%_
                             _%$%e234183235090%_
                             _%$%hd234184235093%_
                             _%$%tl234185235095%_
                             _%$%e234186235098%_
                             _%$%hd234187235101%_
                             _%$%tl234188235103%_
                             _%$%e234189235106%_
                             _%$%hd234190235109%_
                             _%$%tl234191235111%_))))
                    (_%__match240573240574%_
                     _%$%e234168235050%_
                     _%$%hd234169235053%_
                     _%$%tl234170235055%_
                     _%$%e234171235058%_
                     _%$%hd234172235061%_
                     _%$%tl234173235063%_
                     _%$%e234174235066%_
                     _%$%hd234175235069%_
                     _%$%tl234176235071%_
                     _%$%e234177235074%_
                     _%$%hd234178235077%_
                     _%$%tl234179235079%_
                     _%$%e234180235082%_
                     _%$%hd234181235085%_
                     _%$%tl234182235087%_
                     _%$%e234183235090%_
                     _%$%hd234184235093%_
                     _%$%tl234185235095%_
                     _%$%e234186235098%_
                     _%$%hd234187235101%_
                     _%$%tl234188235103%_))
                (_%__kont240156240157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont240156240157%_))
                                            (_%__kont240156240157%_))
                                        (_%__kont240156240157%_))))
                                (_%__kont240156240157%_))))
                        (_%__kont240156240157%_))
                    (_%__kont240156240157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont240156240157%_))
                                                (_%__kont240156240157%_))
                                            (_%__kont240156240157%_))))
                                    (_%__kont240156240157%_))))
                            (_%__kont240156240157%_))))
                    (_%__kont240156240157%_))))))))))
