(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770248978)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp201524 (list gxc#::identity::t))
            (__tmp201523 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp201524
         '()
         __tmp201523
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args200321%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args200321%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp201525
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
        (__make-atomic-promise __tmp201525)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx200313%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self200316%_
                (let ((__obj201516
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj201516))
               (__tmp201526
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200316%_ _%stx200313%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201526
           gxc#current-compile-method
           _%self200316%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp201528 (list gxc#::false::t))
            (__tmp201527 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp201528
         '()
         __tmp201527
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args200310%_
        (apply make-instance gxc#::extract-receiver::t _%$args200310%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp201529
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
        (__make-atomic-promise __tmp201529)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx200302%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self200305%_
                (let ((__obj201518
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj201518))
               (__tmp201530
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200305%_ _%stx200302%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201530
           gxc#current-compile-method
           _%self200305%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp201532 (list gxc#::void::t))
            (__tmp201531 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp201532
         '(receiver methods slots)
         __tmp201531
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args200299%_
        (apply make-instance gxc#::collect-object-refs::t _%$args200299%_)))
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
      (let ((__tmp201533
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
        (__make-atomic-promise __tmp201533)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords200268%_
               _%receiver200263200269%_
               _%methods200264200270%_
               _%slots200265200271%_
               _%stx200272%_)
        (let* ((_%receiver200275%_
                (if (eq? _%receiver200263200269%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200263200269%_))
               (_%methods200277%_
                (if (eq? _%methods200264200270%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200264200270%_))
               (_%slots200279%_
                (if (eq? _%slots200265200271%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200265200271%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self200281%_
                  (let ((__obj201520
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
                       __obj201520
                       _%receiver200275%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201520
                       _%methods200277%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201520
                       _%slots200279%_
                       '3
                       '#f
                       '#f))
                    __obj201520))
                 (__tmp201534
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200281%_ _%stx200272%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201534
             gxc#current-compile-method
             _%self200281%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords200288%_ . _%args200289%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords200288%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200288%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200288%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200288%_
                  'slots:
                  absent-value))
               _%args200289%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args200266200295%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args200266200295%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp201536 (list gxc#::basic-xform-expression::t))
            (__tmp201535 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp201536
         '(receiver klass methods slots)
         __tmp201535
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args200259%_
        (apply make-instance gxc#::subst-object-refs::t _%$args200259%_)))
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
      (let ((__tmp201537
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
        (__make-atomic-promise __tmp201537)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords200225%_
               _%receiver200219200226%_
               _%klass200220200227%_
               _%methods200221200228%_
               _%slots200222200229%_
               _%stx200230%_)
        (let* ((_%receiver200233%_
                (if (eq? _%receiver200219200226%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200219200226%_))
               (_%klass200235%_
                (if (eq? _%klass200220200227%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass200220200227%_))
               (_%methods200237%_
                (if (eq? _%methods200221200228%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200221200228%_))
               (_%slots200239%_
                (if (eq? _%slots200222200229%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200222200229%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self200241%_
                  (let ((__obj201522
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
                       __obj201522
                       _%receiver200233%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201522
                       _%klass200235%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201522
                       _%methods200237%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201522
                       _%slots200239%_
                       '4
                       '#f
                       '#f))
                    __obj201522))
                 (__tmp201538
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200241%_ _%stx200230%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201538
             gxc#current-compile-method
             _%self200241%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords200248%_ . _%args200249%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords200248%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200248%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200248%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200248%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200248%_
                  'slots:
                  absent-value))
               _%args200249%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args200223200255%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args200223200255%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self197350%_ _%stx197351%_)
        (letrec ((_%generate-method-bind197353%_
                  (lambda (_%$klass200211%_
                           _%$method-table200212%_
                           _%id200213%_
                           _%$id200214%_)
                    (let ((_%$tmp200216%_
                           (let ((__tmp201539
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201539))))
                      (cons (cons _%$id200214%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp200216%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table200212%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id200213%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp200216%_ '()))
                    (cons (cons '%#ref (cons _%$tmp200216%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id200213%_
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
                 (_%generate-slot-bind197354%_
                  (lambda (_%$klass200205%_ _%id200206%_ _%$id200207%_)
                    (let ((_%$tmp200209%_
                           (let ((__tmp201540
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201540))))
                      (cons (cons _%$id200207%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp200209%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass200205%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id200206%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp200209%_ '()))
                        (cons (cons '%#ref (cons _%$tmp200209%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id200206%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl197355%_
                  (lambda (_%$klass200199%_
                           _%$method-table200200%_
                           _%methods-bind200201%_
                           _%slots-bind200202%_
                           _%specializer-impl200203%_)
                    (let ((__tmp201541
                           (cons '%#lambda
                                 (cons (cons _%$klass200199%_
                                             (cons _%$method-table200200%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind200202%_
                                                            _%methods-bind200201%_))
                                                         (cons _%specializer-impl200203%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201541 _%stx197351%_))))
                 (_%generate-specializer-def197356%_
                  (lambda (_%id200195%_
                           _%specializer-id200196%_
                           _%specializer-impl200197%_)
                    (let ((__tmp201542
                           (cons '%#begin
                                 (cons _%stx197351%_
                                       (cons (let ((__tmp201543
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id200196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl200197%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201543
                                                _%stx197351%_))
                                             (cons (let ((__tmp201544
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id200195%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id200196%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201544
                                                      _%stx197351%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201542 _%stx197351%_)))))
          (let* ((_%__stx200410200411%_ _%stx197351%_)
                 (_%g197359197379%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200410200411%_)))))
            (let ((_%__kont200412200413%_
                   (lambda (_%g197361197423%_ _%g197362197424%_)
                     (let ((_%method-calls197443%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs197444%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty197445%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?197447%_
                                 (lambda ()
                                   (if (let ((__tmp201545
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls197443%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201545))
                                       (let ((__tmp201546
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs197444%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201546))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g197361197423%_))
                             (let* ((_%__stx200324200325%_ _%g197361197423%_)
                                    (_%g197831197849%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx200324200325%_)))))
                               (let ((_%__kont200326200327%_
                                      (lambda (_%g197833197885%_
                                               _%g197834197886%_
                                               _%g197835197887%_)
                                        (let ((_%receiver197907%_
                                               (let ((_%$e197904%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g197833197885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e197904%_
                                                     _%$e197904%_
                                                     _%g197835197887%_))))
                                          (for-each
                                           (lambda (_%g197908197910%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver197907%_
                                              _%method-calls197443%_
                                              _%slot-refs197444%_
                                              _%g197908197910%_))
                                           _%g197833197885%_)
                                          (if (_%no-specializer?197447%_)
                                              _%stx197351%_
                                              (let* ((_%specializer-id197919%_
                                                      (let* ((_%id197913%_
                                                              (let ((__tmp201547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197362197424%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201547 '"::specialize")))
                     (_%specializer-id197916%_
                      (let ((__tmp201548
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197351%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id197913%_ __tmp201548))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id197916%_))
                _%specializer-id197916%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass197921%_
                                                      (let ((__tmp201549
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201549)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table197923%_
                                                      (let ((__tmp201550
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201550)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods197925%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197443%_)))
                                                     (_%$methods197929%_
                                                      (let ((__tmp201551
                                                             (lambda (_%id197927%_)
                                                               (let ((__tmp201552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id197927%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201552)))))
                (declare (not safe))
                (##map __tmp201551 _%methods197925%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_197938%_
                                                      (let ((__tmp201553
                                                             (lambda (_%g197930197933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197931197935%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197443%_
                          _%g197930197933%_
                          _%g197931197935%_)))))
                (declare (not safe))
                (##for-each __tmp201553 _%methods197925%_ _%$methods197929%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind197948%_
                                                      (let ((__tmp201554
                                                             (lambda (_%g197940197943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197941197945%_)
                       (_%generate-method-bind197353%_
                        _%$klass197921%_
                        _%$method-table197923%_
                        _%g197940197943%_
                        _%g197941197945%_))))
                (declare (not safe))
                (##map __tmp201554 _%methods197925%_ _%$methods197929%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots197950%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197444%_)))
                                                     (_%$slots197954%_
                                                      (let ((__tmp201555
                                                             (lambda (_%id197952%_)
                                                               (let ((__tmp201556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id197952%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201556)))))
                (declare (not safe))
                (##map __tmp201555 _%slots197950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_197963%_
                                                      (let ((__tmp201557
                                                             (lambda (_%g197955197958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197956197960%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197444%_
                          _%g197955197958%_
                          _%g197956197960%_)))))
                (declare (not safe))
                (##for-each __tmp201557 _%slots197950%_ _%$slots197954%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind197972%_
                                                      (let ((__tmp201558
                                                             (lambda (_%g197964197967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197965197969%_)
                       (_%generate-slot-bind197354%_
                        _%$klass197921%_
                        _%g197964197967%_
                        _%g197965197969%_))))
                (declare (not safe))
                (##map __tmp201558 _%slots197950%_ _%$slots197954%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body197978%_
                                                      (map (lambda (_%g197973197975%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver197907%_
                                                              _%$klass197921%_
                                                              _%method-calls197443%_
                                                              _%slot-refs197444%_
                                                              _%g197973197975%_))
                                                           _%g197833197885%_))
                                                     (_%specializer-impl197980%_
                                                      (let ((__tmp201559
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g197835197887%_ _%g197834197886%_)
                                 _%specializer-body197978%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201559 _%stx197351%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl197982%_
                                                      (_%generate-specializer-impl197355%_
                                                       _%$klass197921%_
                                                       _%$method-table197923%_
                                                       _%methods-bind197948%_
                                                       _%slots-bind197972%_
                                                       _%specializer-impl197980%_)))
                                                (let ((__tmp201561
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197362197424%_)))
                                                      (__tmp201560
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id197919%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201561
                                                   '" => "
                                                   __tmp201560))
                                                (_%generate-specializer-def197356%_
                                                 _%g197362197424%_
                                                 _%specializer-id197919%_
                                                 _%specializer-impl197982%_))))))
                                     (_%__kont200328200329%_
                                      (lambda () _%stx197351%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx200324200325%_))
                                     (let ((_%e197836197861%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx200324200325%_))))
                                       (let ((_%tl197838197866%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197836197861%_)))
                                             (_%hd197837197864%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197836197861%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl197838197866%_))
                                             (let ((_%e197839197869%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl197838197866%_))))
                                               (let ((_%tl197841197874%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e197839197869%_)))
                                                     (_%hd197840197872%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e197839197869%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd197840197872%_))
                                                     (let ((_%e197842197877%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd197840197872%_))))
                                                       (let ((_%tl197844197882%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197842197877%_)))
                     (_%hd197843197880%_
                      (let () (declare (not safe)) (##car _%e197842197877%_))))
                 (_%__kont200326200327%_
                  _%tl197841197874%_
                  _%tl197844197882%_
                  _%hd197843197880%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont200328200329%_))))
                                             (_%__kont200328200329%_))))
                                     (_%__kont200328200329%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g197361197423%_))
                                 (let* ((_%g197989198008%_
                                         (lambda (_%g197990198005%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g197990198005%_))))
                                        (_%g197988198304%_
                                         (lambda (_%g197990198011%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g197990198011%_))
                                               (let ((_%e197992198013%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g197990198011%_))))
                                                 (let ((_%hd197993198016%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e197992198013%_)))
                                                       (_%tl197994198018%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e197992198013%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl197994198018%_))
                                                       (let ((_g201562_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl197994198018%_ '0))))
                 (begin
                   (let ((_g201563_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g201562_)
                                (##values-length _g201562_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g201563_ 2)))
                         (error "Context expects 2 values" _g201563_)))
                   (let ((_%target197995198021%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201562_ 0)))
                         (_%tl197997198023%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201562_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl197997198023%_))
                         (letrec ((_%loop197998198026%_
                                   (lambda (_%hd197996198029%_
                                            _%clause198002198031%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd197996198029%_))
                                         (let ((_%e197999198033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd197996198029%_))))
                                           (let ((_%lp-hd198000198036%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197999198033%_)))
                                                 (_%lp-tl198001198038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197999198033%_))))
                                             (_%loop197998198026%_
                                              _%lp-tl198001198038%_
                                              (cons _%lp-hd198000198036%_
                                                    _%clause198002198031%_))))
                                         (let ((_%clause198003198041%_
                                                (reverse _%clause198002198031%_)))
                                           ((lambda (_%g197991198043%_)
                                              (for-each
                                               (lambda (_%clause198057%_)
                                                 (let* ((_%__stx200350200351%_
                                                         _%clause198057%_)
                                                        (_%g198060198075%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx200350200351%_)))))
                                                   (let ((_%__kont200352200353%_
                                                          (lambda (_%g198062198103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g198063198104%_
                           _%g198064198105%_)
                    (let ((_%receiver198124%_
                           (let ((_%$e198121%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g198062198103%_))))
                             (if _%$e198121%_
                                 _%$e198121%_
                                 _%g198064198105%_))))
                      (for-each
                       (lambda (_%g198125198127%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver198124%_
                          _%method-calls197443%_
                          _%slot-refs197444%_
                          _%g198125198127%_))
                       _%g198062198103%_))))
                 (_%__kont200354200355%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx200350200351%_))
                                                         (let ((_%e198065198087%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx200350200351%_))))
                   (let ((_%tl198067198092%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198065198087%_)))
                         (_%hd198066198090%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198065198087%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd198066198090%_))
                         (let ((_%e198068198095%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd198066198090%_))))
                           (let ((_%tl198070198100%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198068198095%_)))
                                 (_%hd198069198098%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198068198095%_))))
                             (_%__kont200352200353%_
                              _%tl198067198092%_
                              _%tl198070198100%_
                              _%hd198069198098%_)))
                         (_%__kont200354200355%_))))
                 (_%__kont200354200355%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp201564
                                                      (lambda (_%g198132198135%_
                                                               _%g198133198137%_)
                                                        (cons _%g198132198135%_
                                                              _%g198133198137%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201564
                                                  '()
                                                  _%g197991198043%_)))
                                              (if (_%no-specializer?197447%_)
                                                  _%stx197351%_
                                                  (let* ((_%specializer-id198146%_
                                                          (let* ((_%id198140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201565
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197362197424%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201565 '"::specialize")))
                         (_%specializer-id198143%_
                          (let ((__tmp201566
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197351%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198140%_
                             __tmp201566))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198143%_))
                    _%specializer-id198143%_))
                 (_%$klass198148%_
                  (let ((__tmp201567
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201567)))
                 (_%$method-table198150%_
                  (let ((__tmp201568
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201568)))
                 (_%methods198152%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197443%_)))
                 (_%$methods198156%_
                  (let ((__tmp201569
                         (lambda (_%id198154%_)
                           (let ((__tmp201570 (gensym _%id198154%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201570)))))
                    (declare (not safe))
                    (##map __tmp201569 _%methods198152%_)))
                 (_%_198165%_
                  (let ((__tmp201571
                         (lambda (_%g198157198160%_ _%g198158198162%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197443%_
                              _%g198157198160%_
                              _%g198158198162%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201571
                     _%methods198152%_
                     _%$methods198156%_)))
                 (_%methods-bind198175%_
                  (let ((__tmp201572
                         (lambda (_%g198167198170%_ _%g198168198172%_)
                           (_%generate-method-bind197353%_
                            _%$klass198148%_
                            _%$method-table198150%_
                            _%g198167198170%_
                            _%g198168198172%_))))
                    (declare (not safe))
                    (##map __tmp201572 _%methods198152%_ _%$methods198156%_)))
                 (_%slots198177%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197444%_)))
                 (_%$slots198181%_
                  (let ((__tmp201573
                         (lambda (_%id198179%_)
                           (let ((__tmp201574 (gensym _%id198179%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201574)))))
                    (declare (not safe))
                    (##map __tmp201573 _%slots198177%_)))
                 (_%_198190%_
                  (let ((__tmp201575
                         (lambda (_%g198182198185%_ _%g198183198187%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197444%_
                              _%g198182198185%_
                              _%g198183198187%_)))))
                    (declare (not safe))
                    (##for-each __tmp201575 _%slots198177%_ _%$slots198181%_)))
                 (_%slots-bind198199%_
                  (let ((__tmp201576
                         (lambda (_%g198191198194%_ _%g198192198196%_)
                           (_%generate-slot-bind197354%_
                            _%$klass198148%_
                            _%g198191198194%_
                            _%g198192198196%_))))
                    (declare (not safe))
                    (##map __tmp201576 _%slots198177%_ _%$slots198181%_)))
                 (_%specializer-clauses198297%_
                  (map (lambda (_%clause198201%_)
                         (let* ((_%__stx200370200371%_ _%clause198201%_)
                                (_%g198204198219%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx200370200371%_)))))
                           (let ((_%__kont200372200373%_
                                  (lambda (_%g198206198247%_
                                           _%g198207198248%_
                                           _%g198208198249%_)
                                    (let* ((_%receiver198278%_
                                            (let ((_%$e198275%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g198206198247%_))))
                                              (if _%$e198275%_
                                                  _%$e198275%_
                                                  _%g198208198249%_)))
                                           (_%body198284%_
                                            (map (lambda (_%g198279198281%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver198278%_
                                                    _%$klass198148%_
                                                    _%method-calls197443%_
                                                    _%slot-refs197444%_
                                                    _%g198279198281%_))
                                                 _%g198206198247%_)))
                                      (cons (cons _%g198208198249%_
                                                  _%g198207198248%_)
                                            _%body198284%_))))
                                 (_%__kont200374200375%_
                                  (lambda () _%clause198201%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx200370200371%_))
                                 (let ((_%e198209198231%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx200370200371%_))))
                                   (let ((_%tl198211198236%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198209198231%_)))
                                         (_%hd198210198234%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198209198231%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198210198234%_))
                                         (let ((_%e198212198239%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198210198234%_))))
                                           (let ((_%tl198214198244%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198212198239%_)))
                                                 (_%hd198213198242%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198212198239%_))))
                                             (_%__kont200372200373%_
                                              _%tl198211198236%_
                                              _%tl198214198244%_
                                              _%hd198213198242%_)))
                                         (_%__kont200374200375%_))))
                                 (_%__kont200374200375%_)))))
                       (let ((__tmp201577
                              (lambda (_%g198289198292%_ _%g198290198294%_)
                                (cons _%g198289198292%_ _%g198290198294%_))))
                         (declare (not safe))
                         (__foldr1 __tmp201577 '() _%g197991198043%_))))
                 (_%specializer-impl198299%_
                  (let ((__tmp201578
                         (cons '%#case-lambda _%specializer-clauses198297%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201578 _%stx197351%_)))
                 (_%specializer-impl198301%_
                  (_%generate-specializer-impl197355%_
                   _%$klass198148%_
                   _%$method-table198150%_
                   _%methods-bind198175%_
                   _%slots-bind198199%_
                   _%specializer-impl198299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201580
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197362197424%_)))
                                                          (__tmp201579
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198146%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201580
                                                       '" => "
                                                       __tmp201579))
                                                    (_%generate-specializer-def197356%_
                                                     _%g197362197424%_
                                                     _%specializer-id198146%_
                                                     _%specializer-impl198301%_))))
                                            _%clause198003198041%_))))))
                           (_%loop197998198026%_ _%target197995198021%_ '()))
                         (_%g197989198008%_ _%g197990198011%_)))))
               (_%g197989198008%_ _%g197990198011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g197989198008%_
                                                _%g197990198011%_)))))
                                   (_%g197988198304%_ _%g197361197423%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g197361197423%_))
                                     (let* ((_%g198308198338%_
                                             (lambda (_%g198309198335%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198309198335%_))))
                                            (_%g198307198965%_
                                             (lambda (_%g198309198341%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198309198341%_))
                                                   (let ((_%e198313198343%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198309198341%_))))
                                                     (let ((_%hd198314198346%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198313198343%_)))
                                                           (_%tl198315198348%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198313198343%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198315198348%_))
                                                           (let ((_%e198316198351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198315198348%_))))
                     (let ((_%hd198317198354%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198316198351%_)))
                           (_%tl198318198356%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198316198351%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd198317198354%_))
                           (let ((_%e198319198359%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd198317198354%_))))
                             (let ((_%hd198320198362%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198319198359%_)))
                                   (_%tl198321198364%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198319198359%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198320198362%_))
                                   (let ((_%e198322198367%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198320198362%_))))
                                     (let ((_%hd198323198370%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198322198367%_)))
                                           (_%tl198324198372%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198322198367%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd198323198370%_))
                                           (let ((_%e198325198375%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd198323198370%_))))
                                             (let ((_%hd198326198378%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198325198375%_)))
                                                   (_%tl198327198380%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198325198375%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198327198380%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198324198372%_))
                                                       (let ((_%e198328198383%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198324198372%_))))
                 (let ((_%hd198329198386%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198328198383%_)))
                       (_%tl198330198388%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198328198383%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198330198388%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198321198364%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198318198356%_))
                               (let ((_%e198331198391%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198318198356%_))))
                                 (let ((_%hd198332198394%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198331198391%_)))
                                       (_%tl198333198396%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198331198391%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198333198396%_))
                                       ((lambda (_%g198310198399%_
                                                 _%g198311198400%_
                                                 _%g198312198401%_)
                                          (let* ((_%g198425198443%_
                                                  (lambda (_%g198426198440%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198426198440%_))))
                                                 (_%g198424198499%_
                                                  (lambda (_%g198426198446%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198426198446%_))
                                                        (let ((_%e198430198448%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198426198446%_))))
                  (let ((_%hd198431198451%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198430198448%_)))
                        (_%tl198432198453%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198430198448%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198432198453%_))
                        (let ((_%e198433198456%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198432198453%_))))
                          (let ((_%hd198434198459%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198433198456%_)))
                                (_%tl198435198461%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198433198456%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198434198459%_))
                                (let ((_%e198436198464%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198434198459%_))))
                                  (let ((_%hd198437198467%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198436198464%_)))
                                        (_%tl198438198469%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198436198464%_))))
                                    ((lambda (_%g198427198472%_
                                              _%g198428198473%_
                                              _%g198429198474%_)
                                       (let ((_%receiver198493%_
                                              (let ((_%$e198490%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g198427198472%_))))
                                                (if _%$e198490%_
                                                    _%$e198490%_
                                                    _%g198429198474%_))))
                                         (for-each
                                          (lambda (_%g198494198496%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver198493%_
                                             _%method-calls197443%_
                                             _%slot-refs197444%_
                                             _%g198494198496%_))
                                          _%g198427198472%_)))
                                     _%tl198435198461%_
                                     _%tl198438198469%_
                                     _%hd198437198467%_)))
                                (_%g198425198443%_ _%g198426198446%_))))
                        (_%g198425198443%_ _%g198426198446%_))))
                (_%g198425198443%_ _%g198426198446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198424198499%_
                                             _%g198311198400%_))
                                          (let* ((_%g198502198521%_
                                                  (lambda (_%g198503198518%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198503198518%_))))
                                                 (_%g198501198643%_
                                                  (lambda (_%g198503198524%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198503198524%_))
                                                        (let ((_%e198505198526%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198503198524%_))))
                  (let ((_%hd198506198529%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198505198526%_)))
                        (_%tl198507198531%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198505198526%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl198507198531%_))
                        (let ((_g201581_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl198507198531%_
                                  '0))))
                          (begin
                            (let ((_g201582_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201581_)
                                         (##values-length _g201581_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201582_ 2)))
                                  (error "Context expects 2 values"
                                         _g201582_)))
                            (let ((_%target198508198534%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201581_ 0)))
                                  (_%tl198510198536%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201581_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198510198536%_))
                                  (letrec ((_%loop198511198539%_
                                            (lambda (_%hd198509198542%_
                                                     _%clause198515198544%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198509198542%_))
                                                  (let ((_%e198512198546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198509198542%_))))
                                                    (let ((_%lp-hd198513198549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198512198546%_)))
                                                          (_%lp-tl198514198551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198512198546%_))))
                                                      (_%loop198511198539%_
                                                       _%lp-tl198514198551%_
                                                       (cons _%lp-hd198513198549%_
                                                             _%clause198515198544%_))))
                                                  (let ((_%clause198516198554%_
                                                         (reverse _%clause198515198544%_)))
                                                    ((lambda (_%g198504198556%_)
                                                       (for-each
                                                        (lambda (_%clause198569%_)
                                                          (let* ((_%g198571198586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g198572198583%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198572198583%_))))
                         (_%g198570198633%_
                          (lambda (_%g198572198589%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198572198589%_))
                                (let ((_%e198576198591%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198572198589%_))))
                                  (let ((_%hd198577198594%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198576198591%_)))
                                        (_%tl198578198596%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198576198591%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198577198594%_))
                                        (let ((_%e198579198599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198577198594%_))))
                                          (let ((_%hd198580198602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198579198599%_)))
                                                (_%tl198581198604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198579198599%_))))
                                            ((lambda (_%g198573198607%_
                                                      _%g198574198608%_
                                                      _%g198575198609%_)
                                               (let ((_%receiver198627%_
                                                      (let ((_%$e198624%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g198573198607%_))))
                (if _%$e198624%_ _%$e198624%_ _%g198575198609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g198628198630%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver198627%_
                                                     _%method-calls197443%_
                                                     _%slot-refs197444%_
                                                     _%g198628198630%_))
                                                  _%g198573198607%_)))
                                             _%tl198578198596%_
                                             _%tl198581198604%_
                                             _%hd198580198602%_)))
                                        (_%g198571198586%_
                                         _%g198572198589%_))))
                                (_%g198571198586%_ _%g198572198589%_)))))
                    (_%g198570198633%_ _%clause198569%_)))
                (let ((__tmp201583
                       (lambda (_%g198635198638%_ _%g198636198640%_)
                         (cons _%g198635198638%_ _%g198636198640%_))))
                  (declare (not safe))
                  (__foldr1 __tmp201583 '() _%g198504198556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause198516198554%_))))))
                                    (_%loop198511198539%_
                                     _%target198508198534%_
                                     '()))
                                  (_%g198502198521%_ _%g198503198524%_)))))
                        (_%g198502198521%_ _%g198503198524%_))))
                (_%g198502198521%_ _%g198503198524%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198501198643%_
                                             _%g198310198399%_))
                                          (if (_%no-specializer?197447%_)
                                              _%stx197351%_
                                              (let* ((_%specializer-id198652%_
                                                      (let* ((_%id198646%_
                                                              (let ((__tmp201584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197362197424%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201584 '"::specialize")))
                     (_%specializer-id198649%_
                      (let ((__tmp201585
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197351%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198646%_ __tmp201585))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198649%_))
                _%specializer-id198649%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198654%_
                                                      (let ((__tmp201586
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201586)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198656%_
                                                      (let ((__tmp201587
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201587)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198658%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197443%_)))
                                                     (_%$methods198662%_
                                                      (let ((__tmp201588
                                                             (lambda (_%id198660%_)
                                                               (let ((__tmp201589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198660%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201589)))))
                (declare (not safe))
                (##map __tmp201588 _%methods198658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198671%_
                                                      (let ((__tmp201590
                                                             (lambda (_%g198663198666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198664198668%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197443%_
                          _%g198663198666%_
                          _%g198664198668%_)))))
                (declare (not safe))
                (##for-each __tmp201590 _%methods198658%_ _%$methods198662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198681%_
                                                      (let ((__tmp201591
                                                             (lambda (_%g198673198676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198674198678%_)
                       (_%generate-method-bind197353%_
                        _%$klass198654%_
                        _%$method-table198656%_
                        _%g198673198676%_
                        _%g198674198678%_))))
                (declare (not safe))
                (##map __tmp201591 _%methods198658%_ _%$methods198662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198683%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197444%_)))
                                                     (_%$slots198687%_
                                                      (let ((__tmp201592
                                                             (lambda (_%id198685%_)
                                                               (let ((__tmp201593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198685%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201593)))))
                (declare (not safe))
                (##map __tmp201592 _%slots198683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198696%_
                                                      (let ((__tmp201594
                                                             (lambda (_%g198688198691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198689198693%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197444%_
                          _%g198688198691%_
                          _%g198689198693%_)))))
                (declare (not safe))
                (##for-each __tmp201594 _%slots198683%_ _%$slots198687%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198705%_
                                                      (let ((__tmp201595
                                                             (lambda (_%g198697198700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198698198702%_)
                       (_%generate-slot-bind197354%_
                        _%$klass198654%_
                        _%g198697198700%_
                        _%g198698198702%_))))
                (declare (not safe))
                (##map __tmp201595 _%slots198683%_ _%$slots198687%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr198797%_
                                                      (let* ((_%g198707198725%_
                                                              (lambda (_%g198708198722%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198708198722%_))))
                     (_%g198706198794%_
                      (lambda (_%g198708198728%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198708198728%_))
                            (let ((_%e198712198730%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198708198728%_))))
                              (let ((_%hd198713198733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198712198730%_)))
                                    (_%tl198714198735%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198712198730%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198714198735%_))
                                    (let ((_%e198715198738%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198714198735%_))))
                                      (let ((_%hd198716198741%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198715198738%_)))
                                            (_%tl198717198743%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198715198738%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198716198741%_))
                                            (let ((_%e198718198746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198716198741%_))))
                                              (let ((_%hd198719198749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198718198746%_)))
                                                    (_%tl198720198751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198718198746%_))))
                                                ((lambda (_%g198709198754%_
                                                          _%g198710198755%_
                                                          _%g198711198756%_)
                                                   (let* ((_%receiver198785%_
                                                           (let ((_%$e198782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g198709198754%_))))
                     (if _%$e198782%_ _%$e198782%_ _%g198711198756%_)))
                  (_%body198791%_
                   (map (lambda (_%g198786198788%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver198785%_
                           _%$klass198654%_
                           _%method-calls197443%_
                           _%slot-refs197444%_
                           _%g198786198788%_))
                        _%g198709198754%_))
                  (__tmp201596
                   (cons '%#lambda
                         (cons (cons _%g198711198756%_ _%g198710198755%_)
                               _%body198791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201596
                                                      _%g198311198400%_)))
                                                 _%tl198717198743%_
                                                 _%tl198720198751%_
                                                 _%hd198719198749%_)))
                                            (_%g198707198725%_
                                             _%g198708198728%_))))
                                    (_%g198707198725%_ _%g198708198728%_))))
                            (_%g198707198725%_ _%g198708198728%_)))))
                (_%g198706198794%_ _%g198311198400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr198958%_
                                                      (let* ((_%g198799198818%_
                                                              (lambda (_%g198800198815%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198800198815%_))))
                     (_%g198798198955%_
                      (lambda (_%g198800198821%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198800198821%_))
                            (let ((_%e198802198823%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198800198821%_))))
                              (let ((_%hd198803198826%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198802198823%_)))
                                    (_%tl198804198828%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198802198823%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198804198828%_))
                                    (let ((_g201597_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl198804198828%_
                                              '0))))
                                      (begin
                                        (let ((_g201598_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g201597_)
                                                     (##values-length
                                                      _g201597_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g201598_ 2)))
                                              (error "Context expects 2 values"
                                                     _g201598_)))
                                        (let ((_%target198805198831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201597_ 0)))
                                              (_%tl198807198833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201597_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198807198833%_))
                                              (letrec ((_%loop198808198836%_
                                                        (lambda (_%hd198806198839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause198812198841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198806198839%_))
                      (let ((_%e198809198843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198806198839%_))))
                        (let ((_%lp-hd198810198846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198809198843%_)))
                              (_%lp-tl198811198848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198809198843%_))))
                          (_%loop198808198836%_
                           _%lp-tl198811198848%_
                           (cons _%lp-hd198810198846%_
                                 _%clause198812198841%_))))
                      (let ((_%clause198813198851%_
                             (reverse _%clause198812198841%_)))
                        ((lambda (_%g198801198853%_)
                           (let* ((_%clauses198953%_
                                   (map (lambda (_%clause198867%_)
                                          (let* ((_%__stx200390200391%_
                                                  _%clause198867%_)
                                                 (_%g198870198885%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200390200391%_)))))
                                            (let ((_%__kont200392200393%_
                                                   (lambda (_%g198872198913%_
                                                            _%g198873198914%_
                                                            _%g198874198915%_)
                                                     (let* ((_%receiver198934%_
                                                             (let ((_%$e198931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g198872198913%_))))
                       (if _%$e198931%_ _%$e198931%_ _%g198874198915%_)))
                    (_%body198940%_
                     (map (lambda (_%g198935198937%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver198934%_
                             _%$klass198654%_
                             _%method-calls197443%_
                             _%slot-refs197444%_
                             _%g198935198937%_))
                          _%g198872198913%_)))
               (cons (cons _%g198874198915%_ _%g198873198914%_)
                     _%body198940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200394200395%_
                                                   (lambda ()
                                                     _%clause198867%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200390200391%_))
                                                  (let ((_%e198875198897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx200390200391%_))))
                                                    (let ((_%tl198877198902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198875198897%_)))
                                                          (_%hd198876198900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198875198897%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198876198900%_))
                                                          (let ((_%e198878198905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198876198900%_))))
                    (let ((_%tl198880198910%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198878198905%_)))
                          (_%hd198879198908%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198878198905%_))))
                      (_%__kont200392200393%_
                       _%tl198877198902%_
                       _%tl198880198910%_
                       _%hd198879198908%_)))
                  (_%__kont200394200395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200394200395%_)))))
                                        (let ((__tmp201599
                                               (lambda (_%g198945198948%_
                                                        _%g198946198950%_)
                                                 (cons _%g198945198948%_
                                                       _%g198946198950%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp201599
                                           '()
                                           _%g198801198853%_))))
                                  (__tmp201600
                                   (cons '%#case-lambda _%clauses198953%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201600
                              _%g198310198399%_)))
                         _%clause198813198851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop198808198836%_
                                                 _%target198805198831%_
                                                 '()))
                                              (_%g198799198818%_
                                               _%g198800198821%_)))))
                                    (_%g198799198818%_ _%g198800198821%_))))
                            (_%g198799198818%_ _%g198800198821%_)))))
                (_%g198798198955%_ _%g198310198399%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198960%_
                                                      (let ((__tmp201601
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g198312198401%_ '())
                                             (cons _%specializer-lambda-expr198797%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr198958%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201601 _%stx197351%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198962%_
                                                      (_%generate-specializer-impl197355%_
                                                       _%$klass198654%_
                                                       _%$method-table198656%_
                                                       _%methods-bind198681%_
                                                       _%slots-bind198705%_
                                                       _%specializer-impl198960%_)))
                                                (let ((__tmp201603
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197362197424%_)))
                                                      (__tmp201602
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198652%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201603
                                                   '" => "
                                                   __tmp201602))
                                                (_%generate-specializer-def197356%_
                                                 _%g197362197424%_
                                                 _%specializer-id198652%_
                                                 _%specializer-impl198962%_))))
                                        _%hd198332198394%_
                                        _%hd198329198386%_
                                        _%hd198326198378%_)
                                       (_%g198308198338%_ _%g198309198341%_))))
                               (_%g198308198338%_ _%g198309198341%_))
                           (_%g198308198338%_ _%g198309198341%_))
                       (_%g198308198338%_ _%g198309198341%_))))
               (_%g198308198338%_ _%g198309198341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198308198338%_
                                                    _%g198309198341%_))))
                                           (_%g198308198338%_
                                            _%g198309198341%_))))
                                   (_%g198308198338%_ _%g198309198341%_))))
                           (_%g198308198338%_ _%g198309198341%_))))
                   (_%g198308198338%_ _%g198309198341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198308198338%_
                                                    _%g198309198341%_)))))
                                       (_%g198307198965%_ _%g197361197423%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g197361197423%_))
                                         (let* ((_%g198969199022%_
                                                 (lambda (_%g198970199019%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g198970199019%_))))
                                                (_%g198968200187%_
                                                 (lambda (_%g198970199025%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g198970199025%_))
                                                       (let ((_%e198976199027%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g198970199025%_))))
                 (let ((_%hd198977199030%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198976199027%_)))
                       (_%tl198978199032%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198976199027%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd198977199030%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd198977199030%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198978199032%_))
                               (let ((_%e198979199035%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198978199032%_))))
                                 (let ((_%hd198980199038%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198979199035%_)))
                                       (_%tl198981199040%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198979199035%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd198980199038%_))
                                       (let ((_%e198982199043%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd198980199038%_))))
                                         (let ((_%hd198983199046%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e198982199043%_)))
                                               (_%tl198984199048%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e198982199043%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd198983199046%_))
                                               (let ((_%e198985199051%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd198983199046%_))))
                                                 (let ((_%hd198986199054%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198985199051%_)))
                                                       (_%tl198987199056%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198985199051%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd198986199054%_))
                                                       (let ((_%e198988199059%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd198986199054%_))))
                 (let ((_%hd198989199062%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198988199059%_)))
                       (_%tl198990199064%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198988199059%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198990199064%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl198987199056%_))
                           (let ((_%e198991199067%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl198987199056%_))))
                             (let ((_%hd198992199070%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198991199067%_)))
                                   (_%tl198993199072%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198991199067%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198992199070%_))
                                   (let ((_%e198994199075%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198992199070%_))))
                                     (let ((_%hd198995199078%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198994199075%_)))
                                           (_%tl198996199080%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198994199075%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd198995199078%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd198995199078%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl198996199080%_))
                                                   (let ((_%e198997199083%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl198996199080%_))))
                                                     (let ((_%hd198998199086%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198997199083%_)))
                                                           (_%tl198999199088%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198997199083%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd198998199086%_))
                                                           (let ((_%e199000199091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd198998199086%_))))
                     (let ((_%hd199001199094%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199000199091%_)))
                           (_%tl199002199096%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199000199091%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199001199094%_))
                           (let ((_%e199003199099%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd199001199094%_))))
                             (let ((_%hd199004199102%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199003199099%_)))
                                   (_%tl199005199104%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199003199099%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199004199102%_))
                                   (let ((_%e199006199107%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199004199102%_))))
                                     (let ((_%hd199007199110%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199006199107%_)))
                                           (_%tl199008199112%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199006199107%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199008199112%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl199005199104%_))
                                               (let ((_%e199009199115%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl199005199104%_))))
                                                 (let ((_%hd199010199118%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199009199115%_)))
                                                       (_%tl199011199120%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199009199115%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199011199120%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199002199096%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl198999199088%_))
                       (let ((_%e199012199123%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl198999199088%_))))
                         (let ((_%hd199013199126%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199012199123%_)))
                               (_%tl199014199128%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199012199123%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199014199128%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl198993199072%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198984199048%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl198981199040%_))
                                           (let ((_%e199015199131%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl198981199040%_))))
                                             (let ((_%hd199016199134%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199015199131%_)))
                                                   (_%tl199017199136%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199015199131%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199017199136%_))
                                                   ((lambda (_%g198971199139%_
                                                             _%g198972199140%_
                                                             _%g198973199141%_
                                                             _%g198974199142%_
                                                             _%g198975199143%_)
                                                      (let* ((_%g199183199245%_
                                                              (lambda (_%g199184199242%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199184199242%_))))
                     (_%g199182200184%_
                      (lambda (_%g199184199248%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199184199248%_))
                            (let ((_%e199190199250%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199184199248%_))))
                              (let ((_%hd199191199253%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199190199250%_)))
                                    (_%tl199192199255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199190199250%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199191199253%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199191199253%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199192199255%_))
                                            (let ((_%e199193199258%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199192199255%_))))
                                              (let ((_%hd199194199261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199193199258%_)))
                                                    (_%tl199195199263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199193199258%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199195199263%_))
                                                    (let ((_%e199196199266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199195199263%_))))
                                                      (let ((_%hd199197199269%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199196199266%_)))
                    (_%tl199198199271%_
                     (let () (declare (not safe)) (##cdr _%e199196199266%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd199197199269%_))
                    (let ((_%e199199199274%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199197199269%_))))
                      (let ((_%hd199200199277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199199199274%_)))
                            (_%tl199201199279%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199199199274%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd199200199277%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd199200199277%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199201199279%_))
                                    (let ((_%e199202199282%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199201199279%_))))
                                      (let ((_%hd199203199285%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199202199282%_)))
                                            (_%tl199204199287%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199202199282%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199203199285%_))
                                            (let ((_%e199205199290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199203199285%_))))
                                              (let ((_%hd199206199293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199205199290%_)))
                                                    (_%tl199207199295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199205199290%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199206199293%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199206199293%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199207199295%_))
                                                            (let ((_%e199208199298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199207199295%_))))
                      (let ((_%hd199209199301%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199208199298%_)))
                            (_%tl199210199303%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199208199298%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199210199303%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199204199287%_))
                                (let ((_%e199211199306%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199204199287%_))))
                                  (let ((_%hd199212199309%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199211199306%_)))
                                        (_%tl199213199311%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199211199306%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199212199309%_))
                                        (let ((_%e199214199314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199212199309%_))))
                                          (let ((_%hd199215199317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199214199314%_)))
                                                (_%tl199216199319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199214199314%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199215199317%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd199215199317%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199216199319%_))
                                                        (let ((_%e199217199322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199216199319%_))))
                  (let ((_%hd199218199325%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199217199322%_)))
                        (_%tl199219199327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199217199322%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199219199327%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199213199311%_))
                            (let ((_%e199220199330%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199213199311%_))))
                              (let ((_%hd199221199333%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199220199330%_)))
                                    (_%tl199222199335%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199220199330%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199221199333%_))
                                    (let ((_%e199223199338%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199221199333%_))))
                                      (let ((_%hd199224199341%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199223199338%_)))
                                            (_%tl199225199343%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199223199338%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199224199341%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd199224199341%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199225199343%_))
                                                    (let ((_%e199226199346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199225199343%_))))
                                                      (let ((_%hd199227199349%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199226199346%_)))
                    (_%tl199228199351%_
                     (let () (declare (not safe)) (##cdr _%e199226199346%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199228199351%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl199222199335%_))
                        (if (let ((__tmp201604
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl199222199335%_))))
                              (declare (not safe))
                              (##fx>= __tmp201604 '1))
                            (let ((_g201605_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199222199335%_
                                      '1))))
                              (begin
                                (let ((_g201606_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201605_)
                                             (##values-length _g201605_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201606_ 2)))
                                      (error "Context expects 2 values"
                                             _g201606_)))
                                (let ((_%target199229199354%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201605_ 0)))
                                      (_%tl199231199356%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201605_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199231199356%_))
                                      (let ((_%e199238199359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199231199356%_))))
                                        (let ((_%hd199239199362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199238199359%_)))
                                              (_%tl199240199364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199238199359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199240199364%_))
                                              (letrec ((_%loop199232199367%_
                                                        (lambda (_%hd199230199370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref199236199372%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199230199370%_))
                      (let ((_%e199233199374%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199230199370%_))))
                        (let ((_%lp-hd199234199377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199233199374%_)))
                              (_%lp-tl199235199379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199233199374%_))))
                          (_%loop199232199367%_
                           _%lp-tl199235199379%_
                           (cons _%lp-hd199234199377%_
                                 _%kw-ref199236199372%_))))
                      (let ((_%kw-ref199237199382%_
                             (reverse _%kw-ref199236199372%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199198199271%_))
                            ((lambda (_%g199185199384%_
                                      _%g199186199385%_
                                      _%g199187199386%_
                                      _%g199188199387%_
                                      _%g199189199388%_)
                               (let* ((_%kw-count199439%_
                                       (length (let ((__tmp201607
                                                      (lambda (_%g199431199434%_
                                                               _%g199432199436%_)
                                                        (cons _%g199431199434%_
                                                              _%g199432199436%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201607
                                                  '()
                                                  _%g199186199385%_))))
                                      (_%self-index199441%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count199439%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g198973199141%_))
                                     (let* ((_%g199445199459%_
                                             (lambda (_%g199446199456%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199446199456%_))))
                                            (_%g199444199582%_
                                             (lambda (_%g199446199462%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199446199462%_))
                                                   (let ((_%e199449199464%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g199446199462%_))))
                                                     (let ((_%hd199450199467%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199449199464%_)))
                                                           (_%tl199451199469%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199449199464%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199451199469%_))
                                                           (let ((_%e199452199472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199451199469%_))))
                     (let ((_%hd199453199475%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199452199472%_)))
                           (_%tl199454199477%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199452199472%_))))
                       ((lambda (_%g199447199480%_ _%g199448199481%_)
                          (let* ((_%self199498%_
                                  (list-ref
                                   _%g199448199481%_
                                   _%self-index199441%_))
                                 (_%receiver199503%_
                                  (let ((_%$e199500%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g199447199480%_))))
                                    (if _%$e199500%_
                                        _%$e199500%_
                                        _%self199498%_))))
                            (for-each
                             (lambda (_%g199505199507%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver199503%_
                                _%method-calls197443%_
                                _%slot-refs197444%_
                                _%g199505199507%_))
                             _%g199447199480%_)
                            (if (_%no-specializer?197447%_)
                                _%stx197351%_
                                (let* ((_%specializer-id199516%_
                                        (let* ((_%id199510%_
                                                (let ((__tmp201608
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197362197424%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp201608
                                                   '"::specialize")))
                                               (_%specializer-id199513%_
                                                (let ((__tmp201609
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx197351%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id199510%_
                                                   __tmp201609))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id199513%_))
                                          _%specializer-id199513%_))
                                       (_%$klass199518%_
                                        (let ((__tmp201610
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201610)))
                                       (_%$method-table199520%_
                                        (let ((__tmp201611
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201611)))
                                       (_%methods199522%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls197443%_)))
                                       (_%$methods199526%_
                                        (let ((__tmp201612
                                               (lambda (_%id199524%_)
                                                 (let ((__tmp201613
                                                        (gensym _%id199524%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201613)))))
                                          (declare (not safe))
                                          (##map __tmp201612
                                                 _%methods199522%_)))
                                       (_%_199535%_
                                        (let ((__tmp201614
                                               (lambda (_%g199527199530%_
                                                        _%g199528199532%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls197443%_
                                                    _%g199527199530%_
                                                    _%g199528199532%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201614
                                           _%methods199522%_
                                           _%$methods199526%_)))
                                       (_%methods-bind199545%_
                                        (let ((__tmp201615
                                               (lambda (_%g199537199540%_
                                                        _%g199538199542%_)
                                                 (_%generate-method-bind197353%_
                                                  _%$klass199518%_
                                                  _%$method-table199520%_
                                                  _%g199537199540%_
                                                  _%g199538199542%_))))
                                          (declare (not safe))
                                          (##map __tmp201615
                                                 _%methods199522%_
                                                 _%$methods199526%_)))
                                       (_%slots199547%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs197444%_)))
                                       (_%$slots199551%_
                                        (let ((__tmp201616
                                               (lambda (_%id199549%_)
                                                 (let ((__tmp201617
                                                        (gensym _%id199549%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201617)))))
                                          (declare (not safe))
                                          (##map __tmp201616 _%slots199547%_)))
                                       (_%_199560%_
                                        (let ((__tmp201618
                                               (lambda (_%g199552199555%_
                                                        _%g199553199557%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs197444%_
                                                    _%g199552199555%_
                                                    _%g199553199557%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201618
                                           _%slots199547%_
                                           _%$slots199551%_)))
                                       (_%slots-bind199569%_
                                        (let ((__tmp201619
                                               (lambda (_%g199561199564%_
                                                        _%g199562199566%_)
                                                 (_%generate-slot-bind197354%_
                                                  _%$klass199518%_
                                                  _%g199561199564%_
                                                  _%g199562199566%_))))
                                          (declare (not safe))
                                          (##map __tmp201619
                                                 _%slots199547%_
                                                 _%$slots199551%_)))
                                       (_%specializer-impl199577%_
                                        (let* ((_%specializer-body199575%_
                                                (map (lambda (_%g199570199572%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver199503%_
                                                        _%$klass199518%_
                                                        _%method-calls197443%_
                                                        _%slot-refs197444%_
                                                        _%g199570199572%_))
                                                     _%g199447199480%_))
                                               (__tmp201620
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g198975199143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g198974199142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp201621
                                   (cons '%#lambda
                                         (cons _%g199448199481%_
                                               _%specializer-body199575%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201621
                               _%g198973199141%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g198972199140%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g198971199139%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp201620
                                           _%stx197351%_)))
                                       (_%specializer-impl199579%_
                                        (_%generate-specializer-impl197355%_
                                         _%$klass199518%_
                                         _%$method-table199520%_
                                         _%methods-bind199545%_
                                         _%slots-bind199569%_
                                         _%specializer-impl199577%_)))
                                  (let ((__tmp201623
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g197362197424%_)))
                                        (__tmp201622
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id199516%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp201623
                                     '" => "
                                     __tmp201622))
                                  (_%generate-specializer-def197356%_
                                   _%g197362197424%_
                                   _%specializer-id199516%_
                                   _%specializer-impl199579%_)))))
                        _%tl199454199477%_
                        _%hd199453199475%_)))
                   (_%g199445199459%_ _%g199446199462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199445199459%_
                                                    _%g199446199462%_)))))
                                       (_%g199444199582%_ _%g198973199141%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g198973199141%_))
                                         (let* ((_%g199586199616%_
                                                 (lambda (_%g199587199613%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199587199613%_))))
                                                (_%g199585200180%_
                                                 (lambda (_%g199587199619%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199587199619%_))
                                                       (let ((_%e199591199621%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199587199619%_))))
                 (let ((_%hd199592199624%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199591199621%_)))
                       (_%tl199593199626%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199591199621%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl199593199626%_))
                       (let ((_%e199594199629%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199593199626%_))))
                         (let ((_%hd199595199632%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199594199629%_)))
                               (_%tl199596199634%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199594199629%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd199595199632%_))
                               (let ((_%e199597199637%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199595199632%_))))
                                 (let ((_%hd199598199640%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199597199637%_)))
                                       (_%tl199599199642%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199597199637%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199598199640%_))
                                       (let ((_%e199600199645%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199598199640%_))))
                                         (let ((_%hd199601199648%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199600199645%_)))
                                               (_%tl199602199650%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199600199645%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199601199648%_))
                                               (let ((_%e199603199653%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199601199648%_))))
                                                 (let ((_%hd199604199656%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199603199653%_)))
                                                       (_%tl199605199658%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199603199653%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199605199658%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199602199650%_))
                                                           (let ((_%e199606199661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199602199650%_))))
                     (let ((_%hd199607199664%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199606199661%_)))
                           (_%tl199608199666%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199606199661%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199608199666%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199599199642%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199596199634%_))
                                   (let ((_%e199609199669%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl199596199634%_))))
                                     (let ((_%hd199610199672%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199609199669%_)))
                                           (_%tl199611199674%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199609199669%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199611199674%_))
                                           ((lambda (_%g199588199677%_
                                                     _%g199589199678%_
                                                     _%g199590199679%_)
                                              (let* ((_%g199703199717%_
                                                      (lambda (_%g199704199714%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199704199714%_))))
                                                     (_%g199702199764%_
                                                      (lambda (_%g199704199720%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199704199720%_))
                                                            (let ((_%e199707199722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199704199720%_))))
                      (let ((_%hd199708199725%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199707199722%_)))
                            (_%tl199709199727%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199707199722%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199709199727%_))
                            (let ((_%e199710199730%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199709199727%_))))
                              (let ((_%hd199711199733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199710199730%_)))
                                    (_%tl199712199735%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199710199730%_))))
                                ((lambda (_%g199705199738%_ _%g199706199739%_)
                                   (let* ((_%self199752%_
                                           (list-ref
                                            _%g199706199739%_
                                            _%self-index199441%_))
                                          (_%receiver199757%_
                                           (let ((_%$e199754%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g199705199738%_))))
                                             (if _%$e199754%_
                                                 _%$e199754%_
                                                 _%self199752%_))))
                                     (for-each
                                      (lambda (_%g199759199761%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver199757%_
                                         _%method-calls197443%_
                                         _%slot-refs197444%_
                                         _%g199759199761%_))
                                      _%g199705199738%_)))
                                 _%tl199712199735%_
                                 _%hd199711199733%_)))
                            (_%g199703199717%_ _%g199704199720%_))))
                    (_%g199703199717%_ _%g199704199720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199702199764%_
                                                 _%g199589199678%_))
                                              (let* ((_%g199767199786%_
                                                      (lambda (_%g199768199783%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199768199783%_))))
                                                     (_%g199766199895%_
                                                      (lambda (_%g199768199789%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199768199789%_))
                                                            (let ((_%e199770199791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199768199789%_))))
                      (let ((_%hd199771199794%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199770199791%_)))
                            (_%tl199772199796%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199770199791%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl199772199796%_))
                            (let ((_g201624_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199772199796%_
                                      '0))))
                              (begin
                                (let ((_g201625_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201624_)
                                             (##values-length _g201624_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201625_ 2)))
                                      (error "Context expects 2 values"
                                             _g201625_)))
                                (let ((_%target199773199799%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201624_ 0)))
                                      (_%tl199775199801%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201624_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199775199801%_))
                                      (letrec ((_%loop199776199804%_
                                                (lambda (_%hd199774199807%_
                                                         _%clause199780199809%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199774199807%_))
                                                      (let ((_%e199777199811%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199774199807%_))))
                (let ((_%lp-hd199778199814%_
                       (let () (declare (not safe)) (##car _%e199777199811%_)))
                      (_%lp-tl199779199816%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199777199811%_))))
                  (_%loop199776199804%_
                   _%lp-tl199779199816%_
                   (cons _%lp-hd199778199814%_ _%clause199780199809%_))))
              (let ((_%clause199781199819%_ (reverse _%clause199780199809%_)))
                ((lambda (_%g199769199821%_)
                   (for-each
                    (lambda (_%clause199834%_)
                      (let* ((_%g199836199847%_
                              (lambda (_%g199837199844%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g199837199844%_))))
                             (_%g199835199885%_
                              (lambda (_%g199837199850%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g199837199850%_))
                                    (let ((_%e199840199852%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g199837199850%_))))
                                      (let ((_%hd199841199855%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199840199852%_)))
                                            (_%tl199842199857%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199840199852%_))))
                                        ((lambda (_%g199838199860%_
                                                  _%g199839199861%_)
                                           (let* ((_%self199873%_
                                                   (list-ref
                                                    _%g199839199861%_
                                                    _%self-index199441%_))
                                                  (_%receiver199878%_
                                                   (let ((_%$e199875%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g199838199860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e199875%_
                                                         _%$e199875%_
                                                         _%self199873%_))))
                                             (for-each
                                              (lambda (_%g199880199882%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver199878%_
                                                 _%method-calls197443%_
                                                 _%slot-refs197444%_
                                                 _%g199880199882%_))
                                              _%g199838199860%_)))
                                         _%tl199842199857%_
                                         _%hd199841199855%_)))
                                    (_%g199836199847%_ _%g199837199850%_)))))
                        (_%g199835199885%_ _%clause199834%_)))
                    (let ((__tmp201626
                           (lambda (_%g199887199890%_ _%g199888199892%_)
                             (cons _%g199887199890%_ _%g199888199892%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201626 '() _%g199769199821%_))))
                 _%clause199781199819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop199776199804%_
                                         _%target199773199799%_
                                         '()))
                                      (_%g199767199786%_ _%g199768199789%_)))))
                            (_%g199767199786%_ _%g199768199789%_))))
                    (_%g199767199786%_ _%g199768199789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199766199895%_
                                                 _%g199588199677%_))
                                              (if (_%no-specializer?197447%_)
                                                  _%stx197351%_
                                                  (let* ((_%specializer-id199904%_
                                                          (let* ((_%id199898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201627
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197362197424%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201627 '"::specialize")))
                         (_%specializer-id199901%_
                          (let ((__tmp201628
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197351%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id199898%_
                             __tmp201628))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id199901%_))
                    _%specializer-id199901%_))
                 (_%$klass199906%_
                  (let ((__tmp201629
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201629)))
                 (_%$method-table199908%_
                  (let ((__tmp201630
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201630)))
                 (_%methods199910%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197443%_)))
                 (_%$methods199914%_
                  (let ((__tmp201631
                         (lambda (_%id199912%_)
                           (let ((__tmp201632 (gensym _%id199912%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201632)))))
                    (declare (not safe))
                    (##map __tmp201631 _%methods199910%_)))
                 (_%_199923%_
                  (let ((__tmp201633
                         (lambda (_%g199915199918%_ _%g199916199920%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197443%_
                              _%g199915199918%_
                              _%g199916199920%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201633
                     _%methods199910%_
                     _%$methods199914%_)))
                 (_%methods-bind199933%_
                  (let ((__tmp201634
                         (lambda (_%g199925199928%_ _%g199926199930%_)
                           (_%generate-method-bind197353%_
                            _%$klass199906%_
                            _%$method-table199908%_
                            _%g199925199928%_
                            _%g199926199930%_))))
                    (declare (not safe))
                    (##map __tmp201634 _%methods199910%_ _%$methods199914%_)))
                 (_%slots199935%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197444%_)))
                 (_%$slots199939%_
                  (let ((__tmp201635
                         (lambda (_%id199937%_)
                           (let ((__tmp201636 (gensym _%id199937%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201636)))))
                    (declare (not safe))
                    (##map __tmp201635 _%slots199935%_)))
                 (_%_199948%_
                  (let ((__tmp201637
                         (lambda (_%g199940199943%_ _%g199941199945%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197444%_
                              _%g199940199943%_
                              _%g199941199945%_)))))
                    (declare (not safe))
                    (##for-each __tmp201637 _%slots199935%_ _%$slots199939%_)))
                 (_%slots-bind199957%_
                  (let ((__tmp201638
                         (lambda (_%g199949199952%_ _%g199950199954%_)
                           (_%generate-slot-bind197354%_
                            _%$klass199906%_
                            _%g199949199952%_
                            _%g199950199954%_))))
                    (declare (not safe))
                    (##map __tmp201638 _%slots199935%_ _%$slots199939%_)))
                 (_%specializer-lambda-expr200035%_
                  (let* ((_%g199959199973%_
                          (lambda (_%g199960199970%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g199960199970%_))))
                         (_%g199958200032%_
                          (lambda (_%g199960199976%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g199960199976%_))
                                (let ((_%e199963199978%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g199960199976%_))))
                                  (let ((_%hd199964199981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199963199978%_)))
                                        (_%tl199965199983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199963199978%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199965199983%_))
                                        (let ((_%e199966199986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199965199983%_))))
                                          (let ((_%hd199967199989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199966199986%_)))
                                                (_%tl199968199991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199966199986%_))))
                                            ((lambda (_%g199961199994%_
                                                      _%g199962199995%_)
                                               (let* ((_%self200018%_
                                                       (list-ref
                                                        _%g199962199995%_
                                                        _%self-index199441%_))
                                                      (_%receiver200023%_
                                                       (let ((_%$e200020%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g199961199994%_))))
                 (if _%$e200020%_ _%$e200020%_ _%self200018%_)))
              (_%body200029%_
               (map (lambda (_%g200024200026%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver200023%_
                       _%$klass199906%_
                       _%method-calls197443%_
                       _%slot-refs197444%_
                       _%g200024200026%_))
                    _%g199961199994%_))
              (__tmp201639
               (cons '%#lambda (cons _%g199962199995%_ _%body200029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201639
                                                  _%g199589199678%_)))
                                             _%tl199968199991%_
                                             _%hd199967199989%_)))
                                        (_%g199959199973%_
                                         _%g199960199976%_))))
                                (_%g199959199973%_ _%g199960199976%_)))))
                    (_%g199958200032%_ _%g199589199678%_)))
                 (_%specializer-case-lambda-expr200173%_
                  (let* ((_%g200037200056%_
                          (lambda (_%g200038200053%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200038200053%_))))
                         (_%g200036200170%_
                          (lambda (_%g200038200059%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200038200059%_))
                                (let ((_%e200040200061%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200038200059%_))))
                                  (let ((_%hd200041200064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200040200061%_)))
                                        (_%tl200042200066%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200040200061%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200042200066%_))
                                        (let ((_g201640_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200042200066%_
                                                  '0))))
                                          (begin
                                            (let ((_g201641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201640_)
                                                         (##values-length
                                                          _g201640_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201641_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201641_)))
                                            (let ((_%target200043200069%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201640_
                                                      0)))
                                                  (_%tl200045200071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201640_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200045200071%_))
                                                  (letrec ((_%loop200046200074%_
                                                            (lambda (_%hd200044200077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause200050200079%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200044200077%_))
                          (let ((_%e200047200081%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200044200077%_))))
                            (let ((_%lp-hd200048200084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200047200081%_)))
                                  (_%lp-tl200049200086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200047200081%_))))
                              (_%loop200046200074%_
                               _%lp-tl200049200086%_
                               (cons _%lp-hd200048200084%_
                                     _%clause200050200079%_))))
                          (let ((_%clause200051200089%_
                                 (reverse _%clause200050200079%_)))
                            ((lambda (_%g200039200091%_)
                               (let* ((_%clauses200168%_
                                       (map (lambda (_%clause200105%_)
                                              (let* ((_%g200107200118%_
                                                      (lambda (_%g200108200115%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200108200115%_))))
                                                     (_%g200106200158%_
                                                      (lambda (_%g200108200121%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200108200121%_))
                                                            (let ((_%e200111200123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g200108200121%_))))
                      (let ((_%hd200112200126%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200111200123%_)))
                            (_%tl200113200128%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200111200123%_))))
                        ((lambda (_%g200109200131%_ _%g200110200132%_)
                           (let* ((_%self200144%_
                                   (list-ref
                                    _%g200110200132%_
                                    _%self-index199441%_))
                                  (_%receiver200149%_
                                   (let ((_%$e200146%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g200109200131%_))))
                                     (if _%$e200146%_
                                         _%$e200146%_
                                         _%self200144%_)))
                                  (_%body200155%_
                                   (map (lambda (_%g200150200152%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver200149%_
                                           _%$klass199906%_
                                           _%method-calls197443%_
                                           _%slot-refs197444%_
                                           _%g200150200152%_))
                                        _%g200109200131%_)))
                             (cons _%g200110200132%_ _%body200155%_)))
                         _%tl200113200128%_
                         _%hd200112200126%_)))
                    (_%g200107200118%_ _%g200108200121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200106200158%_
                                                 _%clause200105%_)))
                                            (let ((__tmp201642
                                                   (lambda (_%g200160200163%_
                                                            _%g200161200165%_)
                                                     (cons _%g200160200163%_
                                                           _%g200161200165%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp201642
                                               '()
                                               _%g200039200091%_))))
                                      (__tmp201643
                                       (cons '%#case-lambda
                                             _%clauses200168%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp201643
                                  _%g199588199677%_)))
                             _%clause200051200089%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200046200074%_
                                                     _%target200043200069%_
                                                     '()))
                                                  (_%g200037200056%_
                                                   _%g200038200059%_)))))
                                        (_%g200037200056%_
                                         _%g200038200059%_))))
                                (_%g200037200056%_ _%g200038200059%_)))))
                    (_%g200036200170%_ _%g199588199677%_)))
                 (_%specializer-impl200175%_
                  (let ((__tmp201644
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g198975199143%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g198974199142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp201645
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g199590199679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr200035%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr200173%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201645
                                                _%stx197351%_))
                                             '()))
                                 '())
                           (cons _%g198972199140%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g198971199139%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201644 _%stx197351%_)))
                 (_%specializer-impl200177%_
                  (_%generate-specializer-impl197355%_
                   _%$klass199906%_
                   _%$method-table199908%_
                   _%methods-bind199933%_
                   _%slots-bind199957%_
                   _%specializer-impl200175%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201647
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197362197424%_)))
                                                          (__tmp201646
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id199904%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201647
                                                       '" => "
                                                       __tmp201646))
                                                    (_%generate-specializer-def197356%_
                                                     _%g197362197424%_
                                                     _%specializer-id199904%_
                                                     _%specializer-impl200177%_))))
                                            _%hd199610199672%_
                                            _%hd199607199664%_
                                            _%hd199604199656%_)
                                           (_%g199586199616%_
                                            _%g199587199619%_))))
                                   (_%g199586199616%_ _%g199587199619%_))
                               (_%g199586199616%_ _%g199587199619%_))
                           (_%g199586199616%_ _%g199587199619%_))))
                   (_%g199586199616%_ _%g199587199619%_))
               (_%g199586199616%_ _%g199587199619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199586199616%_
                                                _%g199587199619%_))))
                                       (_%g199586199616%_ _%g199587199619%_))))
                               (_%g199586199616%_ _%g199587199619%_))))
                       (_%g199586199616%_ _%g199587199619%_))))
               (_%g199586199616%_ _%g199587199619%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199585200180%_
                                            _%g198973199141%_))
                                         _%stx197351%_))))
                             _%hd199239199362%_
                             _%kw-ref199237199382%_
                             _%hd199227199349%_
                             _%hd199218199325%_
                             _%hd199209199301%_)
                            (_%g199183199245%_ _%g199184199248%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199232199367%_
                                                 _%target199229199354%_
                                                 '()))
                                              (_%g199183199245%_
                                               _%g199184199248%_))))
                                      (_%g199183199245%_ _%g199184199248%_)))))
                            (_%g199183199245%_ _%g199184199248%_))
                        (_%g199183199245%_ _%g199184199248%_))
                    (_%g199183199245%_ _%g199184199248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199183199245%_
                                                     _%g199184199248%_))
                                                (_%g199183199245%_
                                                 _%g199184199248%_))
                                            (_%g199183199245%_
                                             _%g199184199248%_))))
                                    (_%g199183199245%_ _%g199184199248%_))))
                            (_%g199183199245%_ _%g199184199248%_))
                        (_%g199183199245%_ _%g199184199248%_))))
                (_%g199183199245%_ _%g199184199248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199183199245%_
                                                     _%g199184199248%_))
                                                (_%g199183199245%_
                                                 _%g199184199248%_))))
                                        (_%g199183199245%_
                                         _%g199184199248%_))))
                                (_%g199183199245%_ _%g199184199248%_))
                            (_%g199183199245%_ _%g199184199248%_))))
                    (_%g199183199245%_ _%g199184199248%_))
                (_%g199183199245%_ _%g199184199248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199183199245%_
                                                     _%g199184199248%_))))
                                            (_%g199183199245%_
                                             _%g199184199248%_))))
                                    (_%g199183199245%_ _%g199184199248%_))
                                (_%g199183199245%_ _%g199184199248%_))
                            (_%g199183199245%_ _%g199184199248%_))))
                    (_%g199183199245%_ _%g199184199248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199183199245%_
                                                     _%g199184199248%_))))
                                            (_%g199183199245%_
                                             _%g199184199248%_))
                                        (_%g199183199245%_ _%g199184199248%_))
                                    (_%g199183199245%_ _%g199184199248%_))))
                            (_%g199183199245%_ _%g199184199248%_)))))
                (_%g199182200184%_ _%g198972199140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd199016199134%_
                                                    _%hd199013199126%_
                                                    _%hd199010199118%_
                                                    _%hd199007199110%_
                                                    _%hd198989199062%_)
                                                   (_%g198969199022%_
                                                    _%g198970199025%_))))
                                           (_%g198969199022%_
                                            _%g198970199025%_))
                                       (_%g198969199022%_ _%g198970199025%_))
                                   (_%g198969199022%_ _%g198970199025%_))
                               (_%g198969199022%_ _%g198970199025%_))))
                       (_%g198969199022%_ _%g198970199025%_))
                   (_%g198969199022%_ _%g198970199025%_))
               (_%g198969199022%_ _%g198970199025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198969199022%_
                                                _%g198970199025%_))
                                           (_%g198969199022%_
                                            _%g198970199025%_))))
                                   (_%g198969199022%_ _%g198970199025%_))))
                           (_%g198969199022%_ _%g198970199025%_))))
                   (_%g198969199022%_ _%g198970199025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198969199022%_
                                                    _%g198970199025%_))
                                               (_%g198969199022%_
                                                _%g198970199025%_))
                                           (_%g198969199022%_
                                            _%g198970199025%_))))
                                   (_%g198969199022%_ _%g198970199025%_))))
                           (_%g198969199022%_ _%g198970199025%_))
                       (_%g198969199022%_ _%g198970199025%_))))
               (_%g198969199022%_ _%g198970199025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198969199022%_
                                                _%g198970199025%_))))
                                       (_%g198969199022%_ _%g198970199025%_))))
                               (_%g198969199022%_ _%g198970199025%_))
                           (_%g198969199022%_ _%g198970199025%_))
                       (_%g198969199022%_ _%g198970199025%_))))
               (_%g198969199022%_ _%g198970199025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g198968200187%_
                                            _%g197361197423%_))
                                         _%stx197351%_))))))))
                  (_%__kont200414200415%_ (lambda () _%stx197351%_)))
              (let ((_%__match200443200444%_
                     (lambda (_%e197363197391%_
                              _%hd197364197394%_
                              _%tl197365197396%_
                              _%e197366197399%_
                              _%hd197367197402%_
                              _%tl197368197404%_
                              _%e197369197407%_
                              _%hd197370197410%_
                              _%tl197371197412%_
                              _%e197372197415%_
                              _%hd197373197418%_
                              _%tl197374197420%_)
                       (let ((_%g197361197423%_ _%hd197373197418%_)
                             (_%g197362197424%_ _%hd197370197410%_))
                         (if (let ((__tmp201648
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g197362197424%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp201648))
                             (_%__kont200412200413%_
                              _%g197361197423%_
                              _%g197362197424%_)
                             (_%__kont200414200415%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200410200411%_))
                    (let ((_%e197363197391%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200410200411%_))))
                      (let ((_%tl197365197396%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197363197391%_)))
                            (_%hd197364197394%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197363197391%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197365197396%_))
                            (let ((_%e197366197399%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197365197396%_))))
                              (let ((_%tl197368197404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197366197399%_)))
                                    (_%hd197367197402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197366197399%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197367197402%_))
                                    (let ((_%e197369197407%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197367197402%_))))
                                      (let ((_%tl197371197412%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197369197407%_)))
                                            (_%hd197370197410%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197369197407%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197371197412%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197368197404%_))
                                                (let ((_%e197372197415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197368197404%_))))
                                                  (let ((_%tl197374197420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197372197415%_)))
                                                        (_%hd197373197418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197372197415%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197374197420%_))
                                                        (_%__match200443200444%_
                                                         _%e197363197391%_
                                                         _%hd197364197394%_
                                                         _%tl197365197396%_
                                                         _%e197366197399%_
                                                         _%hd197367197402%_
                                                         _%tl197368197404%_
                                                         _%e197369197407%_
                                                         _%hd197370197410%_
                                                         _%tl197371197412%_
                                                         _%e197372197415%_
                                                         _%hd197373197418%_
                                                         _%tl197374197420%_)
                                                        (_%__kont200414200415%_))))
                                                (_%__kont200414200415%_))
                                            (_%__kont200414200415%_))))
                                    (_%__kont200414200415%_))))
                            (_%__kont200414200415%_))))
                    (_%__kont200414200415%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self197203%_ _%stx197204%_)
        (let* ((_%__stx200446200447%_ _%stx197204%_)
               (_%g197207197240%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200446200447%_)))))
          (let ((_%__kont200448200449%_
                 (lambda (_%g197209197330%_) _%g197209197330%_))
                (_%__kont200450200451%_
                 (lambda (_%g197225197269%_ _%g197226197270%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197203%_ _%g197225197269%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200446200447%_))
                (let ((_%e197210197290%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200446200447%_))))
                  (let ((_%tl197212197295%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197210197290%_)))
                        (_%hd197211197293%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197210197290%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197212197295%_))
                        (let ((_%e197213197298%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197212197295%_))))
                          (let ((_%tl197215197303%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197213197298%_)))
                                (_%hd197214197301%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197213197298%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197214197301%_))
                                (let ((_%e197216197306%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197214197301%_))))
                                  (let ((_%tl197218197311%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197216197306%_)))
                                        (_%hd197217197309%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197216197306%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197217197309%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd197217197309%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197218197311%_))
                                                (let ((_%e197219197314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197218197311%_))))
                                                  (let ((_%tl197221197319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197219197314%_)))
                                                        (_%hd197220197317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197219197314%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197221197319%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197215197303%_))
                                                            (let ((_%e197222197322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197215197303%_))))
                      (let ((_%tl197224197327%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197222197322%_)))
                            (_%hd197223197325%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197222197322%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197224197327%_))
                            (_%__kont200448200449%_ _%hd197220197317%_)
                            (let ()
                              (declare (not safe))
                              (_%g197207197240%_)))))
                    (let () (declare (not safe)) (_%g197207197240%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197215197303%_))
                    (let ((_%e197233197261%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197215197303%_))))
                      (let ((_%tl197235197266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197233197261%_)))
                            (_%hd197234197264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197233197261%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197235197266%_))
                            (_%__kont200450200451%_
                             _%hd197234197264%_
                             _%hd197214197301%_)
                            (let ()
                              (declare (not safe))
                              (_%g197207197240%_)))))
                    (let () (declare (not safe)) (_%g197207197240%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197215197303%_))
                                                    (let ((_%e197233197261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197215197303%_))))
                                                      (let ((_%tl197235197266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197233197261%_)))
                    (_%hd197234197264%_
                     (let () (declare (not safe)) (##car _%e197233197261%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197235197266%_))
                    (_%__kont200450200451%_
                     _%hd197234197264%_
                     _%hd197214197301%_)
                    (let () (declare (not safe)) (_%g197207197240%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197207197240%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197215197303%_))
                                                (let ((_%e197233197261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197215197303%_))))
                                                  (let ((_%tl197235197266%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197233197261%_)))
                                                        (_%hd197234197264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197233197261%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197235197266%_))
                                                        (_%__kont200450200451%_
                                                         _%hd197234197264%_
                                                         _%hd197214197301%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197207197240%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197207197240%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197215197303%_))
                                            (let ((_%e197233197261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197215197303%_))))
                                              (let ((_%tl197235197266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197233197261%_)))
                                                    (_%hd197234197264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197233197261%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197235197266%_))
                                                    (_%__kont200450200451%_
                                                     _%hd197234197264%_
                                                     _%hd197214197301%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197207197240%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197207197240%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197215197303%_))
                                    (let ((_%e197233197261%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197215197303%_))))
                                      (let ((_%tl197235197266%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197233197261%_)))
                                            (_%hd197234197264%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197233197261%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197235197266%_))
                                            (_%__kont200450200451%_
                                             _%hd197234197264%_
                                             _%hd197214197301%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197207197240%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197207197240%_))))))
                        (let () (declare (not safe)) (_%g197207197240%_)))))
                (let () (declare (not safe)) (_%g197207197240%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self197119%_ _%stx197120%_)
        (let* ((_%g197122197143%_
                (lambda (_%g197123197140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197123197140%_))))
               (_%g197121197200%_
                (lambda (_%g197123197146%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197123197146%_))
                      (let ((_%e197127197148%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197123197146%_))))
                        (let ((_%hd197128197151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197127197148%_)))
                              (_%tl197129197153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197127197148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197129197153%_))
                              (let ((_%e197130197156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197129197153%_))))
                                (let ((_%hd197131197159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197130197156%_)))
                                      (_%tl197132197161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197130197156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197132197161%_))
                                      (let ((_%e197133197164%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197132197161%_))))
                                        (let ((_%hd197134197167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197133197164%_)))
                                              (_%tl197135197169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197133197164%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197135197169%_))
                                              (let ((_%e197136197172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197135197169%_))))
                                                (let ((_%hd197137197175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197136197172%_)))
                                                      (_%tl197138197177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197136197172%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197138197177%_))
                                                      ((lambda (_%g197124197180%_
                                                                _%g197125197181%_
                                                                _%g197126197182%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self197119%_
                                                            _%g197125197181%_)))
                                                       _%hd197137197175%_
                                                       _%hd197134197167%_
                                                       _%hd197131197159%_)
                                                      (_%g197122197143%_
                                                       _%g197123197146%_))))
                                              (_%g197122197143%_
                                               _%g197123197146%_))))
                                      (_%g197122197143%_ _%g197123197146%_))))
                              (_%g197122197143%_ _%g197123197146%_))))
                      (_%g197122197143%_ _%g197123197146%_)))))
          (_%g197121197200%_ _%stx197120%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self196084%_ _%stx196085%_)
        (let* ((_%__stx200512200513%_ _%stx196085%_)
               (_%g196093196315%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200512200513%_)))))
          (let ((_%__kont200514200515%_
                 (lambda (_%g196095197068%_
                          _%g196096197069%_
                          _%g196097197070%_
                          _%g196098197071%_)
                   (let ((__tmp201650
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196084%_ 'methods)))
                         (__tmp201649
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196096197069%_))))
                     (declare (not safe))
                     (hash-put! __tmp201650 __tmp201649 '#t))
                   (for-each
                    (lambda (_%g197104197106%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196084%_ _%g197104197106%_)))
                    (let ((__tmp201651
                           (lambda (_%g197108197111%_ _%g197109197113%_)
                             (cons _%g197108197111%_ _%g197109197113%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201651 '() _%g196095197068%_)))))
                (_%__kont200518200519%_
                 (lambda (_%g196138196905%_
                          _%g196139196906%_
                          _%g196140196907%_
                          _%g196141196908%_
                          _%g196142196909%_)
                   (let ((__tmp201653
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196084%_ 'methods)))
                         (__tmp201652
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196139196906%_))))
                     (declare (not safe))
                     (hash-put! __tmp201653 __tmp201652 '#t))
                   (for-each
                    (lambda (_%g196949196951%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196084%_ _%g196949196951%_)))
                    (let ((__tmp201654
                           (lambda (_%g196953196956%_ _%g196954196958%_)
                             (cons _%g196953196956%_ _%g196954196958%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201654 '() _%g196138196905%_)))))
                (_%__kont200522200523%_
                 (lambda (_%g196191196740%_
                          _%g196192196741%_
                          _%g196193196742%_)
                   (let ((__tmp201656
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196084%_ 'slots)))
                         (__tmp201655
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196191196740%_))))
                     (declare (not safe))
                     (hash-put! __tmp201656 __tmp201655 '#t))))
                (_%__kont200524200525%_
                 (lambda (_%g196224196617%_
                          _%g196225196618%_
                          _%g196226196619%_
                          _%g196227196620%_)
                   (let ((__tmp201658
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196084%_ 'slots)))
                         (__tmp201657
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196225196618%_))))
                     (declare (not safe))
                     (hash-put! __tmp201658 __tmp201657 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self196084%_ _%g196224196617%_))))
                (_%__kont200526200527%_
                 (lambda (_%g196261196491%_ _%g196262196492%_)
                   (let* ((_%accessor196514%_
                           (let ((__tmp201659
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196262196492%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201659)))
                          (_%klass196516%_
                           (let ((__tmp201660
                                  (##structure-ref
                                   _%accessor196514%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196085%_
                              __tmp201660)))
                          (_%slot196518%_
                           (##structure-ref
                            _%accessor196514%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor196514%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196516%_
                                    _%slot196518%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196516%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201662
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196084%_ 'slots)))
                               (__tmp201661
                                (##structure-ref
                                 _%accessor196514%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp201662 __tmp201661 '#t))))))
                (_%__kont200528200529%_
                 (lambda (_%g196284196391%_
                          _%g196285196392%_
                          _%g196286196393%_)
                   (let* ((_%mutator196420%_
                           (let ((__tmp201663
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196286196393%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201663)))
                          (_%klass196422%_
                           (let ((__tmp201664
                                  (##structure-ref
                                   _%mutator196420%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196085%_
                              __tmp201664)))
                          (_%slot196424%_
                           (##structure-ref
                            _%mutator196420%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator196420%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196422%_
                                    _%slot196424%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196422%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201665
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196084%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp201665 _%slot196424%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self196084%_ _%g196284196391%_)))))
                (_%__kont200530200531%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self196084%_ _%stx196085%_)))))
            (let* ((_%__match201011201012%_
                    (lambda (_%e196287196327%_
                             _%hd196288196330%_
                             _%tl196289196332%_
                             _%e196290196335%_
                             _%hd196291196338%_
                             _%tl196292196340%_
                             _%e196293196343%_
                             _%hd196294196346%_
                             _%tl196295196348%_
                             _%e196296196351%_
                             _%hd196297196354%_
                             _%tl196298196356%_
                             _%e196299196359%_
                             _%hd196300196362%_
                             _%tl196301196364%_
                             _%e196302196367%_
                             _%hd196303196370%_
                             _%tl196304196372%_
                             _%e196305196375%_
                             _%hd196306196378%_
                             _%tl196307196380%_
                             _%e196308196383%_
                             _%hd196309196386%_
                             _%tl196310196388%_)
                      (let ((_%g196284196391%_ _%hd196309196386%_)
                            (_%g196285196392%_ _%hd196306196378%_)
                            (_%g196286196393%_ _%hd196297196354%_))
                        (if (and (let ((__tmp201666
                                        (let ((__tmp201667
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196286196393%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201667))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201666
                                    'gxc#!mutator::t))
                                 (let ((__tmp201668
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196084%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196285196392%_
                                    __tmp201668)))
                            (_%__kont200528200529%_
                             _%g196284196391%_
                             _%g196285196392%_
                             _%g196286196393%_)
                            (_%__kont200530200531%_)))))
                   (_%__match201009201010%_
                    (lambda (_%e196287196327%_
                             _%hd196288196330%_
                             _%tl196289196332%_
                             _%e196290196335%_
                             _%hd196291196338%_
                             _%tl196292196340%_
                             _%e196293196343%_
                             _%hd196294196346%_
                             _%tl196295196348%_
                             _%e196296196351%_
                             _%hd196297196354%_
                             _%tl196298196356%_
                             _%e196299196359%_
                             _%hd196300196362%_
                             _%tl196301196364%_
                             _%e196302196367%_
                             _%hd196303196370%_
                             _%tl196304196372%_
                             _%e196305196375%_
                             _%hd196306196378%_
                             _%tl196307196380%_
                             _%e196308196383%_
                             _%hd196309196386%_
                             _%tl196310196388%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196310196388%_))
                          (_%__match201011201012%_
                           _%e196287196327%_
                           _%hd196288196330%_
                           _%tl196289196332%_
                           _%e196290196335%_
                           _%hd196291196338%_
                           _%tl196292196340%_
                           _%e196293196343%_
                           _%hd196294196346%_
                           _%tl196295196348%_
                           _%e196296196351%_
                           _%hd196297196354%_
                           _%tl196298196356%_
                           _%e196299196359%_
                           _%hd196300196362%_
                           _%tl196301196364%_
                           _%e196302196367%_
                           _%hd196303196370%_
                           _%tl196304196372%_
                           _%e196305196375%_
                           _%hd196306196378%_
                           _%tl196307196380%_
                           _%e196308196383%_
                           _%hd196309196386%_
                           _%tl196310196388%_)
                          (_%__kont200530200531%_))))
                   (_%__match201003201004%_
                    (lambda (_%e196287196327%_
                             _%hd196288196330%_
                             _%tl196289196332%_
                             _%e196290196335%_
                             _%hd196291196338%_
                             _%tl196292196340%_
                             _%e196293196343%_
                             _%hd196294196346%_
                             _%tl196295196348%_
                             _%e196296196351%_
                             _%hd196297196354%_
                             _%tl196298196356%_
                             _%e196299196359%_
                             _%hd196300196362%_
                             _%tl196301196364%_
                             _%e196302196367%_
                             _%hd196303196370%_
                             _%tl196304196372%_
                             _%e196305196375%_
                             _%hd196306196378%_
                             _%tl196307196380%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196301196364%_))
                          (let ((_%e196308196383%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196301196364%_))))
                            (let ((_%tl196310196388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196308196383%_)))
                                  (_%hd196309196386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196308196383%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196310196388%_))
                                  (_%__match201011201012%_
                                   _%e196287196327%_
                                   _%hd196288196330%_
                                   _%tl196289196332%_
                                   _%e196290196335%_
                                   _%hd196291196338%_
                                   _%tl196292196340%_
                                   _%e196293196343%_
                                   _%hd196294196346%_
                                   _%tl196295196348%_
                                   _%e196296196351%_
                                   _%hd196297196354%_
                                   _%tl196298196356%_
                                   _%e196299196359%_
                                   _%hd196300196362%_
                                   _%tl196301196364%_
                                   _%e196302196367%_
                                   _%hd196303196370%_
                                   _%tl196304196372%_
                                   _%e196305196375%_
                                   _%hd196306196378%_
                                   _%tl196307196380%_
                                   _%e196308196383%_
                                   _%hd196309196386%_
                                   _%tl196310196388%_)
                                  (_%__kont200530200531%_))))
                          (_%__kont200530200531%_))))
                   (_%__match200949200950%_
                    (lambda (_%e196263196435%_
                             _%hd196264196438%_
                             _%tl196265196440%_
                             _%e196266196443%_
                             _%hd196267196446%_
                             _%tl196268196448%_
                             _%e196269196451%_
                             _%hd196270196454%_
                             _%tl196271196456%_
                             _%e196272196459%_
                             _%hd196273196462%_
                             _%tl196274196464%_
                             _%e196275196467%_
                             _%hd196276196470%_
                             _%tl196277196472%_
                             _%e196278196475%_
                             _%hd196279196478%_
                             _%tl196280196480%_
                             _%e196281196483%_
                             _%hd196282196486%_
                             _%tl196283196488%_)
                      (let ((_%g196261196491%_ _%hd196282196486%_)
                            (_%g196262196492%_ _%hd196273196462%_))
                        (if (and (let ((__tmp201669
                                        (let ((__tmp201670
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196262196492%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201670))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201669
                                    'gxc#!accessor::t))
                                 (let ((__tmp201671
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196084%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196261196491%_
                                    __tmp201671)))
                            (_%__kont200526200527%_
                             _%g196261196491%_
                             _%g196262196492%_)
                            (_%__kont200530200531%_)))))
                   (_%__match200947200948%_
                    (lambda (_%e196263196435%_
                             _%hd196264196438%_
                             _%tl196265196440%_
                             _%e196266196443%_
                             _%hd196267196446%_
                             _%tl196268196448%_
                             _%e196269196451%_
                             _%hd196270196454%_
                             _%tl196271196456%_
                             _%e196272196459%_
                             _%hd196273196462%_
                             _%tl196274196464%_
                             _%e196275196467%_
                             _%hd196276196470%_
                             _%tl196277196472%_
                             _%e196278196475%_
                             _%hd196279196478%_
                             _%tl196280196480%_
                             _%e196281196483%_
                             _%hd196282196486%_
                             _%tl196283196488%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196277196472%_))
                          (_%__match200949200950%_
                           _%e196263196435%_
                           _%hd196264196438%_
                           _%tl196265196440%_
                           _%e196266196443%_
                           _%hd196267196446%_
                           _%tl196268196448%_
                           _%e196269196451%_
                           _%hd196270196454%_
                           _%tl196271196456%_
                           _%e196272196459%_
                           _%hd196273196462%_
                           _%tl196274196464%_
                           _%e196275196467%_
                           _%hd196276196470%_
                           _%tl196277196472%_
                           _%e196278196475%_
                           _%hd196279196478%_
                           _%tl196280196480%_
                           _%e196281196483%_
                           _%hd196282196486%_
                           _%tl196283196488%_)
                          (_%__match201003201004%_
                           _%e196263196435%_
                           _%hd196264196438%_
                           _%tl196265196440%_
                           _%e196266196443%_
                           _%hd196267196446%_
                           _%tl196268196448%_
                           _%e196269196451%_
                           _%hd196270196454%_
                           _%tl196271196456%_
                           _%e196272196459%_
                           _%hd196273196462%_
                           _%tl196274196464%_
                           _%e196275196467%_
                           _%hd196276196470%_
                           _%tl196277196472%_
                           _%e196278196475%_
                           _%hd196279196478%_
                           _%tl196280196480%_
                           _%e196281196483%_
                           _%hd196282196486%_
                           _%tl196283196488%_))))
                   (_%__match200893200894%_
                    (lambda (_%e196228196529%_
                             _%hd196229196532%_
                             _%tl196230196534%_
                             _%e196231196537%_
                             _%hd196232196540%_
                             _%tl196233196542%_
                             _%e196234196545%_
                             _%hd196235196548%_
                             _%tl196236196550%_
                             _%e196237196553%_
                             _%hd196238196556%_
                             _%tl196239196558%_
                             _%e196240196561%_
                             _%hd196241196564%_
                             _%tl196242196566%_
                             _%e196243196569%_
                             _%hd196244196572%_
                             _%tl196245196574%_
                             _%e196246196577%_
                             _%hd196247196580%_
                             _%tl196248196582%_
                             _%e196249196585%_
                             _%hd196250196588%_
                             _%tl196251196590%_
                             _%e196252196593%_
                             _%hd196253196596%_
                             _%tl196254196598%_
                             _%e196255196601%_
                             _%hd196256196604%_
                             _%tl196257196606%_
                             _%e196258196609%_
                             _%hd196259196612%_
                             _%tl196260196614%_)
                      (let ((_%g196224196617%_ _%hd196259196612%_)
                            (_%g196225196618%_ _%hd196256196604%_)
                            (_%g196226196619%_ _%hd196247196580%_)
                            (_%g196227196620%_ _%hd196238196556%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196227196620%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196227196620%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp201672
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196084%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196226196619%_
                                    __tmp201672)))
                            (_%__kont200524200525%_
                             _%g196224196617%_
                             _%g196225196618%_
                             _%g196226196619%_
                             _%g196227196620%_)
                            (_%__kont200530200531%_)))))
                   (_%__match200885200886%_
                    (lambda (_%e196228196529%_
                             _%hd196229196532%_
                             _%tl196230196534%_
                             _%e196231196537%_
                             _%hd196232196540%_
                             _%tl196233196542%_
                             _%e196234196545%_
                             _%hd196235196548%_
                             _%tl196236196550%_
                             _%e196237196553%_
                             _%hd196238196556%_
                             _%tl196239196558%_
                             _%e196240196561%_
                             _%hd196241196564%_
                             _%tl196242196566%_
                             _%e196243196569%_
                             _%hd196244196572%_
                             _%tl196245196574%_
                             _%e196246196577%_
                             _%hd196247196580%_
                             _%tl196248196582%_
                             _%e196249196585%_
                             _%hd196250196588%_
                             _%tl196251196590%_
                             _%e196252196593%_
                             _%hd196253196596%_
                             _%tl196254196598%_
                             _%e196255196601%_
                             _%hd196256196604%_
                             _%tl196257196606%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196251196590%_))
                          (let ((_%e196258196609%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196251196590%_))))
                            (let ((_%tl196260196614%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196258196609%_)))
                                  (_%hd196259196612%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196258196609%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196260196614%_))
                                  (_%__match200893200894%_
                                   _%e196228196529%_
                                   _%hd196229196532%_
                                   _%tl196230196534%_
                                   _%e196231196537%_
                                   _%hd196232196540%_
                                   _%tl196233196542%_
                                   _%e196234196545%_
                                   _%hd196235196548%_
                                   _%tl196236196550%_
                                   _%e196237196553%_
                                   _%hd196238196556%_
                                   _%tl196239196558%_
                                   _%e196240196561%_
                                   _%hd196241196564%_
                                   _%tl196242196566%_
                                   _%e196243196569%_
                                   _%hd196244196572%_
                                   _%tl196245196574%_
                                   _%e196246196577%_
                                   _%hd196247196580%_
                                   _%tl196248196582%_
                                   _%e196249196585%_
                                   _%hd196250196588%_
                                   _%tl196251196590%_
                                   _%e196252196593%_
                                   _%hd196253196596%_
                                   _%tl196254196598%_
                                   _%e196255196601%_
                                   _%hd196256196604%_
                                   _%tl196257196606%_
                                   _%e196258196609%_
                                   _%hd196259196612%_
                                   _%tl196260196614%_)
                                  (_%__kont200530200531%_))))
                          (_%__match201009201010%_
                           _%e196228196529%_
                           _%hd196229196532%_
                           _%tl196230196534%_
                           _%e196231196537%_
                           _%hd196232196540%_
                           _%tl196233196542%_
                           _%e196234196545%_
                           _%hd196235196548%_
                           _%tl196236196550%_
                           _%e196237196553%_
                           _%hd196238196556%_
                           _%tl196239196558%_
                           _%e196240196561%_
                           _%hd196241196564%_
                           _%tl196242196566%_
                           _%e196243196569%_
                           _%hd196244196572%_
                           _%tl196245196574%_
                           _%e196246196577%_
                           _%hd196247196580%_
                           _%tl196248196582%_
                           _%e196249196585%_
                           _%hd196250196588%_
                           _%tl196251196590%_))))
                   (_%__match200807200808%_
                    (lambda (_%e196194196660%_
                             _%hd196195196663%_
                             _%tl196196196665%_
                             _%e196197196668%_
                             _%hd196198196671%_
                             _%tl196199196673%_
                             _%e196200196676%_
                             _%hd196201196679%_
                             _%tl196202196681%_
                             _%e196203196684%_
                             _%hd196204196687%_
                             _%tl196205196689%_
                             _%e196206196692%_
                             _%hd196207196695%_
                             _%tl196208196697%_
                             _%e196209196700%_
                             _%hd196210196703%_
                             _%tl196211196705%_
                             _%e196212196708%_
                             _%hd196213196711%_
                             _%tl196214196713%_
                             _%e196215196716%_
                             _%hd196216196719%_
                             _%tl196217196721%_
                             _%e196218196724%_
                             _%hd196219196727%_
                             _%tl196220196729%_
                             _%e196221196732%_
                             _%hd196222196735%_
                             _%tl196223196737%_)
                      (let ((_%g196191196740%_ _%hd196222196735%_)
                            (_%g196192196741%_ _%hd196213196711%_)
                            (_%g196193196742%_ _%hd196204196687%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196193196742%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196193196742%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp201673
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196084%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196192196741%_
                                    __tmp201673)))
                            (_%__kont200522200523%_
                             _%g196191196740%_
                             _%g196192196741%_
                             _%g196193196742%_)
                            (_%__match201011201012%_
                             _%e196194196660%_
                             _%hd196195196663%_
                             _%tl196196196665%_
                             _%e196197196668%_
                             _%hd196198196671%_
                             _%tl196199196673%_
                             _%e196200196676%_
                             _%hd196201196679%_
                             _%tl196202196681%_
                             _%e196203196684%_
                             _%hd196204196687%_
                             _%tl196205196689%_
                             _%e196206196692%_
                             _%hd196207196695%_
                             _%tl196208196697%_
                             _%e196209196700%_
                             _%hd196210196703%_
                             _%tl196211196705%_
                             _%e196212196708%_
                             _%hd196213196711%_
                             _%tl196214196713%_
                             _%e196215196716%_
                             _%hd196216196719%_
                             _%tl196217196721%_)))))
                   (_%__match200805200806%_
                    (lambda (_%e196194196660%_
                             _%hd196195196663%_
                             _%tl196196196665%_
                             _%e196197196668%_
                             _%hd196198196671%_
                             _%tl196199196673%_
                             _%e196200196676%_
                             _%hd196201196679%_
                             _%tl196202196681%_
                             _%e196203196684%_
                             _%hd196204196687%_
                             _%tl196205196689%_
                             _%e196206196692%_
                             _%hd196207196695%_
                             _%tl196208196697%_
                             _%e196209196700%_
                             _%hd196210196703%_
                             _%tl196211196705%_
                             _%e196212196708%_
                             _%hd196213196711%_
                             _%tl196214196713%_
                             _%e196215196716%_
                             _%hd196216196719%_
                             _%tl196217196721%_
                             _%e196218196724%_
                             _%hd196219196727%_
                             _%tl196220196729%_
                             _%e196221196732%_
                             _%hd196222196735%_
                             _%tl196223196737%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196217196721%_))
                          (_%__match200807200808%_
                           _%e196194196660%_
                           _%hd196195196663%_
                           _%tl196196196665%_
                           _%e196197196668%_
                           _%hd196198196671%_
                           _%tl196199196673%_
                           _%e196200196676%_
                           _%hd196201196679%_
                           _%tl196202196681%_
                           _%e196203196684%_
                           _%hd196204196687%_
                           _%tl196205196689%_
                           _%e196206196692%_
                           _%hd196207196695%_
                           _%tl196208196697%_
                           _%e196209196700%_
                           _%hd196210196703%_
                           _%tl196211196705%_
                           _%e196212196708%_
                           _%hd196213196711%_
                           _%tl196214196713%_
                           _%e196215196716%_
                           _%hd196216196719%_
                           _%tl196217196721%_
                           _%e196218196724%_
                           _%hd196219196727%_
                           _%tl196220196729%_
                           _%e196221196732%_
                           _%hd196222196735%_
                           _%tl196223196737%_)
                          (_%__match200885200886%_
                           _%e196194196660%_
                           _%hd196195196663%_
                           _%tl196196196665%_
                           _%e196197196668%_
                           _%hd196198196671%_
                           _%tl196199196673%_
                           _%e196200196676%_
                           _%hd196201196679%_
                           _%tl196202196681%_
                           _%e196203196684%_
                           _%hd196204196687%_
                           _%tl196205196689%_
                           _%e196206196692%_
                           _%hd196207196695%_
                           _%tl196208196697%_
                           _%e196209196700%_
                           _%hd196210196703%_
                           _%tl196211196705%_
                           _%e196212196708%_
                           _%hd196213196711%_
                           _%tl196214196713%_
                           _%e196215196716%_
                           _%hd196216196719%_
                           _%tl196217196721%_
                           _%e196218196724%_
                           _%hd196219196727%_
                           _%tl196220196729%_
                           _%e196221196732%_
                           _%hd196222196735%_
                           _%tl196223196737%_))))
                   (_%__match200795200796%_
                    (lambda (_%e196194196660%_
                             _%hd196195196663%_
                             _%tl196196196665%_
                             _%e196197196668%_
                             _%hd196198196671%_
                             _%tl196199196673%_
                             _%e196200196676%_
                             _%hd196201196679%_
                             _%tl196202196681%_
                             _%e196203196684%_
                             _%hd196204196687%_
                             _%tl196205196689%_
                             _%e196206196692%_
                             _%hd196207196695%_
                             _%tl196208196697%_
                             _%e196209196700%_
                             _%hd196210196703%_
                             _%tl196211196705%_
                             _%e196212196708%_
                             _%hd196213196711%_
                             _%tl196214196713%_
                             _%e196215196716%_
                             _%hd196216196719%_
                             _%tl196217196721%_
                             _%e196218196724%_
                             _%hd196219196727%_
                             _%tl196220196729%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd196219196727%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196220196729%_))
                              (let ((_%e196221196732%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196220196729%_))))
                                (let ((_%tl196223196737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196221196732%_)))
                                      (_%hd196222196735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196221196732%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196223196737%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196217196721%_))
                                          (_%__match200807200808%_
                                           _%e196194196660%_
                                           _%hd196195196663%_
                                           _%tl196196196665%_
                                           _%e196197196668%_
                                           _%hd196198196671%_
                                           _%tl196199196673%_
                                           _%e196200196676%_
                                           _%hd196201196679%_
                                           _%tl196202196681%_
                                           _%e196203196684%_
                                           _%hd196204196687%_
                                           _%tl196205196689%_
                                           _%e196206196692%_
                                           _%hd196207196695%_
                                           _%tl196208196697%_
                                           _%e196209196700%_
                                           _%hd196210196703%_
                                           _%tl196211196705%_
                                           _%e196212196708%_
                                           _%hd196213196711%_
                                           _%tl196214196713%_
                                           _%e196215196716%_
                                           _%hd196216196719%_
                                           _%tl196217196721%_
                                           _%e196218196724%_
                                           _%hd196219196727%_
                                           _%tl196220196729%_
                                           _%e196221196732%_
                                           _%hd196222196735%_
                                           _%tl196223196737%_)
                                          (_%__match200885200886%_
                                           _%e196194196660%_
                                           _%hd196195196663%_
                                           _%tl196196196665%_
                                           _%e196197196668%_
                                           _%hd196198196671%_
                                           _%tl196199196673%_
                                           _%e196200196676%_
                                           _%hd196201196679%_
                                           _%tl196202196681%_
                                           _%e196203196684%_
                                           _%hd196204196687%_
                                           _%tl196205196689%_
                                           _%e196206196692%_
                                           _%hd196207196695%_
                                           _%tl196208196697%_
                                           _%e196209196700%_
                                           _%hd196210196703%_
                                           _%tl196211196705%_
                                           _%e196212196708%_
                                           _%hd196213196711%_
                                           _%tl196214196713%_
                                           _%e196215196716%_
                                           _%hd196216196719%_
                                           _%tl196217196721%_
                                           _%e196218196724%_
                                           _%hd196219196727%_
                                           _%tl196220196729%_
                                           _%e196221196732%_
                                           _%hd196222196735%_
                                           _%tl196223196737%_))
                                      (_%__match201009201010%_
                                       _%e196194196660%_
                                       _%hd196195196663%_
                                       _%tl196196196665%_
                                       _%e196197196668%_
                                       _%hd196198196671%_
                                       _%tl196199196673%_
                                       _%e196200196676%_
                                       _%hd196201196679%_
                                       _%tl196202196681%_
                                       _%e196203196684%_
                                       _%hd196204196687%_
                                       _%tl196205196689%_
                                       _%e196206196692%_
                                       _%hd196207196695%_
                                       _%tl196208196697%_
                                       _%e196209196700%_
                                       _%hd196210196703%_
                                       _%tl196211196705%_
                                       _%e196212196708%_
                                       _%hd196213196711%_
                                       _%tl196214196713%_
                                       _%e196215196716%_
                                       _%hd196216196719%_
                                       _%tl196217196721%_))))
                              (_%__match201009201010%_
                               _%e196194196660%_
                               _%hd196195196663%_
                               _%tl196196196665%_
                               _%e196197196668%_
                               _%hd196198196671%_
                               _%tl196199196673%_
                               _%e196200196676%_
                               _%hd196201196679%_
                               _%tl196202196681%_
                               _%e196203196684%_
                               _%hd196204196687%_
                               _%tl196205196689%_
                               _%e196206196692%_
                               _%hd196207196695%_
                               _%tl196208196697%_
                               _%e196209196700%_
                               _%hd196210196703%_
                               _%tl196211196705%_
                               _%e196212196708%_
                               _%hd196213196711%_
                               _%tl196214196713%_
                               _%e196215196716%_
                               _%hd196216196719%_
                               _%tl196217196721%_))
                          (_%__match201009201010%_
                           _%e196194196660%_
                           _%hd196195196663%_
                           _%tl196196196665%_
                           _%e196197196668%_
                           _%hd196198196671%_
                           _%tl196199196673%_
                           _%e196200196676%_
                           _%hd196201196679%_
                           _%tl196202196681%_
                           _%e196203196684%_
                           _%hd196204196687%_
                           _%tl196205196689%_
                           _%e196206196692%_
                           _%hd196207196695%_
                           _%tl196208196697%_
                           _%e196209196700%_
                           _%hd196210196703%_
                           _%tl196211196705%_
                           _%e196212196708%_
                           _%hd196213196711%_
                           _%tl196214196713%_
                           _%e196215196716%_
                           _%hd196216196719%_
                           _%tl196217196721%_))))
                   (_%__match200727200728%_
                    (lambda (_%e196143196779%_
                             _%hd196144196782%_
                             _%tl196145196784%_
                             _%e196146196787%_
                             _%hd196147196790%_
                             _%tl196148196792%_
                             _%e196149196795%_
                             _%hd196150196798%_
                             _%tl196151196800%_
                             _%e196152196803%_
                             _%hd196153196806%_
                             _%tl196154196808%_
                             _%e196155196811%_
                             _%hd196156196814%_
                             _%tl196157196816%_
                             _%e196158196819%_
                             _%hd196159196822%_
                             _%tl196160196824%_
                             _%e196161196827%_
                             _%hd196162196830%_
                             _%tl196163196832%_
                             _%e196164196835%_
                             _%hd196165196838%_
                             _%tl196166196840%_
                             _%e196167196843%_
                             _%hd196168196846%_
                             _%tl196169196848%_
                             _%e196170196851%_
                             _%hd196171196854%_
                             _%tl196172196856%_
                             _%e196173196859%_
                             _%hd196174196862%_
                             _%tl196175196864%_
                             _%e196176196867%_
                             _%hd196177196870%_
                             _%tl196178196872%_
                             _%e196179196875%_
                             _%hd196180196878%_
                             _%tl196181196880%_
                             _%__splice200520200521%_
                             _%target196182196883%_
                             _%tl196184196885%_)
                      (letrec ((_%loop196185196888%_
                                (lambda (_%hd196183196891%_
                                         _%args196189196893%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196183196891%_))
                                      (let ((_%e196186196895%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196183196891%_))))
                                        (let ((_%lp-tl196188196900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196186196895%_)))
                                              (_%lp-hd196187196898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196186196895%_))))
                                          (_%loop196185196888%_
                                           _%lp-tl196188196900%_
                                           (cons _%lp-hd196187196898%_
                                                 _%args196189196893%_))))
                                      (let ((_%args196190196903%_
                                             (reverse _%args196189196893%_)))
                                        (let ((_%g196138196905%_
                                               _%args196190196903%_)
                                              (_%g196139196906%_
                                               _%hd196180196878%_)
                                              (_%g196140196907%_
                                               _%hd196171196854%_)
                                              (_%g196141196908%_
                                               _%hd196162196830%_)
                                              (_%g196142196909%_
                                               _%hd196153196806%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196142196909%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196141196908%_
                                                      'call-method))
                                                   (let ((__tmp201674
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196084%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196140196907%_
                                                      __tmp201674)))
                                              (_%__kont200518200519%_
                                               _%g196138196905%_
                                               _%g196139196906%_
                                               _%g196140196907%_
                                               _%g196141196908%_
                                               _%g196142196909%_)
                                              (_%__kont200530200531%_))))))))
                        (_%loop196185196888%_ _%target196182196883%_ '()))))
                   (_%__match200685200686%_
                    (lambda (_%e196143196779%_
                             _%hd196144196782%_
                             _%tl196145196784%_
                             _%e196146196787%_
                             _%hd196147196790%_
                             _%tl196148196792%_
                             _%e196149196795%_
                             _%hd196150196798%_
                             _%tl196151196800%_
                             _%e196152196803%_
                             _%hd196153196806%_
                             _%tl196154196808%_
                             _%e196155196811%_
                             _%hd196156196814%_
                             _%tl196157196816%_
                             _%e196158196819%_
                             _%hd196159196822%_
                             _%tl196160196824%_
                             _%e196161196827%_
                             _%hd196162196830%_
                             _%tl196163196832%_
                             _%e196164196835%_
                             _%hd196165196838%_
                             _%tl196166196840%_
                             _%e196167196843%_
                             _%hd196168196846%_
                             _%tl196169196848%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd196168196846%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196169196848%_))
                              (let ((_%e196170196851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196169196848%_))))
                                (let ((_%tl196172196856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196170196851%_)))
                                      (_%hd196171196854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196170196851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196172196856%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196166196840%_))
                                          (let ((_%e196173196859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196166196840%_))))
                                            (let ((_%tl196175196864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196173196859%_)))
                                                  (_%hd196174196862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196173196859%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196174196862%_))
                                                  (let ((_%e196176196867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196174196862%_))))
                                                    (let ((_%tl196178196872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196176196867%_)))
                                                          (_%hd196177196870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196176196867%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196177196870%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd196177196870%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196178196872%_))
                          (let ((_%e196179196875%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196178196872%_))))
                            (let ((_%tl196181196880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196179196875%_)))
                                  (_%hd196180196878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196179196875%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196181196880%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196175196864%_))
                                      (let ((_%__splice200520200521%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196175196864%_
                                                '0))))
                                        (let ((_%tl196184196885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200520200521%_
                                                  '1)))
                                              (_%target196182196883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200520200521%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196184196885%_))
                                              (_%__match200727200728%_
                                               _%e196143196779%_
                                               _%hd196144196782%_
                                               _%tl196145196784%_
                                               _%e196146196787%_
                                               _%hd196147196790%_
                                               _%tl196148196792%_
                                               _%e196149196795%_
                                               _%hd196150196798%_
                                               _%tl196151196800%_
                                               _%e196152196803%_
                                               _%hd196153196806%_
                                               _%tl196154196808%_
                                               _%e196155196811%_
                                               _%hd196156196814%_
                                               _%tl196157196816%_
                                               _%e196158196819%_
                                               _%hd196159196822%_
                                               _%tl196160196824%_
                                               _%e196161196827%_
                                               _%hd196162196830%_
                                               _%tl196163196832%_
                                               _%e196164196835%_
                                               _%hd196165196838%_
                                               _%tl196166196840%_
                                               _%e196167196843%_
                                               _%hd196168196846%_
                                               _%tl196169196848%_
                                               _%e196170196851%_
                                               _%hd196171196854%_
                                               _%tl196172196856%_
                                               _%e196173196859%_
                                               _%hd196174196862%_
                                               _%tl196175196864%_
                                               _%e196176196867%_
                                               _%hd196177196870%_
                                               _%tl196178196872%_
                                               _%e196179196875%_
                                               _%hd196180196878%_
                                               _%tl196181196880%_
                                               _%__splice200520200521%_
                                               _%target196182196883%_
                                               _%tl196184196885%_)
                                              (_%__kont200530200531%_))))
                                      (_%__kont200530200531%_))
                                  (_%__kont200530200531%_))))
                          (_%__kont200530200531%_))
                      (_%__kont200530200531%_))
                  (_%__kont200530200531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200530200531%_))))
                                          (_%__match201009201010%_
                                           _%e196143196779%_
                                           _%hd196144196782%_
                                           _%tl196145196784%_
                                           _%e196146196787%_
                                           _%hd196147196790%_
                                           _%tl196148196792%_
                                           _%e196149196795%_
                                           _%hd196150196798%_
                                           _%tl196151196800%_
                                           _%e196152196803%_
                                           _%hd196153196806%_
                                           _%tl196154196808%_
                                           _%e196155196811%_
                                           _%hd196156196814%_
                                           _%tl196157196816%_
                                           _%e196158196819%_
                                           _%hd196159196822%_
                                           _%tl196160196824%_
                                           _%e196161196827%_
                                           _%hd196162196830%_
                                           _%tl196163196832%_
                                           _%e196164196835%_
                                           _%hd196165196838%_
                                           _%tl196166196840%_))
                                      (_%__match201009201010%_
                                       _%e196143196779%_
                                       _%hd196144196782%_
                                       _%tl196145196784%_
                                       _%e196146196787%_
                                       _%hd196147196790%_
                                       _%tl196148196792%_
                                       _%e196149196795%_
                                       _%hd196150196798%_
                                       _%tl196151196800%_
                                       _%e196152196803%_
                                       _%hd196153196806%_
                                       _%tl196154196808%_
                                       _%e196155196811%_
                                       _%hd196156196814%_
                                       _%tl196157196816%_
                                       _%e196158196819%_
                                       _%hd196159196822%_
                                       _%tl196160196824%_
                                       _%e196161196827%_
                                       _%hd196162196830%_
                                       _%tl196163196832%_
                                       _%e196164196835%_
                                       _%hd196165196838%_
                                       _%tl196166196840%_))))
                              (_%__match201009201010%_
                               _%e196143196779%_
                               _%hd196144196782%_
                               _%tl196145196784%_
                               _%e196146196787%_
                               _%hd196147196790%_
                               _%tl196148196792%_
                               _%e196149196795%_
                               _%hd196150196798%_
                               _%tl196151196800%_
                               _%e196152196803%_
                               _%hd196153196806%_
                               _%tl196154196808%_
                               _%e196155196811%_
                               _%hd196156196814%_
                               _%tl196157196816%_
                               _%e196158196819%_
                               _%hd196159196822%_
                               _%tl196160196824%_
                               _%e196161196827%_
                               _%hd196162196830%_
                               _%tl196163196832%_
                               _%e196164196835%_
                               _%hd196165196838%_
                               _%tl196166196840%_))
                          (_%__match200795200796%_
                           _%e196143196779%_
                           _%hd196144196782%_
                           _%tl196145196784%_
                           _%e196146196787%_
                           _%hd196147196790%_
                           _%tl196148196792%_
                           _%e196149196795%_
                           _%hd196150196798%_
                           _%tl196151196800%_
                           _%e196152196803%_
                           _%hd196153196806%_
                           _%tl196154196808%_
                           _%e196155196811%_
                           _%hd196156196814%_
                           _%tl196157196816%_
                           _%e196158196819%_
                           _%hd196159196822%_
                           _%tl196160196824%_
                           _%e196161196827%_
                           _%hd196162196830%_
                           _%tl196163196832%_
                           _%e196164196835%_
                           _%hd196165196838%_
                           _%tl196166196840%_
                           _%e196167196843%_
                           _%hd196168196846%_
                           _%tl196169196848%_))))
                   (_%__match200617200618%_
                    (lambda (_%e196099196966%_
                             _%hd196100196969%_
                             _%tl196101196971%_
                             _%e196102196974%_
                             _%hd196103196977%_
                             _%tl196104196979%_
                             _%e196105196982%_
                             _%hd196106196985%_
                             _%tl196107196987%_
                             _%e196108196990%_
                             _%hd196109196993%_
                             _%tl196110196995%_
                             _%e196111196998%_
                             _%hd196112197001%_
                             _%tl196113197003%_
                             _%e196114197006%_
                             _%hd196115197009%_
                             _%tl196116197011%_
                             _%e196117197014%_
                             _%hd196118197017%_
                             _%tl196119197019%_
                             _%e196120197022%_
                             _%hd196121197025%_
                             _%tl196122197027%_
                             _%e196123197030%_
                             _%hd196124197033%_
                             _%tl196125197035%_
                             _%e196126197038%_
                             _%hd196127197041%_
                             _%tl196128197043%_
                             _%__splice200516200517%_
                             _%target196129197046%_
                             _%tl196131197048%_)
                      (letrec ((_%loop196132197051%_
                                (lambda (_%hd196130197054%_
                                         _%args196136197056%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196130197054%_))
                                      (let ((_%e196133197058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196130197054%_))))
                                        (let ((_%lp-tl196135197063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196133197058%_)))
                                              (_%lp-hd196134197061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196133197058%_))))
                                          (_%loop196132197051%_
                                           _%lp-tl196135197063%_
                                           (cons _%lp-hd196134197061%_
                                                 _%args196136197056%_))))
                                      (let ((_%args196137197066%_
                                             (reverse _%args196136197056%_)))
                                        (let ((_%g196095197068%_
                                               _%args196137197066%_)
                                              (_%g196096197069%_
                                               _%hd196127197041%_)
                                              (_%g196097197070%_
                                               _%hd196118197017%_)
                                              (_%g196098197071%_
                                               _%hd196109196993%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196098197071%_
                                                      'call-method))
                                                   (let ((__tmp201675
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196084%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196097197070%_
                                                      __tmp201675)))
                                              (_%__kont200514200515%_
                                               _%g196095197068%_
                                               _%g196096197069%_
                                               _%g196097197070%_
                                               _%g196098197071%_)
                                              (_%__match200805200806%_
                                               _%e196099196966%_
                                               _%hd196100196969%_
                                               _%tl196101196971%_
                                               _%e196102196974%_
                                               _%hd196103196977%_
                                               _%tl196104196979%_
                                               _%e196105196982%_
                                               _%hd196106196985%_
                                               _%tl196107196987%_
                                               _%e196108196990%_
                                               _%hd196109196993%_
                                               _%tl196110196995%_
                                               _%e196111196998%_
                                               _%hd196112197001%_
                                               _%tl196113197003%_
                                               _%e196114197006%_
                                               _%hd196115197009%_
                                               _%tl196116197011%_
                                               _%e196117197014%_
                                               _%hd196118197017%_
                                               _%tl196119197019%_
                                               _%e196120197022%_
                                               _%hd196121197025%_
                                               _%tl196122197027%_
                                               _%e196123197030%_
                                               _%hd196124197033%_
                                               _%tl196125197035%_
                                               _%e196126197038%_
                                               _%hd196127197041%_
                                               _%tl196128197043%_))))))))
                        (_%loop196132197051%_ _%target196129197046%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200512200513%_))
                  (let ((_%e196099196966%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200512200513%_))))
                    (let ((_%tl196101196971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196099196966%_)))
                          (_%hd196100196969%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196099196966%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196101196971%_))
                          (let ((_%e196102196974%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196101196971%_))))
                            (let ((_%tl196104196979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196102196974%_)))
                                  (_%hd196103196977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196102196974%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196103196977%_))
                                  (let ((_%e196105196982%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196103196977%_))))
                                    (let ((_%tl196107196987%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196105196982%_)))
                                          (_%hd196106196985%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196105196982%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196106196985%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196106196985%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196107196987%_))
                                                  (let ((_%e196108196990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196107196987%_))))
                                                    (let ((_%tl196110196995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196108196990%_)))
                                                          (_%hd196109196993%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196108196990%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196110196995%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196104196979%_))
                      (let ((_%e196111196998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196104196979%_))))
                        (let ((_%tl196113197003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196111196998%_)))
                              (_%hd196112197001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196111196998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196112197001%_))
                              (let ((_%e196114197006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196112197001%_))))
                                (let ((_%tl196116197011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196114197006%_)))
                                      (_%hd196115197009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196114197006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196115197009%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196115197009%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196116197011%_))
                                              (let ((_%e196117197014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196116197011%_))))
                                                (let ((_%tl196119197019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196117197014%_)))
                                                      (_%hd196118197017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196117197014%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196119197019%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196113197003%_))
                                                          (let ((_%e196120197022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196113197003%_))))
                    (let ((_%tl196122197027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196120197022%_)))
                          (_%hd196121197025%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196120197022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196121197025%_))
                          (let ((_%e196123197030%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196121197025%_))))
                            (let ((_%tl196125197035%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196123197030%_)))
                                  (_%hd196124197033%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196123197030%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196124197033%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196124197033%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196125197035%_))
                                          (let ((_%e196126197038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196125197035%_))))
                                            (let ((_%tl196128197043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196126197038%_)))
                                                  (_%hd196127197041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196126197038%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196128197043%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196122197027%_))
                                                      (let ((_%__splice200516200517%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl196122197027%_
                        '0))))
                (let ((_%tl196131197048%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200516200517%_ '1)))
                      (_%target196129197046%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200516200517%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196131197048%_))
                      (_%__match200617200618%_
                       _%e196099196966%_
                       _%hd196100196969%_
                       _%tl196101196971%_
                       _%e196102196974%_
                       _%hd196103196977%_
                       _%tl196104196979%_
                       _%e196105196982%_
                       _%hd196106196985%_
                       _%tl196107196987%_
                       _%e196108196990%_
                       _%hd196109196993%_
                       _%tl196110196995%_
                       _%e196111196998%_
                       _%hd196112197001%_
                       _%tl196113197003%_
                       _%e196114197006%_
                       _%hd196115197009%_
                       _%tl196116197011%_
                       _%e196117197014%_
                       _%hd196118197017%_
                       _%tl196119197019%_
                       _%e196120197022%_
                       _%hd196121197025%_
                       _%tl196122197027%_
                       _%e196123197030%_
                       _%hd196124197033%_
                       _%tl196125197035%_
                       _%e196126197038%_
                       _%hd196127197041%_
                       _%tl196128197043%_
                       _%__splice200516200517%_
                       _%target196129197046%_
                       _%tl196131197048%_)
                      (_%__match200805200806%_
                       _%e196099196966%_
                       _%hd196100196969%_
                       _%tl196101196971%_
                       _%e196102196974%_
                       _%hd196103196977%_
                       _%tl196104196979%_
                       _%e196105196982%_
                       _%hd196106196985%_
                       _%tl196107196987%_
                       _%e196108196990%_
                       _%hd196109196993%_
                       _%tl196110196995%_
                       _%e196111196998%_
                       _%hd196112197001%_
                       _%tl196113197003%_
                       _%e196114197006%_
                       _%hd196115197009%_
                       _%tl196116197011%_
                       _%e196117197014%_
                       _%hd196118197017%_
                       _%tl196119197019%_
                       _%e196120197022%_
                       _%hd196121197025%_
                       _%tl196122197027%_
                       _%e196123197030%_
                       _%hd196124197033%_
                       _%tl196125197035%_
                       _%e196126197038%_
                       _%hd196127197041%_
                       _%tl196128197043%_))))
              (_%__match200805200806%_
               _%e196099196966%_
               _%hd196100196969%_
               _%tl196101196971%_
               _%e196102196974%_
               _%hd196103196977%_
               _%tl196104196979%_
               _%e196105196982%_
               _%hd196106196985%_
               _%tl196107196987%_
               _%e196108196990%_
               _%hd196109196993%_
               _%tl196110196995%_
               _%e196111196998%_
               _%hd196112197001%_
               _%tl196113197003%_
               _%e196114197006%_
               _%hd196115197009%_
               _%tl196116197011%_
               _%e196117197014%_
               _%hd196118197017%_
               _%tl196119197019%_
               _%e196120197022%_
               _%hd196121197025%_
               _%tl196122197027%_
               _%e196123197030%_
               _%hd196124197033%_
               _%tl196125197035%_
               _%e196126197038%_
               _%hd196127197041%_
               _%tl196128197043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match201009201010%_
                                                   _%e196099196966%_
                                                   _%hd196100196969%_
                                                   _%tl196101196971%_
                                                   _%e196102196974%_
                                                   _%hd196103196977%_
                                                   _%tl196104196979%_
                                                   _%e196105196982%_
                                                   _%hd196106196985%_
                                                   _%tl196107196987%_
                                                   _%e196108196990%_
                                                   _%hd196109196993%_
                                                   _%tl196110196995%_
                                                   _%e196111196998%_
                                                   _%hd196112197001%_
                                                   _%tl196113197003%_
                                                   _%e196114197006%_
                                                   _%hd196115197009%_
                                                   _%tl196116197011%_
                                                   _%e196117197014%_
                                                   _%hd196118197017%_
                                                   _%tl196119197019%_
                                                   _%e196120197022%_
                                                   _%hd196121197025%_
                                                   _%tl196122197027%_))))
                                          (_%__match201009201010%_
                                           _%e196099196966%_
                                           _%hd196100196969%_
                                           _%tl196101196971%_
                                           _%e196102196974%_
                                           _%hd196103196977%_
                                           _%tl196104196979%_
                                           _%e196105196982%_
                                           _%hd196106196985%_
                                           _%tl196107196987%_
                                           _%e196108196990%_
                                           _%hd196109196993%_
                                           _%tl196110196995%_
                                           _%e196111196998%_
                                           _%hd196112197001%_
                                           _%tl196113197003%_
                                           _%e196114197006%_
                                           _%hd196115197009%_
                                           _%tl196116197011%_
                                           _%e196117197014%_
                                           _%hd196118197017%_
                                           _%tl196119197019%_
                                           _%e196120197022%_
                                           _%hd196121197025%_
                                           _%tl196122197027%_))
                                      (_%__match200685200686%_
                                       _%e196099196966%_
                                       _%hd196100196969%_
                                       _%tl196101196971%_
                                       _%e196102196974%_
                                       _%hd196103196977%_
                                       _%tl196104196979%_
                                       _%e196105196982%_
                                       _%hd196106196985%_
                                       _%tl196107196987%_
                                       _%e196108196990%_
                                       _%hd196109196993%_
                                       _%tl196110196995%_
                                       _%e196111196998%_
                                       _%hd196112197001%_
                                       _%tl196113197003%_
                                       _%e196114197006%_
                                       _%hd196115197009%_
                                       _%tl196116197011%_
                                       _%e196117197014%_
                                       _%hd196118197017%_
                                       _%tl196119197019%_
                                       _%e196120197022%_
                                       _%hd196121197025%_
                                       _%tl196122197027%_
                                       _%e196123197030%_
                                       _%hd196124197033%_
                                       _%tl196125197035%_))
                                  (_%__match201009201010%_
                                   _%e196099196966%_
                                   _%hd196100196969%_
                                   _%tl196101196971%_
                                   _%e196102196974%_
                                   _%hd196103196977%_
                                   _%tl196104196979%_
                                   _%e196105196982%_
                                   _%hd196106196985%_
                                   _%tl196107196987%_
                                   _%e196108196990%_
                                   _%hd196109196993%_
                                   _%tl196110196995%_
                                   _%e196111196998%_
                                   _%hd196112197001%_
                                   _%tl196113197003%_
                                   _%e196114197006%_
                                   _%hd196115197009%_
                                   _%tl196116197011%_
                                   _%e196117197014%_
                                   _%hd196118197017%_
                                   _%tl196119197019%_
                                   _%e196120197022%_
                                   _%hd196121197025%_
                                   _%tl196122197027%_))))
                          (_%__match201009201010%_
                           _%e196099196966%_
                           _%hd196100196969%_
                           _%tl196101196971%_
                           _%e196102196974%_
                           _%hd196103196977%_
                           _%tl196104196979%_
                           _%e196105196982%_
                           _%hd196106196985%_
                           _%tl196107196987%_
                           _%e196108196990%_
                           _%hd196109196993%_
                           _%tl196110196995%_
                           _%e196111196998%_
                           _%hd196112197001%_
                           _%tl196113197003%_
                           _%e196114197006%_
                           _%hd196115197009%_
                           _%tl196116197011%_
                           _%e196117197014%_
                           _%hd196118197017%_
                           _%tl196119197019%_
                           _%e196120197022%_
                           _%hd196121197025%_
                           _%tl196122197027%_))))
                  (_%__match200947200948%_
                   _%e196099196966%_
                   _%hd196100196969%_
                   _%tl196101196971%_
                   _%e196102196974%_
                   _%hd196103196977%_
                   _%tl196104196979%_
                   _%e196105196982%_
                   _%hd196106196985%_
                   _%tl196107196987%_
                   _%e196108196990%_
                   _%hd196109196993%_
                   _%tl196110196995%_
                   _%e196111196998%_
                   _%hd196112197001%_
                   _%tl196113197003%_
                   _%e196114197006%_
                   _%hd196115197009%_
                   _%tl196116197011%_
                   _%e196117197014%_
                   _%hd196118197017%_
                   _%tl196119197019%_))
              (_%__kont200530200531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200530200531%_))
                                          (_%__kont200530200531%_))
                                      (_%__kont200530200531%_))))
                              (_%__kont200530200531%_))))
                      (_%__kont200530200531%_))
                  (_%__kont200530200531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200530200531%_))
                                              (_%__kont200530200531%_))
                                          (_%__kont200530200531%_))))
                                  (_%__kont200530200531%_))))
                          (_%__kont200530200531%_))))
                  (_%__kont200530200531%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self195027%_ _%stx195028%_)
        (letrec ((_%force-e195030%_
                  (lambda (_%target196082%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target196082%_ '()))
                                      '()))))))
          (let* ((_%__stx201014201015%_ _%stx195028%_)
                 (_%g195038195260%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201014201015%_)))))
            (let ((_%__kont201016201017%_
                   (lambda (_%g195040196028%_
                            _%g195041196029%_
                            _%g195042196030%_
                            _%g195043196031%_)
                     (let ((_%$method196076%_
                            (let ((__tmp201677
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195027%_ 'methods)))
                                  (__tmp201676
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195041196029%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201677 __tmp201676)))
                           (_%args196077%_
                            (map (lambda (_%g196064196066%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195027%_
                                      _%g196064196066%_)))
                                 (let ((__tmp201678
                                        (lambda (_%g196068196071%_
                                                 _%g196069196073%_)
                                          (cons _%g196068196071%_
                                                _%g196069196073%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201678
                                    '()
                                    _%g195040196028%_)))))
                       (let ((__tmp201679
                              (cons '%#call
                                    (cons (_%force-e195030%_ _%$method196076%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195027%_
                                                               'receiver))
                                                            '()))
                                                _%args196077%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201679 _%stx195028%_)))))
                  (_%__kont201020201021%_
                   (lambda (_%g195083195862%_
                            _%g195084195863%_
                            _%g195085195864%_
                            _%g195086195865%_
                            _%g195087195866%_)
                     (let ((_%$method195918%_
                            (let ((__tmp201681
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195027%_ 'methods)))
                                  (__tmp201680
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195084195863%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201681 __tmp201680)))
                           (_%args195919%_
                            (map (lambda (_%g195906195908%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195027%_
                                      _%g195906195908%_)))
                                 (let ((__tmp201682
                                        (lambda (_%g195910195913%_
                                                 _%g195911195915%_)
                                          (cons _%g195910195913%_
                                                _%g195911195915%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201682
                                    '()
                                    _%g195083195862%_)))))
                       (let ((__tmp201683
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e195030%_
                                                 _%$method195918%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195027%_ 'receiver))
                          '()))
              _%args195919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201683 _%stx195028%_)))))
                  (_%__kont201024201025%_
                   (lambda (_%g195136195695%_
                            _%g195137195696%_
                            _%g195138195697%_)
                     (let* ((_%$field195729%_
                             (let ((__tmp201685
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self195027%_ 'slots)))
                                   (__tmp201684
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g195136195695%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp201685 __tmp201684)))
                            (__tmp201686
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self195027%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field195729%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self195027%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp201686 _%stx195028%_))))
                  (_%__kont201026201027%_
                   (lambda (_%g195169195569%_
                            _%g195170195570%_
                            _%g195171195571%_
                            _%g195172195572%_)
                     (let ((_%$field195607%_
                            (let ((__tmp201688
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195027%_ 'slots)))
                                  (__tmp201687
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195170195570%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201688 __tmp201687)))
                           (_%expr195608%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self195027%_
                               _%g195169195569%_))))
                       (let ((__tmp201689
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self195027%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field195607%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195027%_ 'receiver))
                          '()))
              (cons _%expr195608%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201689 _%stx195028%_)))))
                  (_%__kont201028201029%_
                   (lambda (_%g195206195441%_ _%g195207195442%_)
                     (let* ((_%accessor195464%_
                             (let ((__tmp201690
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195207195442%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201690)))
                            (_%klass195466%_
                             (let ((__tmp201691
                                    (##structure-ref
                                     _%accessor195464%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195028%_
                                __tmp201691)))
                            (_%slot195468%_
                             (##structure-ref
                              _%accessor195464%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor195464%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195466%_
                                      _%slot195468%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195466%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx195028%_
                           (let* ((_%$field195474%_
                                   (let ((__tmp201692
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195027%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201692 _%slot195468%_)))
                                  (__tmp201693
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195027%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195027%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201693
                              _%stx195028%_))))))
                  (_%__kont201030201031%_
                   (lambda (_%g195229195336%_
                            _%g195230195337%_
                            _%g195231195338%_)
                     (let* ((_%mutator195366%_
                             (let ((__tmp201694
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195231195338%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201694)))
                            (_%klass195368%_
                             (let ((__tmp201695
                                    (##structure-ref
                                     _%mutator195366%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195028%_
                                __tmp201695)))
                            (_%slot195370%_
                             (##structure-ref
                              _%mutator195366%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr195372%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195027%_
                                _%g195229195336%_))))
                       (if (if (##structure-ref
                                _%mutator195366%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195368%_
                                      _%slot195370%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195368%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp201696
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g195231195338%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g195230195337%_
                                                                '()))
                                                    (cons _%expr195372%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp201696 _%stx195028%_))
                           (let* ((_%$field195378%_
                                   (let ((__tmp201697
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195027%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201697 _%slot195370%_)))
                                  (__tmp201698
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195027%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195027%_ 'receiver))
                               '()))
                   (cons _%expr195372%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201698
                              _%stx195028%_))))))
                  (_%__kont201032201033%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self195027%_ _%stx195028%_)))))
              (let* ((_%__match201513201514%_
                      (lambda (_%e195232195272%_
                               _%hd195233195275%_
                               _%tl195234195277%_
                               _%e195235195280%_
                               _%hd195236195283%_
                               _%tl195237195285%_
                               _%e195238195288%_
                               _%hd195239195291%_
                               _%tl195240195293%_
                               _%e195241195296%_
                               _%hd195242195299%_
                               _%tl195243195301%_
                               _%e195244195304%_
                               _%hd195245195307%_
                               _%tl195246195309%_
                               _%e195247195312%_
                               _%hd195248195315%_
                               _%tl195249195317%_
                               _%e195250195320%_
                               _%hd195251195323%_
                               _%tl195252195325%_
                               _%e195253195328%_
                               _%hd195254195331%_
                               _%tl195255195333%_)
                        (let ((_%g195229195336%_ _%hd195254195331%_)
                              (_%g195230195337%_ _%hd195251195323%_)
                              (_%g195231195338%_ _%hd195242195299%_))
                          (if (and (let ((__tmp201699
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195027%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195230195337%_
                                      __tmp201699))
                                   (let ((__tmp201700
                                          (let ((__tmp201701
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195231195338%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201701))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201700
                                      'gxc#!mutator::t)))
                              (_%__kont201030201031%_
                               _%g195229195336%_
                               _%g195230195337%_
                               _%g195231195338%_)
                              (_%__kont201032201033%_)))))
                     (_%__match201511201512%_
                      (lambda (_%e195232195272%_
                               _%hd195233195275%_
                               _%tl195234195277%_
                               _%e195235195280%_
                               _%hd195236195283%_
                               _%tl195237195285%_
                               _%e195238195288%_
                               _%hd195239195291%_
                               _%tl195240195293%_
                               _%e195241195296%_
                               _%hd195242195299%_
                               _%tl195243195301%_
                               _%e195244195304%_
                               _%hd195245195307%_
                               _%tl195246195309%_
                               _%e195247195312%_
                               _%hd195248195315%_
                               _%tl195249195317%_
                               _%e195250195320%_
                               _%hd195251195323%_
                               _%tl195252195325%_
                               _%e195253195328%_
                               _%hd195254195331%_
                               _%tl195255195333%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195255195333%_))
                            (_%__match201513201514%_
                             _%e195232195272%_
                             _%hd195233195275%_
                             _%tl195234195277%_
                             _%e195235195280%_
                             _%hd195236195283%_
                             _%tl195237195285%_
                             _%e195238195288%_
                             _%hd195239195291%_
                             _%tl195240195293%_
                             _%e195241195296%_
                             _%hd195242195299%_
                             _%tl195243195301%_
                             _%e195244195304%_
                             _%hd195245195307%_
                             _%tl195246195309%_
                             _%e195247195312%_
                             _%hd195248195315%_
                             _%tl195249195317%_
                             _%e195250195320%_
                             _%hd195251195323%_
                             _%tl195252195325%_
                             _%e195253195328%_
                             _%hd195254195331%_
                             _%tl195255195333%_)
                            (_%__kont201032201033%_))))
                     (_%__match201505201506%_
                      (lambda (_%e195232195272%_
                               _%hd195233195275%_
                               _%tl195234195277%_
                               _%e195235195280%_
                               _%hd195236195283%_
                               _%tl195237195285%_
                               _%e195238195288%_
                               _%hd195239195291%_
                               _%tl195240195293%_
                               _%e195241195296%_
                               _%hd195242195299%_
                               _%tl195243195301%_
                               _%e195244195304%_
                               _%hd195245195307%_
                               _%tl195246195309%_
                               _%e195247195312%_
                               _%hd195248195315%_
                               _%tl195249195317%_
                               _%e195250195320%_
                               _%hd195251195323%_
                               _%tl195252195325%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195246195309%_))
                            (let ((_%e195253195328%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195246195309%_))))
                              (let ((_%tl195255195333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195253195328%_)))
                                    (_%hd195254195331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195253195328%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195255195333%_))
                                    (_%__match201513201514%_
                                     _%e195232195272%_
                                     _%hd195233195275%_
                                     _%tl195234195277%_
                                     _%e195235195280%_
                                     _%hd195236195283%_
                                     _%tl195237195285%_
                                     _%e195238195288%_
                                     _%hd195239195291%_
                                     _%tl195240195293%_
                                     _%e195241195296%_
                                     _%hd195242195299%_
                                     _%tl195243195301%_
                                     _%e195244195304%_
                                     _%hd195245195307%_
                                     _%tl195246195309%_
                                     _%e195247195312%_
                                     _%hd195248195315%_
                                     _%tl195249195317%_
                                     _%e195250195320%_
                                     _%hd195251195323%_
                                     _%tl195252195325%_
                                     _%e195253195328%_
                                     _%hd195254195331%_
                                     _%tl195255195333%_)
                                    (_%__kont201032201033%_))))
                            (_%__kont201032201033%_))))
                     (_%__match201451201452%_
                      (lambda (_%e195208195385%_
                               _%hd195209195388%_
                               _%tl195210195390%_
                               _%e195211195393%_
                               _%hd195212195396%_
                               _%tl195213195398%_
                               _%e195214195401%_
                               _%hd195215195404%_
                               _%tl195216195406%_
                               _%e195217195409%_
                               _%hd195218195412%_
                               _%tl195219195414%_
                               _%e195220195417%_
                               _%hd195221195420%_
                               _%tl195222195422%_
                               _%e195223195425%_
                               _%hd195224195428%_
                               _%tl195225195430%_
                               _%e195226195433%_
                               _%hd195227195436%_
                               _%tl195228195438%_)
                        (let ((_%g195206195441%_ _%hd195227195436%_)
                              (_%g195207195442%_ _%hd195218195412%_))
                          (if (and (let ((__tmp201702
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195027%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195206195441%_
                                      __tmp201702))
                                   (let ((__tmp201703
                                          (let ((__tmp201704
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195207195442%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201704))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201703
                                      'gxc#!accessor::t)))
                              (_%__kont201028201029%_
                               _%g195206195441%_
                               _%g195207195442%_)
                              (_%__kont201032201033%_)))))
                     (_%__match201449201450%_
                      (lambda (_%e195208195385%_
                               _%hd195209195388%_
                               _%tl195210195390%_
                               _%e195211195393%_
                               _%hd195212195396%_
                               _%tl195213195398%_
                               _%e195214195401%_
                               _%hd195215195404%_
                               _%tl195216195406%_
                               _%e195217195409%_
                               _%hd195218195412%_
                               _%tl195219195414%_
                               _%e195220195417%_
                               _%hd195221195420%_
                               _%tl195222195422%_
                               _%e195223195425%_
                               _%hd195224195428%_
                               _%tl195225195430%_
                               _%e195226195433%_
                               _%hd195227195436%_
                               _%tl195228195438%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195222195422%_))
                            (_%__match201451201452%_
                             _%e195208195385%_
                             _%hd195209195388%_
                             _%tl195210195390%_
                             _%e195211195393%_
                             _%hd195212195396%_
                             _%tl195213195398%_
                             _%e195214195401%_
                             _%hd195215195404%_
                             _%tl195216195406%_
                             _%e195217195409%_
                             _%hd195218195412%_
                             _%tl195219195414%_
                             _%e195220195417%_
                             _%hd195221195420%_
                             _%tl195222195422%_
                             _%e195223195425%_
                             _%hd195224195428%_
                             _%tl195225195430%_
                             _%e195226195433%_
                             _%hd195227195436%_
                             _%tl195228195438%_)
                            (_%__match201505201506%_
                             _%e195208195385%_
                             _%hd195209195388%_
                             _%tl195210195390%_
                             _%e195211195393%_
                             _%hd195212195396%_
                             _%tl195213195398%_
                             _%e195214195401%_
                             _%hd195215195404%_
                             _%tl195216195406%_
                             _%e195217195409%_
                             _%hd195218195412%_
                             _%tl195219195414%_
                             _%e195220195417%_
                             _%hd195221195420%_
                             _%tl195222195422%_
                             _%e195223195425%_
                             _%hd195224195428%_
                             _%tl195225195430%_
                             _%e195226195433%_
                             _%hd195227195436%_
                             _%tl195228195438%_))))
                     (_%__match201395201396%_
                      (lambda (_%e195173195481%_
                               _%hd195174195484%_
                               _%tl195175195486%_
                               _%e195176195489%_
                               _%hd195177195492%_
                               _%tl195178195494%_
                               _%e195179195497%_
                               _%hd195180195500%_
                               _%tl195181195502%_
                               _%e195182195505%_
                               _%hd195183195508%_
                               _%tl195184195510%_
                               _%e195185195513%_
                               _%hd195186195516%_
                               _%tl195187195518%_
                               _%e195188195521%_
                               _%hd195189195524%_
                               _%tl195190195526%_
                               _%e195191195529%_
                               _%hd195192195532%_
                               _%tl195193195534%_
                               _%e195194195537%_
                               _%hd195195195540%_
                               _%tl195196195542%_
                               _%e195197195545%_
                               _%hd195198195548%_
                               _%tl195199195550%_
                               _%e195200195553%_
                               _%hd195201195556%_
                               _%tl195202195558%_
                               _%e195203195561%_
                               _%hd195204195564%_
                               _%tl195205195566%_)
                        (let ((_%g195169195569%_ _%hd195204195564%_)
                              (_%g195170195570%_ _%hd195201195556%_)
                              (_%g195171195571%_ _%hd195192195532%_)
                              (_%g195172195572%_ _%hd195183195508%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195172195572%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195172195572%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp201705
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195027%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195171195571%_
                                      __tmp201705)))
                              (_%__kont201026201027%_
                               _%g195169195569%_
                               _%g195170195570%_
                               _%g195171195571%_
                               _%g195172195572%_)
                              (_%__kont201032201033%_)))))
                     (_%__match201387201388%_
                      (lambda (_%e195173195481%_
                               _%hd195174195484%_
                               _%tl195175195486%_
                               _%e195176195489%_
                               _%hd195177195492%_
                               _%tl195178195494%_
                               _%e195179195497%_
                               _%hd195180195500%_
                               _%tl195181195502%_
                               _%e195182195505%_
                               _%hd195183195508%_
                               _%tl195184195510%_
                               _%e195185195513%_
                               _%hd195186195516%_
                               _%tl195187195518%_
                               _%e195188195521%_
                               _%hd195189195524%_
                               _%tl195190195526%_
                               _%e195191195529%_
                               _%hd195192195532%_
                               _%tl195193195534%_
                               _%e195194195537%_
                               _%hd195195195540%_
                               _%tl195196195542%_
                               _%e195197195545%_
                               _%hd195198195548%_
                               _%tl195199195550%_
                               _%e195200195553%_
                               _%hd195201195556%_
                               _%tl195202195558%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195196195542%_))
                            (let ((_%e195203195561%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195196195542%_))))
                              (let ((_%tl195205195566%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195203195561%_)))
                                    (_%hd195204195564%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195203195561%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195205195566%_))
                                    (_%__match201395201396%_
                                     _%e195173195481%_
                                     _%hd195174195484%_
                                     _%tl195175195486%_
                                     _%e195176195489%_
                                     _%hd195177195492%_
                                     _%tl195178195494%_
                                     _%e195179195497%_
                                     _%hd195180195500%_
                                     _%tl195181195502%_
                                     _%e195182195505%_
                                     _%hd195183195508%_
                                     _%tl195184195510%_
                                     _%e195185195513%_
                                     _%hd195186195516%_
                                     _%tl195187195518%_
                                     _%e195188195521%_
                                     _%hd195189195524%_
                                     _%tl195190195526%_
                                     _%e195191195529%_
                                     _%hd195192195532%_
                                     _%tl195193195534%_
                                     _%e195194195537%_
                                     _%hd195195195540%_
                                     _%tl195196195542%_
                                     _%e195197195545%_
                                     _%hd195198195548%_
                                     _%tl195199195550%_
                                     _%e195200195553%_
                                     _%hd195201195556%_
                                     _%tl195202195558%_
                                     _%e195203195561%_
                                     _%hd195204195564%_
                                     _%tl195205195566%_)
                                    (_%__kont201032201033%_))))
                            (_%__match201511201512%_
                             _%e195173195481%_
                             _%hd195174195484%_
                             _%tl195175195486%_
                             _%e195176195489%_
                             _%hd195177195492%_
                             _%tl195178195494%_
                             _%e195179195497%_
                             _%hd195180195500%_
                             _%tl195181195502%_
                             _%e195182195505%_
                             _%hd195183195508%_
                             _%tl195184195510%_
                             _%e195185195513%_
                             _%hd195186195516%_
                             _%tl195187195518%_
                             _%e195188195521%_
                             _%hd195189195524%_
                             _%tl195190195526%_
                             _%e195191195529%_
                             _%hd195192195532%_
                             _%tl195193195534%_
                             _%e195194195537%_
                             _%hd195195195540%_
                             _%tl195196195542%_))))
                     (_%__match201309201310%_
                      (lambda (_%e195139195615%_
                               _%hd195140195618%_
                               _%tl195141195620%_
                               _%e195142195623%_
                               _%hd195143195626%_
                               _%tl195144195628%_
                               _%e195145195631%_
                               _%hd195146195634%_
                               _%tl195147195636%_
                               _%e195148195639%_
                               _%hd195149195642%_
                               _%tl195150195644%_
                               _%e195151195647%_
                               _%hd195152195650%_
                               _%tl195153195652%_
                               _%e195154195655%_
                               _%hd195155195658%_
                               _%tl195156195660%_
                               _%e195157195663%_
                               _%hd195158195666%_
                               _%tl195159195668%_
                               _%e195160195671%_
                               _%hd195161195674%_
                               _%tl195162195676%_
                               _%e195163195679%_
                               _%hd195164195682%_
                               _%tl195165195684%_
                               _%e195166195687%_
                               _%hd195167195690%_
                               _%tl195168195692%_)
                        (let ((_%g195136195695%_ _%hd195167195690%_)
                              (_%g195137195696%_ _%hd195158195666%_)
                              (_%g195138195697%_ _%hd195149195642%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195138195697%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195138195697%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp201706
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195027%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195137195696%_
                                      __tmp201706)))
                              (_%__kont201024201025%_
                               _%g195136195695%_
                               _%g195137195696%_
                               _%g195138195697%_)
                              (_%__match201513201514%_
                               _%e195139195615%_
                               _%hd195140195618%_
                               _%tl195141195620%_
                               _%e195142195623%_
                               _%hd195143195626%_
                               _%tl195144195628%_
                               _%e195145195631%_
                               _%hd195146195634%_
                               _%tl195147195636%_
                               _%e195148195639%_
                               _%hd195149195642%_
                               _%tl195150195644%_
                               _%e195151195647%_
                               _%hd195152195650%_
                               _%tl195153195652%_
                               _%e195154195655%_
                               _%hd195155195658%_
                               _%tl195156195660%_
                               _%e195157195663%_
                               _%hd195158195666%_
                               _%tl195159195668%_
                               _%e195160195671%_
                               _%hd195161195674%_
                               _%tl195162195676%_)))))
                     (_%__match201307201308%_
                      (lambda (_%e195139195615%_
                               _%hd195140195618%_
                               _%tl195141195620%_
                               _%e195142195623%_
                               _%hd195143195626%_
                               _%tl195144195628%_
                               _%e195145195631%_
                               _%hd195146195634%_
                               _%tl195147195636%_
                               _%e195148195639%_
                               _%hd195149195642%_
                               _%tl195150195644%_
                               _%e195151195647%_
                               _%hd195152195650%_
                               _%tl195153195652%_
                               _%e195154195655%_
                               _%hd195155195658%_
                               _%tl195156195660%_
                               _%e195157195663%_
                               _%hd195158195666%_
                               _%tl195159195668%_
                               _%e195160195671%_
                               _%hd195161195674%_
                               _%tl195162195676%_
                               _%e195163195679%_
                               _%hd195164195682%_
                               _%tl195165195684%_
                               _%e195166195687%_
                               _%hd195167195690%_
                               _%tl195168195692%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195162195676%_))
                            (_%__match201309201310%_
                             _%e195139195615%_
                             _%hd195140195618%_
                             _%tl195141195620%_
                             _%e195142195623%_
                             _%hd195143195626%_
                             _%tl195144195628%_
                             _%e195145195631%_
                             _%hd195146195634%_
                             _%tl195147195636%_
                             _%e195148195639%_
                             _%hd195149195642%_
                             _%tl195150195644%_
                             _%e195151195647%_
                             _%hd195152195650%_
                             _%tl195153195652%_
                             _%e195154195655%_
                             _%hd195155195658%_
                             _%tl195156195660%_
                             _%e195157195663%_
                             _%hd195158195666%_
                             _%tl195159195668%_
                             _%e195160195671%_
                             _%hd195161195674%_
                             _%tl195162195676%_
                             _%e195163195679%_
                             _%hd195164195682%_
                             _%tl195165195684%_
                             _%e195166195687%_
                             _%hd195167195690%_
                             _%tl195168195692%_)
                            (_%__match201387201388%_
                             _%e195139195615%_
                             _%hd195140195618%_
                             _%tl195141195620%_
                             _%e195142195623%_
                             _%hd195143195626%_
                             _%tl195144195628%_
                             _%e195145195631%_
                             _%hd195146195634%_
                             _%tl195147195636%_
                             _%e195148195639%_
                             _%hd195149195642%_
                             _%tl195150195644%_
                             _%e195151195647%_
                             _%hd195152195650%_
                             _%tl195153195652%_
                             _%e195154195655%_
                             _%hd195155195658%_
                             _%tl195156195660%_
                             _%e195157195663%_
                             _%hd195158195666%_
                             _%tl195159195668%_
                             _%e195160195671%_
                             _%hd195161195674%_
                             _%tl195162195676%_
                             _%e195163195679%_
                             _%hd195164195682%_
                             _%tl195165195684%_
                             _%e195166195687%_
                             _%hd195167195690%_
                             _%tl195168195692%_))))
                     (_%__match201297201298%_
                      (lambda (_%e195139195615%_
                               _%hd195140195618%_
                               _%tl195141195620%_
                               _%e195142195623%_
                               _%hd195143195626%_
                               _%tl195144195628%_
                               _%e195145195631%_
                               _%hd195146195634%_
                               _%tl195147195636%_
                               _%e195148195639%_
                               _%hd195149195642%_
                               _%tl195150195644%_
                               _%e195151195647%_
                               _%hd195152195650%_
                               _%tl195153195652%_
                               _%e195154195655%_
                               _%hd195155195658%_
                               _%tl195156195660%_
                               _%e195157195663%_
                               _%hd195158195666%_
                               _%tl195159195668%_
                               _%e195160195671%_
                               _%hd195161195674%_
                               _%tl195162195676%_
                               _%e195163195679%_
                               _%hd195164195682%_
                               _%tl195165195684%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd195164195682%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195165195684%_))
                                (let ((_%e195166195687%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195165195684%_))))
                                  (let ((_%tl195168195692%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195166195687%_)))
                                        (_%hd195167195690%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195166195687%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195168195692%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195162195676%_))
                                            (_%__match201309201310%_
                                             _%e195139195615%_
                                             _%hd195140195618%_
                                             _%tl195141195620%_
                                             _%e195142195623%_
                                             _%hd195143195626%_
                                             _%tl195144195628%_
                                             _%e195145195631%_
                                             _%hd195146195634%_
                                             _%tl195147195636%_
                                             _%e195148195639%_
                                             _%hd195149195642%_
                                             _%tl195150195644%_
                                             _%e195151195647%_
                                             _%hd195152195650%_
                                             _%tl195153195652%_
                                             _%e195154195655%_
                                             _%hd195155195658%_
                                             _%tl195156195660%_
                                             _%e195157195663%_
                                             _%hd195158195666%_
                                             _%tl195159195668%_
                                             _%e195160195671%_
                                             _%hd195161195674%_
                                             _%tl195162195676%_
                                             _%e195163195679%_
                                             _%hd195164195682%_
                                             _%tl195165195684%_
                                             _%e195166195687%_
                                             _%hd195167195690%_
                                             _%tl195168195692%_)
                                            (_%__match201387201388%_
                                             _%e195139195615%_
                                             _%hd195140195618%_
                                             _%tl195141195620%_
                                             _%e195142195623%_
                                             _%hd195143195626%_
                                             _%tl195144195628%_
                                             _%e195145195631%_
                                             _%hd195146195634%_
                                             _%tl195147195636%_
                                             _%e195148195639%_
                                             _%hd195149195642%_
                                             _%tl195150195644%_
                                             _%e195151195647%_
                                             _%hd195152195650%_
                                             _%tl195153195652%_
                                             _%e195154195655%_
                                             _%hd195155195658%_
                                             _%tl195156195660%_
                                             _%e195157195663%_
                                             _%hd195158195666%_
                                             _%tl195159195668%_
                                             _%e195160195671%_
                                             _%hd195161195674%_
                                             _%tl195162195676%_
                                             _%e195163195679%_
                                             _%hd195164195682%_
                                             _%tl195165195684%_
                                             _%e195166195687%_
                                             _%hd195167195690%_
                                             _%tl195168195692%_))
                                        (_%__match201511201512%_
                                         _%e195139195615%_
                                         _%hd195140195618%_
                                         _%tl195141195620%_
                                         _%e195142195623%_
                                         _%hd195143195626%_
                                         _%tl195144195628%_
                                         _%e195145195631%_
                                         _%hd195146195634%_
                                         _%tl195147195636%_
                                         _%e195148195639%_
                                         _%hd195149195642%_
                                         _%tl195150195644%_
                                         _%e195151195647%_
                                         _%hd195152195650%_
                                         _%tl195153195652%_
                                         _%e195154195655%_
                                         _%hd195155195658%_
                                         _%tl195156195660%_
                                         _%e195157195663%_
                                         _%hd195158195666%_
                                         _%tl195159195668%_
                                         _%e195160195671%_
                                         _%hd195161195674%_
                                         _%tl195162195676%_))))
                                (_%__match201511201512%_
                                 _%e195139195615%_
                                 _%hd195140195618%_
                                 _%tl195141195620%_
                                 _%e195142195623%_
                                 _%hd195143195626%_
                                 _%tl195144195628%_
                                 _%e195145195631%_
                                 _%hd195146195634%_
                                 _%tl195147195636%_
                                 _%e195148195639%_
                                 _%hd195149195642%_
                                 _%tl195150195644%_
                                 _%e195151195647%_
                                 _%hd195152195650%_
                                 _%tl195153195652%_
                                 _%e195154195655%_
                                 _%hd195155195658%_
                                 _%tl195156195660%_
                                 _%e195157195663%_
                                 _%hd195158195666%_
                                 _%tl195159195668%_
                                 _%e195160195671%_
                                 _%hd195161195674%_
                                 _%tl195162195676%_))
                            (_%__match201511201512%_
                             _%e195139195615%_
                             _%hd195140195618%_
                             _%tl195141195620%_
                             _%e195142195623%_
                             _%hd195143195626%_
                             _%tl195144195628%_
                             _%e195145195631%_
                             _%hd195146195634%_
                             _%tl195147195636%_
                             _%e195148195639%_
                             _%hd195149195642%_
                             _%tl195150195644%_
                             _%e195151195647%_
                             _%hd195152195650%_
                             _%tl195153195652%_
                             _%e195154195655%_
                             _%hd195155195658%_
                             _%tl195156195660%_
                             _%e195157195663%_
                             _%hd195158195666%_
                             _%tl195159195668%_
                             _%e195160195671%_
                             _%hd195161195674%_
                             _%tl195162195676%_))))
                     (_%__match201229201230%_
                      (lambda (_%e195088195736%_
                               _%hd195089195739%_
                               _%tl195090195741%_
                               _%e195091195744%_
                               _%hd195092195747%_
                               _%tl195093195749%_
                               _%e195094195752%_
                               _%hd195095195755%_
                               _%tl195096195757%_
                               _%e195097195760%_
                               _%hd195098195763%_
                               _%tl195099195765%_
                               _%e195100195768%_
                               _%hd195101195771%_
                               _%tl195102195773%_
                               _%e195103195776%_
                               _%hd195104195779%_
                               _%tl195105195781%_
                               _%e195106195784%_
                               _%hd195107195787%_
                               _%tl195108195789%_
                               _%e195109195792%_
                               _%hd195110195795%_
                               _%tl195111195797%_
                               _%e195112195800%_
                               _%hd195113195803%_
                               _%tl195114195805%_
                               _%e195115195808%_
                               _%hd195116195811%_
                               _%tl195117195813%_
                               _%e195118195816%_
                               _%hd195119195819%_
                               _%tl195120195821%_
                               _%e195121195824%_
                               _%hd195122195827%_
                               _%tl195123195829%_
                               _%e195124195832%_
                               _%hd195125195835%_
                               _%tl195126195837%_
                               _%__splice201022201023%_
                               _%target195127195840%_
                               _%tl195129195842%_)
                        (letrec ((_%loop195130195845%_
                                  (lambda (_%hd195128195848%_
                                           _%args195134195850%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195128195848%_))
                                        (let ((_%e195131195852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195128195848%_))))
                                          (let ((_%lp-tl195133195857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195131195852%_)))
                                                (_%lp-hd195132195855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195131195852%_))))
                                            (_%loop195130195845%_
                                             _%lp-tl195133195857%_
                                             (cons _%lp-hd195132195855%_
                                                   _%args195134195850%_))))
                                        (let ((_%args195135195860%_
                                               (reverse _%args195134195850%_)))
                                          (let ((_%g195083195862%_
                                                 _%args195135195860%_)
                                                (_%g195084195863%_
                                                 _%hd195125195835%_)
                                                (_%g195085195864%_
                                                 _%hd195116195811%_)
                                                (_%g195086195865%_
                                                 _%hd195107195787%_)
                                                (_%g195087195866%_
                                                 _%hd195098195763%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195087195866%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195086195865%_
                                                        'call-method))
                                                     (let ((__tmp201707
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195027%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195085195864%_
                                                        __tmp201707)))
                                                (_%__kont201020201021%_
                                                 _%g195083195862%_
                                                 _%g195084195863%_
                                                 _%g195085195864%_
                                                 _%g195086195865%_
                                                 _%g195087195866%_)
                                                (_%__kont201032201033%_))))))))
                          (_%loop195130195845%_ _%target195127195840%_ '()))))
                     (_%__match201187201188%_
                      (lambda (_%e195088195736%_
                               _%hd195089195739%_
                               _%tl195090195741%_
                               _%e195091195744%_
                               _%hd195092195747%_
                               _%tl195093195749%_
                               _%e195094195752%_
                               _%hd195095195755%_
                               _%tl195096195757%_
                               _%e195097195760%_
                               _%hd195098195763%_
                               _%tl195099195765%_
                               _%e195100195768%_
                               _%hd195101195771%_
                               _%tl195102195773%_
                               _%e195103195776%_
                               _%hd195104195779%_
                               _%tl195105195781%_
                               _%e195106195784%_
                               _%hd195107195787%_
                               _%tl195108195789%_
                               _%e195109195792%_
                               _%hd195110195795%_
                               _%tl195111195797%_
                               _%e195112195800%_
                               _%hd195113195803%_
                               _%tl195114195805%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd195113195803%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195114195805%_))
                                (let ((_%e195115195808%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195114195805%_))))
                                  (let ((_%tl195117195813%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195115195808%_)))
                                        (_%hd195116195811%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195115195808%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195117195813%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195111195797%_))
                                            (let ((_%e195118195816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195111195797%_))))
                                              (let ((_%tl195120195821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195118195816%_)))
                                                    (_%hd195119195819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195118195816%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd195119195819%_))
                                                    (let ((_%e195121195824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd195119195819%_))))
                                                      (let ((_%tl195123195829%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195121195824%_)))
                    (_%hd195122195827%_
                     (let () (declare (not safe)) (##car _%e195121195824%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd195122195827%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd195122195827%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195123195829%_))
                            (let ((_%e195124195832%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195123195829%_))))
                              (let ((_%tl195126195837%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195124195832%_)))
                                    (_%hd195125195835%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195124195832%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195126195837%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl195120195821%_))
                                        (let ((_%__splice201022201023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl195120195821%_
                                                  '0))))
                                          (let ((_%tl195129195842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201022201023%_
                                                    '1)))
                                                (_%target195127195840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201022201023%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195129195842%_))
                                                (_%__match201229201230%_
                                                 _%e195088195736%_
                                                 _%hd195089195739%_
                                                 _%tl195090195741%_
                                                 _%e195091195744%_
                                                 _%hd195092195747%_
                                                 _%tl195093195749%_
                                                 _%e195094195752%_
                                                 _%hd195095195755%_
                                                 _%tl195096195757%_
                                                 _%e195097195760%_
                                                 _%hd195098195763%_
                                                 _%tl195099195765%_
                                                 _%e195100195768%_
                                                 _%hd195101195771%_
                                                 _%tl195102195773%_
                                                 _%e195103195776%_
                                                 _%hd195104195779%_
                                                 _%tl195105195781%_
                                                 _%e195106195784%_
                                                 _%hd195107195787%_
                                                 _%tl195108195789%_
                                                 _%e195109195792%_
                                                 _%hd195110195795%_
                                                 _%tl195111195797%_
                                                 _%e195112195800%_
                                                 _%hd195113195803%_
                                                 _%tl195114195805%_
                                                 _%e195115195808%_
                                                 _%hd195116195811%_
                                                 _%tl195117195813%_
                                                 _%e195118195816%_
                                                 _%hd195119195819%_
                                                 _%tl195120195821%_
                                                 _%e195121195824%_
                                                 _%hd195122195827%_
                                                 _%tl195123195829%_
                                                 _%e195124195832%_
                                                 _%hd195125195835%_
                                                 _%tl195126195837%_
                                                 _%__splice201022201023%_
                                                 _%target195127195840%_
                                                 _%tl195129195842%_)
                                                (_%__kont201032201033%_))))
                                        (_%__kont201032201033%_))
                                    (_%__kont201032201033%_))))
                            (_%__kont201032201033%_))
                        (_%__kont201032201033%_))
                    (_%__kont201032201033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201032201033%_))))
                                            (_%__match201511201512%_
                                             _%e195088195736%_
                                             _%hd195089195739%_
                                             _%tl195090195741%_
                                             _%e195091195744%_
                                             _%hd195092195747%_
                                             _%tl195093195749%_
                                             _%e195094195752%_
                                             _%hd195095195755%_
                                             _%tl195096195757%_
                                             _%e195097195760%_
                                             _%hd195098195763%_
                                             _%tl195099195765%_
                                             _%e195100195768%_
                                             _%hd195101195771%_
                                             _%tl195102195773%_
                                             _%e195103195776%_
                                             _%hd195104195779%_
                                             _%tl195105195781%_
                                             _%e195106195784%_
                                             _%hd195107195787%_
                                             _%tl195108195789%_
                                             _%e195109195792%_
                                             _%hd195110195795%_
                                             _%tl195111195797%_))
                                        (_%__match201511201512%_
                                         _%e195088195736%_
                                         _%hd195089195739%_
                                         _%tl195090195741%_
                                         _%e195091195744%_
                                         _%hd195092195747%_
                                         _%tl195093195749%_
                                         _%e195094195752%_
                                         _%hd195095195755%_
                                         _%tl195096195757%_
                                         _%e195097195760%_
                                         _%hd195098195763%_
                                         _%tl195099195765%_
                                         _%e195100195768%_
                                         _%hd195101195771%_
                                         _%tl195102195773%_
                                         _%e195103195776%_
                                         _%hd195104195779%_
                                         _%tl195105195781%_
                                         _%e195106195784%_
                                         _%hd195107195787%_
                                         _%tl195108195789%_
                                         _%e195109195792%_
                                         _%hd195110195795%_
                                         _%tl195111195797%_))))
                                (_%__match201511201512%_
                                 _%e195088195736%_
                                 _%hd195089195739%_
                                 _%tl195090195741%_
                                 _%e195091195744%_
                                 _%hd195092195747%_
                                 _%tl195093195749%_
                                 _%e195094195752%_
                                 _%hd195095195755%_
                                 _%tl195096195757%_
                                 _%e195097195760%_
                                 _%hd195098195763%_
                                 _%tl195099195765%_
                                 _%e195100195768%_
                                 _%hd195101195771%_
                                 _%tl195102195773%_
                                 _%e195103195776%_
                                 _%hd195104195779%_
                                 _%tl195105195781%_
                                 _%e195106195784%_
                                 _%hd195107195787%_
                                 _%tl195108195789%_
                                 _%e195109195792%_
                                 _%hd195110195795%_
                                 _%tl195111195797%_))
                            (_%__match201297201298%_
                             _%e195088195736%_
                             _%hd195089195739%_
                             _%tl195090195741%_
                             _%e195091195744%_
                             _%hd195092195747%_
                             _%tl195093195749%_
                             _%e195094195752%_
                             _%hd195095195755%_
                             _%tl195096195757%_
                             _%e195097195760%_
                             _%hd195098195763%_
                             _%tl195099195765%_
                             _%e195100195768%_
                             _%hd195101195771%_
                             _%tl195102195773%_
                             _%e195103195776%_
                             _%hd195104195779%_
                             _%tl195105195781%_
                             _%e195106195784%_
                             _%hd195107195787%_
                             _%tl195108195789%_
                             _%e195109195792%_
                             _%hd195110195795%_
                             _%tl195111195797%_
                             _%e195112195800%_
                             _%hd195113195803%_
                             _%tl195114195805%_))))
                     (_%__match201119201120%_
                      (lambda (_%e195044195926%_
                               _%hd195045195929%_
                               _%tl195046195931%_
                               _%e195047195934%_
                               _%hd195048195937%_
                               _%tl195049195939%_
                               _%e195050195942%_
                               _%hd195051195945%_
                               _%tl195052195947%_
                               _%e195053195950%_
                               _%hd195054195953%_
                               _%tl195055195955%_
                               _%e195056195958%_
                               _%hd195057195961%_
                               _%tl195058195963%_
                               _%e195059195966%_
                               _%hd195060195969%_
                               _%tl195061195971%_
                               _%e195062195974%_
                               _%hd195063195977%_
                               _%tl195064195979%_
                               _%e195065195982%_
                               _%hd195066195985%_
                               _%tl195067195987%_
                               _%e195068195990%_
                               _%hd195069195993%_
                               _%tl195070195995%_
                               _%e195071195998%_
                               _%hd195072196001%_
                               _%tl195073196003%_
                               _%__splice201018201019%_
                               _%target195074196006%_
                               _%tl195076196008%_)
                        (letrec ((_%loop195077196011%_
                                  (lambda (_%hd195075196014%_
                                           _%args195081196016%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195075196014%_))
                                        (let ((_%e195078196018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195075196014%_))))
                                          (let ((_%lp-tl195080196023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195078196018%_)))
                                                (_%lp-hd195079196021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195078196018%_))))
                                            (_%loop195077196011%_
                                             _%lp-tl195080196023%_
                                             (cons _%lp-hd195079196021%_
                                                   _%args195081196016%_))))
                                        (let ((_%args195082196026%_
                                               (reverse _%args195081196016%_)))
                                          (let ((_%g195040196028%_
                                                 _%args195082196026%_)
                                                (_%g195041196029%_
                                                 _%hd195072196001%_)
                                                (_%g195042196030%_
                                                 _%hd195063195977%_)
                                                (_%g195043196031%_
                                                 _%hd195054195953%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195043196031%_
                                                        'call-method))
                                                     (let ((__tmp201708
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195027%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195042196030%_
                                                        __tmp201708)))
                                                (_%__kont201016201017%_
                                                 _%g195040196028%_
                                                 _%g195041196029%_
                                                 _%g195042196030%_
                                                 _%g195043196031%_)
                                                (_%__match201307201308%_
                                                 _%e195044195926%_
                                                 _%hd195045195929%_
                                                 _%tl195046195931%_
                                                 _%e195047195934%_
                                                 _%hd195048195937%_
                                                 _%tl195049195939%_
                                                 _%e195050195942%_
                                                 _%hd195051195945%_
                                                 _%tl195052195947%_
                                                 _%e195053195950%_
                                                 _%hd195054195953%_
                                                 _%tl195055195955%_
                                                 _%e195056195958%_
                                                 _%hd195057195961%_
                                                 _%tl195058195963%_
                                                 _%e195059195966%_
                                                 _%hd195060195969%_
                                                 _%tl195061195971%_
                                                 _%e195062195974%_
                                                 _%hd195063195977%_
                                                 _%tl195064195979%_
                                                 _%e195065195982%_
                                                 _%hd195066195985%_
                                                 _%tl195067195987%_
                                                 _%e195068195990%_
                                                 _%hd195069195993%_
                                                 _%tl195070195995%_
                                                 _%e195071195998%_
                                                 _%hd195072196001%_
                                                 _%tl195073196003%_))))))))
                          (_%loop195077196011%_ _%target195074196006%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201014201015%_))
                    (let ((_%e195044195926%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201014201015%_))))
                      (let ((_%tl195046195931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195044195926%_)))
                            (_%hd195045195929%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195044195926%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195046195931%_))
                            (let ((_%e195047195934%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195046195931%_))))
                              (let ((_%tl195049195939%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195047195934%_)))
                                    (_%hd195048195937%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195047195934%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd195048195937%_))
                                    (let ((_%e195050195942%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd195048195937%_))))
                                      (let ((_%tl195052195947%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195050195942%_)))
                                            (_%hd195051195945%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195050195942%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd195051195945%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd195051195945%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195052195947%_))
                                                    (let ((_%e195053195950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195052195947%_))))
                                                      (let ((_%tl195055195955%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195053195950%_)))
                    (_%hd195054195953%_
                     (let () (declare (not safe)) (##car _%e195053195950%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195055195955%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195049195939%_))
                        (let ((_%e195056195958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195049195939%_))))
                          (let ((_%tl195058195963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195056195958%_)))
                                (_%hd195057195961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195056195958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195057195961%_))
                                (let ((_%e195059195966%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195057195961%_))))
                                  (let ((_%tl195061195971%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195059195966%_)))
                                        (_%hd195060195969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195059195966%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195060195969%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd195060195969%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195061195971%_))
                                                (let ((_%e195062195974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195061195971%_))))
                                                  (let ((_%tl195064195979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195062195974%_)))
                                                        (_%hd195063195977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195062195974%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195064195979%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195058195963%_))
                                                            (let ((_%e195065195982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195058195963%_))))
                      (let ((_%tl195067195987%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195065195982%_)))
                            (_%hd195066195985%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195065195982%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd195066195985%_))
                            (let ((_%e195068195990%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd195066195985%_))))
                              (let ((_%tl195070195995%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195068195990%_)))
                                    (_%hd195069195993%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195068195990%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd195069195993%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd195069195993%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195070195995%_))
                                            (let ((_%e195071195998%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195070195995%_))))
                                              (let ((_%tl195073196003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195071195998%_)))
                                                    (_%hd195072196001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195071195998%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195073196003%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl195067195987%_))
                                                        (let ((_%__splice201018201019%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl195067195987%_
                          '0))))
                  (let ((_%tl195076196008%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201018201019%_ '1)))
                        (_%target195074196006%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201018201019%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl195076196008%_))
                        (_%__match201119201120%_
                         _%e195044195926%_
                         _%hd195045195929%_
                         _%tl195046195931%_
                         _%e195047195934%_
                         _%hd195048195937%_
                         _%tl195049195939%_
                         _%e195050195942%_
                         _%hd195051195945%_
                         _%tl195052195947%_
                         _%e195053195950%_
                         _%hd195054195953%_
                         _%tl195055195955%_
                         _%e195056195958%_
                         _%hd195057195961%_
                         _%tl195058195963%_
                         _%e195059195966%_
                         _%hd195060195969%_
                         _%tl195061195971%_
                         _%e195062195974%_
                         _%hd195063195977%_
                         _%tl195064195979%_
                         _%e195065195982%_
                         _%hd195066195985%_
                         _%tl195067195987%_
                         _%e195068195990%_
                         _%hd195069195993%_
                         _%tl195070195995%_
                         _%e195071195998%_
                         _%hd195072196001%_
                         _%tl195073196003%_
                         _%__splice201018201019%_
                         _%target195074196006%_
                         _%tl195076196008%_)
                        (_%__match201307201308%_
                         _%e195044195926%_
                         _%hd195045195929%_
                         _%tl195046195931%_
                         _%e195047195934%_
                         _%hd195048195937%_
                         _%tl195049195939%_
                         _%e195050195942%_
                         _%hd195051195945%_
                         _%tl195052195947%_
                         _%e195053195950%_
                         _%hd195054195953%_
                         _%tl195055195955%_
                         _%e195056195958%_
                         _%hd195057195961%_
                         _%tl195058195963%_
                         _%e195059195966%_
                         _%hd195060195969%_
                         _%tl195061195971%_
                         _%e195062195974%_
                         _%hd195063195977%_
                         _%tl195064195979%_
                         _%e195065195982%_
                         _%hd195066195985%_
                         _%tl195067195987%_
                         _%e195068195990%_
                         _%hd195069195993%_
                         _%tl195070195995%_
                         _%e195071195998%_
                         _%hd195072196001%_
                         _%tl195073196003%_))))
                (_%__match201307201308%_
                 _%e195044195926%_
                 _%hd195045195929%_
                 _%tl195046195931%_
                 _%e195047195934%_
                 _%hd195048195937%_
                 _%tl195049195939%_
                 _%e195050195942%_
                 _%hd195051195945%_
                 _%tl195052195947%_
                 _%e195053195950%_
                 _%hd195054195953%_
                 _%tl195055195955%_
                 _%e195056195958%_
                 _%hd195057195961%_
                 _%tl195058195963%_
                 _%e195059195966%_
                 _%hd195060195969%_
                 _%tl195061195971%_
                 _%e195062195974%_
                 _%hd195063195977%_
                 _%tl195064195979%_
                 _%e195065195982%_
                 _%hd195066195985%_
                 _%tl195067195987%_
                 _%e195068195990%_
                 _%hd195069195993%_
                 _%tl195070195995%_
                 _%e195071195998%_
                 _%hd195072196001%_
                 _%tl195073196003%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201511201512%_
                                                     _%e195044195926%_
                                                     _%hd195045195929%_
                                                     _%tl195046195931%_
                                                     _%e195047195934%_
                                                     _%hd195048195937%_
                                                     _%tl195049195939%_
                                                     _%e195050195942%_
                                                     _%hd195051195945%_
                                                     _%tl195052195947%_
                                                     _%e195053195950%_
                                                     _%hd195054195953%_
                                                     _%tl195055195955%_
                                                     _%e195056195958%_
                                                     _%hd195057195961%_
                                                     _%tl195058195963%_
                                                     _%e195059195966%_
                                                     _%hd195060195969%_
                                                     _%tl195061195971%_
                                                     _%e195062195974%_
                                                     _%hd195063195977%_
                                                     _%tl195064195979%_
                                                     _%e195065195982%_
                                                     _%hd195066195985%_
                                                     _%tl195067195987%_))))
                                            (_%__match201511201512%_
                                             _%e195044195926%_
                                             _%hd195045195929%_
                                             _%tl195046195931%_
                                             _%e195047195934%_
                                             _%hd195048195937%_
                                             _%tl195049195939%_
                                             _%e195050195942%_
                                             _%hd195051195945%_
                                             _%tl195052195947%_
                                             _%e195053195950%_
                                             _%hd195054195953%_
                                             _%tl195055195955%_
                                             _%e195056195958%_
                                             _%hd195057195961%_
                                             _%tl195058195963%_
                                             _%e195059195966%_
                                             _%hd195060195969%_
                                             _%tl195061195971%_
                                             _%e195062195974%_
                                             _%hd195063195977%_
                                             _%tl195064195979%_
                                             _%e195065195982%_
                                             _%hd195066195985%_
                                             _%tl195067195987%_))
                                        (_%__match201187201188%_
                                         _%e195044195926%_
                                         _%hd195045195929%_
                                         _%tl195046195931%_
                                         _%e195047195934%_
                                         _%hd195048195937%_
                                         _%tl195049195939%_
                                         _%e195050195942%_
                                         _%hd195051195945%_
                                         _%tl195052195947%_
                                         _%e195053195950%_
                                         _%hd195054195953%_
                                         _%tl195055195955%_
                                         _%e195056195958%_
                                         _%hd195057195961%_
                                         _%tl195058195963%_
                                         _%e195059195966%_
                                         _%hd195060195969%_
                                         _%tl195061195971%_
                                         _%e195062195974%_
                                         _%hd195063195977%_
                                         _%tl195064195979%_
                                         _%e195065195982%_
                                         _%hd195066195985%_
                                         _%tl195067195987%_
                                         _%e195068195990%_
                                         _%hd195069195993%_
                                         _%tl195070195995%_))
                                    (_%__match201511201512%_
                                     _%e195044195926%_
                                     _%hd195045195929%_
                                     _%tl195046195931%_
                                     _%e195047195934%_
                                     _%hd195048195937%_
                                     _%tl195049195939%_
                                     _%e195050195942%_
                                     _%hd195051195945%_
                                     _%tl195052195947%_
                                     _%e195053195950%_
                                     _%hd195054195953%_
                                     _%tl195055195955%_
                                     _%e195056195958%_
                                     _%hd195057195961%_
                                     _%tl195058195963%_
                                     _%e195059195966%_
                                     _%hd195060195969%_
                                     _%tl195061195971%_
                                     _%e195062195974%_
                                     _%hd195063195977%_
                                     _%tl195064195979%_
                                     _%e195065195982%_
                                     _%hd195066195985%_
                                     _%tl195067195987%_))))
                            (_%__match201511201512%_
                             _%e195044195926%_
                             _%hd195045195929%_
                             _%tl195046195931%_
                             _%e195047195934%_
                             _%hd195048195937%_
                             _%tl195049195939%_
                             _%e195050195942%_
                             _%hd195051195945%_
                             _%tl195052195947%_
                             _%e195053195950%_
                             _%hd195054195953%_
                             _%tl195055195955%_
                             _%e195056195958%_
                             _%hd195057195961%_
                             _%tl195058195963%_
                             _%e195059195966%_
                             _%hd195060195969%_
                             _%tl195061195971%_
                             _%e195062195974%_
                             _%hd195063195977%_
                             _%tl195064195979%_
                             _%e195065195982%_
                             _%hd195066195985%_
                             _%tl195067195987%_))))
                    (_%__match201449201450%_
                     _%e195044195926%_
                     _%hd195045195929%_
                     _%tl195046195931%_
                     _%e195047195934%_
                     _%hd195048195937%_
                     _%tl195049195939%_
                     _%e195050195942%_
                     _%hd195051195945%_
                     _%tl195052195947%_
                     _%e195053195950%_
                     _%hd195054195953%_
                     _%tl195055195955%_
                     _%e195056195958%_
                     _%hd195057195961%_
                     _%tl195058195963%_
                     _%e195059195966%_
                     _%hd195060195969%_
                     _%tl195061195971%_
                     _%e195062195974%_
                     _%hd195063195977%_
                     _%tl195064195979%_))
                (_%__kont201032201033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201032201033%_))
                                            (_%__kont201032201033%_))
                                        (_%__kont201032201033%_))))
                                (_%__kont201032201033%_))))
                        (_%__kont201032201033%_))
                    (_%__kont201032201033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201032201033%_))
                                                (_%__kont201032201033%_))
                                            (_%__kont201032201033%_))))
                                    (_%__kont201032201033%_))))
                            (_%__kont201032201033%_))))
                    (_%__kont201032201033%_))))))))))
