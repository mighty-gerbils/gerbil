(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1755903080)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp182589 (list gxc#::identity::t))
            (__tmp182588 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp182589
         '()
         __tmp182588
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args181386%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args181386%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp182590
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
        (__make-promise __tmp182590)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx181378%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self181381%_
                (let ((__obj182581
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj182581))
               (__tmp182591
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self181381%_ _%stx181378%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp182591
           gxc#current-compile-method
           _%self181381%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp182593 (list gxc#::false::t))
            (__tmp182592 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp182593
         '()
         __tmp182592
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args181375%_
        (apply make-instance gxc#::extract-receiver::t _%$args181375%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp182594
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
        (__make-promise __tmp182594)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx181367%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self181370%_
                (let ((__obj182583
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj182583))
               (__tmp182595
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self181370%_ _%stx181367%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp182595
           gxc#current-compile-method
           _%self181370%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp182597 (list gxc#::void::t))
            (__tmp182596 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp182597
         '(receiver methods slots)
         __tmp182596
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args181364%_
        (apply make-instance gxc#::collect-object-refs::t _%$args181364%_)))
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
      (let ((__tmp182598
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
        (__make-promise __tmp182598)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords181330%_
               _%receiver181325181331%_
               _%methods181326181333%_
               _%slots181327181335%_
               _%stx181337%_)
        (let* ((_%receiver181340%_
                (if (eq? _%receiver181325181331%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver181325181331%_))
               (_%methods181342%_
                (if (eq? _%methods181326181333%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods181326181333%_))
               (_%slots181344%_
                (if (eq? _%slots181327181335%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots181327181335%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self181346%_
                  (let ((__obj182585
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
                       __obj182585
                       _%receiver181340%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj182585
                       _%methods181342%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj182585
                       _%slots181344%_
                       '3
                       '#f
                       '#f))
                    __obj182585))
                 (__tmp182599
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self181346%_ _%stx181337%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp182599
             gxc#current-compile-method
             _%self181346%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords181353%_ . _%args181354%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords181353%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords181353%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords181353%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords181353%_
                  'slots:
                  absent-value))
               _%args181354%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args181328181360%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args181328181360%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp182601 (list gxc#::basic-xform-expression::t))
            (__tmp182600 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp182601
         '(receiver klass methods slots)
         __tmp182600
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args181321%_
        (apply make-instance gxc#::subst-object-refs::t _%$args181321%_)))
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
      (let ((__tmp182602
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
        (__make-promise __tmp182602)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords181283%_
               _%receiver181277181284%_
               _%klass181278181286%_
               _%methods181279181288%_
               _%slots181280181290%_
               _%stx181292%_)
        (let* ((_%receiver181295%_
                (if (eq? _%receiver181277181284%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver181277181284%_))
               (_%klass181297%_
                (if (eq? _%klass181278181286%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass181278181286%_))
               (_%methods181299%_
                (if (eq? _%methods181279181288%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods181279181288%_))
               (_%slots181301%_
                (if (eq? _%slots181280181290%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots181280181290%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self181303%_
                  (let ((__obj182587
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
                       __obj182587
                       _%receiver181295%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj182587
                       _%klass181297%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj182587
                       _%methods181299%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj182587
                       _%slots181301%_
                       '4
                       '#f
                       '#f))
                    __obj182587))
                 (__tmp182603
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self181303%_ _%stx181292%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp182603
             gxc#current-compile-method
             _%self181303%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords181310%_ . _%args181311%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords181310%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords181310%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords181310%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords181310%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords181310%_
                  'slots:
                  absent-value))
               _%args181311%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args181281181317%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args181281181317%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self178392%_ _%stx178393%_)
        (letrec ((_%generate-method-bind178395%_
                  (lambda (_%$klass181269%_
                           _%$method-table181270%_
                           _%id181271%_
                           _%$id181272%_)
                    (let ((_%$tmp181274%_
                           (let ((__tmp182604
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp182604))))
                      (cons (cons _%$id181272%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp181274%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table181270%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id181271%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp181274%_ '()))
                    (cons (cons '%#ref (cons _%$tmp181274%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id181271%_
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
                 (_%generate-slot-bind178396%_
                  (lambda (_%$klass181263%_ _%id181264%_ _%$id181265%_)
                    (let ((_%$tmp181267%_
                           (let ((__tmp182605
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp182605))))
                      (cons (cons _%$id181265%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp181267%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass181263%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id181264%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp181267%_ '()))
                        (cons (cons '%#ref (cons _%$tmp181267%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id181264%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl178397%_
                  (lambda (_%$klass181257%_
                           _%$method-table181258%_
                           _%methods-bind181259%_
                           _%slots-bind181260%_
                           _%specializer-impl181261%_)
                    (let ((__tmp182606
                           (cons '%#lambda
                                 (cons (cons _%$klass181257%_
                                             (cons _%$method-table181258%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind181260%_
                                                            _%methods-bind181259%_))
                                                         (cons _%specializer-impl181261%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp182606 _%stx178393%_))))
                 (_%generate-specializer-def178398%_
                  (lambda (_%id181253%_
                           _%specializer-id181254%_
                           _%specializer-impl181255%_)
                    (let ((__tmp182607
                           (cons '%#begin
                                 (cons _%stx178393%_
                                       (cons (let ((__tmp182608
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id181254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl181255%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp182608
                                                _%stx178393%_))
                                             (cons (let ((__tmp182609
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id181253%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id181254%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp182609
                                                      _%stx178393%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp182607 _%stx178393%_)))))
          (let* ((_%__stx181475181476%_ _%stx178393%_)
                 (_%g178401178421%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx181475181476%_)))))
            (let ((_%__kont181477181478%_
                   (lambda (_%L178465%_ _%L178466%_)
                     (let ((_%method-calls178485%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs178486%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty178487%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?178489%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls178485%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs178486%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L178465%_))
                             (let* ((_%__stx181389181390%_ _%L178465%_)
                                    (_%g178877178895%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx181389181390%_)))))
                               (let ((_%__kont181391181392%_
                                      (lambda (_%L178931%_
                                               _%L178932%_
                                               _%L178933%_)
                                        (let ((_%receiver178953%_
                                               (let ((_%$e178950%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L178931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e178950%_
                                                     _%$e178950%_
                                                     _%L178933%_))))
                                          (for-each
                                           (lambda (_%g178954178956%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver178953%_
                                              _%method-calls178485%_
                                              _%slot-refs178486%_
                                              _%g178954178956%_))
                                           _%L178931%_)
                                          (if (_%no-specializer?178489%_)
                                              _%stx178393%_
                                              (let* ((_%specializer-id178965%_
                                                      (let* ((_%id178959%_
                                                              (let ((__tmp182610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L178466%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp182610 '"::specialize")))
                     (_%specializer-id178962%_
                      (let ((__tmp182611
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx178393%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id178959%_ __tmp182611))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id178962%_))
                _%specializer-id178962%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass178967%_
                                                      (let ((__tmp182612
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp182612)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table178969%_
                                                      (let ((__tmp182613
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp182613)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods178971%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls178485%_)))
                                                     (_%$methods178975%_
                                                      (map (lambda (_%id178973%_)
                                                             (let ((__tmp182614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id178973%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp182614)))
                   _%methods178971%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_178984%_
                                                      (for-each
                                                       (lambda (_%g178976178979%_
                                                                _%g178977178981%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls178485%_
                                                            _%g178976178979%_
                                                            _%g178977178981%_)))
                                                       _%methods178971%_
                                                       _%$methods178975%_))
                                                     (_%methods-bind178994%_
                                                      (map (lambda (_%g178986178989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g178987178991%_)
                     (_%generate-method-bind178395%_
                      _%$klass178967%_
                      _%$method-table178969%_
                      _%g178986178989%_
                      _%g178987178991%_))
                   _%methods178971%_
                   _%$methods178975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots178996%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs178486%_)))
                                                     (_%$slots179000%_
                                                      (map (lambda (_%id178998%_)
                                                             (let ((__tmp182615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id178998%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp182615)))
                   _%slots178996%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_179009%_
                                                      (for-each
                                                       (lambda (_%g179001179004%_
                                                                _%g179002179006%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs178486%_
                                                            _%g179001179004%_
                                                            _%g179002179006%_)))
                                                       _%slots178996%_
                                                       _%$slots179000%_))
                                                     (_%slots-bind179018%_
                                                      (map (lambda (_%g179010179013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g179011179015%_)
                     (_%generate-slot-bind178396%_
                      _%$klass178967%_
                      _%g179010179013%_
                      _%g179011179015%_))
                   _%slots178996%_
                   _%$slots179000%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body179024%_
                                                      (map (lambda (_%g179019179021%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver178953%_
                                                              _%$klass178967%_
                                                              _%method-calls178485%_
                                                              _%slot-refs178486%_
                                                              _%g179019179021%_))
                                                           _%L178931%_))
                                                     (_%specializer-impl179026%_
                                                      (let ((__tmp182616
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L178933%_ _%L178932%_)
                                 _%specializer-body179024%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp182616 _%stx178393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl179028%_
                                                      (_%generate-specializer-impl178397%_
                                                       _%$klass178967%_
                                                       _%$method-table178969%_
                                                       _%methods-bind178994%_
                                                       _%slots-bind179018%_
                                                       _%specializer-impl179026%_)))
                                                (let ((__tmp182618
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L178466%_)))
                                                      (__tmp182617
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id178965%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp182618
                                                   '" => "
                                                   __tmp182617))
                                                (_%generate-specializer-def178398%_
                                                 _%L178466%_
                                                 _%specializer-id178965%_
                                                 _%specializer-impl179028%_))))))
                                     (_%__kont181393181394%_
                                      (lambda () _%stx178393%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx181389181390%_))
                                     (let ((_%e178882178907%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx181389181390%_))))
                                       (let ((_%tl178884178912%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e178882178907%_)))
                                             (_%hd178883178910%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e178882178907%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl178884178912%_))
                                             (let ((_%e178885178915%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl178884178912%_))))
                                               (let ((_%tl178887178920%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e178885178915%_)))
                                                     (_%hd178886178918%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e178885178915%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd178886178918%_))
                                                     (let ((_%e178888178923%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd178886178918%_))))
                                                       (let ((_%tl178890178928%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e178888178923%_)))
                     (_%hd178889178926%_
                      (let () (declare (not safe)) (##car _%e178888178923%_))))
                 (_%__kont181391181392%_
                  _%tl178887178920%_
                  _%tl178890178928%_
                  _%hd178889178926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181393181394%_))))
                                             (_%__kont181393181394%_))))
                                     (_%__kont181393181394%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L178465%_))
                                 (let* ((_%g179035179054%_
                                         (lambda (_%g179036179051%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g179036179051%_))))
                                        (_%g179034179352%_
                                         (lambda (_%g179036179057%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g179036179057%_))
                                               (let ((_%e179038179059%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g179036179057%_))))
                                                 (let ((_%hd179039179062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e179038179059%_)))
                                                       (_%tl179040179064%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e179038179059%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl179040179064%_))
                                                       (let ((_g182619_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl179040179064%_ '0))))
                 (begin
                   (let ((_g182620_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g182619_)
                                (##values-length _g182619_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g182620_ 2)))
                         (error "Context expects 2 values" _g182620_)))
                   (let ((_%target179041179067%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g182619_ 0)))
                         (_%tl179043179069%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g182619_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl179043179069%_))
                         (letrec ((_%loop179044179072%_
                                   (lambda (_%hd179042179075%_
                                            _%clause179048179077%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd179042179075%_))
                                         (let ((_%e179045179080%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd179042179075%_))))
                                           (let ((_%lp-hd179046179083%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e179045179080%_)))
                                                 (_%lp-tl179047179085%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e179045179080%_))))
                                             (_%loop179044179072%_
                                              _%lp-tl179047179085%_
                                              (cons _%lp-hd179046179083%_
                                                    _%clause179048179077%_))))
                                         (let ((_%clause179049179088%_
                                                (reverse _%clause179048179077%_)))
                                           ((lambda (_%L179091%_)
                                              (for-each
                                               (lambda (_%clause179105%_)
                                                 (let* ((_%__stx181415181416%_
                                                         _%clause179105%_)
                                                        (_%g179108179123%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx181415181416%_)))))
                                                   (let ((_%__kont181417181418%_
                                                          (lambda (_%L179151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L179152%_
                           _%L179153%_)
                    (let ((_%receiver179172%_
                           (let ((_%$e179169%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L179151%_))))
                             (if _%$e179169%_ _%$e179169%_ _%L179153%_))))
                      (for-each
                       (lambda (_%g179173179175%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver179172%_
                          _%method-calls178485%_
                          _%slot-refs178486%_
                          _%g179173179175%_))
                       _%L179151%_))))
                 (_%__kont181419181420%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx181415181416%_))
                                                         (let ((_%e179113179135%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx181415181416%_))))
                   (let ((_%tl179115179140%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e179113179135%_)))
                         (_%hd179114179138%_
                          (let ()
                            (declare (not safe))
                            (##car _%e179113179135%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd179114179138%_))
                         (let ((_%e179116179143%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd179114179138%_))))
                           (let ((_%tl179118179148%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e179116179143%_)))
                                 (_%hd179117179146%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e179116179143%_))))
                             (_%__kont181417181418%_
                              _%tl179115179140%_
                              _%tl179118179148%_
                              _%hd179117179146%_)))
                         (_%__kont181419181420%_))))
                 (_%__kont181419181420%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp182621
                                                      (lambda (_%g179180179183%_
                                                               _%g179181179185%_)
                                                        (cons _%g179180179183%_
                                                              _%g179181179185%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp182621
                                                  '()
                                                  _%L179091%_)))
                                              (if (_%no-specializer?178489%_)
                                                  _%stx178393%_
                                                  (let* ((_%specializer-id179194%_
                                                          (let* ((_%id179188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182622
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L178466%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp182622 '"::specialize")))
                         (_%specializer-id179191%_
                          (let ((__tmp182623
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx178393%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id179188%_
                             __tmp182623))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id179191%_))
                    _%specializer-id179191%_))
                 (_%$klass179196%_
                  (let ((__tmp182624
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp182624)))
                 (_%$method-table179198%_
                  (let ((__tmp182625
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp182625)))
                 (_%methods179200%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls178485%_)))
                 (_%$methods179204%_
                  (map (lambda (_%id179202%_)
                         (let ((__tmp182626 (gensym _%id179202%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp182626)))
                       _%methods179200%_))
                 (_%_179213%_
                  (for-each
                   (lambda (_%g179205179208%_ _%g179206179210%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls178485%_
                        _%g179205179208%_
                        _%g179206179210%_)))
                   _%methods179200%_
                   _%$methods179204%_))
                 (_%methods-bind179223%_
                  (map (lambda (_%g179215179218%_ _%g179216179220%_)
                         (_%generate-method-bind178395%_
                          _%$klass179196%_
                          _%$method-table179198%_
                          _%g179215179218%_
                          _%g179216179220%_))
                       _%methods179200%_
                       _%$methods179204%_))
                 (_%slots179225%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs178486%_)))
                 (_%$slots179229%_
                  (map (lambda (_%id179227%_)
                         (let ((__tmp182627 (gensym _%id179227%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp182627)))
                       _%slots179225%_))
                 (_%_179238%_
                  (for-each
                   (lambda (_%g179230179233%_ _%g179231179235%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs178486%_
                        _%g179230179233%_
                        _%g179231179235%_)))
                   _%slots179225%_
                   _%$slots179229%_))
                 (_%slots-bind179247%_
                  (map (lambda (_%g179239179242%_ _%g179240179244%_)
                         (_%generate-slot-bind178396%_
                          _%$klass179196%_
                          _%g179239179242%_
                          _%g179240179244%_))
                       _%slots179225%_
                       _%$slots179229%_))
                 (_%specializer-clauses179345%_
                  (map (lambda (_%clause179249%_)
                         (let* ((_%__stx181435181436%_ _%clause179249%_)
                                (_%g179252179267%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx181435181436%_)))))
                           (let ((_%__kont181437181438%_
                                  (lambda (_%L179295%_ _%L179296%_ _%L179297%_)
                                    (let* ((_%receiver179326%_
                                            (let ((_%$e179323%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L179295%_))))
                                              (if _%$e179323%_
                                                  _%$e179323%_
                                                  _%L179297%_)))
                                           (_%body179332%_
                                            (map (lambda (_%g179327179329%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver179326%_
                                                    _%$klass179196%_
                                                    _%method-calls178485%_
                                                    _%slot-refs178486%_
                                                    _%g179327179329%_))
                                                 _%L179295%_)))
                                      (cons (cons _%L179297%_ _%L179296%_)
                                            _%body179332%_))))
                                 (_%__kont181439181440%_
                                  (lambda () _%clause179249%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx181435181436%_))
                                 (let ((_%e179257179279%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx181435181436%_))))
                                   (let ((_%tl179259179284%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e179257179279%_)))
                                         (_%hd179258179282%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e179257179279%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd179258179282%_))
                                         (let ((_%e179260179287%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd179258179282%_))))
                                           (let ((_%tl179262179292%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e179260179287%_)))
                                                 (_%hd179261179290%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e179260179287%_))))
                                             (_%__kont181437181438%_
                                              _%tl179259179284%_
                                              _%tl179262179292%_
                                              _%hd179261179290%_)))
                                         (_%__kont181439181440%_))))
                                 (_%__kont181439181440%_)))))
                       (let ((__tmp182628
                              (lambda (_%g179337179340%_ _%g179338179342%_)
                                (cons _%g179337179340%_ _%g179338179342%_))))
                         (declare (not safe))
                         (__foldr1 __tmp182628 '() _%L179091%_))))
                 (_%specializer-impl179347%_
                  (let ((__tmp182629
                         (cons '%#case-lambda _%specializer-clauses179345%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp182629 _%stx178393%_)))
                 (_%specializer-impl179349%_
                  (_%generate-specializer-impl178397%_
                   _%$klass179196%_
                   _%$method-table179198%_
                   _%methods-bind179223%_
                   _%slots-bind179247%_
                   _%specializer-impl179347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182631
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L178466%_)))
                                                          (__tmp182630
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id179194%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp182631
                                                       '" => "
                                                       __tmp182630))
                                                    (_%generate-specializer-def178398%_
                                                     _%L178466%_
                                                     _%specializer-id179194%_
                                                     _%specializer-impl179349%_))))
                                            _%clause179049179088%_))))))
                           (_%loop179044179072%_ _%target179041179067%_ '()))
                         (_%g179035179054%_ _%g179036179057%_)))))
               (_%g179035179054%_ _%g179036179057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g179035179054%_
                                                _%g179036179057%_)))))
                                   (_%g179034179352%_ _%L178465%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L178465%_))
                                     (let* ((_%g179356179386%_
                                             (lambda (_%g179357179383%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g179357179383%_))))
                                            (_%g179355180017%_
                                             (lambda (_%g179357179389%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g179357179389%_))
                                                   (let ((_%e179361179391%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g179357179389%_))))
                                                     (let ((_%hd179362179394%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e179361179391%_)))
                                                           (_%tl179363179396%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e179361179391%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl179363179396%_))
                                                           (let ((_%e179364179399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl179363179396%_))))
                     (let ((_%hd179365179402%_
                            (let ()
                              (declare (not safe))
                              (##car _%e179364179399%_)))
                           (_%tl179366179404%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e179364179399%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd179365179402%_))
                           (let ((_%e179367179407%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd179365179402%_))))
                             (let ((_%hd179368179410%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e179367179407%_)))
                                   (_%tl179369179412%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e179367179407%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd179368179410%_))
                                   (let ((_%e179370179415%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd179368179410%_))))
                                     (let ((_%hd179371179418%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e179370179415%_)))
                                           (_%tl179372179420%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e179370179415%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd179371179418%_))
                                           (let ((_%e179373179423%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd179371179418%_))))
                                             (let ((_%hd179374179426%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e179373179423%_)))
                                                   (_%tl179375179428%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e179373179423%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl179375179428%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl179372179420%_))
                                                       (let ((_%e179376179431%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl179372179420%_))))
                 (let ((_%hd179377179434%_
                        (let ()
                          (declare (not safe))
                          (##car _%e179376179431%_)))
                       (_%tl179378179436%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e179376179431%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl179378179436%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl179369179412%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl179366179404%_))
                               (let ((_%e179379179439%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl179366179404%_))))
                                 (let ((_%hd179380179442%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e179379179439%_)))
                                       (_%tl179381179444%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e179379179439%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl179381179444%_))
                                       ((lambda (_%L179447%_
                                                 _%L179448%_
                                                 _%L179449%_)
                                          (let* ((_%g179473179491%_
                                                  (lambda (_%g179474179488%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g179474179488%_))))
                                                 (_%g179472179547%_
                                                  (lambda (_%g179474179494%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g179474179494%_))
                                                        (let ((_%e179478179496%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g179474179494%_))))
                  (let ((_%hd179479179499%_
                         (let ()
                           (declare (not safe))
                           (##car _%e179478179496%_)))
                        (_%tl179480179501%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e179478179496%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl179480179501%_))
                        (let ((_%e179481179504%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl179480179501%_))))
                          (let ((_%hd179482179507%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e179481179504%_)))
                                (_%tl179483179509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e179481179504%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd179482179507%_))
                                (let ((_%e179484179512%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd179482179507%_))))
                                  (let ((_%hd179485179515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179484179512%_)))
                                        (_%tl179486179517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179484179512%_))))
                                    ((lambda (_%L179520%_
                                              _%L179521%_
                                              _%L179522%_)
                                       (let ((_%receiver179541%_
                                              (let ((_%$e179538%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L179520%_))))
                                                (if _%$e179538%_
                                                    _%$e179538%_
                                                    _%L179522%_))))
                                         (for-each
                                          (lambda (_%g179542179544%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver179541%_
                                             _%method-calls178485%_
                                             _%slot-refs178486%_
                                             _%g179542179544%_))
                                          _%L179520%_)))
                                     _%tl179483179509%_
                                     _%tl179486179517%_
                                     _%hd179485179515%_)))
                                (_%g179473179491%_ _%g179474179494%_))))
                        (_%g179473179491%_ _%g179474179494%_))))
                (_%g179473179491%_ _%g179474179494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g179472179547%_ _%L179448%_))
                                          (let* ((_%g179550179569%_
                                                  (lambda (_%g179551179566%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g179551179566%_))))
                                                 (_%g179549179693%_
                                                  (lambda (_%g179551179572%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g179551179572%_))
                                                        (let ((_%e179553179574%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g179551179572%_))))
                  (let ((_%hd179554179577%_
                         (let ()
                           (declare (not safe))
                           (##car _%e179553179574%_)))
                        (_%tl179555179579%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e179553179574%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl179555179579%_))
                        (let ((_g182632_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl179555179579%_
                                  '0))))
                          (begin
                            (let ((_g182633_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g182632_)
                                         (##values-length _g182632_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g182633_ 2)))
                                  (error "Context expects 2 values"
                                         _g182633_)))
                            (let ((_%target179556179582%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g182632_ 0)))
                                  (_%tl179558179584%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g182632_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl179558179584%_))
                                  (letrec ((_%loop179559179587%_
                                            (lambda (_%hd179557179590%_
                                                     _%clause179563179592%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd179557179590%_))
                                                  (let ((_%e179560179595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd179557179590%_))))
                                                    (let ((_%lp-hd179561179598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e179560179595%_)))
                                                          (_%lp-tl179562179600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e179560179595%_))))
                                                      (_%loop179559179587%_
                                                       _%lp-tl179562179600%_
                                                       (cons _%lp-hd179561179598%_
                                                             _%clause179563179592%_))))
                                                  (let ((_%clause179564179603%_
                                                         (reverse _%clause179563179592%_)))
                                                    ((lambda (_%L179606%_)
                                                       (for-each
                                                        (lambda (_%clause179619%_)
                                                          (let* ((_%g179621179636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g179622179633%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g179622179633%_))))
                         (_%g179620179683%_
                          (lambda (_%g179622179639%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g179622179639%_))
                                (let ((_%e179626179641%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g179622179639%_))))
                                  (let ((_%hd179627179644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179626179641%_)))
                                        (_%tl179628179646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179626179641%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd179627179644%_))
                                        (let ((_%e179629179649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd179627179644%_))))
                                          (let ((_%hd179630179652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e179629179649%_)))
                                                (_%tl179631179654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e179629179649%_))))
                                            ((lambda (_%L179657%_
                                                      _%L179658%_
                                                      _%L179659%_)
                                               (let ((_%receiver179677%_
                                                      (let ((_%$e179674%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L179657%_))))
                (if _%$e179674%_ _%$e179674%_ _%L179659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g179678179680%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver179677%_
                                                     _%method-calls178485%_
                                                     _%slot-refs178486%_
                                                     _%g179678179680%_))
                                                  _%L179657%_)))
                                             _%tl179628179646%_
                                             _%tl179631179654%_
                                             _%hd179630179652%_)))
                                        (_%g179621179636%_
                                         _%g179622179639%_))))
                                (_%g179621179636%_ _%g179622179639%_)))))
                    (_%g179620179683%_ _%clause179619%_)))
                (let ((__tmp182634
                       (lambda (_%g179685179688%_ _%g179686179690%_)
                         (cons _%g179685179688%_ _%g179686179690%_))))
                  (declare (not safe))
                  (__foldr1 __tmp182634 '() _%L179606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause179564179603%_))))))
                                    (_%loop179559179587%_
                                     _%target179556179582%_
                                     '()))
                                  (_%g179550179569%_ _%g179551179572%_)))))
                        (_%g179550179569%_ _%g179551179572%_))))
                (_%g179550179569%_ _%g179551179572%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g179549179693%_ _%L179447%_))
                                          (if (_%no-specializer?178489%_)
                                              _%stx178393%_
                                              (let* ((_%specializer-id179702%_
                                                      (let* ((_%id179696%_
                                                              (let ((__tmp182635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L178466%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp182635 '"::specialize")))
                     (_%specializer-id179699%_
                      (let ((__tmp182636
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx178393%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id179696%_ __tmp182636))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id179699%_))
                _%specializer-id179699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass179704%_
                                                      (let ((__tmp182637
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp182637)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table179706%_
                                                      (let ((__tmp182638
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp182638)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods179708%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls178485%_)))
                                                     (_%$methods179712%_
                                                      (map (lambda (_%id179710%_)
                                                             (let ((__tmp182639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id179710%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp182639)))
                   _%methods179708%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_179721%_
                                                      (for-each
                                                       (lambda (_%g179713179716%_
                                                                _%g179714179718%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls178485%_
                                                            _%g179713179716%_
                                                            _%g179714179718%_)))
                                                       _%methods179708%_
                                                       _%$methods179712%_))
                                                     (_%methods-bind179731%_
                                                      (map (lambda (_%g179723179726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g179724179728%_)
                     (_%generate-method-bind178395%_
                      _%$klass179704%_
                      _%$method-table179706%_
                      _%g179723179726%_
                      _%g179724179728%_))
                   _%methods179708%_
                   _%$methods179712%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots179733%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs178486%_)))
                                                     (_%$slots179737%_
                                                      (map (lambda (_%id179735%_)
                                                             (let ((__tmp182640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id179735%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp182640)))
                   _%slots179733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_179746%_
                                                      (for-each
                                                       (lambda (_%g179738179741%_
                                                                _%g179739179743%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs178486%_
                                                            _%g179738179741%_
                                                            _%g179739179743%_)))
                                                       _%slots179733%_
                                                       _%$slots179737%_))
                                                     (_%slots-bind179755%_
                                                      (map (lambda (_%g179747179750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g179748179752%_)
                     (_%generate-slot-bind178396%_
                      _%$klass179704%_
                      _%g179747179750%_
                      _%g179748179752%_))
                   _%slots179733%_
                   _%$slots179737%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr179847%_
                                                      (let* ((_%g179757179775%_
                                                              (lambda (_%g179758179772%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g179758179772%_))))
                     (_%g179756179844%_
                      (lambda (_%g179758179778%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g179758179778%_))
                            (let ((_%e179762179780%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g179758179778%_))))
                              (let ((_%hd179763179783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179762179780%_)))
                                    (_%tl179764179785%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179762179780%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl179764179785%_))
                                    (let ((_%e179765179788%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl179764179785%_))))
                                      (let ((_%hd179766179791%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e179765179788%_)))
                                            (_%tl179767179793%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e179765179788%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd179766179791%_))
                                            (let ((_%e179768179796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd179766179791%_))))
                                              (let ((_%hd179769179799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e179768179796%_)))
                                                    (_%tl179770179801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e179768179796%_))))
                                                ((lambda (_%L179804%_
                                                          _%L179805%_
                                                          _%L179806%_)
                                                   (let* ((_%receiver179835%_
                                                           (let ((_%$e179832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L179804%_))))
                     (if _%$e179832%_ _%$e179832%_ _%L179806%_)))
                  (_%body179841%_
                   (map (lambda (_%g179836179838%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver179835%_
                           _%$klass179704%_
                           _%method-calls178485%_
                           _%slot-refs178486%_
                           _%g179836179838%_))
                        _%L179804%_))
                  (__tmp182641
                   (cons '%#lambda
                         (cons (cons _%L179806%_ _%L179805%_)
                               _%body179841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp182641
                                                      _%L179448%_)))
                                                 _%tl179767179793%_
                                                 _%tl179770179801%_
                                                 _%hd179769179799%_)))
                                            (_%g179757179775%_
                                             _%g179758179778%_))))
                                    (_%g179757179775%_ _%g179758179778%_))))
                            (_%g179757179775%_ _%g179758179778%_)))))
                (_%g179756179844%_ _%L179448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr180010%_
                                                      (let* ((_%g179849179868%_
                                                              (lambda (_%g179850179865%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g179850179865%_))))
                     (_%g179848180007%_
                      (lambda (_%g179850179871%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g179850179871%_))
                            (let ((_%e179852179873%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g179850179871%_))))
                              (let ((_%hd179853179876%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179852179873%_)))
                                    (_%tl179854179878%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179852179873%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl179854179878%_))
                                    (let ((_g182642_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl179854179878%_
                                              '0))))
                                      (begin
                                        (let ((_g182643_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g182642_)
                                                     (##values-length
                                                      _g182642_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g182643_ 2)))
                                              (error "Context expects 2 values"
                                                     _g182643_)))
                                        (let ((_%target179855179881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g182642_ 0)))
                                              (_%tl179857179883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g182642_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl179857179883%_))
                                              (letrec ((_%loop179858179886%_
                                                        (lambda (_%hd179856179889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause179862179891%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd179856179889%_))
                      (let ((_%e179859179894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd179856179889%_))))
                        (let ((_%lp-hd179860179897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e179859179894%_)))
                              (_%lp-tl179861179899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e179859179894%_))))
                          (_%loop179858179886%_
                           _%lp-tl179861179899%_
                           (cons _%lp-hd179860179897%_
                                 _%clause179862179891%_))))
                      (let ((_%clause179863179902%_
                             (reverse _%clause179862179891%_)))
                        ((lambda (_%L179905%_)
                           (let* ((_%clauses180005%_
                                   (map (lambda (_%clause179919%_)
                                          (let* ((_%__stx181455181456%_
                                                  _%clause179919%_)
                                                 (_%g179922179937%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx181455181456%_)))))
                                            (let ((_%__kont181457181458%_
                                                   (lambda (_%L179965%_
                                                            _%L179966%_
                                                            _%L179967%_)
                                                     (let* ((_%receiver179986%_
                                                             (let ((_%$e179983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L179965%_))))
                       (if _%$e179983%_ _%$e179983%_ _%L179967%_)))
                    (_%body179992%_
                     (map (lambda (_%g179987179989%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver179986%_
                             _%$klass179704%_
                             _%method-calls178485%_
                             _%slot-refs178486%_
                             _%g179987179989%_))
                          _%L179965%_)))
               (cons (cons _%L179967%_ _%L179966%_) _%body179992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont181459181460%_
                                                   (lambda ()
                                                     _%clause179919%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx181455181456%_))
                                                  (let ((_%e179927179949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx181455181456%_))))
                                                    (let ((_%tl179929179954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e179927179949%_)))
                                                          (_%hd179928179952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e179927179949%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd179928179952%_))
                                                          (let ((_%e179930179957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd179928179952%_))))
                    (let ((_%tl179932179962%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e179930179957%_)))
                          (_%hd179931179960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e179930179957%_))))
                      (_%__kont181457181458%_
                       _%tl179929179954%_
                       _%tl179932179962%_
                       _%hd179931179960%_)))
                  (_%__kont181459181460%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont181459181460%_)))))
                                        (let ((__tmp182644
                                               (lambda (_%g179997180000%_
                                                        _%g179998180002%_)
                                                 (cons _%g179997180000%_
                                                       _%g179998180002%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp182644
                                           '()
                                           _%L179905%_))))
                                  (__tmp182645
                                   (cons '%#case-lambda _%clauses180005%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp182645 _%L179447%_)))
                         _%clause179863179902%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop179858179886%_
                                                 _%target179855179881%_
                                                 '()))
                                              (_%g179849179868%_
                                               _%g179850179871%_)))))
                                    (_%g179849179868%_ _%g179850179871%_))))
                            (_%g179849179868%_ _%g179850179871%_)))))
                (_%g179848180007%_ _%L179447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl180012%_
                                                      (let ((__tmp182646
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L179449%_ '())
                                             (cons _%specializer-lambda-expr179847%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr180010%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp182646 _%stx178393%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl180014%_
                                                      (_%generate-specializer-impl178397%_
                                                       _%$klass179704%_
                                                       _%$method-table179706%_
                                                       _%methods-bind179731%_
                                                       _%slots-bind179755%_
                                                       _%specializer-impl180012%_)))
                                                (let ((__tmp182648
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L178466%_)))
                                                      (__tmp182647
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id179702%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp182648
                                                   '" => "
                                                   __tmp182647))
                                                (_%generate-specializer-def178398%_
                                                 _%L178466%_
                                                 _%specializer-id179702%_
                                                 _%specializer-impl180014%_))))
                                        _%hd179380179442%_
                                        _%hd179377179434%_
                                        _%hd179374179426%_)
                                       (_%g179356179386%_ _%g179357179389%_))))
                               (_%g179356179386%_ _%g179357179389%_))
                           (_%g179356179386%_ _%g179357179389%_))
                       (_%g179356179386%_ _%g179357179389%_))))
               (_%g179356179386%_ _%g179357179389%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g179356179386%_
                                                    _%g179357179389%_))))
                                           (_%g179356179386%_
                                            _%g179357179389%_))))
                                   (_%g179356179386%_ _%g179357179389%_))))
                           (_%g179356179386%_ _%g179357179389%_))))
                   (_%g179356179386%_ _%g179357179389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g179356179386%_
                                                    _%g179357179389%_)))))
                                       (_%g179355180017%_ _%L178465%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L178465%_))
                                         (let* ((_%g180021180074%_
                                                 (lambda (_%g180022180071%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g180022180071%_))))
                                                (_%g180020181245%_
                                                 (lambda (_%g180022180077%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g180022180077%_))
                                                       (let ((_%e180028180079%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g180022180077%_))))
                 (let ((_%hd180029180082%_
                        (let ()
                          (declare (not safe))
                          (##car _%e180028180079%_)))
                       (_%tl180030180084%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e180028180079%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd180029180082%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd180029180082%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl180030180084%_))
                               (let ((_%e180031180087%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl180030180084%_))))
                                 (let ((_%hd180032180090%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e180031180087%_)))
                                       (_%tl180033180092%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e180031180087%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd180032180090%_))
                                       (let ((_%e180034180095%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd180032180090%_))))
                                         (let ((_%hd180035180098%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e180034180095%_)))
                                               (_%tl180036180100%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e180034180095%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd180035180098%_))
                                               (let ((_%e180037180103%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd180035180098%_))))
                                                 (let ((_%hd180038180106%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e180037180103%_)))
                                                       (_%tl180039180108%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e180037180103%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd180038180106%_))
                                                       (let ((_%e180040180111%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd180038180106%_))))
                 (let ((_%hd180041180114%_
                        (let ()
                          (declare (not safe))
                          (##car _%e180040180111%_)))
                       (_%tl180042180116%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e180040180111%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl180042180116%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl180039180108%_))
                           (let ((_%e180043180119%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl180039180108%_))))
                             (let ((_%hd180044180122%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e180043180119%_)))
                                   (_%tl180045180124%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e180043180119%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd180044180122%_))
                                   (let ((_%e180046180127%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd180044180122%_))))
                                     (let ((_%hd180047180130%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e180046180127%_)))
                                           (_%tl180048180132%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e180046180127%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd180047180130%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd180047180130%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl180048180132%_))
                                                   (let ((_%e180049180135%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl180048180132%_))))
                                                     (let ((_%hd180050180138%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e180049180135%_)))
                                                           (_%tl180051180140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e180049180135%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd180050180138%_))
                                                           (let ((_%e180052180143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd180050180138%_))))
                     (let ((_%hd180053180146%_
                            (let ()
                              (declare (not safe))
                              (##car _%e180052180143%_)))
                           (_%tl180054180148%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e180052180143%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd180053180146%_))
                           (let ((_%e180055180151%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd180053180146%_))))
                             (let ((_%hd180056180154%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e180055180151%_)))
                                   (_%tl180057180156%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e180055180151%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd180056180154%_))
                                   (let ((_%e180058180159%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd180056180154%_))))
                                     (let ((_%hd180059180162%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e180058180159%_)))
                                           (_%tl180060180164%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e180058180159%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl180060180164%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl180057180156%_))
                                               (let ((_%e180061180167%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl180057180156%_))))
                                                 (let ((_%hd180062180170%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e180061180167%_)))
                                                       (_%tl180063180172%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e180061180167%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl180063180172%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl180054180148%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl180051180140%_))
                       (let ((_%e180064180175%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl180051180140%_))))
                         (let ((_%hd180065180178%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e180064180175%_)))
                               (_%tl180066180180%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e180064180175%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl180066180180%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl180045180124%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl180036180100%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl180033180092%_))
                                           (let ((_%e180067180183%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl180033180092%_))))
                                             (let ((_%hd180068180186%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e180067180183%_)))
                                                   (_%tl180069180188%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e180067180183%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl180069180188%_))
                                                   ((lambda (_%L180191%_
                                                             _%L180192%_
                                                             _%L180193%_
                                                             _%L180194%_
                                                             _%L180195%_)
                                                      (let* ((_%g180235180297%_
                                                              (lambda (_%g180236180294%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g180236180294%_))))
                     (_%g180234181242%_
                      (lambda (_%g180236180300%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g180236180300%_))
                            (let ((_%e180242180302%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g180236180300%_))))
                              (let ((_%hd180243180305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180242180302%_)))
                                    (_%tl180244180307%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180242180302%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd180243180305%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd180243180305%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl180244180307%_))
                                            (let ((_%e180245180310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl180244180307%_))))
                                              (let ((_%hd180246180313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e180245180310%_)))
                                                    (_%tl180247180315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e180245180310%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl180247180315%_))
                                                    (let ((_%e180248180318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl180247180315%_))))
                                                      (let ((_%hd180249180321%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e180248180318%_)))
                    (_%tl180250180323%_
                     (let () (declare (not safe)) (##cdr _%e180248180318%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd180249180321%_))
                    (let ((_%e180251180326%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd180249180321%_))))
                      (let ((_%hd180252180329%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180251180326%_)))
                            (_%tl180253180331%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180251180326%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd180252180329%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd180252180329%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl180253180331%_))
                                    (let ((_%e180254180334%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl180253180331%_))))
                                      (let ((_%hd180255180337%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e180254180334%_)))
                                            (_%tl180256180339%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e180254180334%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd180255180337%_))
                                            (let ((_%e180257180342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd180255180337%_))))
                                              (let ((_%hd180258180345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e180257180342%_)))
                                                    (_%tl180259180347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e180257180342%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd180258180345%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd180258180345%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl180259180347%_))
                                                            (let ((_%e180260180350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl180259180347%_))))
                      (let ((_%hd180261180353%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180260180350%_)))
                            (_%tl180262180355%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180260180350%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180262180355%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl180256180339%_))
                                (let ((_%e180263180358%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl180256180339%_))))
                                  (let ((_%hd180264180361%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180263180358%_)))
                                        (_%tl180265180363%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180263180358%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd180264180361%_))
                                        (let ((_%e180266180366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd180264180361%_))))
                                          (let ((_%hd180267180369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e180266180366%_)))
                                                (_%tl180268180371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e180266180366%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd180267180369%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd180267180369%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl180268180371%_))
                                                        (let ((_%e180269180374%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl180268180371%_))))
                  (let ((_%hd180270180377%_
                         (let ()
                           (declare (not safe))
                           (##car _%e180269180374%_)))
                        (_%tl180271180379%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e180269180374%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl180271180379%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180265180363%_))
                            (let ((_%e180272180382%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180265180363%_))))
                              (let ((_%hd180273180385%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180272180382%_)))
                                    (_%tl180274180387%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180272180382%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd180273180385%_))
                                    (let ((_%e180275180390%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd180273180385%_))))
                                      (let ((_%hd180276180393%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e180275180390%_)))
                                            (_%tl180277180395%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e180275180390%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd180276180393%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd180276180393%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl180277180395%_))
                                                    (let ((_%e180278180398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl180277180395%_))))
                                                      (let ((_%hd180279180401%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e180278180398%_)))
                    (_%tl180280180403%_
                     (let () (declare (not safe)) (##cdr _%e180278180398%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl180280180403%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl180274180387%_))
                        (if (let ((__tmp182649
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl180274180387%_))))
                              (declare (not safe))
                              (##fx>= __tmp182649 '1))
                            (let ((_g182650_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl180274180387%_
                                      '1))))
                              (begin
                                (let ((_g182651_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g182650_)
                                             (##values-length _g182650_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g182651_ 2)))
                                      (error "Context expects 2 values"
                                             _g182651_)))
                                (let ((_%target180281180406%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g182650_ 0)))
                                      (_%tl180283180408%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g182650_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl180283180408%_))
                                      (let ((_%e180290180411%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl180283180408%_))))
                                        (let ((_%hd180291180414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e180290180411%_)))
                                              (_%tl180292180416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e180290180411%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl180292180416%_))
                                              (letrec ((_%loop180284180419%_
                                                        (lambda (_%hd180282180422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref180288180424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd180282180422%_))
                      (let ((_%e180285180427%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd180282180422%_))))
                        (let ((_%lp-hd180286180430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e180285180427%_)))
                              (_%lp-tl180287180432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e180285180427%_))))
                          (_%loop180284180419%_
                           _%lp-tl180287180432%_
                           (cons _%lp-hd180286180430%_
                                 _%kw-ref180288180424%_))))
                      (let ((_%kw-ref180289180435%_
                             (reverse _%kw-ref180288180424%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180250180323%_))
                            ((lambda (_%L180438%_
                                      _%L180439%_
                                      _%L180440%_
                                      _%L180441%_
                                      _%L180442%_)
                               (let* ((_%kw-count180493%_
                                       (length (let ((__tmp182652
                                                      (lambda (_%g180485180488%_
                                                               _%g180486180490%_)
                                                        (cons _%g180485180488%_
                                                              _%g180486180490%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp182652
                                                  '()
                                                  _%L180439%_))))
                                      (_%self-index180495%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count180493%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L180193%_))
                                     (let* ((_%g180499180513%_
                                             (lambda (_%g180500180510%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g180500180510%_))))
                                            (_%g180498180636%_
                                             (lambda (_%g180500180516%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g180500180516%_))
                                                   (let ((_%e180503180518%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g180500180516%_))))
                                                     (let ((_%hd180504180521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e180503180518%_)))
                                                           (_%tl180505180523%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e180503180518%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl180505180523%_))
                                                           (let ((_%e180506180526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl180505180523%_))))
                     (let ((_%hd180507180529%_
                            (let ()
                              (declare (not safe))
                              (##car _%e180506180526%_)))
                           (_%tl180508180531%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e180506180526%_))))
                       ((lambda (_%L180534%_ _%L180535%_)
                          (let* ((_%self180552%_
                                  (list-ref _%L180535%_ _%self-index180495%_))
                                 (_%receiver180557%_
                                  (let ((_%$e180554%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L180534%_))))
                                    (if _%$e180554%_
                                        _%$e180554%_
                                        _%self180552%_))))
                            (for-each
                             (lambda (_%g180559180561%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver180557%_
                                _%method-calls178485%_
                                _%slot-refs178486%_
                                _%g180559180561%_))
                             _%L180534%_)
                            (if (_%no-specializer?178489%_)
                                _%stx178393%_
                                (let* ((_%specializer-id180570%_
                                        (let* ((_%id180564%_
                                                (let ((__tmp182653
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L178466%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp182653
                                                   '"::specialize")))
                                               (_%specializer-id180567%_
                                                (let ((__tmp182654
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx178393%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id180564%_
                                                   __tmp182654))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id180567%_))
                                          _%specializer-id180567%_))
                                       (_%$klass180572%_
                                        (let ((__tmp182655
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp182655)))
                                       (_%$method-table180574%_
                                        (let ((__tmp182656
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp182656)))
                                       (_%methods180576%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls178485%_)))
                                       (_%$methods180580%_
                                        (map (lambda (_%id180578%_)
                                               (let ((__tmp182657
                                                      (gensym _%id180578%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp182657)))
                                             _%methods180576%_))
                                       (_%_180589%_
                                        (for-each
                                         (lambda (_%g180581180584%_
                                                  _%g180582180586%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls178485%_
                                              _%g180581180584%_
                                              _%g180582180586%_)))
                                         _%methods180576%_
                                         _%$methods180580%_))
                                       (_%methods-bind180599%_
                                        (map (lambda (_%g180591180594%_
                                                      _%g180592180596%_)
                                               (_%generate-method-bind178395%_
                                                _%$klass180572%_
                                                _%$method-table180574%_
                                                _%g180591180594%_
                                                _%g180592180596%_))
                                             _%methods180576%_
                                             _%$methods180580%_))
                                       (_%slots180601%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs178486%_)))
                                       (_%$slots180605%_
                                        (map (lambda (_%id180603%_)
                                               (let ((__tmp182658
                                                      (gensym _%id180603%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp182658)))
                                             _%slots180601%_))
                                       (_%_180614%_
                                        (for-each
                                         (lambda (_%g180606180609%_
                                                  _%g180607180611%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs178486%_
                                              _%g180606180609%_
                                              _%g180607180611%_)))
                                         _%slots180601%_
                                         _%$slots180605%_))
                                       (_%slots-bind180623%_
                                        (map (lambda (_%g180615180618%_
                                                      _%g180616180620%_)
                                               (_%generate-slot-bind178396%_
                                                _%$klass180572%_
                                                _%g180615180618%_
                                                _%g180616180620%_))
                                             _%slots180601%_
                                             _%$slots180605%_))
                                       (_%specializer-impl180631%_
                                        (let* ((_%specializer-body180629%_
                                                (map (lambda (_%g180624180626%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver180557%_
                                                        _%$klass180572%_
                                                        _%method-calls178485%_
                                                        _%slot-refs178486%_
                                                        _%g180624180626%_))
                                                     _%L180534%_))
                                               (__tmp182659
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L180195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L180194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp182660
                                   (cons '%#lambda
                                         (cons _%L180535%_
                                               _%specializer-body180629%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp182660 _%L180193%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L180192%_ '())))
                                      '()))
                          '())
                    (cons _%L180191%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp182659
                                           _%stx178393%_)))
                                       (_%specializer-impl180633%_
                                        (_%generate-specializer-impl178397%_
                                         _%$klass180572%_
                                         _%$method-table180574%_
                                         _%methods-bind180599%_
                                         _%slots-bind180623%_
                                         _%specializer-impl180631%_)))
                                  (let ((__tmp182662
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L178466%_)))
                                        (__tmp182661
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id180570%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp182662
                                     '" => "
                                     __tmp182661))
                                  (_%generate-specializer-def178398%_
                                   _%L178466%_
                                   _%specializer-id180570%_
                                   _%specializer-impl180633%_)))))
                        _%tl180508180531%_
                        _%hd180507180529%_)))
                   (_%g180499180513%_ _%g180500180516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g180499180513%_
                                                    _%g180500180516%_)))))
                                       (_%g180498180636%_ _%L180193%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L180193%_))
                                         (let* ((_%g180640180670%_
                                                 (lambda (_%g180641180667%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g180641180667%_))))
                                                (_%g180639181238%_
                                                 (lambda (_%g180641180673%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g180641180673%_))
                                                       (let ((_%e180645180675%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g180641180673%_))))
                 (let ((_%hd180646180678%_
                        (let ()
                          (declare (not safe))
                          (##car _%e180645180675%_)))
                       (_%tl180647180680%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e180645180675%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl180647180680%_))
                       (let ((_%e180648180683%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl180647180680%_))))
                         (let ((_%hd180649180686%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e180648180683%_)))
                               (_%tl180650180688%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e180648180683%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd180649180686%_))
                               (let ((_%e180651180691%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd180649180686%_))))
                                 (let ((_%hd180652180694%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e180651180691%_)))
                                       (_%tl180653180696%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e180651180691%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd180652180694%_))
                                       (let ((_%e180654180699%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd180652180694%_))))
                                         (let ((_%hd180655180702%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e180654180699%_)))
                                               (_%tl180656180704%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e180654180699%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd180655180702%_))
                                               (let ((_%e180657180707%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd180655180702%_))))
                                                 (let ((_%hd180658180710%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e180657180707%_)))
                                                       (_%tl180659180712%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e180657180707%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl180659180712%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl180656180704%_))
                                                           (let ((_%e180660180715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl180656180704%_))))
                     (let ((_%hd180661180718%_
                            (let ()
                              (declare (not safe))
                              (##car _%e180660180715%_)))
                           (_%tl180662180720%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e180660180715%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl180662180720%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl180653180696%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl180650180688%_))
                                   (let ((_%e180663180723%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl180650180688%_))))
                                     (let ((_%hd180664180726%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e180663180723%_)))
                                           (_%tl180665180728%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e180663180723%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl180665180728%_))
                                           ((lambda (_%L180731%_
                                                     _%L180732%_
                                                     _%L180733%_)
                                              (let* ((_%g180757180771%_
                                                      (lambda (_%g180758180768%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g180758180768%_))))
                                                     (_%g180756180818%_
                                                      (lambda (_%g180758180774%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g180758180774%_))
                                                            (let ((_%e180761180776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g180758180774%_))))
                      (let ((_%hd180762180779%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180761180776%_)))
                            (_%tl180763180781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180761180776%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180763180781%_))
                            (let ((_%e180764180784%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180763180781%_))))
                              (let ((_%hd180765180787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180764180784%_)))
                                    (_%tl180766180789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180764180784%_))))
                                ((lambda (_%L180792%_ _%L180793%_)
                                   (let* ((_%self180806%_
                                           (list-ref
                                            _%L180793%_
                                            _%self-index180495%_))
                                          (_%receiver180811%_
                                           (let ((_%$e180808%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L180792%_))))
                                             (if _%$e180808%_
                                                 _%$e180808%_
                                                 _%self180806%_))))
                                     (for-each
                                      (lambda (_%g180813180815%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver180811%_
                                         _%method-calls178485%_
                                         _%slot-refs178486%_
                                         _%g180813180815%_))
                                      _%L180792%_)))
                                 _%tl180766180789%_
                                 _%hd180765180787%_)))
                            (_%g180757180771%_ _%g180758180774%_))))
                    (_%g180757180771%_ _%g180758180774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g180756180818%_
                                                 _%L180732%_))
                                              (let* ((_%g180821180840%_
                                                      (lambda (_%g180822180837%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g180822180837%_))))
                                                     (_%g180820180951%_
                                                      (lambda (_%g180822180843%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g180822180843%_))
                                                            (let ((_%e180824180845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g180822180843%_))))
                      (let ((_%hd180825180848%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180824180845%_)))
                            (_%tl180826180850%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180824180845%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl180826180850%_))
                            (let ((_g182663_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl180826180850%_
                                      '0))))
                              (begin
                                (let ((_g182664_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g182663_)
                                             (##values-length _g182663_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g182664_ 2)))
                                      (error "Context expects 2 values"
                                             _g182664_)))
                                (let ((_%target180827180853%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g182663_ 0)))
                                      (_%tl180829180855%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g182663_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl180829180855%_))
                                      (letrec ((_%loop180830180858%_
                                                (lambda (_%hd180828180861%_
                                                         _%clause180834180863%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd180828180861%_))
                                                      (let ((_%e180831180866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd180828180861%_))))
                (let ((_%lp-hd180832180869%_
                       (let () (declare (not safe)) (##car _%e180831180866%_)))
                      (_%lp-tl180833180871%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e180831180866%_))))
                  (_%loop180830180858%_
                   _%lp-tl180833180871%_
                   (cons _%lp-hd180832180869%_ _%clause180834180863%_))))
              (let ((_%clause180835180874%_ (reverse _%clause180834180863%_)))
                ((lambda (_%L180877%_)
                   (for-each
                    (lambda (_%clause180890%_)
                      (let* ((_%g180892180903%_
                              (lambda (_%g180893180900%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g180893180900%_))))
                             (_%g180891180941%_
                              (lambda (_%g180893180906%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g180893180906%_))
                                    (let ((_%e180896180908%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g180893180906%_))))
                                      (let ((_%hd180897180911%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e180896180908%_)))
                                            (_%tl180898180913%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e180896180908%_))))
                                        ((lambda (_%L180916%_ _%L180917%_)
                                           (let* ((_%self180929%_
                                                   (list-ref
                                                    _%L180917%_
                                                    _%self-index180495%_))
                                                  (_%receiver180934%_
                                                   (let ((_%$e180931%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L180916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e180931%_
                                                         _%$e180931%_
                                                         _%self180929%_))))
                                             (for-each
                                              (lambda (_%g180936180938%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver180934%_
                                                 _%method-calls178485%_
                                                 _%slot-refs178486%_
                                                 _%g180936180938%_))
                                              _%L180916%_)))
                                         _%tl180898180913%_
                                         _%hd180897180911%_)))
                                    (_%g180892180903%_ _%g180893180906%_)))))
                        (_%g180891180941%_ _%clause180890%_)))
                    (let ((__tmp182665
                           (lambda (_%g180943180946%_ _%g180944180948%_)
                             (cons _%g180943180946%_ _%g180944180948%_))))
                      (declare (not safe))
                      (__foldr1 __tmp182665 '() _%L180877%_))))
                 _%clause180835180874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop180830180858%_
                                         _%target180827180853%_
                                         '()))
                                      (_%g180821180840%_ _%g180822180843%_)))))
                            (_%g180821180840%_ _%g180822180843%_))))
                    (_%g180821180840%_ _%g180822180843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g180820180951%_
                                                 _%L180731%_))
                                              (if (_%no-specializer?178489%_)
                                                  _%stx178393%_
                                                  (let* ((_%specializer-id180960%_
                                                          (let* ((_%id180954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182666
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L178466%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp182666 '"::specialize")))
                         (_%specializer-id180957%_
                          (let ((__tmp182667
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx178393%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id180954%_
                             __tmp182667))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id180957%_))
                    _%specializer-id180957%_))
                 (_%$klass180962%_
                  (let ((__tmp182668
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp182668)))
                 (_%$method-table180964%_
                  (let ((__tmp182669
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp182669)))
                 (_%methods180966%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls178485%_)))
                 (_%$methods180970%_
                  (map (lambda (_%id180968%_)
                         (let ((__tmp182670 (gensym _%id180968%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp182670)))
                       _%methods180966%_))
                 (_%_180979%_
                  (for-each
                   (lambda (_%g180971180974%_ _%g180972180976%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls178485%_
                        _%g180971180974%_
                        _%g180972180976%_)))
                   _%methods180966%_
                   _%$methods180970%_))
                 (_%methods-bind180989%_
                  (map (lambda (_%g180981180984%_ _%g180982180986%_)
                         (_%generate-method-bind178395%_
                          _%$klass180962%_
                          _%$method-table180964%_
                          _%g180981180984%_
                          _%g180982180986%_))
                       _%methods180966%_
                       _%$methods180970%_))
                 (_%slots180991%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs178486%_)))
                 (_%$slots180995%_
                  (map (lambda (_%id180993%_)
                         (let ((__tmp182671 (gensym _%id180993%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp182671)))
                       _%slots180991%_))
                 (_%_181004%_
                  (for-each
                   (lambda (_%g180996180999%_ _%g180997181001%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs178486%_
                        _%g180996180999%_
                        _%g180997181001%_)))
                   _%slots180991%_
                   _%$slots180995%_))
                 (_%slots-bind181013%_
                  (map (lambda (_%g181005181008%_ _%g181006181010%_)
                         (_%generate-slot-bind178396%_
                          _%$klass180962%_
                          _%g181005181008%_
                          _%g181006181010%_))
                       _%slots180991%_
                       _%$slots180995%_))
                 (_%specializer-lambda-expr181091%_
                  (let* ((_%g181015181029%_
                          (lambda (_%g181016181026%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g181016181026%_))))
                         (_%g181014181088%_
                          (lambda (_%g181016181032%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g181016181032%_))
                                (let ((_%e181019181034%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g181016181032%_))))
                                  (let ((_%hd181020181037%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e181019181034%_)))
                                        (_%tl181021181039%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e181019181034%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl181021181039%_))
                                        (let ((_%e181022181042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl181021181039%_))))
                                          (let ((_%hd181023181045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e181022181042%_)))
                                                (_%tl181024181047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e181022181042%_))))
                                            ((lambda (_%L181050%_ _%L181051%_)
                                               (let* ((_%self181074%_
                                                       (list-ref
                                                        _%L181051%_
                                                        _%self-index180495%_))
                                                      (_%receiver181079%_
                                                       (let ((_%$e181076%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L181050%_))))
                 (if _%$e181076%_ _%$e181076%_ _%self181074%_)))
              (_%body181085%_
               (map (lambda (_%g181080181082%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver181079%_
                       _%$klass180962%_
                       _%method-calls178485%_
                       _%slot-refs178486%_
                       _%g181080181082%_))
                    _%L181050%_))
              (__tmp182672 (cons '%#lambda (cons _%L181051%_ _%body181085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp182672
                                                  _%L180732%_)))
                                             _%tl181024181047%_
                                             _%hd181023181045%_)))
                                        (_%g181015181029%_
                                         _%g181016181032%_))))
                                (_%g181015181029%_ _%g181016181032%_)))))
                    (_%g181014181088%_ _%L180732%_)))
                 (_%specializer-case-lambda-expr181231%_
                  (let* ((_%g181093181112%_
                          (lambda (_%g181094181109%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g181094181109%_))))
                         (_%g181092181228%_
                          (lambda (_%g181094181115%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g181094181115%_))
                                (let ((_%e181096181117%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g181094181115%_))))
                                  (let ((_%hd181097181120%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e181096181117%_)))
                                        (_%tl181098181122%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e181096181117%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl181098181122%_))
                                        (let ((_g182673_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl181098181122%_
                                                  '0))))
                                          (begin
                                            (let ((_g182674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g182673_)
                                                         (##values-length
                                                          _g182673_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g182674_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g182674_)))
                                            (let ((_%target181099181125%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g182673_
                                                      0)))
                                                  (_%tl181101181127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g182673_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl181101181127%_))
                                                  (letrec ((_%loop181102181130%_
                                                            (lambda (_%hd181100181133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause181106181135%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd181100181133%_))
                          (let ((_%e181103181138%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd181100181133%_))))
                            (let ((_%lp-hd181104181141%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181103181138%_)))
                                  (_%lp-tl181105181143%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181103181138%_))))
                              (_%loop181102181130%_
                               _%lp-tl181105181143%_
                               (cons _%lp-hd181104181141%_
                                     _%clause181106181135%_))))
                          (let ((_%clause181107181146%_
                                 (reverse _%clause181106181135%_)))
                            ((lambda (_%L181149%_)
                               (let* ((_%clauses181226%_
                                       (map (lambda (_%clause181163%_)
                                              (let* ((_%g181165181176%_
                                                      (lambda (_%g181166181173%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g181166181173%_))))
                                                     (_%g181164181216%_
                                                      (lambda (_%g181166181179%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g181166181179%_))
                                                            (let ((_%e181169181181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g181166181179%_))))
                      (let ((_%hd181170181184%_
                             (let ()
                               (declare (not safe))
                               (##car _%e181169181181%_)))
                            (_%tl181171181186%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e181169181181%_))))
                        ((lambda (_%L181189%_ _%L181190%_)
                           (let* ((_%self181202%_
                                   (list-ref _%L181190%_ _%self-index180495%_))
                                  (_%receiver181207%_
                                   (let ((_%$e181204%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L181189%_))))
                                     (if _%$e181204%_
                                         _%$e181204%_
                                         _%self181202%_)))
                                  (_%body181213%_
                                   (map (lambda (_%g181208181210%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver181207%_
                                           _%$klass180962%_
                                           _%method-calls178485%_
                                           _%slot-refs178486%_
                                           _%g181208181210%_))
                                        _%L181189%_)))
                             (cons _%L181190%_ _%body181213%_)))
                         _%tl181171181186%_
                         _%hd181170181184%_)))
                    (_%g181165181176%_ _%g181166181179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g181164181216%_
                                                 _%clause181163%_)))
                                            (let ((__tmp182675
                                                   (lambda (_%g181218181221%_
                                                            _%g181219181223%_)
                                                     (cons _%g181218181221%_
                                                           _%g181219181223%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp182675
                                               '()
                                               _%L181149%_))))
                                      (__tmp182676
                                       (cons '%#case-lambda
                                             _%clauses181226%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp182676
                                  _%L180731%_)))
                             _%clause181107181146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop181102181130%_
                                                     _%target181099181125%_
                                                     '()))
                                                  (_%g181093181112%_
                                                   _%g181094181115%_)))))
                                        (_%g181093181112%_
                                         _%g181094181115%_))))
                                (_%g181093181112%_ _%g181094181115%_)))))
                    (_%g181092181228%_ _%L180731%_)))
                 (_%specializer-impl181233%_
                  (let ((__tmp182677
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L180195%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L180194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp182678
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L180733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr181091%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr181231%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp182678
                                                _%stx178393%_))
                                             '()))
                                 '())
                           (cons _%L180192%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L180191%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp182677 _%stx178393%_)))
                 (_%specializer-impl181235%_
                  (_%generate-specializer-impl178397%_
                   _%$klass180962%_
                   _%$method-table180964%_
                   _%methods-bind180989%_
                   _%slots-bind181013%_
                   _%specializer-impl181233%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182680
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L178466%_)))
                                                          (__tmp182679
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id180960%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp182680
                                                       '" => "
                                                       __tmp182679))
                                                    (_%generate-specializer-def178398%_
                                                     _%L178466%_
                                                     _%specializer-id180960%_
                                                     _%specializer-impl181235%_))))
                                            _%hd180664180726%_
                                            _%hd180661180718%_
                                            _%hd180658180710%_)
                                           (_%g180640180670%_
                                            _%g180641180673%_))))
                                   (_%g180640180670%_ _%g180641180673%_))
                               (_%g180640180670%_ _%g180641180673%_))
                           (_%g180640180670%_ _%g180641180673%_))))
                   (_%g180640180670%_ _%g180641180673%_))
               (_%g180640180670%_ _%g180641180673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g180640180670%_
                                                _%g180641180673%_))))
                                       (_%g180640180670%_ _%g180641180673%_))))
                               (_%g180640180670%_ _%g180641180673%_))))
                       (_%g180640180670%_ _%g180641180673%_))))
               (_%g180640180670%_ _%g180641180673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g180639181238%_ _%L180193%_))
                                         _%stx178393%_))))
                             _%hd180291180414%_
                             _%kw-ref180289180435%_
                             _%hd180279180401%_
                             _%hd180270180377%_
                             _%hd180261180353%_)
                            (_%g180235180297%_ _%g180236180300%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop180284180419%_
                                                 _%target180281180406%_
                                                 '()))
                                              (_%g180235180297%_
                                               _%g180236180300%_))))
                                      (_%g180235180297%_ _%g180236180300%_)))))
                            (_%g180235180297%_ _%g180236180300%_))
                        (_%g180235180297%_ _%g180236180300%_))
                    (_%g180235180297%_ _%g180236180300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g180235180297%_
                                                     _%g180236180300%_))
                                                (_%g180235180297%_
                                                 _%g180236180300%_))
                                            (_%g180235180297%_
                                             _%g180236180300%_))))
                                    (_%g180235180297%_ _%g180236180300%_))))
                            (_%g180235180297%_ _%g180236180300%_))
                        (_%g180235180297%_ _%g180236180300%_))))
                (_%g180235180297%_ _%g180236180300%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g180235180297%_
                                                     _%g180236180300%_))
                                                (_%g180235180297%_
                                                 _%g180236180300%_))))
                                        (_%g180235180297%_
                                         _%g180236180300%_))))
                                (_%g180235180297%_ _%g180236180300%_))
                            (_%g180235180297%_ _%g180236180300%_))))
                    (_%g180235180297%_ _%g180236180300%_))
                (_%g180235180297%_ _%g180236180300%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g180235180297%_
                                                     _%g180236180300%_))))
                                            (_%g180235180297%_
                                             _%g180236180300%_))))
                                    (_%g180235180297%_ _%g180236180300%_))
                                (_%g180235180297%_ _%g180236180300%_))
                            (_%g180235180297%_ _%g180236180300%_))))
                    (_%g180235180297%_ _%g180236180300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g180235180297%_
                                                     _%g180236180300%_))))
                                            (_%g180235180297%_
                                             _%g180236180300%_))
                                        (_%g180235180297%_ _%g180236180300%_))
                                    (_%g180235180297%_ _%g180236180300%_))))
                            (_%g180235180297%_ _%g180236180300%_)))))
                (_%g180234181242%_ _%L180192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd180068180186%_
                                                    _%hd180065180178%_
                                                    _%hd180062180170%_
                                                    _%hd180059180162%_
                                                    _%hd180041180114%_)
                                                   (_%g180021180074%_
                                                    _%g180022180077%_))))
                                           (_%g180021180074%_
                                            _%g180022180077%_))
                                       (_%g180021180074%_ _%g180022180077%_))
                                   (_%g180021180074%_ _%g180022180077%_))
                               (_%g180021180074%_ _%g180022180077%_))))
                       (_%g180021180074%_ _%g180022180077%_))
                   (_%g180021180074%_ _%g180022180077%_))
               (_%g180021180074%_ _%g180022180077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g180021180074%_
                                                _%g180022180077%_))
                                           (_%g180021180074%_
                                            _%g180022180077%_))))
                                   (_%g180021180074%_ _%g180022180077%_))))
                           (_%g180021180074%_ _%g180022180077%_))))
                   (_%g180021180074%_ _%g180022180077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g180021180074%_
                                                    _%g180022180077%_))
                                               (_%g180021180074%_
                                                _%g180022180077%_))
                                           (_%g180021180074%_
                                            _%g180022180077%_))))
                                   (_%g180021180074%_ _%g180022180077%_))))
                           (_%g180021180074%_ _%g180022180077%_))
                       (_%g180021180074%_ _%g180022180077%_))))
               (_%g180021180074%_ _%g180022180077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g180021180074%_
                                                _%g180022180077%_))))
                                       (_%g180021180074%_ _%g180022180077%_))))
                               (_%g180021180074%_ _%g180022180077%_))
                           (_%g180021180074%_ _%g180022180077%_))
                       (_%g180021180074%_ _%g180022180077%_))))
               (_%g180021180074%_ _%g180022180077%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g180020181245%_ _%L178465%_))
                                         _%stx178393%_))))))))
                  (_%__kont181479181480%_ (lambda () _%stx178393%_)))
              (let ((_%__match181508181509%_
                     (lambda (_%e178405178433%_
                              _%hd178406178436%_
                              _%tl178407178438%_
                              _%e178408178441%_
                              _%hd178409178444%_
                              _%tl178410178446%_
                              _%e178411178449%_
                              _%hd178412178452%_
                              _%tl178413178454%_
                              _%e178414178457%_
                              _%hd178415178460%_
                              _%tl178416178462%_)
                       (let ((_%L178465%_ _%hd178415178460%_)
                             (_%L178466%_ _%hd178412178452%_))
                         (if (let ((__tmp182681
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L178466%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp182681))
                             (_%__kont181477181478%_ _%L178465%_ _%L178466%_)
                             (_%__kont181479181480%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx181475181476%_))
                    (let ((_%e178405178433%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx181475181476%_))))
                      (let ((_%tl178407178438%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e178405178433%_)))
                            (_%hd178406178436%_
                             (let ()
                               (declare (not safe))
                               (##car _%e178405178433%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl178407178438%_))
                            (let ((_%e178408178441%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl178407178438%_))))
                              (let ((_%tl178410178446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e178408178441%_)))
                                    (_%hd178409178444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e178408178441%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd178409178444%_))
                                    (let ((_%e178411178449%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd178409178444%_))))
                                      (let ((_%tl178413178454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e178411178449%_)))
                                            (_%hd178412178452%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e178411178449%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl178413178454%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl178410178446%_))
                                                (let ((_%e178414178457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl178410178446%_))))
                                                  (let ((_%tl178416178462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e178414178457%_)))
                                                        (_%hd178415178460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e178414178457%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl178416178462%_))
                                                        (_%__match181508181509%_
                                                         _%e178405178433%_
                                                         _%hd178406178436%_
                                                         _%tl178407178438%_
                                                         _%e178408178441%_
                                                         _%hd178409178444%_
                                                         _%tl178410178446%_
                                                         _%e178411178449%_
                                                         _%hd178412178452%_
                                                         _%tl178413178454%_
                                                         _%e178414178457%_
                                                         _%hd178415178460%_
                                                         _%tl178416178462%_)
                                                        (_%__kont181479181480%_))))
                                                (_%__kont181479181480%_))
                                            (_%__kont181479181480%_))))
                                    (_%__kont181479181480%_))))
                            (_%__kont181479181480%_))))
                    (_%__kont181479181480%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self178245%_ _%stx178246%_)
        (let* ((_%__stx181511181512%_ _%stx178246%_)
               (_%g178249178282%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx181511181512%_)))))
          (let ((_%__kont181513181514%_ (lambda (_%L178372%_) _%L178372%_))
                (_%__kont181515181516%_
                 (lambda (_%L178311%_ _%L178312%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self178245%_ _%L178311%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx181511181512%_))
                (let ((_%e178252178332%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx181511181512%_))))
                  (let ((_%tl178254178337%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e178252178332%_)))
                        (_%hd178253178335%_
                         (let ()
                           (declare (not safe))
                           (##car _%e178252178332%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl178254178337%_))
                        (let ((_%e178255178340%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl178254178337%_))))
                          (let ((_%tl178257178345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e178255178340%_)))
                                (_%hd178256178343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e178255178340%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd178256178343%_))
                                (let ((_%e178258178348%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd178256178343%_))))
                                  (let ((_%tl178260178353%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e178258178348%_)))
                                        (_%hd178259178351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e178258178348%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd178259178351%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd178259178351%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl178260178353%_))
                                                (let ((_%e178261178356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl178260178353%_))))
                                                  (let ((_%tl178263178361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e178261178356%_)))
                                                        (_%hd178262178359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e178261178356%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl178263178361%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl178257178345%_))
                                                            (let ((_%e178264178364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl178257178345%_))))
                      (let ((_%tl178266178369%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e178264178364%_)))
                            (_%hd178265178367%_
                             (let ()
                               (declare (not safe))
                               (##car _%e178264178364%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl178266178369%_))
                            (_%__kont181513181514%_ _%hd178262178359%_)
                            (let ()
                              (declare (not safe))
                              (_%g178249178282%_)))))
                    (let () (declare (not safe)) (_%g178249178282%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl178257178345%_))
                    (let ((_%e178275178303%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl178257178345%_))))
                      (let ((_%tl178277178308%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e178275178303%_)))
                            (_%hd178276178306%_
                             (let ()
                               (declare (not safe))
                               (##car _%e178275178303%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl178277178308%_))
                            (_%__kont181515181516%_
                             _%hd178276178306%_
                             _%hd178256178343%_)
                            (let ()
                              (declare (not safe))
                              (_%g178249178282%_)))))
                    (let () (declare (not safe)) (_%g178249178282%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl178257178345%_))
                                                    (let ((_%e178275178303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl178257178345%_))))
                                                      (let ((_%tl178277178308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e178275178303%_)))
                    (_%hd178276178306%_
                     (let () (declare (not safe)) (##car _%e178275178303%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl178277178308%_))
                    (_%__kont181515181516%_
                     _%hd178276178306%_
                     _%hd178256178343%_)
                    (let () (declare (not safe)) (_%g178249178282%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g178249178282%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl178257178345%_))
                                                (let ((_%e178275178303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl178257178345%_))))
                                                  (let ((_%tl178277178308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e178275178303%_)))
                                                        (_%hd178276178306%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e178275178303%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl178277178308%_))
                                                        (_%__kont181515181516%_
                                                         _%hd178276178306%_
                                                         _%hd178256178343%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g178249178282%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g178249178282%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl178257178345%_))
                                            (let ((_%e178275178303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl178257178345%_))))
                                              (let ((_%tl178277178308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e178275178303%_)))
                                                    (_%hd178276178306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e178275178303%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl178277178308%_))
                                                    (_%__kont181515181516%_
                                                     _%hd178276178306%_
                                                     _%hd178256178343%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g178249178282%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g178249178282%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl178257178345%_))
                                    (let ((_%e178275178303%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl178257178345%_))))
                                      (let ((_%tl178277178308%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e178275178303%_)))
                                            (_%hd178276178306%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e178275178303%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl178277178308%_))
                                            (_%__kont181515181516%_
                                             _%hd178276178306%_
                                             _%hd178256178343%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g178249178282%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g178249178282%_))))))
                        (let () (declare (not safe)) (_%g178249178282%_)))))
                (let () (declare (not safe)) (_%g178249178282%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self178161%_ _%stx178162%_)
        (let* ((_%g178164178185%_
                (lambda (_%g178165178182%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g178165178182%_))))
               (_%g178163178242%_
                (lambda (_%g178165178188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g178165178188%_))
                      (let ((_%e178169178190%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g178165178188%_))))
                        (let ((_%hd178170178193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e178169178190%_)))
                              (_%tl178171178195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e178169178190%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl178171178195%_))
                              (let ((_%e178172178198%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl178171178195%_))))
                                (let ((_%hd178173178201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e178172178198%_)))
                                      (_%tl178174178203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e178172178198%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl178174178203%_))
                                      (let ((_%e178175178206%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl178174178203%_))))
                                        (let ((_%hd178176178209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e178175178206%_)))
                                              (_%tl178177178211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e178175178206%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl178177178211%_))
                                              (let ((_%e178178178214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl178177178211%_))))
                                                (let ((_%hd178179178217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e178178178214%_)))
                                                      (_%tl178180178219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e178178178214%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl178180178219%_))
                                                      ((lambda (_%L178222%_
                                                                _%L178223%_
                                                                _%L178224%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self178161%_
                                                            _%L178223%_)))
                                                       _%hd178179178217%_
                                                       _%hd178176178209%_
                                                       _%hd178173178201%_)
                                                      (_%g178164178185%_
                                                       _%g178165178188%_))))
                                              (_%g178164178185%_
                                               _%g178165178188%_))))
                                      (_%g178164178185%_ _%g178165178188%_))))
                              (_%g178164178185%_ _%g178165178188%_))))
                      (_%g178164178185%_ _%g178165178188%_)))))
          (_%g178163178242%_ _%stx178162%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self177122%_ _%stx177123%_)
        (let* ((_%__stx181577181578%_ _%stx177123%_)
               (_%g177131177353%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx181577181578%_)))))
          (let ((_%__kont181579181580%_
                 (lambda (_%L178110%_ _%L178111%_ _%L178112%_ _%L178113%_)
                   (let ((__tmp182683
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self177122%_ 'methods)))
                         (__tmp182682
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L178111%_))))
                     (declare (not safe))
                     (hash-put! __tmp182683 __tmp182682 '#t))
                   (for-each
                    (lambda (_%g178146178148%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self177122%_ _%g178146178148%_)))
                    (let ((__tmp182684
                           (lambda (_%g178150178153%_ _%g178151178155%_)
                             (cons _%g178150178153%_ _%g178151178155%_))))
                      (declare (not safe))
                      (__foldr1 __tmp182684 '() _%L178110%_)))))
                (_%__kont181583181584%_
                 (lambda (_%L177945%_
                          _%L177946%_
                          _%L177947%_
                          _%L177948%_
                          _%L177949%_)
                   (let ((__tmp182686
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self177122%_ 'methods)))
                         (__tmp182685
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L177946%_))))
                     (declare (not safe))
                     (hash-put! __tmp182686 __tmp182685 '#t))
                   (for-each
                    (lambda (_%g177989177991%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self177122%_ _%g177989177991%_)))
                    (let ((__tmp182687
                           (lambda (_%g177993177996%_ _%g177994177998%_)
                             (cons _%g177993177996%_ _%g177994177998%_))))
                      (declare (not safe))
                      (__foldr1 __tmp182687 '() _%L177945%_)))))
                (_%__kont181587181588%_
                 (lambda (_%L177778%_ _%L177779%_ _%L177780%_)
                   (let ((__tmp182689
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self177122%_ 'slots)))
                         (__tmp182688
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L177778%_))))
                     (declare (not safe))
                     (hash-put! __tmp182689 __tmp182688 '#t))))
                (_%__kont181589181590%_
                 (lambda (_%L177655%_ _%L177656%_ _%L177657%_ _%L177658%_)
                   (let ((__tmp182691
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self177122%_ 'slots)))
                         (__tmp182690
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L177656%_))))
                     (declare (not safe))
                     (hash-put! __tmp182691 __tmp182690 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self177122%_ _%L177655%_))))
                (_%__kont181591181592%_
                 (lambda (_%L177529%_ _%L177530%_)
                   (let* ((_%accessor177552%_
                           (let ((__tmp182692
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L177530%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp182692)))
                          (_%klass177554%_
                           (let ((__tmp182693
                                  (##structure-ref
                                   _%accessor177552%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx177123%_
                              __tmp182693)))
                          (_%slot177556%_
                           (##structure-ref
                            _%accessor177552%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor177552%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass177554%_
                                    _%slot177556%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass177554%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp182695
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self177122%_ 'slots)))
                               (__tmp182694
                                (##structure-ref
                                 _%accessor177552%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp182695 __tmp182694 '#t))))))
                (_%__kont181593181594%_
                 (lambda (_%L177429%_ _%L177430%_ _%L177431%_)
                   (let* ((_%mutator177458%_
                           (let ((__tmp182696
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L177431%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp182696)))
                          (_%klass177460%_
                           (let ((__tmp182697
                                  (##structure-ref
                                   _%mutator177458%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx177123%_
                              __tmp182697)))
                          (_%slot177462%_
                           (##structure-ref
                            _%mutator177458%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator177458%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass177460%_
                                    _%slot177462%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass177460%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp182698
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self177122%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp182698 _%slot177462%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self177122%_ _%L177429%_)))))
                (_%__kont181595181596%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self177122%_ _%stx177123%_)))))
            (let* ((_%__match182076182077%_
                    (lambda (_%e177325177365%_
                             _%hd177326177368%_
                             _%tl177327177370%_
                             _%e177328177373%_
                             _%hd177329177376%_
                             _%tl177330177378%_
                             _%e177331177381%_
                             _%hd177332177384%_
                             _%tl177333177386%_
                             _%e177334177389%_
                             _%hd177335177392%_
                             _%tl177336177394%_
                             _%e177337177397%_
                             _%hd177338177400%_
                             _%tl177339177402%_
                             _%e177340177405%_
                             _%hd177341177408%_
                             _%tl177342177410%_
                             _%e177343177413%_
                             _%hd177344177416%_
                             _%tl177345177418%_
                             _%e177346177421%_
                             _%hd177347177424%_
                             _%tl177348177426%_)
                      (let ((_%L177429%_ _%hd177347177424%_)
                            (_%L177430%_ _%hd177344177416%_)
                            (_%L177431%_ _%hd177335177392%_))
                        (if (and (let ((__tmp182699
                                        (let ((__tmp182700
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L177431%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp182700))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp182699
                                    'gxc#!mutator::t))
                                 (let ((__tmp182701
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self177122%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L177430%_
                                    __tmp182701)))
                            (_%__kont181593181594%_
                             _%L177429%_
                             _%L177430%_
                             _%L177431%_)
                            (_%__kont181595181596%_)))))
                   (_%__match182074182075%_
                    (lambda (_%e177325177365%_
                             _%hd177326177368%_
                             _%tl177327177370%_
                             _%e177328177373%_
                             _%hd177329177376%_
                             _%tl177330177378%_
                             _%e177331177381%_
                             _%hd177332177384%_
                             _%tl177333177386%_
                             _%e177334177389%_
                             _%hd177335177392%_
                             _%tl177336177394%_
                             _%e177337177397%_
                             _%hd177338177400%_
                             _%tl177339177402%_
                             _%e177340177405%_
                             _%hd177341177408%_
                             _%tl177342177410%_
                             _%e177343177413%_
                             _%hd177344177416%_
                             _%tl177345177418%_
                             _%e177346177421%_
                             _%hd177347177424%_
                             _%tl177348177426%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl177348177426%_))
                          (_%__match182076182077%_
                           _%e177325177365%_
                           _%hd177326177368%_
                           _%tl177327177370%_
                           _%e177328177373%_
                           _%hd177329177376%_
                           _%tl177330177378%_
                           _%e177331177381%_
                           _%hd177332177384%_
                           _%tl177333177386%_
                           _%e177334177389%_
                           _%hd177335177392%_
                           _%tl177336177394%_
                           _%e177337177397%_
                           _%hd177338177400%_
                           _%tl177339177402%_
                           _%e177340177405%_
                           _%hd177341177408%_
                           _%tl177342177410%_
                           _%e177343177413%_
                           _%hd177344177416%_
                           _%tl177345177418%_
                           _%e177346177421%_
                           _%hd177347177424%_
                           _%tl177348177426%_)
                          (_%__kont181595181596%_))))
                   (_%__match182068182069%_
                    (lambda (_%e177325177365%_
                             _%hd177326177368%_
                             _%tl177327177370%_
                             _%e177328177373%_
                             _%hd177329177376%_
                             _%tl177330177378%_
                             _%e177331177381%_
                             _%hd177332177384%_
                             _%tl177333177386%_
                             _%e177334177389%_
                             _%hd177335177392%_
                             _%tl177336177394%_
                             _%e177337177397%_
                             _%hd177338177400%_
                             _%tl177339177402%_
                             _%e177340177405%_
                             _%hd177341177408%_
                             _%tl177342177410%_
                             _%e177343177413%_
                             _%hd177344177416%_
                             _%tl177345177418%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl177339177402%_))
                          (let ((_%e177346177421%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl177339177402%_))))
                            (let ((_%tl177348177426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177346177421%_)))
                                  (_%hd177347177424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177346177421%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl177348177426%_))
                                  (_%__match182076182077%_
                                   _%e177325177365%_
                                   _%hd177326177368%_
                                   _%tl177327177370%_
                                   _%e177328177373%_
                                   _%hd177329177376%_
                                   _%tl177330177378%_
                                   _%e177331177381%_
                                   _%hd177332177384%_
                                   _%tl177333177386%_
                                   _%e177334177389%_
                                   _%hd177335177392%_
                                   _%tl177336177394%_
                                   _%e177337177397%_
                                   _%hd177338177400%_
                                   _%tl177339177402%_
                                   _%e177340177405%_
                                   _%hd177341177408%_
                                   _%tl177342177410%_
                                   _%e177343177413%_
                                   _%hd177344177416%_
                                   _%tl177345177418%_
                                   _%e177346177421%_
                                   _%hd177347177424%_
                                   _%tl177348177426%_)
                                  (_%__kont181595181596%_))))
                          (_%__kont181595181596%_))))
                   (_%__match182014182015%_
                    (lambda (_%e177301177473%_
                             _%hd177302177476%_
                             _%tl177303177478%_
                             _%e177304177481%_
                             _%hd177305177484%_
                             _%tl177306177486%_
                             _%e177307177489%_
                             _%hd177308177492%_
                             _%tl177309177494%_
                             _%e177310177497%_
                             _%hd177311177500%_
                             _%tl177312177502%_
                             _%e177313177505%_
                             _%hd177314177508%_
                             _%tl177315177510%_
                             _%e177316177513%_
                             _%hd177317177516%_
                             _%tl177318177518%_
                             _%e177319177521%_
                             _%hd177320177524%_
                             _%tl177321177526%_)
                      (let ((_%L177529%_ _%hd177320177524%_)
                            (_%L177530%_ _%hd177311177500%_))
                        (if (and (let ((__tmp182702
                                        (let ((__tmp182703
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L177530%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp182703))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp182702
                                    'gxc#!accessor::t))
                                 (let ((__tmp182704
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self177122%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L177529%_
                                    __tmp182704)))
                            (_%__kont181591181592%_ _%L177529%_ _%L177530%_)
                            (_%__kont181595181596%_)))))
                   (_%__match182012182013%_
                    (lambda (_%e177301177473%_
                             _%hd177302177476%_
                             _%tl177303177478%_
                             _%e177304177481%_
                             _%hd177305177484%_
                             _%tl177306177486%_
                             _%e177307177489%_
                             _%hd177308177492%_
                             _%tl177309177494%_
                             _%e177310177497%_
                             _%hd177311177500%_
                             _%tl177312177502%_
                             _%e177313177505%_
                             _%hd177314177508%_
                             _%tl177315177510%_
                             _%e177316177513%_
                             _%hd177317177516%_
                             _%tl177318177518%_
                             _%e177319177521%_
                             _%hd177320177524%_
                             _%tl177321177526%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl177315177510%_))
                          (_%__match182014182015%_
                           _%e177301177473%_
                           _%hd177302177476%_
                           _%tl177303177478%_
                           _%e177304177481%_
                           _%hd177305177484%_
                           _%tl177306177486%_
                           _%e177307177489%_
                           _%hd177308177492%_
                           _%tl177309177494%_
                           _%e177310177497%_
                           _%hd177311177500%_
                           _%tl177312177502%_
                           _%e177313177505%_
                           _%hd177314177508%_
                           _%tl177315177510%_
                           _%e177316177513%_
                           _%hd177317177516%_
                           _%tl177318177518%_
                           _%e177319177521%_
                           _%hd177320177524%_
                           _%tl177321177526%_)
                          (_%__match182068182069%_
                           _%e177301177473%_
                           _%hd177302177476%_
                           _%tl177303177478%_
                           _%e177304177481%_
                           _%hd177305177484%_
                           _%tl177306177486%_
                           _%e177307177489%_
                           _%hd177308177492%_
                           _%tl177309177494%_
                           _%e177310177497%_
                           _%hd177311177500%_
                           _%tl177312177502%_
                           _%e177313177505%_
                           _%hd177314177508%_
                           _%tl177315177510%_
                           _%e177316177513%_
                           _%hd177317177516%_
                           _%tl177318177518%_
                           _%e177319177521%_
                           _%hd177320177524%_
                           _%tl177321177526%_))))
                   (_%__match181958181959%_
                    (lambda (_%e177266177567%_
                             _%hd177267177570%_
                             _%tl177268177572%_
                             _%e177269177575%_
                             _%hd177270177578%_
                             _%tl177271177580%_
                             _%e177272177583%_
                             _%hd177273177586%_
                             _%tl177274177588%_
                             _%e177275177591%_
                             _%hd177276177594%_
                             _%tl177277177596%_
                             _%e177278177599%_
                             _%hd177279177602%_
                             _%tl177280177604%_
                             _%e177281177607%_
                             _%hd177282177610%_
                             _%tl177283177612%_
                             _%e177284177615%_
                             _%hd177285177618%_
                             _%tl177286177620%_
                             _%e177287177623%_
                             _%hd177288177626%_
                             _%tl177289177628%_
                             _%e177290177631%_
                             _%hd177291177634%_
                             _%tl177292177636%_
                             _%e177293177639%_
                             _%hd177294177642%_
                             _%tl177295177644%_
                             _%e177296177647%_
                             _%hd177297177650%_
                             _%tl177298177652%_)
                      (let ((_%L177655%_ _%hd177297177650%_)
                            (_%L177656%_ _%hd177294177642%_)
                            (_%L177657%_ _%hd177285177618%_)
                            (_%L177658%_ _%hd177276177594%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L177658%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L177658%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp182705
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self177122%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L177657%_
                                    __tmp182705)))
                            (_%__kont181589181590%_
                             _%L177655%_
                             _%L177656%_
                             _%L177657%_
                             _%L177658%_)
                            (_%__kont181595181596%_)))))
                   (_%__match181950181951%_
                    (lambda (_%e177266177567%_
                             _%hd177267177570%_
                             _%tl177268177572%_
                             _%e177269177575%_
                             _%hd177270177578%_
                             _%tl177271177580%_
                             _%e177272177583%_
                             _%hd177273177586%_
                             _%tl177274177588%_
                             _%e177275177591%_
                             _%hd177276177594%_
                             _%tl177277177596%_
                             _%e177278177599%_
                             _%hd177279177602%_
                             _%tl177280177604%_
                             _%e177281177607%_
                             _%hd177282177610%_
                             _%tl177283177612%_
                             _%e177284177615%_
                             _%hd177285177618%_
                             _%tl177286177620%_
                             _%e177287177623%_
                             _%hd177288177626%_
                             _%tl177289177628%_
                             _%e177290177631%_
                             _%hd177291177634%_
                             _%tl177292177636%_
                             _%e177293177639%_
                             _%hd177294177642%_
                             _%tl177295177644%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl177289177628%_))
                          (let ((_%e177296177647%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl177289177628%_))))
                            (let ((_%tl177298177652%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177296177647%_)))
                                  (_%hd177297177650%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177296177647%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl177298177652%_))
                                  (_%__match181958181959%_
                                   _%e177266177567%_
                                   _%hd177267177570%_
                                   _%tl177268177572%_
                                   _%e177269177575%_
                                   _%hd177270177578%_
                                   _%tl177271177580%_
                                   _%e177272177583%_
                                   _%hd177273177586%_
                                   _%tl177274177588%_
                                   _%e177275177591%_
                                   _%hd177276177594%_
                                   _%tl177277177596%_
                                   _%e177278177599%_
                                   _%hd177279177602%_
                                   _%tl177280177604%_
                                   _%e177281177607%_
                                   _%hd177282177610%_
                                   _%tl177283177612%_
                                   _%e177284177615%_
                                   _%hd177285177618%_
                                   _%tl177286177620%_
                                   _%e177287177623%_
                                   _%hd177288177626%_
                                   _%tl177289177628%_
                                   _%e177290177631%_
                                   _%hd177291177634%_
                                   _%tl177292177636%_
                                   _%e177293177639%_
                                   _%hd177294177642%_
                                   _%tl177295177644%_
                                   _%e177296177647%_
                                   _%hd177297177650%_
                                   _%tl177298177652%_)
                                  (_%__kont181595181596%_))))
                          (_%__match182074182075%_
                           _%e177266177567%_
                           _%hd177267177570%_
                           _%tl177268177572%_
                           _%e177269177575%_
                           _%hd177270177578%_
                           _%tl177271177580%_
                           _%e177272177583%_
                           _%hd177273177586%_
                           _%tl177274177588%_
                           _%e177275177591%_
                           _%hd177276177594%_
                           _%tl177277177596%_
                           _%e177278177599%_
                           _%hd177279177602%_
                           _%tl177280177604%_
                           _%e177281177607%_
                           _%hd177282177610%_
                           _%tl177283177612%_
                           _%e177284177615%_
                           _%hd177285177618%_
                           _%tl177286177620%_
                           _%e177287177623%_
                           _%hd177288177626%_
                           _%tl177289177628%_))))
                   (_%__match181872181873%_
                    (lambda (_%e177232177698%_
                             _%hd177233177701%_
                             _%tl177234177703%_
                             _%e177235177706%_
                             _%hd177236177709%_
                             _%tl177237177711%_
                             _%e177238177714%_
                             _%hd177239177717%_
                             _%tl177240177719%_
                             _%e177241177722%_
                             _%hd177242177725%_
                             _%tl177243177727%_
                             _%e177244177730%_
                             _%hd177245177733%_
                             _%tl177246177735%_
                             _%e177247177738%_
                             _%hd177248177741%_
                             _%tl177249177743%_
                             _%e177250177746%_
                             _%hd177251177749%_
                             _%tl177252177751%_
                             _%e177253177754%_
                             _%hd177254177757%_
                             _%tl177255177759%_
                             _%e177256177762%_
                             _%hd177257177765%_
                             _%tl177258177767%_
                             _%e177259177770%_
                             _%hd177260177773%_
                             _%tl177261177775%_)
                      (let ((_%L177778%_ _%hd177260177773%_)
                            (_%L177779%_ _%hd177251177749%_)
                            (_%L177780%_ _%hd177242177725%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L177780%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L177780%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp182706
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self177122%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L177779%_
                                    __tmp182706)))
                            (_%__kont181587181588%_
                             _%L177778%_
                             _%L177779%_
                             _%L177780%_)
                            (_%__match182076182077%_
                             _%e177232177698%_
                             _%hd177233177701%_
                             _%tl177234177703%_
                             _%e177235177706%_
                             _%hd177236177709%_
                             _%tl177237177711%_
                             _%e177238177714%_
                             _%hd177239177717%_
                             _%tl177240177719%_
                             _%e177241177722%_
                             _%hd177242177725%_
                             _%tl177243177727%_
                             _%e177244177730%_
                             _%hd177245177733%_
                             _%tl177246177735%_
                             _%e177247177738%_
                             _%hd177248177741%_
                             _%tl177249177743%_
                             _%e177250177746%_
                             _%hd177251177749%_
                             _%tl177252177751%_
                             _%e177253177754%_
                             _%hd177254177757%_
                             _%tl177255177759%_)))))
                   (_%__match181870181871%_
                    (lambda (_%e177232177698%_
                             _%hd177233177701%_
                             _%tl177234177703%_
                             _%e177235177706%_
                             _%hd177236177709%_
                             _%tl177237177711%_
                             _%e177238177714%_
                             _%hd177239177717%_
                             _%tl177240177719%_
                             _%e177241177722%_
                             _%hd177242177725%_
                             _%tl177243177727%_
                             _%e177244177730%_
                             _%hd177245177733%_
                             _%tl177246177735%_
                             _%e177247177738%_
                             _%hd177248177741%_
                             _%tl177249177743%_
                             _%e177250177746%_
                             _%hd177251177749%_
                             _%tl177252177751%_
                             _%e177253177754%_
                             _%hd177254177757%_
                             _%tl177255177759%_
                             _%e177256177762%_
                             _%hd177257177765%_
                             _%tl177258177767%_
                             _%e177259177770%_
                             _%hd177260177773%_
                             _%tl177261177775%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl177255177759%_))
                          (_%__match181872181873%_
                           _%e177232177698%_
                           _%hd177233177701%_
                           _%tl177234177703%_
                           _%e177235177706%_
                           _%hd177236177709%_
                           _%tl177237177711%_
                           _%e177238177714%_
                           _%hd177239177717%_
                           _%tl177240177719%_
                           _%e177241177722%_
                           _%hd177242177725%_
                           _%tl177243177727%_
                           _%e177244177730%_
                           _%hd177245177733%_
                           _%tl177246177735%_
                           _%e177247177738%_
                           _%hd177248177741%_
                           _%tl177249177743%_
                           _%e177250177746%_
                           _%hd177251177749%_
                           _%tl177252177751%_
                           _%e177253177754%_
                           _%hd177254177757%_
                           _%tl177255177759%_
                           _%e177256177762%_
                           _%hd177257177765%_
                           _%tl177258177767%_
                           _%e177259177770%_
                           _%hd177260177773%_
                           _%tl177261177775%_)
                          (_%__match181950181951%_
                           _%e177232177698%_
                           _%hd177233177701%_
                           _%tl177234177703%_
                           _%e177235177706%_
                           _%hd177236177709%_
                           _%tl177237177711%_
                           _%e177238177714%_
                           _%hd177239177717%_
                           _%tl177240177719%_
                           _%e177241177722%_
                           _%hd177242177725%_
                           _%tl177243177727%_
                           _%e177244177730%_
                           _%hd177245177733%_
                           _%tl177246177735%_
                           _%e177247177738%_
                           _%hd177248177741%_
                           _%tl177249177743%_
                           _%e177250177746%_
                           _%hd177251177749%_
                           _%tl177252177751%_
                           _%e177253177754%_
                           _%hd177254177757%_
                           _%tl177255177759%_
                           _%e177256177762%_
                           _%hd177257177765%_
                           _%tl177258177767%_
                           _%e177259177770%_
                           _%hd177260177773%_
                           _%tl177261177775%_))))
                   (_%__match181860181861%_
                    (lambda (_%e177232177698%_
                             _%hd177233177701%_
                             _%tl177234177703%_
                             _%e177235177706%_
                             _%hd177236177709%_
                             _%tl177237177711%_
                             _%e177238177714%_
                             _%hd177239177717%_
                             _%tl177240177719%_
                             _%e177241177722%_
                             _%hd177242177725%_
                             _%tl177243177727%_
                             _%e177244177730%_
                             _%hd177245177733%_
                             _%tl177246177735%_
                             _%e177247177738%_
                             _%hd177248177741%_
                             _%tl177249177743%_
                             _%e177250177746%_
                             _%hd177251177749%_
                             _%tl177252177751%_
                             _%e177253177754%_
                             _%hd177254177757%_
                             _%tl177255177759%_
                             _%e177256177762%_
                             _%hd177257177765%_
                             _%tl177258177767%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd177257177765%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177258177767%_))
                              (let ((_%e177259177770%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177258177767%_))))
                                (let ((_%tl177261177775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177259177770%_)))
                                      (_%hd177260177773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177259177770%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177261177775%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl177255177759%_))
                                          (_%__match181872181873%_
                                           _%e177232177698%_
                                           _%hd177233177701%_
                                           _%tl177234177703%_
                                           _%e177235177706%_
                                           _%hd177236177709%_
                                           _%tl177237177711%_
                                           _%e177238177714%_
                                           _%hd177239177717%_
                                           _%tl177240177719%_
                                           _%e177241177722%_
                                           _%hd177242177725%_
                                           _%tl177243177727%_
                                           _%e177244177730%_
                                           _%hd177245177733%_
                                           _%tl177246177735%_
                                           _%e177247177738%_
                                           _%hd177248177741%_
                                           _%tl177249177743%_
                                           _%e177250177746%_
                                           _%hd177251177749%_
                                           _%tl177252177751%_
                                           _%e177253177754%_
                                           _%hd177254177757%_
                                           _%tl177255177759%_
                                           _%e177256177762%_
                                           _%hd177257177765%_
                                           _%tl177258177767%_
                                           _%e177259177770%_
                                           _%hd177260177773%_
                                           _%tl177261177775%_)
                                          (_%__match181950181951%_
                                           _%e177232177698%_
                                           _%hd177233177701%_
                                           _%tl177234177703%_
                                           _%e177235177706%_
                                           _%hd177236177709%_
                                           _%tl177237177711%_
                                           _%e177238177714%_
                                           _%hd177239177717%_
                                           _%tl177240177719%_
                                           _%e177241177722%_
                                           _%hd177242177725%_
                                           _%tl177243177727%_
                                           _%e177244177730%_
                                           _%hd177245177733%_
                                           _%tl177246177735%_
                                           _%e177247177738%_
                                           _%hd177248177741%_
                                           _%tl177249177743%_
                                           _%e177250177746%_
                                           _%hd177251177749%_
                                           _%tl177252177751%_
                                           _%e177253177754%_
                                           _%hd177254177757%_
                                           _%tl177255177759%_
                                           _%e177256177762%_
                                           _%hd177257177765%_
                                           _%tl177258177767%_
                                           _%e177259177770%_
                                           _%hd177260177773%_
                                           _%tl177261177775%_))
                                      (_%__match182074182075%_
                                       _%e177232177698%_
                                       _%hd177233177701%_
                                       _%tl177234177703%_
                                       _%e177235177706%_
                                       _%hd177236177709%_
                                       _%tl177237177711%_
                                       _%e177238177714%_
                                       _%hd177239177717%_
                                       _%tl177240177719%_
                                       _%e177241177722%_
                                       _%hd177242177725%_
                                       _%tl177243177727%_
                                       _%e177244177730%_
                                       _%hd177245177733%_
                                       _%tl177246177735%_
                                       _%e177247177738%_
                                       _%hd177248177741%_
                                       _%tl177249177743%_
                                       _%e177250177746%_
                                       _%hd177251177749%_
                                       _%tl177252177751%_
                                       _%e177253177754%_
                                       _%hd177254177757%_
                                       _%tl177255177759%_))))
                              (_%__match182074182075%_
                               _%e177232177698%_
                               _%hd177233177701%_
                               _%tl177234177703%_
                               _%e177235177706%_
                               _%hd177236177709%_
                               _%tl177237177711%_
                               _%e177238177714%_
                               _%hd177239177717%_
                               _%tl177240177719%_
                               _%e177241177722%_
                               _%hd177242177725%_
                               _%tl177243177727%_
                               _%e177244177730%_
                               _%hd177245177733%_
                               _%tl177246177735%_
                               _%e177247177738%_
                               _%hd177248177741%_
                               _%tl177249177743%_
                               _%e177250177746%_
                               _%hd177251177749%_
                               _%tl177252177751%_
                               _%e177253177754%_
                               _%hd177254177757%_
                               _%tl177255177759%_))
                          (_%__match182074182075%_
                           _%e177232177698%_
                           _%hd177233177701%_
                           _%tl177234177703%_
                           _%e177235177706%_
                           _%hd177236177709%_
                           _%tl177237177711%_
                           _%e177238177714%_
                           _%hd177239177717%_
                           _%tl177240177719%_
                           _%e177241177722%_
                           _%hd177242177725%_
                           _%tl177243177727%_
                           _%e177244177730%_
                           _%hd177245177733%_
                           _%tl177246177735%_
                           _%e177247177738%_
                           _%hd177248177741%_
                           _%tl177249177743%_
                           _%e177250177746%_
                           _%hd177251177749%_
                           _%tl177252177751%_
                           _%e177253177754%_
                           _%hd177254177757%_
                           _%tl177255177759%_))))
                   (_%__match181792181793%_
                    (lambda (_%e177181177817%_
                             _%hd177182177820%_
                             _%tl177183177822%_
                             _%e177184177825%_
                             _%hd177185177828%_
                             _%tl177186177830%_
                             _%e177187177833%_
                             _%hd177188177836%_
                             _%tl177189177838%_
                             _%e177190177841%_
                             _%hd177191177844%_
                             _%tl177192177846%_
                             _%e177193177849%_
                             _%hd177194177852%_
                             _%tl177195177854%_
                             _%e177196177857%_
                             _%hd177197177860%_
                             _%tl177198177862%_
                             _%e177199177865%_
                             _%hd177200177868%_
                             _%tl177201177870%_
                             _%e177202177873%_
                             _%hd177203177876%_
                             _%tl177204177878%_
                             _%e177205177881%_
                             _%hd177206177884%_
                             _%tl177207177886%_
                             _%e177208177889%_
                             _%hd177209177892%_
                             _%tl177210177894%_
                             _%e177211177897%_
                             _%hd177212177900%_
                             _%tl177213177902%_
                             _%e177214177905%_
                             _%hd177215177908%_
                             _%tl177216177910%_
                             _%e177217177913%_
                             _%hd177218177916%_
                             _%tl177219177918%_
                             _%__splice181585181586%_
                             _%target177220177921%_
                             _%tl177222177923%_)
                      (letrec ((_%loop177223177926%_
                                (lambda (_%hd177221177929%_
                                         _%args177227177931%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd177221177929%_))
                                      (let ((_%e177224177934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd177221177929%_))))
                                        (let ((_%lp-tl177226177939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177224177934%_)))
                                              (_%lp-hd177225177937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177224177934%_))))
                                          (_%loop177223177926%_
                                           _%lp-tl177226177939%_
                                           (cons _%lp-hd177225177937%_
                                                 _%args177227177931%_))))
                                      (let ((_%args177228177942%_
                                             (reverse _%args177227177931%_)))
                                        (let ((_%L177945%_
                                               _%args177228177942%_)
                                              (_%L177946%_ _%hd177218177916%_)
                                              (_%L177947%_ _%hd177209177892%_)
                                              (_%L177948%_ _%hd177200177868%_)
                                              (_%L177949%_ _%hd177191177844%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L177949%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L177948%_
                                                      'call-method))
                                                   (let ((__tmp182707
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self177122%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L177947%_
                                                      __tmp182707)))
                                              (_%__kont181583181584%_
                                               _%L177945%_
                                               _%L177946%_
                                               _%L177947%_
                                               _%L177948%_
                                               _%L177949%_)
                                              (_%__kont181595181596%_))))))))
                        (_%loop177223177926%_ _%target177220177921%_ '()))))
                   (_%__match181750181751%_
                    (lambda (_%e177181177817%_
                             _%hd177182177820%_
                             _%tl177183177822%_
                             _%e177184177825%_
                             _%hd177185177828%_
                             _%tl177186177830%_
                             _%e177187177833%_
                             _%hd177188177836%_
                             _%tl177189177838%_
                             _%e177190177841%_
                             _%hd177191177844%_
                             _%tl177192177846%_
                             _%e177193177849%_
                             _%hd177194177852%_
                             _%tl177195177854%_
                             _%e177196177857%_
                             _%hd177197177860%_
                             _%tl177198177862%_
                             _%e177199177865%_
                             _%hd177200177868%_
                             _%tl177201177870%_
                             _%e177202177873%_
                             _%hd177203177876%_
                             _%tl177204177878%_
                             _%e177205177881%_
                             _%hd177206177884%_
                             _%tl177207177886%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd177206177884%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl177207177886%_))
                              (let ((_%e177208177889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl177207177886%_))))
                                (let ((_%tl177210177894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177208177889%_)))
                                      (_%hd177209177892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177208177889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177210177894%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl177204177878%_))
                                          (let ((_%e177211177897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl177204177878%_))))
                                            (let ((_%tl177213177902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e177211177897%_)))
                                                  (_%hd177212177900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e177211177897%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd177212177900%_))
                                                  (let ((_%e177214177905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd177212177900%_))))
                                                    (let ((_%tl177216177910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e177214177905%_)))
                                                          (_%hd177215177908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e177214177905%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd177215177908%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd177215177908%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl177216177910%_))
                          (let ((_%e177217177913%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl177216177910%_))))
                            (let ((_%tl177219177918%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177217177913%_)))
                                  (_%hd177218177916%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177217177913%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl177219177918%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl177213177902%_))
                                      (let ((_%__splice181585181586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl177213177902%_
                                                '0))))
                                        (let ((_%tl177222177923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice181585181586%_
                                                  '1)))
                                              (_%target177220177921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice181585181586%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl177222177923%_))
                                              (_%__match181792181793%_
                                               _%e177181177817%_
                                               _%hd177182177820%_
                                               _%tl177183177822%_
                                               _%e177184177825%_
                                               _%hd177185177828%_
                                               _%tl177186177830%_
                                               _%e177187177833%_
                                               _%hd177188177836%_
                                               _%tl177189177838%_
                                               _%e177190177841%_
                                               _%hd177191177844%_
                                               _%tl177192177846%_
                                               _%e177193177849%_
                                               _%hd177194177852%_
                                               _%tl177195177854%_
                                               _%e177196177857%_
                                               _%hd177197177860%_
                                               _%tl177198177862%_
                                               _%e177199177865%_
                                               _%hd177200177868%_
                                               _%tl177201177870%_
                                               _%e177202177873%_
                                               _%hd177203177876%_
                                               _%tl177204177878%_
                                               _%e177205177881%_
                                               _%hd177206177884%_
                                               _%tl177207177886%_
                                               _%e177208177889%_
                                               _%hd177209177892%_
                                               _%tl177210177894%_
                                               _%e177211177897%_
                                               _%hd177212177900%_
                                               _%tl177213177902%_
                                               _%e177214177905%_
                                               _%hd177215177908%_
                                               _%tl177216177910%_
                                               _%e177217177913%_
                                               _%hd177218177916%_
                                               _%tl177219177918%_
                                               _%__splice181585181586%_
                                               _%target177220177921%_
                                               _%tl177222177923%_)
                                              (_%__kont181595181596%_))))
                                      (_%__kont181595181596%_))
                                  (_%__kont181595181596%_))))
                          (_%__kont181595181596%_))
                      (_%__kont181595181596%_))
                  (_%__kont181595181596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont181595181596%_))))
                                          (_%__match182074182075%_
                                           _%e177181177817%_
                                           _%hd177182177820%_
                                           _%tl177183177822%_
                                           _%e177184177825%_
                                           _%hd177185177828%_
                                           _%tl177186177830%_
                                           _%e177187177833%_
                                           _%hd177188177836%_
                                           _%tl177189177838%_
                                           _%e177190177841%_
                                           _%hd177191177844%_
                                           _%tl177192177846%_
                                           _%e177193177849%_
                                           _%hd177194177852%_
                                           _%tl177195177854%_
                                           _%e177196177857%_
                                           _%hd177197177860%_
                                           _%tl177198177862%_
                                           _%e177199177865%_
                                           _%hd177200177868%_
                                           _%tl177201177870%_
                                           _%e177202177873%_
                                           _%hd177203177876%_
                                           _%tl177204177878%_))
                                      (_%__match182074182075%_
                                       _%e177181177817%_
                                       _%hd177182177820%_
                                       _%tl177183177822%_
                                       _%e177184177825%_
                                       _%hd177185177828%_
                                       _%tl177186177830%_
                                       _%e177187177833%_
                                       _%hd177188177836%_
                                       _%tl177189177838%_
                                       _%e177190177841%_
                                       _%hd177191177844%_
                                       _%tl177192177846%_
                                       _%e177193177849%_
                                       _%hd177194177852%_
                                       _%tl177195177854%_
                                       _%e177196177857%_
                                       _%hd177197177860%_
                                       _%tl177198177862%_
                                       _%e177199177865%_
                                       _%hd177200177868%_
                                       _%tl177201177870%_
                                       _%e177202177873%_
                                       _%hd177203177876%_
                                       _%tl177204177878%_))))
                              (_%__match182074182075%_
                               _%e177181177817%_
                               _%hd177182177820%_
                               _%tl177183177822%_
                               _%e177184177825%_
                               _%hd177185177828%_
                               _%tl177186177830%_
                               _%e177187177833%_
                               _%hd177188177836%_
                               _%tl177189177838%_
                               _%e177190177841%_
                               _%hd177191177844%_
                               _%tl177192177846%_
                               _%e177193177849%_
                               _%hd177194177852%_
                               _%tl177195177854%_
                               _%e177196177857%_
                               _%hd177197177860%_
                               _%tl177198177862%_
                               _%e177199177865%_
                               _%hd177200177868%_
                               _%tl177201177870%_
                               _%e177202177873%_
                               _%hd177203177876%_
                               _%tl177204177878%_))
                          (_%__match181860181861%_
                           _%e177181177817%_
                           _%hd177182177820%_
                           _%tl177183177822%_
                           _%e177184177825%_
                           _%hd177185177828%_
                           _%tl177186177830%_
                           _%e177187177833%_
                           _%hd177188177836%_
                           _%tl177189177838%_
                           _%e177190177841%_
                           _%hd177191177844%_
                           _%tl177192177846%_
                           _%e177193177849%_
                           _%hd177194177852%_
                           _%tl177195177854%_
                           _%e177196177857%_
                           _%hd177197177860%_
                           _%tl177198177862%_
                           _%e177199177865%_
                           _%hd177200177868%_
                           _%tl177201177870%_
                           _%e177202177873%_
                           _%hd177203177876%_
                           _%tl177204177878%_
                           _%e177205177881%_
                           _%hd177206177884%_
                           _%tl177207177886%_))))
                   (_%__match181682181683%_
                    (lambda (_%e177137178006%_
                             _%hd177138178009%_
                             _%tl177139178011%_
                             _%e177140178014%_
                             _%hd177141178017%_
                             _%tl177142178019%_
                             _%e177143178022%_
                             _%hd177144178025%_
                             _%tl177145178027%_
                             _%e177146178030%_
                             _%hd177147178033%_
                             _%tl177148178035%_
                             _%e177149178038%_
                             _%hd177150178041%_
                             _%tl177151178043%_
                             _%e177152178046%_
                             _%hd177153178049%_
                             _%tl177154178051%_
                             _%e177155178054%_
                             _%hd177156178057%_
                             _%tl177157178059%_
                             _%e177158178062%_
                             _%hd177159178065%_
                             _%tl177160178067%_
                             _%e177161178070%_
                             _%hd177162178073%_
                             _%tl177163178075%_
                             _%e177164178078%_
                             _%hd177165178081%_
                             _%tl177166178083%_
                             _%__splice181581181582%_
                             _%target177167178086%_
                             _%tl177169178088%_)
                      (letrec ((_%loop177170178091%_
                                (lambda (_%hd177168178094%_
                                         _%args177174178096%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd177168178094%_))
                                      (let ((_%e177171178099%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd177168178094%_))))
                                        (let ((_%lp-tl177173178104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177171178099%_)))
                                              (_%lp-hd177172178102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177171178099%_))))
                                          (_%loop177170178091%_
                                           _%lp-tl177173178104%_
                                           (cons _%lp-hd177172178102%_
                                                 _%args177174178096%_))))
                                      (let ((_%args177175178107%_
                                             (reverse _%args177174178096%_)))
                                        (let ((_%L178110%_
                                               _%args177175178107%_)
                                              (_%L178111%_ _%hd177165178081%_)
                                              (_%L178112%_ _%hd177156178057%_)
                                              (_%L178113%_ _%hd177147178033%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L178113%_
                                                      'call-method))
                                                   (let ((__tmp182708
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self177122%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L178112%_
                                                      __tmp182708)))
                                              (_%__kont181579181580%_
                                               _%L178110%_
                                               _%L178111%_
                                               _%L178112%_
                                               _%L178113%_)
                                              (_%__match181870181871%_
                                               _%e177137178006%_
                                               _%hd177138178009%_
                                               _%tl177139178011%_
                                               _%e177140178014%_
                                               _%hd177141178017%_
                                               _%tl177142178019%_
                                               _%e177143178022%_
                                               _%hd177144178025%_
                                               _%tl177145178027%_
                                               _%e177146178030%_
                                               _%hd177147178033%_
                                               _%tl177148178035%_
                                               _%e177149178038%_
                                               _%hd177150178041%_
                                               _%tl177151178043%_
                                               _%e177152178046%_
                                               _%hd177153178049%_
                                               _%tl177154178051%_
                                               _%e177155178054%_
                                               _%hd177156178057%_
                                               _%tl177157178059%_
                                               _%e177158178062%_
                                               _%hd177159178065%_
                                               _%tl177160178067%_
                                               _%e177161178070%_
                                               _%hd177162178073%_
                                               _%tl177163178075%_
                                               _%e177164178078%_
                                               _%hd177165178081%_
                                               _%tl177166178083%_))))))))
                        (_%loop177170178091%_ _%target177167178086%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx181577181578%_))
                  (let ((_%e177137178006%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx181577181578%_))))
                    (let ((_%tl177139178011%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e177137178006%_)))
                          (_%hd177138178009%_
                           (let ()
                             (declare (not safe))
                             (##car _%e177137178006%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl177139178011%_))
                          (let ((_%e177140178014%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl177139178011%_))))
                            (let ((_%tl177142178019%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177140178014%_)))
                                  (_%hd177141178017%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177140178014%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd177141178017%_))
                                  (let ((_%e177143178022%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd177141178017%_))))
                                    (let ((_%tl177145178027%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e177143178022%_)))
                                          (_%hd177144178025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e177143178022%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd177144178025%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd177144178025%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl177145178027%_))
                                                  (let ((_%e177146178030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl177145178027%_))))
                                                    (let ((_%tl177148178035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e177146178030%_)))
                                                          (_%hd177147178033%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e177146178030%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl177148178035%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl177142178019%_))
                      (let ((_%e177149178038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl177142178019%_))))
                        (let ((_%tl177151178043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177149178038%_)))
                              (_%hd177150178041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177149178038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd177150178041%_))
                              (let ((_%e177152178046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd177150178041%_))))
                                (let ((_%tl177154178051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e177152178046%_)))
                                      (_%hd177153178049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e177152178046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd177153178049%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd177153178049%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl177154178051%_))
                                              (let ((_%e177155178054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl177154178051%_))))
                                                (let ((_%tl177157178059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e177155178054%_)))
                                                      (_%hd177156178057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e177155178054%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl177157178059%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl177151178043%_))
                                                          (let ((_%e177158178062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl177151178043%_))))
                    (let ((_%tl177160178067%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e177158178062%_)))
                          (_%hd177159178065%_
                           (let ()
                             (declare (not safe))
                             (##car _%e177158178062%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177159178065%_))
                          (let ((_%e177161178070%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177159178065%_))))
                            (let ((_%tl177163178075%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177161178070%_)))
                                  (_%hd177162178073%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177161178070%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd177162178073%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd177162178073%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl177163178075%_))
                                          (let ((_%e177164178078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl177163178075%_))))
                                            (let ((_%tl177166178083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e177164178078%_)))
                                                  (_%hd177165178081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e177164178078%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177166178083%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl177160178067%_))
                                                      (let ((_%__splice181581181582%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl177160178067%_
                        '0))))
                (let ((_%tl177169178088%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice181581181582%_ '1)))
                      (_%target177167178086%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice181581181582%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl177169178088%_))
                      (_%__match181682181683%_
                       _%e177137178006%_
                       _%hd177138178009%_
                       _%tl177139178011%_
                       _%e177140178014%_
                       _%hd177141178017%_
                       _%tl177142178019%_
                       _%e177143178022%_
                       _%hd177144178025%_
                       _%tl177145178027%_
                       _%e177146178030%_
                       _%hd177147178033%_
                       _%tl177148178035%_
                       _%e177149178038%_
                       _%hd177150178041%_
                       _%tl177151178043%_
                       _%e177152178046%_
                       _%hd177153178049%_
                       _%tl177154178051%_
                       _%e177155178054%_
                       _%hd177156178057%_
                       _%tl177157178059%_
                       _%e177158178062%_
                       _%hd177159178065%_
                       _%tl177160178067%_
                       _%e177161178070%_
                       _%hd177162178073%_
                       _%tl177163178075%_
                       _%e177164178078%_
                       _%hd177165178081%_
                       _%tl177166178083%_
                       _%__splice181581181582%_
                       _%target177167178086%_
                       _%tl177169178088%_)
                      (_%__match181870181871%_
                       _%e177137178006%_
                       _%hd177138178009%_
                       _%tl177139178011%_
                       _%e177140178014%_
                       _%hd177141178017%_
                       _%tl177142178019%_
                       _%e177143178022%_
                       _%hd177144178025%_
                       _%tl177145178027%_
                       _%e177146178030%_
                       _%hd177147178033%_
                       _%tl177148178035%_
                       _%e177149178038%_
                       _%hd177150178041%_
                       _%tl177151178043%_
                       _%e177152178046%_
                       _%hd177153178049%_
                       _%tl177154178051%_
                       _%e177155178054%_
                       _%hd177156178057%_
                       _%tl177157178059%_
                       _%e177158178062%_
                       _%hd177159178065%_
                       _%tl177160178067%_
                       _%e177161178070%_
                       _%hd177162178073%_
                       _%tl177163178075%_
                       _%e177164178078%_
                       _%hd177165178081%_
                       _%tl177166178083%_))))
              (_%__match181870181871%_
               _%e177137178006%_
               _%hd177138178009%_
               _%tl177139178011%_
               _%e177140178014%_
               _%hd177141178017%_
               _%tl177142178019%_
               _%e177143178022%_
               _%hd177144178025%_
               _%tl177145178027%_
               _%e177146178030%_
               _%hd177147178033%_
               _%tl177148178035%_
               _%e177149178038%_
               _%hd177150178041%_
               _%tl177151178043%_
               _%e177152178046%_
               _%hd177153178049%_
               _%tl177154178051%_
               _%e177155178054%_
               _%hd177156178057%_
               _%tl177157178059%_
               _%e177158178062%_
               _%hd177159178065%_
               _%tl177160178067%_
               _%e177161178070%_
               _%hd177162178073%_
               _%tl177163178075%_
               _%e177164178078%_
               _%hd177165178081%_
               _%tl177166178083%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match182074182075%_
                                                   _%e177137178006%_
                                                   _%hd177138178009%_
                                                   _%tl177139178011%_
                                                   _%e177140178014%_
                                                   _%hd177141178017%_
                                                   _%tl177142178019%_
                                                   _%e177143178022%_
                                                   _%hd177144178025%_
                                                   _%tl177145178027%_
                                                   _%e177146178030%_
                                                   _%hd177147178033%_
                                                   _%tl177148178035%_
                                                   _%e177149178038%_
                                                   _%hd177150178041%_
                                                   _%tl177151178043%_
                                                   _%e177152178046%_
                                                   _%hd177153178049%_
                                                   _%tl177154178051%_
                                                   _%e177155178054%_
                                                   _%hd177156178057%_
                                                   _%tl177157178059%_
                                                   _%e177158178062%_
                                                   _%hd177159178065%_
                                                   _%tl177160178067%_))))
                                          (_%__match182074182075%_
                                           _%e177137178006%_
                                           _%hd177138178009%_
                                           _%tl177139178011%_
                                           _%e177140178014%_
                                           _%hd177141178017%_
                                           _%tl177142178019%_
                                           _%e177143178022%_
                                           _%hd177144178025%_
                                           _%tl177145178027%_
                                           _%e177146178030%_
                                           _%hd177147178033%_
                                           _%tl177148178035%_
                                           _%e177149178038%_
                                           _%hd177150178041%_
                                           _%tl177151178043%_
                                           _%e177152178046%_
                                           _%hd177153178049%_
                                           _%tl177154178051%_
                                           _%e177155178054%_
                                           _%hd177156178057%_
                                           _%tl177157178059%_
                                           _%e177158178062%_
                                           _%hd177159178065%_
                                           _%tl177160178067%_))
                                      (_%__match181750181751%_
                                       _%e177137178006%_
                                       _%hd177138178009%_
                                       _%tl177139178011%_
                                       _%e177140178014%_
                                       _%hd177141178017%_
                                       _%tl177142178019%_
                                       _%e177143178022%_
                                       _%hd177144178025%_
                                       _%tl177145178027%_
                                       _%e177146178030%_
                                       _%hd177147178033%_
                                       _%tl177148178035%_
                                       _%e177149178038%_
                                       _%hd177150178041%_
                                       _%tl177151178043%_
                                       _%e177152178046%_
                                       _%hd177153178049%_
                                       _%tl177154178051%_
                                       _%e177155178054%_
                                       _%hd177156178057%_
                                       _%tl177157178059%_
                                       _%e177158178062%_
                                       _%hd177159178065%_
                                       _%tl177160178067%_
                                       _%e177161178070%_
                                       _%hd177162178073%_
                                       _%tl177163178075%_))
                                  (_%__match182074182075%_
                                   _%e177137178006%_
                                   _%hd177138178009%_
                                   _%tl177139178011%_
                                   _%e177140178014%_
                                   _%hd177141178017%_
                                   _%tl177142178019%_
                                   _%e177143178022%_
                                   _%hd177144178025%_
                                   _%tl177145178027%_
                                   _%e177146178030%_
                                   _%hd177147178033%_
                                   _%tl177148178035%_
                                   _%e177149178038%_
                                   _%hd177150178041%_
                                   _%tl177151178043%_
                                   _%e177152178046%_
                                   _%hd177153178049%_
                                   _%tl177154178051%_
                                   _%e177155178054%_
                                   _%hd177156178057%_
                                   _%tl177157178059%_
                                   _%e177158178062%_
                                   _%hd177159178065%_
                                   _%tl177160178067%_))))
                          (_%__match182074182075%_
                           _%e177137178006%_
                           _%hd177138178009%_
                           _%tl177139178011%_
                           _%e177140178014%_
                           _%hd177141178017%_
                           _%tl177142178019%_
                           _%e177143178022%_
                           _%hd177144178025%_
                           _%tl177145178027%_
                           _%e177146178030%_
                           _%hd177147178033%_
                           _%tl177148178035%_
                           _%e177149178038%_
                           _%hd177150178041%_
                           _%tl177151178043%_
                           _%e177152178046%_
                           _%hd177153178049%_
                           _%tl177154178051%_
                           _%e177155178054%_
                           _%hd177156178057%_
                           _%tl177157178059%_
                           _%e177158178062%_
                           _%hd177159178065%_
                           _%tl177160178067%_))))
                  (_%__match182012182013%_
                   _%e177137178006%_
                   _%hd177138178009%_
                   _%tl177139178011%_
                   _%e177140178014%_
                   _%hd177141178017%_
                   _%tl177142178019%_
                   _%e177143178022%_
                   _%hd177144178025%_
                   _%tl177145178027%_
                   _%e177146178030%_
                   _%hd177147178033%_
                   _%tl177148178035%_
                   _%e177149178038%_
                   _%hd177150178041%_
                   _%tl177151178043%_
                   _%e177152178046%_
                   _%hd177153178049%_
                   _%tl177154178051%_
                   _%e177155178054%_
                   _%hd177156178057%_
                   _%tl177157178059%_))
              (_%__kont181595181596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont181595181596%_))
                                          (_%__kont181595181596%_))
                                      (_%__kont181595181596%_))))
                              (_%__kont181595181596%_))))
                      (_%__kont181595181596%_))
                  (_%__kont181595181596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont181595181596%_))
                                              (_%__kont181595181596%_))
                                          (_%__kont181595181596%_))))
                                  (_%__kont181595181596%_))))
                          (_%__kont181595181596%_))))
                  (_%__kont181595181596%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self176061%_ _%stx176062%_)
        (letrec ((_%force-e176064%_
                  (lambda (_%target177120%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target177120%_ '()))
                                      '()))))))
          (let* ((_%__stx182079182080%_ _%stx176062%_)
                 (_%g176072176294%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx182079182080%_)))))
            (let ((_%__kont182081182082%_
                   (lambda (_%L177066%_ _%L177067%_ _%L177068%_ _%L177069%_)
                     (let ((_%$method177114%_
                            (let ((__tmp182710
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self176061%_ 'methods)))
                                  (__tmp182709
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L177067%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp182710 __tmp182709)))
                           (_%args177115%_
                            (map (lambda (_%g177102177104%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self176061%_
                                      _%g177102177104%_)))
                                 (let ((__tmp182711
                                        (lambda (_%g177106177109%_
                                                 _%g177107177111%_)
                                          (cons _%g177106177109%_
                                                _%g177107177111%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp182711 '() _%L177066%_)))))
                       (let ((__tmp182712
                              (cons '%#call
                                    (cons (_%force-e176064%_ _%$method177114%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self176061%_
                                                               'receiver))
                                                            '()))
                                                _%args177115%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp182712 _%stx176062%_)))))
                  (_%__kont182085182086%_
                   (lambda (_%L176898%_
                            _%L176899%_
                            _%L176900%_
                            _%L176901%_
                            _%L176902%_)
                     (let ((_%$method176954%_
                            (let ((__tmp182714
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self176061%_ 'methods)))
                                  (__tmp182713
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L176899%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp182714 __tmp182713)))
                           (_%args176955%_
                            (map (lambda (_%g176942176944%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self176061%_
                                      _%g176942176944%_)))
                                 (let ((__tmp182715
                                        (lambda (_%g176946176949%_
                                                 _%g176947176951%_)
                                          (cons _%g176946176949%_
                                                _%g176947176951%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp182715 '() _%L176898%_)))))
                       (let ((__tmp182716
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e176064%_
                                                 _%$method176954%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self176061%_ 'receiver))
                          '()))
              _%args176955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp182716 _%stx176062%_)))))
                  (_%__kont182089182090%_
                   (lambda (_%L176729%_ _%L176730%_ _%L176731%_)
                     (let* ((_%$field176763%_
                             (let ((__tmp182718
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self176061%_ 'slots)))
                                   (__tmp182717
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L176729%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp182718 __tmp182717)))
                            (__tmp182719
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self176061%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field176763%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self176061%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp182719 _%stx176062%_))))
                  (_%__kont182091182092%_
                   (lambda (_%L176603%_ _%L176604%_ _%L176605%_ _%L176606%_)
                     (let ((_%$field176641%_
                            (let ((__tmp182721
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self176061%_ 'slots)))
                                  (__tmp182720
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L176604%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp182721 __tmp182720)))
                           (_%expr176642%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self176061%_ _%L176603%_))))
                       (let ((__tmp182722
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self176061%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field176641%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self176061%_ 'receiver))
                          '()))
              (cons _%expr176642%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp182722 _%stx176062%_)))))
                  (_%__kont182093182094%_
                   (lambda (_%L176475%_ _%L176476%_)
                     (let* ((_%accessor176498%_
                             (let ((__tmp182723
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L176476%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp182723)))
                            (_%klass176500%_
                             (let ((__tmp182724
                                    (##structure-ref
                                     _%accessor176498%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx176062%_
                                __tmp182724)))
                            (_%slot176502%_
                             (##structure-ref
                              _%accessor176498%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor176498%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass176500%_
                                      _%slot176502%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass176500%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx176062%_
                           (let* ((_%$field176508%_
                                   (let ((__tmp182725
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self176061%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp182725 _%slot176502%_)))
                                  (__tmp182726
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self176061%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field176508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self176061%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp182726
                              _%stx176062%_))))))
                  (_%__kont182095182096%_
                   (lambda (_%L176370%_ _%L176371%_ _%L176372%_)
                     (let* ((_%mutator176400%_
                             (let ((__tmp182727
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L176372%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp182727)))
                            (_%klass176402%_
                             (let ((__tmp182728
                                    (##structure-ref
                                     _%mutator176400%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx176062%_
                                __tmp182728)))
                            (_%slot176404%_
                             (##structure-ref
                              _%mutator176400%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr176406%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self176061%_ _%L176370%_))))
                       (if (if (##structure-ref
                                _%mutator176400%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass176402%_
                                      _%slot176404%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass176402%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp182729
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L176372%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L176371%_
                                                                '()))
                                                    (cons _%expr176406%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp182729 _%stx176062%_))
                           (let* ((_%$field176412%_
                                   (let ((__tmp182730
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self176061%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp182730 _%slot176404%_)))
                                  (__tmp182731
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self176061%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field176412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self176061%_ 'receiver))
                               '()))
                   (cons _%expr176406%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp182731
                              _%stx176062%_))))))
                  (_%__kont182097182098%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self176061%_ _%stx176062%_)))))
              (let* ((_%__match182578182579%_
                      (lambda (_%e176266176306%_
                               _%hd176267176309%_
                               _%tl176268176311%_
                               _%e176269176314%_
                               _%hd176270176317%_
                               _%tl176271176319%_
                               _%e176272176322%_
                               _%hd176273176325%_
                               _%tl176274176327%_
                               _%e176275176330%_
                               _%hd176276176333%_
                               _%tl176277176335%_
                               _%e176278176338%_
                               _%hd176279176341%_
                               _%tl176280176343%_
                               _%e176281176346%_
                               _%hd176282176349%_
                               _%tl176283176351%_
                               _%e176284176354%_
                               _%hd176285176357%_
                               _%tl176286176359%_
                               _%e176287176362%_
                               _%hd176288176365%_
                               _%tl176289176367%_)
                        (let ((_%L176370%_ _%hd176288176365%_)
                              (_%L176371%_ _%hd176285176357%_)
                              (_%L176372%_ _%hd176276176333%_))
                          (if (and (let ((__tmp182732
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self176061%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L176371%_
                                      __tmp182732))
                                   (let ((__tmp182733
                                          (let ((__tmp182734
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L176372%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp182734))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp182733
                                      'gxc#!mutator::t)))
                              (_%__kont182095182096%_
                               _%L176370%_
                               _%L176371%_
                               _%L176372%_)
                              (_%__kont182097182098%_)))))
                     (_%__match182576182577%_
                      (lambda (_%e176266176306%_
                               _%hd176267176309%_
                               _%tl176268176311%_
                               _%e176269176314%_
                               _%hd176270176317%_
                               _%tl176271176319%_
                               _%e176272176322%_
                               _%hd176273176325%_
                               _%tl176274176327%_
                               _%e176275176330%_
                               _%hd176276176333%_
                               _%tl176277176335%_
                               _%e176278176338%_
                               _%hd176279176341%_
                               _%tl176280176343%_
                               _%e176281176346%_
                               _%hd176282176349%_
                               _%tl176283176351%_
                               _%e176284176354%_
                               _%hd176285176357%_
                               _%tl176286176359%_
                               _%e176287176362%_
                               _%hd176288176365%_
                               _%tl176289176367%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176289176367%_))
                            (_%__match182578182579%_
                             _%e176266176306%_
                             _%hd176267176309%_
                             _%tl176268176311%_
                             _%e176269176314%_
                             _%hd176270176317%_
                             _%tl176271176319%_
                             _%e176272176322%_
                             _%hd176273176325%_
                             _%tl176274176327%_
                             _%e176275176330%_
                             _%hd176276176333%_
                             _%tl176277176335%_
                             _%e176278176338%_
                             _%hd176279176341%_
                             _%tl176280176343%_
                             _%e176281176346%_
                             _%hd176282176349%_
                             _%tl176283176351%_
                             _%e176284176354%_
                             _%hd176285176357%_
                             _%tl176286176359%_
                             _%e176287176362%_
                             _%hd176288176365%_
                             _%tl176289176367%_)
                            (_%__kont182097182098%_))))
                     (_%__match182570182571%_
                      (lambda (_%e176266176306%_
                               _%hd176267176309%_
                               _%tl176268176311%_
                               _%e176269176314%_
                               _%hd176270176317%_
                               _%tl176271176319%_
                               _%e176272176322%_
                               _%hd176273176325%_
                               _%tl176274176327%_
                               _%e176275176330%_
                               _%hd176276176333%_
                               _%tl176277176335%_
                               _%e176278176338%_
                               _%hd176279176341%_
                               _%tl176280176343%_
                               _%e176281176346%_
                               _%hd176282176349%_
                               _%tl176283176351%_
                               _%e176284176354%_
                               _%hd176285176357%_
                               _%tl176286176359%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176280176343%_))
                            (let ((_%e176287176362%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176280176343%_))))
                              (let ((_%tl176289176367%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176287176362%_)))
                                    (_%hd176288176365%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176287176362%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl176289176367%_))
                                    (_%__match182578182579%_
                                     _%e176266176306%_
                                     _%hd176267176309%_
                                     _%tl176268176311%_
                                     _%e176269176314%_
                                     _%hd176270176317%_
                                     _%tl176271176319%_
                                     _%e176272176322%_
                                     _%hd176273176325%_
                                     _%tl176274176327%_
                                     _%e176275176330%_
                                     _%hd176276176333%_
                                     _%tl176277176335%_
                                     _%e176278176338%_
                                     _%hd176279176341%_
                                     _%tl176280176343%_
                                     _%e176281176346%_
                                     _%hd176282176349%_
                                     _%tl176283176351%_
                                     _%e176284176354%_
                                     _%hd176285176357%_
                                     _%tl176286176359%_
                                     _%e176287176362%_
                                     _%hd176288176365%_
                                     _%tl176289176367%_)
                                    (_%__kont182097182098%_))))
                            (_%__kont182097182098%_))))
                     (_%__match182516182517%_
                      (lambda (_%e176242176419%_
                               _%hd176243176422%_
                               _%tl176244176424%_
                               _%e176245176427%_
                               _%hd176246176430%_
                               _%tl176247176432%_
                               _%e176248176435%_
                               _%hd176249176438%_
                               _%tl176250176440%_
                               _%e176251176443%_
                               _%hd176252176446%_
                               _%tl176253176448%_
                               _%e176254176451%_
                               _%hd176255176454%_
                               _%tl176256176456%_
                               _%e176257176459%_
                               _%hd176258176462%_
                               _%tl176259176464%_
                               _%e176260176467%_
                               _%hd176261176470%_
                               _%tl176262176472%_)
                        (let ((_%L176475%_ _%hd176261176470%_)
                              (_%L176476%_ _%hd176252176446%_))
                          (if (and (let ((__tmp182735
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self176061%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L176475%_
                                      __tmp182735))
                                   (let ((__tmp182736
                                          (let ((__tmp182737
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L176476%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp182737))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp182736
                                      'gxc#!accessor::t)))
                              (_%__kont182093182094%_ _%L176475%_ _%L176476%_)
                              (_%__kont182097182098%_)))))
                     (_%__match182514182515%_
                      (lambda (_%e176242176419%_
                               _%hd176243176422%_
                               _%tl176244176424%_
                               _%e176245176427%_
                               _%hd176246176430%_
                               _%tl176247176432%_
                               _%e176248176435%_
                               _%hd176249176438%_
                               _%tl176250176440%_
                               _%e176251176443%_
                               _%hd176252176446%_
                               _%tl176253176448%_
                               _%e176254176451%_
                               _%hd176255176454%_
                               _%tl176256176456%_
                               _%e176257176459%_
                               _%hd176258176462%_
                               _%tl176259176464%_
                               _%e176260176467%_
                               _%hd176261176470%_
                               _%tl176262176472%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176256176456%_))
                            (_%__match182516182517%_
                             _%e176242176419%_
                             _%hd176243176422%_
                             _%tl176244176424%_
                             _%e176245176427%_
                             _%hd176246176430%_
                             _%tl176247176432%_
                             _%e176248176435%_
                             _%hd176249176438%_
                             _%tl176250176440%_
                             _%e176251176443%_
                             _%hd176252176446%_
                             _%tl176253176448%_
                             _%e176254176451%_
                             _%hd176255176454%_
                             _%tl176256176456%_
                             _%e176257176459%_
                             _%hd176258176462%_
                             _%tl176259176464%_
                             _%e176260176467%_
                             _%hd176261176470%_
                             _%tl176262176472%_)
                            (_%__match182570182571%_
                             _%e176242176419%_
                             _%hd176243176422%_
                             _%tl176244176424%_
                             _%e176245176427%_
                             _%hd176246176430%_
                             _%tl176247176432%_
                             _%e176248176435%_
                             _%hd176249176438%_
                             _%tl176250176440%_
                             _%e176251176443%_
                             _%hd176252176446%_
                             _%tl176253176448%_
                             _%e176254176451%_
                             _%hd176255176454%_
                             _%tl176256176456%_
                             _%e176257176459%_
                             _%hd176258176462%_
                             _%tl176259176464%_
                             _%e176260176467%_
                             _%hd176261176470%_
                             _%tl176262176472%_))))
                     (_%__match182460182461%_
                      (lambda (_%e176207176515%_
                               _%hd176208176518%_
                               _%tl176209176520%_
                               _%e176210176523%_
                               _%hd176211176526%_
                               _%tl176212176528%_
                               _%e176213176531%_
                               _%hd176214176534%_
                               _%tl176215176536%_
                               _%e176216176539%_
                               _%hd176217176542%_
                               _%tl176218176544%_
                               _%e176219176547%_
                               _%hd176220176550%_
                               _%tl176221176552%_
                               _%e176222176555%_
                               _%hd176223176558%_
                               _%tl176224176560%_
                               _%e176225176563%_
                               _%hd176226176566%_
                               _%tl176227176568%_
                               _%e176228176571%_
                               _%hd176229176574%_
                               _%tl176230176576%_
                               _%e176231176579%_
                               _%hd176232176582%_
                               _%tl176233176584%_
                               _%e176234176587%_
                               _%hd176235176590%_
                               _%tl176236176592%_
                               _%e176237176595%_
                               _%hd176238176598%_
                               _%tl176239176600%_)
                        (let ((_%L176603%_ _%hd176238176598%_)
                              (_%L176604%_ _%hd176235176590%_)
                              (_%L176605%_ _%hd176226176566%_)
                              (_%L176606%_ _%hd176217176542%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L176606%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L176606%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp182738
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self176061%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L176605%_
                                      __tmp182738)))
                              (_%__kont182091182092%_
                               _%L176603%_
                               _%L176604%_
                               _%L176605%_
                               _%L176606%_)
                              (_%__kont182097182098%_)))))
                     (_%__match182452182453%_
                      (lambda (_%e176207176515%_
                               _%hd176208176518%_
                               _%tl176209176520%_
                               _%e176210176523%_
                               _%hd176211176526%_
                               _%tl176212176528%_
                               _%e176213176531%_
                               _%hd176214176534%_
                               _%tl176215176536%_
                               _%e176216176539%_
                               _%hd176217176542%_
                               _%tl176218176544%_
                               _%e176219176547%_
                               _%hd176220176550%_
                               _%tl176221176552%_
                               _%e176222176555%_
                               _%hd176223176558%_
                               _%tl176224176560%_
                               _%e176225176563%_
                               _%hd176226176566%_
                               _%tl176227176568%_
                               _%e176228176571%_
                               _%hd176229176574%_
                               _%tl176230176576%_
                               _%e176231176579%_
                               _%hd176232176582%_
                               _%tl176233176584%_
                               _%e176234176587%_
                               _%hd176235176590%_
                               _%tl176236176592%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176230176576%_))
                            (let ((_%e176237176595%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176230176576%_))))
                              (let ((_%tl176239176600%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176237176595%_)))
                                    (_%hd176238176598%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176237176595%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl176239176600%_))
                                    (_%__match182460182461%_
                                     _%e176207176515%_
                                     _%hd176208176518%_
                                     _%tl176209176520%_
                                     _%e176210176523%_
                                     _%hd176211176526%_
                                     _%tl176212176528%_
                                     _%e176213176531%_
                                     _%hd176214176534%_
                                     _%tl176215176536%_
                                     _%e176216176539%_
                                     _%hd176217176542%_
                                     _%tl176218176544%_
                                     _%e176219176547%_
                                     _%hd176220176550%_
                                     _%tl176221176552%_
                                     _%e176222176555%_
                                     _%hd176223176558%_
                                     _%tl176224176560%_
                                     _%e176225176563%_
                                     _%hd176226176566%_
                                     _%tl176227176568%_
                                     _%e176228176571%_
                                     _%hd176229176574%_
                                     _%tl176230176576%_
                                     _%e176231176579%_
                                     _%hd176232176582%_
                                     _%tl176233176584%_
                                     _%e176234176587%_
                                     _%hd176235176590%_
                                     _%tl176236176592%_
                                     _%e176237176595%_
                                     _%hd176238176598%_
                                     _%tl176239176600%_)
                                    (_%__kont182097182098%_))))
                            (_%__match182576182577%_
                             _%e176207176515%_
                             _%hd176208176518%_
                             _%tl176209176520%_
                             _%e176210176523%_
                             _%hd176211176526%_
                             _%tl176212176528%_
                             _%e176213176531%_
                             _%hd176214176534%_
                             _%tl176215176536%_
                             _%e176216176539%_
                             _%hd176217176542%_
                             _%tl176218176544%_
                             _%e176219176547%_
                             _%hd176220176550%_
                             _%tl176221176552%_
                             _%e176222176555%_
                             _%hd176223176558%_
                             _%tl176224176560%_
                             _%e176225176563%_
                             _%hd176226176566%_
                             _%tl176227176568%_
                             _%e176228176571%_
                             _%hd176229176574%_
                             _%tl176230176576%_))))
                     (_%__match182374182375%_
                      (lambda (_%e176173176649%_
                               _%hd176174176652%_
                               _%tl176175176654%_
                               _%e176176176657%_
                               _%hd176177176660%_
                               _%tl176178176662%_
                               _%e176179176665%_
                               _%hd176180176668%_
                               _%tl176181176670%_
                               _%e176182176673%_
                               _%hd176183176676%_
                               _%tl176184176678%_
                               _%e176185176681%_
                               _%hd176186176684%_
                               _%tl176187176686%_
                               _%e176188176689%_
                               _%hd176189176692%_
                               _%tl176190176694%_
                               _%e176191176697%_
                               _%hd176192176700%_
                               _%tl176193176702%_
                               _%e176194176705%_
                               _%hd176195176708%_
                               _%tl176196176710%_
                               _%e176197176713%_
                               _%hd176198176716%_
                               _%tl176199176718%_
                               _%e176200176721%_
                               _%hd176201176724%_
                               _%tl176202176726%_)
                        (let ((_%L176729%_ _%hd176201176724%_)
                              (_%L176730%_ _%hd176192176700%_)
                              (_%L176731%_ _%hd176183176676%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L176731%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L176731%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp182739
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self176061%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L176730%_
                                      __tmp182739)))
                              (_%__kont182089182090%_
                               _%L176729%_
                               _%L176730%_
                               _%L176731%_)
                              (_%__match182578182579%_
                               _%e176173176649%_
                               _%hd176174176652%_
                               _%tl176175176654%_
                               _%e176176176657%_
                               _%hd176177176660%_
                               _%tl176178176662%_
                               _%e176179176665%_
                               _%hd176180176668%_
                               _%tl176181176670%_
                               _%e176182176673%_
                               _%hd176183176676%_
                               _%tl176184176678%_
                               _%e176185176681%_
                               _%hd176186176684%_
                               _%tl176187176686%_
                               _%e176188176689%_
                               _%hd176189176692%_
                               _%tl176190176694%_
                               _%e176191176697%_
                               _%hd176192176700%_
                               _%tl176193176702%_
                               _%e176194176705%_
                               _%hd176195176708%_
                               _%tl176196176710%_)))))
                     (_%__match182372182373%_
                      (lambda (_%e176173176649%_
                               _%hd176174176652%_
                               _%tl176175176654%_
                               _%e176176176657%_
                               _%hd176177176660%_
                               _%tl176178176662%_
                               _%e176179176665%_
                               _%hd176180176668%_
                               _%tl176181176670%_
                               _%e176182176673%_
                               _%hd176183176676%_
                               _%tl176184176678%_
                               _%e176185176681%_
                               _%hd176186176684%_
                               _%tl176187176686%_
                               _%e176188176689%_
                               _%hd176189176692%_
                               _%tl176190176694%_
                               _%e176191176697%_
                               _%hd176192176700%_
                               _%tl176193176702%_
                               _%e176194176705%_
                               _%hd176195176708%_
                               _%tl176196176710%_
                               _%e176197176713%_
                               _%hd176198176716%_
                               _%tl176199176718%_
                               _%e176200176721%_
                               _%hd176201176724%_
                               _%tl176202176726%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176196176710%_))
                            (_%__match182374182375%_
                             _%e176173176649%_
                             _%hd176174176652%_
                             _%tl176175176654%_
                             _%e176176176657%_
                             _%hd176177176660%_
                             _%tl176178176662%_
                             _%e176179176665%_
                             _%hd176180176668%_
                             _%tl176181176670%_
                             _%e176182176673%_
                             _%hd176183176676%_
                             _%tl176184176678%_
                             _%e176185176681%_
                             _%hd176186176684%_
                             _%tl176187176686%_
                             _%e176188176689%_
                             _%hd176189176692%_
                             _%tl176190176694%_
                             _%e176191176697%_
                             _%hd176192176700%_
                             _%tl176193176702%_
                             _%e176194176705%_
                             _%hd176195176708%_
                             _%tl176196176710%_
                             _%e176197176713%_
                             _%hd176198176716%_
                             _%tl176199176718%_
                             _%e176200176721%_
                             _%hd176201176724%_
                             _%tl176202176726%_)
                            (_%__match182452182453%_
                             _%e176173176649%_
                             _%hd176174176652%_
                             _%tl176175176654%_
                             _%e176176176657%_
                             _%hd176177176660%_
                             _%tl176178176662%_
                             _%e176179176665%_
                             _%hd176180176668%_
                             _%tl176181176670%_
                             _%e176182176673%_
                             _%hd176183176676%_
                             _%tl176184176678%_
                             _%e176185176681%_
                             _%hd176186176684%_
                             _%tl176187176686%_
                             _%e176188176689%_
                             _%hd176189176692%_
                             _%tl176190176694%_
                             _%e176191176697%_
                             _%hd176192176700%_
                             _%tl176193176702%_
                             _%e176194176705%_
                             _%hd176195176708%_
                             _%tl176196176710%_
                             _%e176197176713%_
                             _%hd176198176716%_
                             _%tl176199176718%_
                             _%e176200176721%_
                             _%hd176201176724%_
                             _%tl176202176726%_))))
                     (_%__match182362182363%_
                      (lambda (_%e176173176649%_
                               _%hd176174176652%_
                               _%tl176175176654%_
                               _%e176176176657%_
                               _%hd176177176660%_
                               _%tl176178176662%_
                               _%e176179176665%_
                               _%hd176180176668%_
                               _%tl176181176670%_
                               _%e176182176673%_
                               _%hd176183176676%_
                               _%tl176184176678%_
                               _%e176185176681%_
                               _%hd176186176684%_
                               _%tl176187176686%_
                               _%e176188176689%_
                               _%hd176189176692%_
                               _%tl176190176694%_
                               _%e176191176697%_
                               _%hd176192176700%_
                               _%tl176193176702%_
                               _%e176194176705%_
                               _%hd176195176708%_
                               _%tl176196176710%_
                               _%e176197176713%_
                               _%hd176198176716%_
                               _%tl176199176718%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd176198176716%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176199176718%_))
                                (let ((_%e176200176721%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176199176718%_))))
                                  (let ((_%tl176202176726%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176200176721%_)))
                                        (_%hd176201176724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176200176721%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl176202176726%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl176196176710%_))
                                            (_%__match182374182375%_
                                             _%e176173176649%_
                                             _%hd176174176652%_
                                             _%tl176175176654%_
                                             _%e176176176657%_
                                             _%hd176177176660%_
                                             _%tl176178176662%_
                                             _%e176179176665%_
                                             _%hd176180176668%_
                                             _%tl176181176670%_
                                             _%e176182176673%_
                                             _%hd176183176676%_
                                             _%tl176184176678%_
                                             _%e176185176681%_
                                             _%hd176186176684%_
                                             _%tl176187176686%_
                                             _%e176188176689%_
                                             _%hd176189176692%_
                                             _%tl176190176694%_
                                             _%e176191176697%_
                                             _%hd176192176700%_
                                             _%tl176193176702%_
                                             _%e176194176705%_
                                             _%hd176195176708%_
                                             _%tl176196176710%_
                                             _%e176197176713%_
                                             _%hd176198176716%_
                                             _%tl176199176718%_
                                             _%e176200176721%_
                                             _%hd176201176724%_
                                             _%tl176202176726%_)
                                            (_%__match182452182453%_
                                             _%e176173176649%_
                                             _%hd176174176652%_
                                             _%tl176175176654%_
                                             _%e176176176657%_
                                             _%hd176177176660%_
                                             _%tl176178176662%_
                                             _%e176179176665%_
                                             _%hd176180176668%_
                                             _%tl176181176670%_
                                             _%e176182176673%_
                                             _%hd176183176676%_
                                             _%tl176184176678%_
                                             _%e176185176681%_
                                             _%hd176186176684%_
                                             _%tl176187176686%_
                                             _%e176188176689%_
                                             _%hd176189176692%_
                                             _%tl176190176694%_
                                             _%e176191176697%_
                                             _%hd176192176700%_
                                             _%tl176193176702%_
                                             _%e176194176705%_
                                             _%hd176195176708%_
                                             _%tl176196176710%_
                                             _%e176197176713%_
                                             _%hd176198176716%_
                                             _%tl176199176718%_
                                             _%e176200176721%_
                                             _%hd176201176724%_
                                             _%tl176202176726%_))
                                        (_%__match182576182577%_
                                         _%e176173176649%_
                                         _%hd176174176652%_
                                         _%tl176175176654%_
                                         _%e176176176657%_
                                         _%hd176177176660%_
                                         _%tl176178176662%_
                                         _%e176179176665%_
                                         _%hd176180176668%_
                                         _%tl176181176670%_
                                         _%e176182176673%_
                                         _%hd176183176676%_
                                         _%tl176184176678%_
                                         _%e176185176681%_
                                         _%hd176186176684%_
                                         _%tl176187176686%_
                                         _%e176188176689%_
                                         _%hd176189176692%_
                                         _%tl176190176694%_
                                         _%e176191176697%_
                                         _%hd176192176700%_
                                         _%tl176193176702%_
                                         _%e176194176705%_
                                         _%hd176195176708%_
                                         _%tl176196176710%_))))
                                (_%__match182576182577%_
                                 _%e176173176649%_
                                 _%hd176174176652%_
                                 _%tl176175176654%_
                                 _%e176176176657%_
                                 _%hd176177176660%_
                                 _%tl176178176662%_
                                 _%e176179176665%_
                                 _%hd176180176668%_
                                 _%tl176181176670%_
                                 _%e176182176673%_
                                 _%hd176183176676%_
                                 _%tl176184176678%_
                                 _%e176185176681%_
                                 _%hd176186176684%_
                                 _%tl176187176686%_
                                 _%e176188176689%_
                                 _%hd176189176692%_
                                 _%tl176190176694%_
                                 _%e176191176697%_
                                 _%hd176192176700%_
                                 _%tl176193176702%_
                                 _%e176194176705%_
                                 _%hd176195176708%_
                                 _%tl176196176710%_))
                            (_%__match182576182577%_
                             _%e176173176649%_
                             _%hd176174176652%_
                             _%tl176175176654%_
                             _%e176176176657%_
                             _%hd176177176660%_
                             _%tl176178176662%_
                             _%e176179176665%_
                             _%hd176180176668%_
                             _%tl176181176670%_
                             _%e176182176673%_
                             _%hd176183176676%_
                             _%tl176184176678%_
                             _%e176185176681%_
                             _%hd176186176684%_
                             _%tl176187176686%_
                             _%e176188176689%_
                             _%hd176189176692%_
                             _%tl176190176694%_
                             _%e176191176697%_
                             _%hd176192176700%_
                             _%tl176193176702%_
                             _%e176194176705%_
                             _%hd176195176708%_
                             _%tl176196176710%_))))
                     (_%__match182294182295%_
                      (lambda (_%e176122176770%_
                               _%hd176123176773%_
                               _%tl176124176775%_
                               _%e176125176778%_
                               _%hd176126176781%_
                               _%tl176127176783%_
                               _%e176128176786%_
                               _%hd176129176789%_
                               _%tl176130176791%_
                               _%e176131176794%_
                               _%hd176132176797%_
                               _%tl176133176799%_
                               _%e176134176802%_
                               _%hd176135176805%_
                               _%tl176136176807%_
                               _%e176137176810%_
                               _%hd176138176813%_
                               _%tl176139176815%_
                               _%e176140176818%_
                               _%hd176141176821%_
                               _%tl176142176823%_
                               _%e176143176826%_
                               _%hd176144176829%_
                               _%tl176145176831%_
                               _%e176146176834%_
                               _%hd176147176837%_
                               _%tl176148176839%_
                               _%e176149176842%_
                               _%hd176150176845%_
                               _%tl176151176847%_
                               _%e176152176850%_
                               _%hd176153176853%_
                               _%tl176154176855%_
                               _%e176155176858%_
                               _%hd176156176861%_
                               _%tl176157176863%_
                               _%e176158176866%_
                               _%hd176159176869%_
                               _%tl176160176871%_
                               _%__splice182087182088%_
                               _%target176161176874%_
                               _%tl176163176876%_)
                        (letrec ((_%loop176164176879%_
                                  (lambda (_%hd176162176882%_
                                           _%args176168176884%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176162176882%_))
                                        (let ((_%e176165176887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176162176882%_))))
                                          (let ((_%lp-tl176167176892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176165176887%_)))
                                                (_%lp-hd176166176890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176165176887%_))))
                                            (_%loop176164176879%_
                                             _%lp-tl176167176892%_
                                             (cons _%lp-hd176166176890%_
                                                   _%args176168176884%_))))
                                        (let ((_%args176169176895%_
                                               (reverse _%args176168176884%_)))
                                          (let ((_%L176898%_
                                                 _%args176169176895%_)
                                                (_%L176899%_
                                                 _%hd176159176869%_)
                                                (_%L176900%_
                                                 _%hd176150176845%_)
                                                (_%L176901%_
                                                 _%hd176141176821%_)
                                                (_%L176902%_
                                                 _%hd176132176797%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L176902%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L176901%_
                                                        'call-method))
                                                     (let ((__tmp182740
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self176061%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L176900%_
                                                        __tmp182740)))
                                                (_%__kont182085182086%_
                                                 _%L176898%_
                                                 _%L176899%_
                                                 _%L176900%_
                                                 _%L176901%_
                                                 _%L176902%_)
                                                (_%__kont182097182098%_))))))))
                          (_%loop176164176879%_ _%target176161176874%_ '()))))
                     (_%__match182252182253%_
                      (lambda (_%e176122176770%_
                               _%hd176123176773%_
                               _%tl176124176775%_
                               _%e176125176778%_
                               _%hd176126176781%_
                               _%tl176127176783%_
                               _%e176128176786%_
                               _%hd176129176789%_
                               _%tl176130176791%_
                               _%e176131176794%_
                               _%hd176132176797%_
                               _%tl176133176799%_
                               _%e176134176802%_
                               _%hd176135176805%_
                               _%tl176136176807%_
                               _%e176137176810%_
                               _%hd176138176813%_
                               _%tl176139176815%_
                               _%e176140176818%_
                               _%hd176141176821%_
                               _%tl176142176823%_
                               _%e176143176826%_
                               _%hd176144176829%_
                               _%tl176145176831%_
                               _%e176146176834%_
                               _%hd176147176837%_
                               _%tl176148176839%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd176147176837%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176148176839%_))
                                (let ((_%e176149176842%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176148176839%_))))
                                  (let ((_%tl176151176847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176149176842%_)))
                                        (_%hd176150176845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176149176842%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl176151176847%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176145176831%_))
                                            (let ((_%e176152176850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176145176831%_))))
                                              (let ((_%tl176154176855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176152176850%_)))
                                                    (_%hd176153176853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176152176850%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd176153176853%_))
                                                    (let ((_%e176155176858%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd176153176853%_))))
                                                      (let ((_%tl176157176863%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e176155176858%_)))
                    (_%hd176156176861%_
                     (let () (declare (not safe)) (##car _%e176155176858%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd176156176861%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd176156176861%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176157176863%_))
                            (let ((_%e176158176866%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176157176863%_))))
                              (let ((_%tl176160176871%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176158176866%_)))
                                    (_%hd176159176869%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176158176866%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl176160176871%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl176154176855%_))
                                        (let ((_%__splice182087182088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl176154176855%_
                                                  '0))))
                                          (let ((_%tl176163176876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice182087182088%_
                                                    '1)))
                                                (_%target176161176874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice182087182088%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl176163176876%_))
                                                (_%__match182294182295%_
                                                 _%e176122176770%_
                                                 _%hd176123176773%_
                                                 _%tl176124176775%_
                                                 _%e176125176778%_
                                                 _%hd176126176781%_
                                                 _%tl176127176783%_
                                                 _%e176128176786%_
                                                 _%hd176129176789%_
                                                 _%tl176130176791%_
                                                 _%e176131176794%_
                                                 _%hd176132176797%_
                                                 _%tl176133176799%_
                                                 _%e176134176802%_
                                                 _%hd176135176805%_
                                                 _%tl176136176807%_
                                                 _%e176137176810%_
                                                 _%hd176138176813%_
                                                 _%tl176139176815%_
                                                 _%e176140176818%_
                                                 _%hd176141176821%_
                                                 _%tl176142176823%_
                                                 _%e176143176826%_
                                                 _%hd176144176829%_
                                                 _%tl176145176831%_
                                                 _%e176146176834%_
                                                 _%hd176147176837%_
                                                 _%tl176148176839%_
                                                 _%e176149176842%_
                                                 _%hd176150176845%_
                                                 _%tl176151176847%_
                                                 _%e176152176850%_
                                                 _%hd176153176853%_
                                                 _%tl176154176855%_
                                                 _%e176155176858%_
                                                 _%hd176156176861%_
                                                 _%tl176157176863%_
                                                 _%e176158176866%_
                                                 _%hd176159176869%_
                                                 _%tl176160176871%_
                                                 _%__splice182087182088%_
                                                 _%target176161176874%_
                                                 _%tl176163176876%_)
                                                (_%__kont182097182098%_))))
                                        (_%__kont182097182098%_))
                                    (_%__kont182097182098%_))))
                            (_%__kont182097182098%_))
                        (_%__kont182097182098%_))
                    (_%__kont182097182098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont182097182098%_))))
                                            (_%__match182576182577%_
                                             _%e176122176770%_
                                             _%hd176123176773%_
                                             _%tl176124176775%_
                                             _%e176125176778%_
                                             _%hd176126176781%_
                                             _%tl176127176783%_
                                             _%e176128176786%_
                                             _%hd176129176789%_
                                             _%tl176130176791%_
                                             _%e176131176794%_
                                             _%hd176132176797%_
                                             _%tl176133176799%_
                                             _%e176134176802%_
                                             _%hd176135176805%_
                                             _%tl176136176807%_
                                             _%e176137176810%_
                                             _%hd176138176813%_
                                             _%tl176139176815%_
                                             _%e176140176818%_
                                             _%hd176141176821%_
                                             _%tl176142176823%_
                                             _%e176143176826%_
                                             _%hd176144176829%_
                                             _%tl176145176831%_))
                                        (_%__match182576182577%_
                                         _%e176122176770%_
                                         _%hd176123176773%_
                                         _%tl176124176775%_
                                         _%e176125176778%_
                                         _%hd176126176781%_
                                         _%tl176127176783%_
                                         _%e176128176786%_
                                         _%hd176129176789%_
                                         _%tl176130176791%_
                                         _%e176131176794%_
                                         _%hd176132176797%_
                                         _%tl176133176799%_
                                         _%e176134176802%_
                                         _%hd176135176805%_
                                         _%tl176136176807%_
                                         _%e176137176810%_
                                         _%hd176138176813%_
                                         _%tl176139176815%_
                                         _%e176140176818%_
                                         _%hd176141176821%_
                                         _%tl176142176823%_
                                         _%e176143176826%_
                                         _%hd176144176829%_
                                         _%tl176145176831%_))))
                                (_%__match182576182577%_
                                 _%e176122176770%_
                                 _%hd176123176773%_
                                 _%tl176124176775%_
                                 _%e176125176778%_
                                 _%hd176126176781%_
                                 _%tl176127176783%_
                                 _%e176128176786%_
                                 _%hd176129176789%_
                                 _%tl176130176791%_
                                 _%e176131176794%_
                                 _%hd176132176797%_
                                 _%tl176133176799%_
                                 _%e176134176802%_
                                 _%hd176135176805%_
                                 _%tl176136176807%_
                                 _%e176137176810%_
                                 _%hd176138176813%_
                                 _%tl176139176815%_
                                 _%e176140176818%_
                                 _%hd176141176821%_
                                 _%tl176142176823%_
                                 _%e176143176826%_
                                 _%hd176144176829%_
                                 _%tl176145176831%_))
                            (_%__match182362182363%_
                             _%e176122176770%_
                             _%hd176123176773%_
                             _%tl176124176775%_
                             _%e176125176778%_
                             _%hd176126176781%_
                             _%tl176127176783%_
                             _%e176128176786%_
                             _%hd176129176789%_
                             _%tl176130176791%_
                             _%e176131176794%_
                             _%hd176132176797%_
                             _%tl176133176799%_
                             _%e176134176802%_
                             _%hd176135176805%_
                             _%tl176136176807%_
                             _%e176137176810%_
                             _%hd176138176813%_
                             _%tl176139176815%_
                             _%e176140176818%_
                             _%hd176141176821%_
                             _%tl176142176823%_
                             _%e176143176826%_
                             _%hd176144176829%_
                             _%tl176145176831%_
                             _%e176146176834%_
                             _%hd176147176837%_
                             _%tl176148176839%_))))
                     (_%__match182184182185%_
                      (lambda (_%e176078176962%_
                               _%hd176079176965%_
                               _%tl176080176967%_
                               _%e176081176970%_
                               _%hd176082176973%_
                               _%tl176083176975%_
                               _%e176084176978%_
                               _%hd176085176981%_
                               _%tl176086176983%_
                               _%e176087176986%_
                               _%hd176088176989%_
                               _%tl176089176991%_
                               _%e176090176994%_
                               _%hd176091176997%_
                               _%tl176092176999%_
                               _%e176093177002%_
                               _%hd176094177005%_
                               _%tl176095177007%_
                               _%e176096177010%_
                               _%hd176097177013%_
                               _%tl176098177015%_
                               _%e176099177018%_
                               _%hd176100177021%_
                               _%tl176101177023%_
                               _%e176102177026%_
                               _%hd176103177029%_
                               _%tl176104177031%_
                               _%e176105177034%_
                               _%hd176106177037%_
                               _%tl176107177039%_
                               _%__splice182083182084%_
                               _%target176108177042%_
                               _%tl176110177044%_)
                        (letrec ((_%loop176111177047%_
                                  (lambda (_%hd176109177050%_
                                           _%args176115177052%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176109177050%_))
                                        (let ((_%e176112177055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176109177050%_))))
                                          (let ((_%lp-tl176114177060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176112177055%_)))
                                                (_%lp-hd176113177058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176112177055%_))))
                                            (_%loop176111177047%_
                                             _%lp-tl176114177060%_
                                             (cons _%lp-hd176113177058%_
                                                   _%args176115177052%_))))
                                        (let ((_%args176116177063%_
                                               (reverse _%args176115177052%_)))
                                          (let ((_%L177066%_
                                                 _%args176116177063%_)
                                                (_%L177067%_
                                                 _%hd176106177037%_)
                                                (_%L177068%_
                                                 _%hd176097177013%_)
                                                (_%L177069%_
                                                 _%hd176088176989%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L177069%_
                                                        'call-method))
                                                     (let ((__tmp182741
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self176061%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L177068%_
                                                        __tmp182741)))
                                                (_%__kont182081182082%_
                                                 _%L177066%_
                                                 _%L177067%_
                                                 _%L177068%_
                                                 _%L177069%_)
                                                (_%__match182372182373%_
                                                 _%e176078176962%_
                                                 _%hd176079176965%_
                                                 _%tl176080176967%_
                                                 _%e176081176970%_
                                                 _%hd176082176973%_
                                                 _%tl176083176975%_
                                                 _%e176084176978%_
                                                 _%hd176085176981%_
                                                 _%tl176086176983%_
                                                 _%e176087176986%_
                                                 _%hd176088176989%_
                                                 _%tl176089176991%_
                                                 _%e176090176994%_
                                                 _%hd176091176997%_
                                                 _%tl176092176999%_
                                                 _%e176093177002%_
                                                 _%hd176094177005%_
                                                 _%tl176095177007%_
                                                 _%e176096177010%_
                                                 _%hd176097177013%_
                                                 _%tl176098177015%_
                                                 _%e176099177018%_
                                                 _%hd176100177021%_
                                                 _%tl176101177023%_
                                                 _%e176102177026%_
                                                 _%hd176103177029%_
                                                 _%tl176104177031%_
                                                 _%e176105177034%_
                                                 _%hd176106177037%_
                                                 _%tl176107177039%_))))))))
                          (_%loop176111177047%_ _%target176108177042%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx182079182080%_))
                    (let ((_%e176078176962%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx182079182080%_))))
                      (let ((_%tl176080176967%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176078176962%_)))
                            (_%hd176079176965%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176078176962%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176080176967%_))
                            (let ((_%e176081176970%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176080176967%_))))
                              (let ((_%tl176083176975%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176081176970%_)))
                                    (_%hd176082176973%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176081176970%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176082176973%_))
                                    (let ((_%e176084176978%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176082176973%_))))
                                      (let ((_%tl176086176983%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176084176978%_)))
                                            (_%hd176085176981%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176084176978%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176085176981%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176085176981%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176086176983%_))
                                                    (let ((_%e176087176986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176086176983%_))))
                                                      (let ((_%tl176089176991%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e176087176986%_)))
                    (_%hd176088176989%_
                     (let () (declare (not safe)) (##car _%e176087176986%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176089176991%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl176083176975%_))
                        (let ((_%e176090176994%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl176083176975%_))))
                          (let ((_%tl176092176999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176090176994%_)))
                                (_%hd176091176997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176090176994%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd176091176997%_))
                                (let ((_%e176093177002%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd176091176997%_))))
                                  (let ((_%tl176095177007%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176093177002%_)))
                                        (_%hd176094177005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176093177002%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd176094177005%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd176094177005%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl176095177007%_))
                                                (let ((_%e176096177010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl176095177007%_))))
                                                  (let ((_%tl176098177015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e176096177010%_)))
                                                        (_%hd176097177013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e176096177010%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl176098177015%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176092176999%_))
                                                            (let ((_%e176099177018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176092176999%_))))
                      (let ((_%tl176101177023%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176099177018%_)))
                            (_%hd176100177021%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176099177018%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd176100177021%_))
                            (let ((_%e176102177026%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd176100177021%_))))
                              (let ((_%tl176104177031%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176102177026%_)))
                                    (_%hd176103177029%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176102177026%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176103177029%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd176103177029%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176104177031%_))
                                            (let ((_%e176105177034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176104177031%_))))
                                              (let ((_%tl176107177039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176105177034%_)))
                                                    (_%hd176106177037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176105177034%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl176107177039%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl176101177023%_))
                                                        (let ((_%__splice182083182084%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl176101177023%_
                          '0))))
                  (let ((_%tl176110177044%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice182083182084%_ '1)))
                        (_%target176108177042%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice182083182084%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176110177044%_))
                        (_%__match182184182185%_
                         _%e176078176962%_
                         _%hd176079176965%_
                         _%tl176080176967%_
                         _%e176081176970%_
                         _%hd176082176973%_
                         _%tl176083176975%_
                         _%e176084176978%_
                         _%hd176085176981%_
                         _%tl176086176983%_
                         _%e176087176986%_
                         _%hd176088176989%_
                         _%tl176089176991%_
                         _%e176090176994%_
                         _%hd176091176997%_
                         _%tl176092176999%_
                         _%e176093177002%_
                         _%hd176094177005%_
                         _%tl176095177007%_
                         _%e176096177010%_
                         _%hd176097177013%_
                         _%tl176098177015%_
                         _%e176099177018%_
                         _%hd176100177021%_
                         _%tl176101177023%_
                         _%e176102177026%_
                         _%hd176103177029%_
                         _%tl176104177031%_
                         _%e176105177034%_
                         _%hd176106177037%_
                         _%tl176107177039%_
                         _%__splice182083182084%_
                         _%target176108177042%_
                         _%tl176110177044%_)
                        (_%__match182372182373%_
                         _%e176078176962%_
                         _%hd176079176965%_
                         _%tl176080176967%_
                         _%e176081176970%_
                         _%hd176082176973%_
                         _%tl176083176975%_
                         _%e176084176978%_
                         _%hd176085176981%_
                         _%tl176086176983%_
                         _%e176087176986%_
                         _%hd176088176989%_
                         _%tl176089176991%_
                         _%e176090176994%_
                         _%hd176091176997%_
                         _%tl176092176999%_
                         _%e176093177002%_
                         _%hd176094177005%_
                         _%tl176095177007%_
                         _%e176096177010%_
                         _%hd176097177013%_
                         _%tl176098177015%_
                         _%e176099177018%_
                         _%hd176100177021%_
                         _%tl176101177023%_
                         _%e176102177026%_
                         _%hd176103177029%_
                         _%tl176104177031%_
                         _%e176105177034%_
                         _%hd176106177037%_
                         _%tl176107177039%_))))
                (_%__match182372182373%_
                 _%e176078176962%_
                 _%hd176079176965%_
                 _%tl176080176967%_
                 _%e176081176970%_
                 _%hd176082176973%_
                 _%tl176083176975%_
                 _%e176084176978%_
                 _%hd176085176981%_
                 _%tl176086176983%_
                 _%e176087176986%_
                 _%hd176088176989%_
                 _%tl176089176991%_
                 _%e176090176994%_
                 _%hd176091176997%_
                 _%tl176092176999%_
                 _%e176093177002%_
                 _%hd176094177005%_
                 _%tl176095177007%_
                 _%e176096177010%_
                 _%hd176097177013%_
                 _%tl176098177015%_
                 _%e176099177018%_
                 _%hd176100177021%_
                 _%tl176101177023%_
                 _%e176102177026%_
                 _%hd176103177029%_
                 _%tl176104177031%_
                 _%e176105177034%_
                 _%hd176106177037%_
                 _%tl176107177039%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match182576182577%_
                                                     _%e176078176962%_
                                                     _%hd176079176965%_
                                                     _%tl176080176967%_
                                                     _%e176081176970%_
                                                     _%hd176082176973%_
                                                     _%tl176083176975%_
                                                     _%e176084176978%_
                                                     _%hd176085176981%_
                                                     _%tl176086176983%_
                                                     _%e176087176986%_
                                                     _%hd176088176989%_
                                                     _%tl176089176991%_
                                                     _%e176090176994%_
                                                     _%hd176091176997%_
                                                     _%tl176092176999%_
                                                     _%e176093177002%_
                                                     _%hd176094177005%_
                                                     _%tl176095177007%_
                                                     _%e176096177010%_
                                                     _%hd176097177013%_
                                                     _%tl176098177015%_
                                                     _%e176099177018%_
                                                     _%hd176100177021%_
                                                     _%tl176101177023%_))))
                                            (_%__match182576182577%_
                                             _%e176078176962%_
                                             _%hd176079176965%_
                                             _%tl176080176967%_
                                             _%e176081176970%_
                                             _%hd176082176973%_
                                             _%tl176083176975%_
                                             _%e176084176978%_
                                             _%hd176085176981%_
                                             _%tl176086176983%_
                                             _%e176087176986%_
                                             _%hd176088176989%_
                                             _%tl176089176991%_
                                             _%e176090176994%_
                                             _%hd176091176997%_
                                             _%tl176092176999%_
                                             _%e176093177002%_
                                             _%hd176094177005%_
                                             _%tl176095177007%_
                                             _%e176096177010%_
                                             _%hd176097177013%_
                                             _%tl176098177015%_
                                             _%e176099177018%_
                                             _%hd176100177021%_
                                             _%tl176101177023%_))
                                        (_%__match182252182253%_
                                         _%e176078176962%_
                                         _%hd176079176965%_
                                         _%tl176080176967%_
                                         _%e176081176970%_
                                         _%hd176082176973%_
                                         _%tl176083176975%_
                                         _%e176084176978%_
                                         _%hd176085176981%_
                                         _%tl176086176983%_
                                         _%e176087176986%_
                                         _%hd176088176989%_
                                         _%tl176089176991%_
                                         _%e176090176994%_
                                         _%hd176091176997%_
                                         _%tl176092176999%_
                                         _%e176093177002%_
                                         _%hd176094177005%_
                                         _%tl176095177007%_
                                         _%e176096177010%_
                                         _%hd176097177013%_
                                         _%tl176098177015%_
                                         _%e176099177018%_
                                         _%hd176100177021%_
                                         _%tl176101177023%_
                                         _%e176102177026%_
                                         _%hd176103177029%_
                                         _%tl176104177031%_))
                                    (_%__match182576182577%_
                                     _%e176078176962%_
                                     _%hd176079176965%_
                                     _%tl176080176967%_
                                     _%e176081176970%_
                                     _%hd176082176973%_
                                     _%tl176083176975%_
                                     _%e176084176978%_
                                     _%hd176085176981%_
                                     _%tl176086176983%_
                                     _%e176087176986%_
                                     _%hd176088176989%_
                                     _%tl176089176991%_
                                     _%e176090176994%_
                                     _%hd176091176997%_
                                     _%tl176092176999%_
                                     _%e176093177002%_
                                     _%hd176094177005%_
                                     _%tl176095177007%_
                                     _%e176096177010%_
                                     _%hd176097177013%_
                                     _%tl176098177015%_
                                     _%e176099177018%_
                                     _%hd176100177021%_
                                     _%tl176101177023%_))))
                            (_%__match182576182577%_
                             _%e176078176962%_
                             _%hd176079176965%_
                             _%tl176080176967%_
                             _%e176081176970%_
                             _%hd176082176973%_
                             _%tl176083176975%_
                             _%e176084176978%_
                             _%hd176085176981%_
                             _%tl176086176983%_
                             _%e176087176986%_
                             _%hd176088176989%_
                             _%tl176089176991%_
                             _%e176090176994%_
                             _%hd176091176997%_
                             _%tl176092176999%_
                             _%e176093177002%_
                             _%hd176094177005%_
                             _%tl176095177007%_
                             _%e176096177010%_
                             _%hd176097177013%_
                             _%tl176098177015%_
                             _%e176099177018%_
                             _%hd176100177021%_
                             _%tl176101177023%_))))
                    (_%__match182514182515%_
                     _%e176078176962%_
                     _%hd176079176965%_
                     _%tl176080176967%_
                     _%e176081176970%_
                     _%hd176082176973%_
                     _%tl176083176975%_
                     _%e176084176978%_
                     _%hd176085176981%_
                     _%tl176086176983%_
                     _%e176087176986%_
                     _%hd176088176989%_
                     _%tl176089176991%_
                     _%e176090176994%_
                     _%hd176091176997%_
                     _%tl176092176999%_
                     _%e176093177002%_
                     _%hd176094177005%_
                     _%tl176095177007%_
                     _%e176096177010%_
                     _%hd176097177013%_
                     _%tl176098177015%_))
                (_%__kont182097182098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont182097182098%_))
                                            (_%__kont182097182098%_))
                                        (_%__kont182097182098%_))))
                                (_%__kont182097182098%_))))
                        (_%__kont182097182098%_))
                    (_%__kont182097182098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont182097182098%_))
                                                (_%__kont182097182098%_))
                                            (_%__kont182097182098%_))))
                                    (_%__kont182097182098%_))))
                            (_%__kont182097182098%_))))
                    (_%__kont182097182098%_))))))))))
