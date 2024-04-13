(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1713001411)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp176346 (list gxc#::identity::t))
            (__tmp176345 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp176346
         '()
         __tmp176345
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args175143%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args175143%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp176347
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
        (__make-promise __tmp176347)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx175135%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self175138%_
                (let ((__obj176338
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj176338))
               (__tmp176348
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175138%_ _%stx175135%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176348
           gxc#current-compile-method
           _%self175138%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp176350 (list gxc#::false::t))
            (__tmp176349 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp176350
         '()
         __tmp176349
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args175132%_
        (apply make-instance gxc#::extract-receiver::t _%$args175132%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp176351
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
        (__make-promise __tmp176351)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx175124%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self175127%_
                (let ((__obj176340
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj176340))
               (__tmp176352
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175127%_ _%stx175124%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176352
           gxc#current-compile-method
           _%self175127%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp176354 (list gxc#::void::t))
            (__tmp176353 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp176354
         '(receiver methods slots)
         __tmp176353
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args175121%_
        (apply make-instance gxc#::collect-object-refs::t _%$args175121%_)))
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
      (let ((__tmp176355
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
        (__make-promise __tmp176355)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords175087%_
               _%receiver175082175088%_
               _%methods175083175090%_
               _%slots175084175092%_
               _%stx175094%_)
        (let* ((_%receiver175097%_
                (if (eq? _%receiver175082175088%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175082175088%_))
               (_%methods175099%_
                (if (eq? _%methods175083175090%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175083175090%_))
               (_%slots175101%_
                (if (eq? _%slots175084175092%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175084175092%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self175103%_
                  (let ((__obj176342
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
                       __obj176342
                       _%receiver175097%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176342
                       _%methods175099%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176342
                       _%slots175101%_
                       '3
                       '#f
                       '#f))
                    __obj176342))
                 (__tmp176356
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175103%_ _%stx175094%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176356
             gxc#current-compile-method
             _%self175103%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords175110%_ . _%args175111%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords175110%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175110%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175110%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175110%_
                  'slots:
                  absent-value))
               _%args175111%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args175085175117%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args175085175117%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp176358 (list gxc#::basic-xform-expression::t))
            (__tmp176357 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp176358
         '(receiver klass methods slots)
         __tmp176357
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args175078%_
        (apply make-instance gxc#::subst-object-refs::t _%$args175078%_)))
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
      (let ((__tmp176359
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
        (__make-promise __tmp176359)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords175040%_
               _%receiver175034175041%_
               _%klass175035175043%_
               _%methods175036175045%_
               _%slots175037175047%_
               _%stx175049%_)
        (let* ((_%receiver175052%_
                (if (eq? _%receiver175034175041%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175034175041%_))
               (_%klass175054%_
                (if (eq? _%klass175035175043%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass175035175043%_))
               (_%methods175056%_
                (if (eq? _%methods175036175045%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175036175045%_))
               (_%slots175058%_
                (if (eq? _%slots175037175047%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175037175047%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self175060%_
                  (let ((__obj176344
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
                       __obj176344
                       _%receiver175052%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176344
                       _%klass175054%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176344
                       _%methods175056%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176344
                       _%slots175058%_
                       '4
                       '#f
                       '#f))
                    __obj176344))
                 (__tmp176360
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175060%_ _%stx175049%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176360
             gxc#current-compile-method
             _%self175060%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords175067%_ . _%args175068%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords175067%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175067%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175067%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175067%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175067%_
                  'slots:
                  absent-value))
               _%args175068%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args175038175074%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args175038175074%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self172149%_ _%stx172150%_)
        (letrec ((_%generate-method-bind172152%_
                  (lambda (_%$klass175026%_
                           _%$method-table175027%_
                           _%id175028%_
                           _%$id175029%_)
                    (let ((_%$tmp175031%_
                           (let ((__tmp176361
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176361))))
                      (cons (cons _%$id175029%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp175031%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table175027%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id175028%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp175031%_ '()))
                    (cons (cons '%#ref (cons _%$tmp175031%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id175028%_
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
                 (_%generate-slot-bind172153%_
                  (lambda (_%$klass175020%_ _%id175021%_ _%$id175022%_)
                    (let ((_%$tmp175024%_
                           (let ((__tmp176362
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176362))))
                      (cons (cons _%$id175022%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp175024%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass175020%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id175021%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp175024%_ '()))
                        (cons (cons '%#ref (cons _%$tmp175024%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id175021%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl172154%_
                  (lambda (_%$klass175014%_
                           _%$method-table175015%_
                           _%methods-bind175016%_
                           _%slots-bind175017%_
                           _%specializer-impl175018%_)
                    (let ((__tmp176363
                           (cons '%#lambda
                                 (cons (cons _%$klass175014%_
                                             (cons _%$method-table175015%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind175017%_
                                                            _%methods-bind175016%_))
                                                         (cons _%specializer-impl175018%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176363 _%stx172150%_))))
                 (_%generate-specializer-def172155%_
                  (lambda (_%id175010%_
                           _%specializer-id175011%_
                           _%specializer-impl175012%_)
                    (let ((__tmp176364
                           (cons '%#begin
                                 (cons _%stx172150%_
                                       (cons (let ((__tmp176365
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id175011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl175012%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176365
                                                _%stx172150%_))
                                             (cons (let ((__tmp176366
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id175010%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id175011%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176366
                                                      _%stx172150%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176364 _%stx172150%_)))))
          (let* ((_%__stx175232175233%_ _%stx172150%_)
                 (_%g172158172178%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175232175233%_)))))
            (let ((_%__kont175234175235%_
                   (lambda (_%L172222%_ _%L172223%_)
                     (let ((_%method-calls172242%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs172243%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty172244%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?172246%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls172242%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs172243%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L172222%_))
                             (let* ((_%__stx175146175147%_ _%L172222%_)
                                    (_%g172634172652%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx175146175147%_)))))
                               (let ((_%__kont175148175149%_
                                      (lambda (_%L172688%_
                                               _%L172689%_
                                               _%L172690%_)
                                        (let ((_%receiver172710%_
                                               (let ((_%$e172707%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L172688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e172707%_
                                                     _%$e172707%_
                                                     _%L172690%_))))
                                          (for-each
                                           (lambda (_%g172711172713%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver172710%_
                                              _%method-calls172242%_
                                              _%slot-refs172243%_
                                              _%g172711172713%_))
                                           _%L172688%_)
                                          (if (_%no-specializer?172246%_)
                                              _%stx172150%_
                                              (let* ((_%specializer-id172722%_
                                                      (let* ((_%id172716%_
                                                              (let ((__tmp176367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172223%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176367 '"::specialize")))
                     (_%specializer-id172719%_
                      (let ((__tmp176368
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172150%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172716%_ __tmp176368))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172719%_))
                _%specializer-id172719%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172724%_
                                                      (let ((__tmp176369
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176369)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172726%_
                                                      (let ((__tmp176370
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176370)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172728%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172242%_)))
                                                     (_%$methods172732%_
                                                      (map (lambda (_%id172730%_)
                                                             (let ((__tmp176371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172730%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176371)))
                   _%methods172728%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172741%_
                                                      (for-each
                                                       (lambda (_%g172733172736%_
                                                                _%g172734172738%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172242%_
                                                            _%g172733172736%_
                                                            _%g172734172738%_)))
                                                       _%methods172728%_
                                                       _%$methods172732%_))
                                                     (_%methods-bind172751%_
                                                      (map (lambda (_%g172743172746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172744172748%_)
                     (_%generate-method-bind172152%_
                      _%$klass172724%_
                      _%$method-table172726%_
                      _%g172743172746%_
                      _%g172744172748%_))
                   _%methods172728%_
                   _%$methods172732%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172753%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172243%_)))
                                                     (_%$slots172757%_
                                                      (map (lambda (_%id172755%_)
                                                             (let ((__tmp176372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172755%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176372)))
                   _%slots172753%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172766%_
                                                      (for-each
                                                       (lambda (_%g172758172761%_
                                                                _%g172759172763%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172243%_
                                                            _%g172758172761%_
                                                            _%g172759172763%_)))
                                                       _%slots172753%_
                                                       _%$slots172757%_))
                                                     (_%slots-bind172775%_
                                                      (map (lambda (_%g172767172770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172768172772%_)
                     (_%generate-slot-bind172153%_
                      _%$klass172724%_
                      _%g172767172770%_
                      _%g172768172772%_))
                   _%slots172753%_
                   _%$slots172757%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body172781%_
                                                      (map (lambda (_%g172776172778%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver172710%_
                                                              _%$klass172724%_
                                                              _%method-calls172242%_
                                                              _%slot-refs172243%_
                                                              _%g172776172778%_))
                                                           _%L172688%_))
                                                     (_%specializer-impl172783%_
                                                      (let ((__tmp176373
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L172690%_ _%L172689%_)
                                 _%specializer-body172781%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176373 _%stx172150%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172785%_
                                                      (_%generate-specializer-impl172154%_
                                                       _%$klass172724%_
                                                       _%$method-table172726%_
                                                       _%methods-bind172751%_
                                                       _%slots-bind172775%_
                                                       _%specializer-impl172783%_)))
                                                (let ((__tmp176375
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172223%_)))
                                                      (__tmp176374
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172722%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176375
                                                   '" => "
                                                   __tmp176374))
                                                (_%generate-specializer-def172155%_
                                                 _%L172223%_
                                                 _%specializer-id172722%_
                                                 _%specializer-impl172785%_))))))
                                     (_%__kont175150175151%_
                                      (lambda () _%stx172150%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx175146175147%_))
                                     (let ((_%e172639172664%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx175146175147%_))))
                                       (let ((_%tl172641172669%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e172639172664%_)))
                                             (_%hd172640172667%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e172639172664%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl172641172669%_))
                                             (let ((_%e172642172672%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl172641172669%_))))
                                               (let ((_%tl172644172677%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e172642172672%_)))
                                                     (_%hd172643172675%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e172642172672%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd172643172675%_))
                                                     (let ((_%e172645172680%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd172643172675%_))))
                                                       (let ((_%tl172647172685%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172645172680%_)))
                     (_%hd172646172683%_
                      (let () (declare (not safe)) (##car _%e172645172680%_))))
                 (_%__kont175148175149%_
                  _%tl172644172677%_
                  _%tl172647172685%_
                  _%hd172646172683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont175150175151%_))))
                                             (_%__kont175150175151%_))))
                                     (_%__kont175150175151%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L172222%_))
                                 (let* ((_%g172792172811%_
                                         (lambda (_%g172793172808%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g172793172808%_))))
                                        (_%g172791173109%_
                                         (lambda (_%g172793172814%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g172793172814%_))
                                               (let ((_%e172795172816%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g172793172814%_))))
                                                 (let ((_%hd172796172819%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172795172816%_)))
                                                       (_%tl172797172821%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172795172816%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl172797172821%_))
                                                       (let ((_g176376_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl172797172821%_ '0))))
                 (begin
                   (let ((_g176377_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g176376_)
                                (##vector-length _g176376_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g176377_ 2)))
                         (error "Context expects 2 values" _g176377_)))
                   (let ((_%target172798172824%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176376_ 0)))
                         (_%tl172800172826%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176376_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl172800172826%_))
                         (letrec ((_%loop172801172829%_
                                   (lambda (_%hd172799172832%_
                                            _%clause172805172834%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172799172832%_))
                                         (let ((_%e172802172837%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172799172832%_))))
                                           (let ((_%lp-hd172803172840%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172802172837%_)))
                                                 (_%lp-tl172804172842%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172802172837%_))))
                                             (_%loop172801172829%_
                                              _%lp-tl172804172842%_
                                              (cons _%lp-hd172803172840%_
                                                    _%clause172805172834%_))))
                                         (let ((_%clause172806172845%_
                                                (reverse _%clause172805172834%_)))
                                           ((lambda (_%L172848%_)
                                              (for-each
                                               (lambda (_%clause172862%_)
                                                 (let* ((_%__stx175172175173%_
                                                         _%clause172862%_)
                                                        (_%g172865172880%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx175172175173%_)))))
                                                   (let ((_%__kont175174175175%_
                                                          (lambda (_%L172908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L172909%_
                           _%L172910%_)
                    (let ((_%receiver172929%_
                           (let ((_%$e172926%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L172908%_))))
                             (if _%$e172926%_ _%$e172926%_ _%L172910%_))))
                      (for-each
                       (lambda (_%g172930172932%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver172929%_
                          _%method-calls172242%_
                          _%slot-refs172243%_
                          _%g172930172932%_))
                       _%L172908%_))))
                 (_%__kont175176175177%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx175172175173%_))
                                                         (let ((_%e172870172892%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx175172175173%_))))
                   (let ((_%tl172872172897%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172870172892%_)))
                         (_%hd172871172895%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172870172892%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd172871172895%_))
                         (let ((_%e172873172900%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd172871172895%_))))
                           (let ((_%tl172875172905%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e172873172900%_)))
                                 (_%hd172874172903%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e172873172900%_))))
                             (_%__kont175174175175%_
                              _%tl172872172897%_
                              _%tl172875172905%_
                              _%hd172874172903%_)))
                         (_%__kont175176175177%_))))
                 (_%__kont175176175177%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp176378
                                                      (lambda (_%g172937172940%_
                                                               _%g172938172942%_)
                                                        (cons _%g172937172940%_
                                                              _%g172938172942%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176378
                                                  '()
                                                  _%L172848%_)))
                                              (if (_%no-specializer?172246%_)
                                                  _%stx172150%_
                                                  (let* ((_%specializer-id172951%_
                                                          (let* ((_%id172945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176379
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172223%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176379 '"::specialize")))
                         (_%specializer-id172948%_
                          (let ((__tmp176380
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172150%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id172945%_
                             __tmp176380))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id172948%_))
                    _%specializer-id172948%_))
                 (_%$klass172953%_
                  (let ((__tmp176381
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176381)))
                 (_%$method-table172955%_
                  (let ((__tmp176382
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176382)))
                 (_%methods172957%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172242%_)))
                 (_%$methods172961%_
                  (map (lambda (_%id172959%_)
                         (let ((__tmp176383 (gensym _%id172959%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176383)))
                       _%methods172957%_))
                 (_%_172970%_
                  (for-each
                   (lambda (_%g172962172965%_ _%g172963172967%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172242%_
                        _%g172962172965%_
                        _%g172963172967%_)))
                   _%methods172957%_
                   _%$methods172961%_))
                 (_%methods-bind172980%_
                  (map (lambda (_%g172972172975%_ _%g172973172977%_)
                         (_%generate-method-bind172152%_
                          _%$klass172953%_
                          _%$method-table172955%_
                          _%g172972172975%_
                          _%g172973172977%_))
                       _%methods172957%_
                       _%$methods172961%_))
                 (_%slots172982%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172243%_)))
                 (_%$slots172986%_
                  (map (lambda (_%id172984%_)
                         (let ((__tmp176384 (gensym _%id172984%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176384)))
                       _%slots172982%_))
                 (_%_172995%_
                  (for-each
                   (lambda (_%g172987172990%_ _%g172988172992%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172243%_
                        _%g172987172990%_
                        _%g172988172992%_)))
                   _%slots172982%_
                   _%$slots172986%_))
                 (_%slots-bind173004%_
                  (map (lambda (_%g172996172999%_ _%g172997173001%_)
                         (_%generate-slot-bind172153%_
                          _%$klass172953%_
                          _%g172996172999%_
                          _%g172997173001%_))
                       _%slots172982%_
                       _%$slots172986%_))
                 (_%specializer-clauses173102%_
                  (map (lambda (_%clause173006%_)
                         (let* ((_%__stx175192175193%_ _%clause173006%_)
                                (_%g173009173024%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx175192175193%_)))))
                           (let ((_%__kont175194175195%_
                                  (lambda (_%L173052%_ _%L173053%_ _%L173054%_)
                                    (let* ((_%receiver173083%_
                                            (let ((_%$e173080%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L173052%_))))
                                              (if _%$e173080%_
                                                  _%$e173080%_
                                                  _%L173054%_)))
                                           (_%body173089%_
                                            (map (lambda (_%g173084173086%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver173083%_
                                                    _%$klass172953%_
                                                    _%method-calls172242%_
                                                    _%slot-refs172243%_
                                                    _%g173084173086%_))
                                                 _%L173052%_)))
                                      (cons (cons _%L173054%_ _%L173053%_)
                                            _%body173089%_))))
                                 (_%__kont175196175197%_
                                  (lambda () _%clause173006%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx175192175193%_))
                                 (let ((_%e173014173036%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx175192175193%_))))
                                   (let ((_%tl173016173041%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e173014173036%_)))
                                         (_%hd173015173039%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e173014173036%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd173015173039%_))
                                         (let ((_%e173017173044%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd173015173039%_))))
                                           (let ((_%tl173019173049%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173017173044%_)))
                                                 (_%hd173018173047%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173017173044%_))))
                                             (_%__kont175194175195%_
                                              _%tl173016173041%_
                                              _%tl173019173049%_
                                              _%hd173018173047%_)))
                                         (_%__kont175196175197%_))))
                                 (_%__kont175196175197%_)))))
                       (let ((__tmp176385
                              (lambda (_%g173094173097%_ _%g173095173099%_)
                                (cons _%g173094173097%_ _%g173095173099%_))))
                         (declare (not safe))
                         (__foldr1 __tmp176385 '() _%L172848%_))))
                 (_%specializer-impl173104%_
                  (let ((__tmp176386
                         (cons '%#case-lambda _%specializer-clauses173102%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176386 _%stx172150%_)))
                 (_%specializer-impl173106%_
                  (_%generate-specializer-impl172154%_
                   _%$klass172953%_
                   _%$method-table172955%_
                   _%methods-bind172980%_
                   _%slots-bind173004%_
                   _%specializer-impl173104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176388
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172223%_)))
                                                          (__tmp176387
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id172951%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176388
                                                       '" => "
                                                       __tmp176387))
                                                    (_%generate-specializer-def172155%_
                                                     _%L172223%_
                                                     _%specializer-id172951%_
                                                     _%specializer-impl173106%_))))
                                            _%clause172806172845%_))))))
                           (_%loop172801172829%_ _%target172798172824%_ '()))
                         (_%g172792172811%_ _%g172793172814%_)))))
               (_%g172792172811%_ _%g172793172814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172792172811%_
                                                _%g172793172814%_)))))
                                   (_%g172791173109%_ _%L172222%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L172222%_))
                                     (let* ((_%g173113173143%_
                                             (lambda (_%g173114173140%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g173114173140%_))))
                                            (_%g173112173774%_
                                             (lambda (_%g173114173146%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g173114173146%_))
                                                   (let ((_%e173118173148%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g173114173146%_))))
                                                     (let ((_%hd173119173151%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173118173148%_)))
                                                           (_%tl173120173153%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173118173148%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173120173153%_))
                                                           (let ((_%e173121173156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173120173153%_))))
                     (let ((_%hd173122173159%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173121173156%_)))
                           (_%tl173123173161%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173121173156%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173122173159%_))
                           (let ((_%e173124173164%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173122173159%_))))
                             (let ((_%hd173125173167%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173124173164%_)))
                                   (_%tl173126173169%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173124173164%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173125173167%_))
                                   (let ((_%e173127173172%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173125173167%_))))
                                     (let ((_%hd173128173175%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173127173172%_)))
                                           (_%tl173129173177%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173127173172%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd173128173175%_))
                                           (let ((_%e173130173180%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd173128173175%_))))
                                             (let ((_%hd173131173183%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173130173180%_)))
                                                   (_%tl173132173185%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173130173180%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173132173185%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl173129173177%_))
                                                       (let ((_%e173133173188%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl173129173177%_))))
                 (let ((_%hd173134173191%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173133173188%_)))
                       (_%tl173135173193%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173133173188%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173135173193%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl173126173169%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173123173161%_))
                               (let ((_%e173136173196%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173123173161%_))))
                                 (let ((_%hd173137173199%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173136173196%_)))
                                       (_%tl173138173201%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173136173196%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173138173201%_))
                                       ((lambda (_%L173204%_
                                                 _%L173205%_
                                                 _%L173206%_)
                                          (let* ((_%g173230173248%_
                                                  (lambda (_%g173231173245%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173231173245%_))))
                                                 (_%g173229173304%_
                                                  (lambda (_%g173231173251%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173231173251%_))
                                                        (let ((_%e173235173253%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173231173251%_))))
                  (let ((_%hd173236173256%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173235173253%_)))
                        (_%tl173237173258%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173235173253%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173237173258%_))
                        (let ((_%e173238173261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173237173258%_))))
                          (let ((_%hd173239173264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173238173261%_)))
                                (_%tl173240173266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173238173261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173239173264%_))
                                (let ((_%e173241173269%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173239173264%_))))
                                  (let ((_%hd173242173272%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173241173269%_)))
                                        (_%tl173243173274%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173241173269%_))))
                                    ((lambda (_%L173277%_
                                              _%L173278%_
                                              _%L173279%_)
                                       (let ((_%receiver173298%_
                                              (let ((_%$e173295%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L173277%_))))
                                                (if _%$e173295%_
                                                    _%$e173295%_
                                                    _%L173279%_))))
                                         (for-each
                                          (lambda (_%g173299173301%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver173298%_
                                             _%method-calls172242%_
                                             _%slot-refs172243%_
                                             _%g173299173301%_))
                                          _%L173277%_)))
                                     _%tl173240173266%_
                                     _%tl173243173274%_
                                     _%hd173242173272%_)))
                                (_%g173230173248%_ _%g173231173251%_))))
                        (_%g173230173248%_ _%g173231173251%_))))
                (_%g173230173248%_ _%g173231173251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173229173304%_ _%L173205%_))
                                          (let* ((_%g173307173326%_
                                                  (lambda (_%g173308173323%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173308173323%_))))
                                                 (_%g173306173450%_
                                                  (lambda (_%g173308173329%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173308173329%_))
                                                        (let ((_%e173310173331%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173308173329%_))))
                  (let ((_%hd173311173334%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173310173331%_)))
                        (_%tl173312173336%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173310173331%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173312173336%_))
                        (let ((_g176389_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl173312173336%_
                                  '0))))
                          (begin
                            (let ((_g176390_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176389_)
                                         (##vector-length _g176389_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176390_ 2)))
                                  (error "Context expects 2 values"
                                         _g176390_)))
                            (let ((_%target173313173339%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176389_ 0)))
                                  (_%tl173315173341%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176389_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173315173341%_))
                                  (letrec ((_%loop173316173344%_
                                            (lambda (_%hd173314173347%_
                                                     _%clause173320173349%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173314173347%_))
                                                  (let ((_%e173317173352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173314173347%_))))
                                                    (let ((_%lp-hd173318173355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173317173352%_)))
                                                          (_%lp-tl173319173357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173317173352%_))))
                                                      (_%loop173316173344%_
                                                       _%lp-tl173319173357%_
                                                       (cons _%lp-hd173318173355%_
                                                             _%clause173320173349%_))))
                                                  (let ((_%clause173321173360%_
                                                         (reverse _%clause173320173349%_)))
                                                    ((lambda (_%L173363%_)
                                                       (for-each
                                                        (lambda (_%clause173376%_)
                                                          (let* ((_%g173378173393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g173379173390%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173379173390%_))))
                         (_%g173377173440%_
                          (lambda (_%g173379173396%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173379173396%_))
                                (let ((_%e173383173398%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173379173396%_))))
                                  (let ((_%hd173384173401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173383173398%_)))
                                        (_%tl173385173403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173383173398%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173384173401%_))
                                        (let ((_%e173386173406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173384173401%_))))
                                          (let ((_%hd173387173409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173386173406%_)))
                                                (_%tl173388173411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173386173406%_))))
                                            ((lambda (_%L173414%_
                                                      _%L173415%_
                                                      _%L173416%_)
                                               (let ((_%receiver173434%_
                                                      (let ((_%$e173431%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L173414%_))))
                (if _%$e173431%_ _%$e173431%_ _%L173416%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g173435173437%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver173434%_
                                                     _%method-calls172242%_
                                                     _%slot-refs172243%_
                                                     _%g173435173437%_))
                                                  _%L173414%_)))
                                             _%tl173385173403%_
                                             _%tl173388173411%_
                                             _%hd173387173409%_)))
                                        (_%g173378173393%_
                                         _%g173379173396%_))))
                                (_%g173378173393%_ _%g173379173396%_)))))
                    (_%g173377173440%_ _%clause173376%_)))
                (let ((__tmp176391
                       (lambda (_%g173442173445%_ _%g173443173447%_)
                         (cons _%g173442173445%_ _%g173443173447%_))))
                  (declare (not safe))
                  (__foldr1 __tmp176391 '() _%L173363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause173321173360%_))))))
                                    (_%loop173316173344%_
                                     _%target173313173339%_
                                     '()))
                                  (_%g173307173326%_ _%g173308173329%_)))))
                        (_%g173307173326%_ _%g173308173329%_))))
                (_%g173307173326%_ _%g173308173329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173306173450%_ _%L173204%_))
                                          (if (_%no-specializer?172246%_)
                                              _%stx172150%_
                                              (let* ((_%specializer-id173459%_
                                                      (let* ((_%id173453%_
                                                              (let ((__tmp176392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172223%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176392 '"::specialize")))
                     (_%specializer-id173456%_
                      (let ((__tmp176393
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172150%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173453%_ __tmp176393))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173456%_))
                _%specializer-id173456%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173461%_
                                                      (let ((__tmp176394
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176394)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173463%_
                                                      (let ((__tmp176395
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176395)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173465%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172242%_)))
                                                     (_%$methods173469%_
                                                      (map (lambda (_%id173467%_)
                                                             (let ((__tmp176396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173467%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176396)))
                   _%methods173465%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173478%_
                                                      (for-each
                                                       (lambda (_%g173470173473%_
                                                                _%g173471173475%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172242%_
                                                            _%g173470173473%_
                                                            _%g173471173475%_)))
                                                       _%methods173465%_
                                                       _%$methods173469%_))
                                                     (_%methods-bind173488%_
                                                      (map (lambda (_%g173480173483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173481173485%_)
                     (_%generate-method-bind172152%_
                      _%$klass173461%_
                      _%$method-table173463%_
                      _%g173480173483%_
                      _%g173481173485%_))
                   _%methods173465%_
                   _%$methods173469%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173490%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172243%_)))
                                                     (_%$slots173494%_
                                                      (map (lambda (_%id173492%_)
                                                             (let ((__tmp176397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173492%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176397)))
                   _%slots173490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173503%_
                                                      (for-each
                                                       (lambda (_%g173495173498%_
                                                                _%g173496173500%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172243%_
                                                            _%g173495173498%_
                                                            _%g173496173500%_)))
                                                       _%slots173490%_
                                                       _%$slots173494%_))
                                                     (_%slots-bind173512%_
                                                      (map (lambda (_%g173504173507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173505173509%_)
                     (_%generate-slot-bind172153%_
                      _%$klass173461%_
                      _%g173504173507%_
                      _%g173505173509%_))
                   _%slots173490%_
                   _%$slots173494%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr173604%_
                                                      (let* ((_%g173514173532%_
                                                              (lambda (_%g173515173529%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173515173529%_))))
                     (_%g173513173601%_
                      (lambda (_%g173515173535%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173515173535%_))
                            (let ((_%e173519173537%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173515173535%_))))
                              (let ((_%hd173520173540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173519173537%_)))
                                    (_%tl173521173542%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173519173537%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173521173542%_))
                                    (let ((_%e173522173545%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173521173542%_))))
                                      (let ((_%hd173523173548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173522173545%_)))
                                            (_%tl173524173550%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173522173545%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173523173548%_))
                                            (let ((_%e173525173553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173523173548%_))))
                                              (let ((_%hd173526173556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173525173553%_)))
                                                    (_%tl173527173558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173525173553%_))))
                                                ((lambda (_%L173561%_
                                                          _%L173562%_
                                                          _%L173563%_)
                                                   (let* ((_%receiver173592%_
                                                           (let ((_%$e173589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L173561%_))))
                     (if _%$e173589%_ _%$e173589%_ _%L173563%_)))
                  (_%body173598%_
                   (map (lambda (_%g173593173595%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver173592%_
                           _%$klass173461%_
                           _%method-calls172242%_
                           _%slot-refs172243%_
                           _%g173593173595%_))
                        _%L173561%_))
                  (__tmp176398
                   (cons '%#lambda
                         (cons (cons _%L173563%_ _%L173562%_)
                               _%body173598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176398
                                                      _%L173205%_)))
                                                 _%tl173524173550%_
                                                 _%tl173527173558%_
                                                 _%hd173526173556%_)))
                                            (_%g173514173532%_
                                             _%g173515173535%_))))
                                    (_%g173514173532%_ _%g173515173535%_))))
                            (_%g173514173532%_ _%g173515173535%_)))))
                (_%g173513173601%_ _%L173205%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr173767%_
                                                      (let* ((_%g173606173625%_
                                                              (lambda (_%g173607173622%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173607173622%_))))
                     (_%g173605173764%_
                      (lambda (_%g173607173628%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173607173628%_))
                            (let ((_%e173609173630%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173607173628%_))))
                              (let ((_%hd173610173633%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173609173630%_)))
                                    (_%tl173611173635%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173609173630%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl173611173635%_))
                                    (let ((_g176399_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl173611173635%_
                                              '0))))
                                      (begin
                                        (let ((_g176400_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g176399_)
                                                     (##vector-length
                                                      _g176399_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g176400_ 2)))
                                              (error "Context expects 2 values"
                                                     _g176400_)))
                                        (let ((_%target173612173638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176399_ 0)))
                                              (_%tl173614173640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176399_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173614173640%_))
                                              (letrec ((_%loop173615173643%_
                                                        (lambda (_%hd173613173646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause173619173648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173613173646%_))
                      (let ((_%e173616173651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173613173646%_))))
                        (let ((_%lp-hd173617173654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173616173651%_)))
                              (_%lp-tl173618173656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173616173651%_))))
                          (_%loop173615173643%_
                           _%lp-tl173618173656%_
                           (cons _%lp-hd173617173654%_
                                 _%clause173619173648%_))))
                      (let ((_%clause173620173659%_
                             (reverse _%clause173619173648%_)))
                        ((lambda (_%L173662%_)
                           (let* ((_%clauses173762%_
                                   (map (lambda (_%clause173676%_)
                                          (let* ((_%__stx175212175213%_
                                                  _%clause173676%_)
                                                 (_%g173679173694%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx175212175213%_)))))
                                            (let ((_%__kont175214175215%_
                                                   (lambda (_%L173722%_
                                                            _%L173723%_
                                                            _%L173724%_)
                                                     (let* ((_%receiver173743%_
                                                             (let ((_%$e173740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L173722%_))))
                       (if _%$e173740%_ _%$e173740%_ _%L173724%_)))
                    (_%body173749%_
                     (map (lambda (_%g173744173746%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver173743%_
                             _%$klass173461%_
                             _%method-calls172242%_
                             _%slot-refs172243%_
                             _%g173744173746%_))
                          _%L173722%_)))
               (cons (cons _%L173724%_ _%L173723%_) _%body173749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175216175217%_
                                                   (lambda ()
                                                     _%clause173676%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx175212175213%_))
                                                  (let ((_%e173684173706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx175212175213%_))))
                                                    (let ((_%tl173686173711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173684173706%_)))
                                                          (_%hd173685173709%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173684173706%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd173685173709%_))
                                                          (let ((_%e173687173714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd173685173709%_))))
                    (let ((_%tl173689173719%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173687173714%_)))
                          (_%hd173688173717%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173687173714%_))))
                      (_%__kont175214175215%_
                       _%tl173686173711%_
                       _%tl173689173719%_
                       _%hd173688173717%_)))
                  (_%__kont175216175217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175216175217%_)))))
                                        (let ((__tmp176401
                                               (lambda (_%g173754173757%_
                                                        _%g173755173759%_)
                                                 (cons _%g173754173757%_
                                                       _%g173755173759%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp176401
                                           '()
                                           _%L173662%_))))
                                  (__tmp176402
                                   (cons '%#case-lambda _%clauses173762%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176402 _%L173204%_)))
                         _%clause173620173659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173615173643%_
                                                 _%target173612173638%_
                                                 '()))
                                              (_%g173606173625%_
                                               _%g173607173628%_)))))
                                    (_%g173606173625%_ _%g173607173628%_))))
                            (_%g173606173625%_ _%g173607173628%_)))))
                (_%g173605173764%_ _%L173204%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173769%_
                                                      (let ((__tmp176403
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L173206%_ '())
                                             (cons _%specializer-lambda-expr173604%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr173767%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176403 _%stx172150%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173771%_
                                                      (_%generate-specializer-impl172154%_
                                                       _%$klass173461%_
                                                       _%$method-table173463%_
                                                       _%methods-bind173488%_
                                                       _%slots-bind173512%_
                                                       _%specializer-impl173769%_)))
                                                (let ((__tmp176405
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172223%_)))
                                                      (__tmp176404
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173459%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176405
                                                   '" => "
                                                   __tmp176404))
                                                (_%generate-specializer-def172155%_
                                                 _%L172223%_
                                                 _%specializer-id173459%_
                                                 _%specializer-impl173771%_))))
                                        _%hd173137173199%_
                                        _%hd173134173191%_
                                        _%hd173131173183%_)
                                       (_%g173113173143%_ _%g173114173146%_))))
                               (_%g173113173143%_ _%g173114173146%_))
                           (_%g173113173143%_ _%g173114173146%_))
                       (_%g173113173143%_ _%g173114173146%_))))
               (_%g173113173143%_ _%g173114173146%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173113173143%_
                                                    _%g173114173146%_))))
                                           (_%g173113173143%_
                                            _%g173114173146%_))))
                                   (_%g173113173143%_ _%g173114173146%_))))
                           (_%g173113173143%_ _%g173114173146%_))))
                   (_%g173113173143%_ _%g173114173146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173113173143%_
                                                    _%g173114173146%_)))))
                                       (_%g173112173774%_ _%L172222%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L172222%_))
                                         (let* ((_%g173778173831%_
                                                 (lambda (_%g173779173828%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173779173828%_))))
                                                (_%g173777175002%_
                                                 (lambda (_%g173779173834%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173779173834%_))
                                                       (let ((_%e173785173836%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173779173834%_))))
                 (let ((_%hd173786173839%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173785173836%_)))
                       (_%tl173787173841%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173785173836%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd173786173839%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd173786173839%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173787173841%_))
                               (let ((_%e173788173844%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173787173841%_))))
                                 (let ((_%hd173789173847%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173788173844%_)))
                                       (_%tl173790173849%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173788173844%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173789173847%_))
                                       (let ((_%e173791173852%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173789173847%_))))
                                         (let ((_%hd173792173855%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173791173852%_)))
                                               (_%tl173793173857%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173791173852%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173792173855%_))
                                               (let ((_%e173794173860%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173792173855%_))))
                                                 (let ((_%hd173795173863%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173794173860%_)))
                                                       (_%tl173796173865%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173794173860%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd173795173863%_))
                                                       (let ((_%e173797173868%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd173795173863%_))))
                 (let ((_%hd173798173871%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173797173868%_)))
                       (_%tl173799173873%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173797173868%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173799173873%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl173796173865%_))
                           (let ((_%e173800173876%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl173796173865%_))))
                             (let ((_%hd173801173879%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173800173876%_)))
                                   (_%tl173802173881%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173800173876%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173801173879%_))
                                   (let ((_%e173803173884%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173801173879%_))))
                                     (let ((_%hd173804173887%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173803173884%_)))
                                           (_%tl173805173889%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173803173884%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd173804173887%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd173804173887%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl173805173889%_))
                                                   (let ((_%e173806173892%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl173805173889%_))))
                                                     (let ((_%hd173807173895%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173806173892%_)))
                                                           (_%tl173808173897%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173806173892%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd173807173895%_))
                                                           (let ((_%e173809173900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd173807173895%_))))
                     (let ((_%hd173810173903%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173809173900%_)))
                           (_%tl173811173905%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173809173900%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173810173903%_))
                           (let ((_%e173812173908%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173810173903%_))))
                             (let ((_%hd173813173911%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173812173908%_)))
                                   (_%tl173814173913%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173812173908%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173813173911%_))
                                   (let ((_%e173815173916%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173813173911%_))))
                                     (let ((_%hd173816173919%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173815173916%_)))
                                           (_%tl173817173921%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173815173916%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173817173921%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl173814173913%_))
                                               (let ((_%e173818173924%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl173814173913%_))))
                                                 (let ((_%hd173819173927%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173818173924%_)))
                                                       (_%tl173820173929%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173818173924%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173820173929%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl173811173905%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl173808173897%_))
                       (let ((_%e173821173932%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173808173897%_))))
                         (let ((_%hd173822173935%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173821173932%_)))
                               (_%tl173823173937%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173821173932%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173823173937%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl173802173881%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173793173857%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl173790173849%_))
                                           (let ((_%e173824173940%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl173790173849%_))))
                                             (let ((_%hd173825173943%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173824173940%_)))
                                                   (_%tl173826173945%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173824173940%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173826173945%_))
                                                   ((lambda (_%L173948%_
                                                             _%L173949%_
                                                             _%L173950%_
                                                             _%L173951%_
                                                             _%L173952%_)
                                                      (let* ((_%g173992174054%_
                                                              (lambda (_%g173993174051%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173993174051%_))))
                     (_%g173991174999%_
                      (lambda (_%g173993174057%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173993174057%_))
                            (let ((_%e173999174059%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173993174057%_))))
                              (let ((_%hd174000174062%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173999174059%_)))
                                    (_%tl174001174064%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173999174059%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd174000174062%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd174000174062%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174001174064%_))
                                            (let ((_%e174002174067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174001174064%_))))
                                              (let ((_%hd174003174070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174002174067%_)))
                                                    (_%tl174004174072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174002174067%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174004174072%_))
                                                    (let ((_%e174005174075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174004174072%_))))
                                                      (let ((_%hd174006174078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174005174075%_)))
                    (_%tl174007174080%_
                     (let () (declare (not safe)) (##cdr _%e174005174075%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd174006174078%_))
                    (let ((_%e174008174083%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd174006174078%_))))
                      (let ((_%hd174009174086%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174008174083%_)))
                            (_%tl174010174088%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174008174083%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd174009174086%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd174009174086%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174010174088%_))
                                    (let ((_%e174011174091%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174010174088%_))))
                                      (let ((_%hd174012174094%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174011174091%_)))
                                            (_%tl174013174096%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174011174091%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd174012174094%_))
                                            (let ((_%e174014174099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd174012174094%_))))
                                              (let ((_%hd174015174102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174014174099%_)))
                                                    (_%tl174016174104%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174014174099%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd174015174102%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd174015174102%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174016174104%_))
                                                            (let ((_%e174017174107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174016174104%_))))
                      (let ((_%hd174018174110%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174017174107%_)))
                            (_%tl174019174112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174017174107%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174019174112%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl174013174096%_))
                                (let ((_%e174020174115%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl174013174096%_))))
                                  (let ((_%hd174021174118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174020174115%_)))
                                        (_%tl174022174120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174020174115%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd174021174118%_))
                                        (let ((_%e174023174123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd174021174118%_))))
                                          (let ((_%hd174024174126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174023174123%_)))
                                                (_%tl174025174128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174023174123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd174024174126%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd174024174126%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl174025174128%_))
                                                        (let ((_%e174026174131%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl174025174128%_))))
                  (let ((_%hd174027174134%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174026174131%_)))
                        (_%tl174028174136%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174026174131%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl174028174136%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174022174120%_))
                            (let ((_%e174029174139%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174022174120%_))))
                              (let ((_%hd174030174142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174029174139%_)))
                                    (_%tl174031174144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174029174139%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174030174142%_))
                                    (let ((_%e174032174147%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174030174142%_))))
                                      (let ((_%hd174033174150%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174032174147%_)))
                                            (_%tl174034174152%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174032174147%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd174033174150%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd174033174150%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174034174152%_))
                                                    (let ((_%e174035174155%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174034174152%_))))
                                                      (let ((_%hd174036174158%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174035174155%_)))
                    (_%tl174037174160%_
                     (let () (declare (not safe)) (##cdr _%e174035174155%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174037174160%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174031174144%_))
                        (if (let ((__tmp176406
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl174031174144%_))))
                              (declare (not safe))
                              (##fx>= __tmp176406 '1))
                            (let ((_g176407_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174031174144%_
                                      '1))))
                              (begin
                                (let ((_g176408_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176407_)
                                             (##vector-length _g176407_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176408_ 2)))
                                      (error "Context expects 2 values"
                                             _g176408_)))
                                (let ((_%target174038174163%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176407_ 0)))
                                      (_%tl174040174165%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176407_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174040174165%_))
                                      (let ((_%e174047174168%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174040174165%_))))
                                        (let ((_%hd174048174171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174047174168%_)))
                                              (_%tl174049174173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174047174168%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl174049174173%_))
                                              (letrec ((_%loop174041174176%_
                                                        (lambda (_%hd174039174179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref174045174181%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd174039174179%_))
                      (let ((_%e174042174184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd174039174179%_))))
                        (let ((_%lp-hd174043174187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174042174184%_)))
                              (_%lp-tl174044174189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174042174184%_))))
                          (_%loop174041174176%_
                           _%lp-tl174044174189%_
                           (cons _%lp-hd174043174187%_
                                 _%kw-ref174045174181%_))))
                      (let ((_%kw-ref174046174192%_
                             (reverse _%kw-ref174045174181%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174007174080%_))
                            ((lambda (_%L174195%_
                                      _%L174196%_
                                      _%L174197%_
                                      _%L174198%_
                                      _%L174199%_)
                               (let* ((_%kw-count174250%_
                                       (length (let ((__tmp176409
                                                      (lambda (_%g174242174245%_
                                                               _%g174243174247%_)
                                                        (cons _%g174242174245%_
                                                              _%g174243174247%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176409
                                                  '()
                                                  _%L174196%_))))
                                      (_%self-index174252%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count174250%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L173950%_))
                                     (let* ((_%g174256174270%_
                                             (lambda (_%g174257174267%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174257174267%_))))
                                            (_%g174255174393%_
                                             (lambda (_%g174257174273%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174257174273%_))
                                                   (let ((_%e174260174275%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174257174273%_))))
                                                     (let ((_%hd174261174278%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174260174275%_)))
                                                           (_%tl174262174280%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174260174275%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174262174280%_))
                                                           (let ((_%e174263174283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174262174280%_))))
                     (let ((_%hd174264174286%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174263174283%_)))
                           (_%tl174265174288%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174263174283%_))))
                       ((lambda (_%L174291%_ _%L174292%_)
                          (let* ((_%self174309%_
                                  (list-ref _%L174292%_ _%self-index174252%_))
                                 (_%receiver174314%_
                                  (let ((_%$e174311%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L174291%_))))
                                    (if _%$e174311%_
                                        _%$e174311%_
                                        _%self174309%_))))
                            (for-each
                             (lambda (_%g174316174318%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver174314%_
                                _%method-calls172242%_
                                _%slot-refs172243%_
                                _%g174316174318%_))
                             _%L174291%_)
                            (if (_%no-specializer?172246%_)
                                _%stx172150%_
                                (let* ((_%specializer-id174327%_
                                        (let* ((_%id174321%_
                                                (let ((__tmp176410
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172223%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp176410
                                                   '"::specialize")))
                                               (_%specializer-id174324%_
                                                (let ((__tmp176411
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx172150%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id174321%_
                                                   __tmp176411))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id174324%_))
                                          _%specializer-id174324%_))
                                       (_%$klass174329%_
                                        (let ((__tmp176412
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176412)))
                                       (_%$method-table174331%_
                                        (let ((__tmp176413
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176413)))
                                       (_%methods174333%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls172242%_)))
                                       (_%$methods174337%_
                                        (map (lambda (_%id174335%_)
                                               (let ((__tmp176414
                                                      (gensym _%id174335%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176414)))
                                             _%methods174333%_))
                                       (_%_174346%_
                                        (for-each
                                         (lambda (_%g174338174341%_
                                                  _%g174339174343%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls172242%_
                                              _%g174338174341%_
                                              _%g174339174343%_)))
                                         _%methods174333%_
                                         _%$methods174337%_))
                                       (_%methods-bind174356%_
                                        (map (lambda (_%g174348174351%_
                                                      _%g174349174353%_)
                                               (_%generate-method-bind172152%_
                                                _%$klass174329%_
                                                _%$method-table174331%_
                                                _%g174348174351%_
                                                _%g174349174353%_))
                                             _%methods174333%_
                                             _%$methods174337%_))
                                       (_%slots174358%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs172243%_)))
                                       (_%$slots174362%_
                                        (map (lambda (_%id174360%_)
                                               (let ((__tmp176415
                                                      (gensym _%id174360%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176415)))
                                             _%slots174358%_))
                                       (_%_174371%_
                                        (for-each
                                         (lambda (_%g174363174366%_
                                                  _%g174364174368%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs172243%_
                                              _%g174363174366%_
                                              _%g174364174368%_)))
                                         _%slots174358%_
                                         _%$slots174362%_))
                                       (_%slots-bind174380%_
                                        (map (lambda (_%g174372174375%_
                                                      _%g174373174377%_)
                                               (_%generate-slot-bind172153%_
                                                _%$klass174329%_
                                                _%g174372174375%_
                                                _%g174373174377%_))
                                             _%slots174358%_
                                             _%$slots174362%_))
                                       (_%specializer-impl174388%_
                                        (let* ((_%specializer-body174386%_
                                                (map (lambda (_%g174381174383%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver174314%_
                                                        _%$klass174329%_
                                                        _%method-calls172242%_
                                                        _%slot-refs172243%_
                                                        _%g174381174383%_))
                                                     _%L174291%_))
                                               (__tmp176416
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L173952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L173951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp176417
                                   (cons '%#lambda
                                         (cons _%L174292%_
                                               _%specializer-body174386%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp176417 _%L173950%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L173949%_ '())))
                                      '()))
                          '())
                    (cons _%L173948%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp176416
                                           _%stx172150%_)))
                                       (_%specializer-impl174390%_
                                        (_%generate-specializer-impl172154%_
                                         _%$klass174329%_
                                         _%$method-table174331%_
                                         _%methods-bind174356%_
                                         _%slots-bind174380%_
                                         _%specializer-impl174388%_)))
                                  (let ((__tmp176419
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L172223%_)))
                                        (__tmp176418
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id174327%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp176419
                                     '" => "
                                     __tmp176418))
                                  (_%generate-specializer-def172155%_
                                   _%L172223%_
                                   _%specializer-id174327%_
                                   _%specializer-impl174390%_)))))
                        _%tl174265174288%_
                        _%hd174264174286%_)))
                   (_%g174256174270%_ _%g174257174273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174256174270%_
                                                    _%g174257174273%_)))))
                                       (_%g174255174393%_ _%L173950%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L173950%_))
                                         (let* ((_%g174397174427%_
                                                 (lambda (_%g174398174424%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g174398174424%_))))
                                                (_%g174396174995%_
                                                 (lambda (_%g174398174430%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g174398174430%_))
                                                       (let ((_%e174402174432%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g174398174430%_))))
                 (let ((_%hd174403174435%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174402174432%_)))
                       (_%tl174404174437%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174402174432%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl174404174437%_))
                       (let ((_%e174405174440%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl174404174437%_))))
                         (let ((_%hd174406174443%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e174405174440%_)))
                               (_%tl174407174445%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e174405174440%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd174406174443%_))
                               (let ((_%e174408174448%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd174406174443%_))))
                                 (let ((_%hd174409174451%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174408174448%_)))
                                       (_%tl174410174453%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174408174448%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd174409174451%_))
                                       (let ((_%e174411174456%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd174409174451%_))))
                                         (let ((_%hd174412174459%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174411174456%_)))
                                               (_%tl174413174461%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174411174456%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174412174459%_))
                                               (let ((_%e174414174464%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174412174459%_))))
                                                 (let ((_%hd174415174467%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174414174464%_)))
                                                       (_%tl174416174469%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174414174464%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174416174469%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174413174461%_))
                                                           (let ((_%e174417174472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174413174461%_))))
                     (let ((_%hd174418174475%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174417174472%_)))
                           (_%tl174419174477%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174417174472%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174419174477%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl174410174453%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl174407174445%_))
                                   (let ((_%e174420174480%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl174407174445%_))))
                                     (let ((_%hd174421174483%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174420174480%_)))
                                           (_%tl174422174485%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174420174480%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174422174485%_))
                                           ((lambda (_%L174488%_
                                                     _%L174489%_
                                                     _%L174490%_)
                                              (let* ((_%g174514174528%_
                                                      (lambda (_%g174515174525%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174515174525%_))))
                                                     (_%g174513174575%_
                                                      (lambda (_%g174515174531%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174515174531%_))
                                                            (let ((_%e174518174533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174515174531%_))))
                      (let ((_%hd174519174536%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174518174533%_)))
                            (_%tl174520174538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174518174533%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174520174538%_))
                            (let ((_%e174521174541%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174520174538%_))))
                              (let ((_%hd174522174544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174521174541%_)))
                                    (_%tl174523174546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174521174541%_))))
                                ((lambda (_%L174549%_ _%L174550%_)
                                   (let* ((_%self174563%_
                                           (list-ref
                                            _%L174550%_
                                            _%self-index174252%_))
                                          (_%receiver174568%_
                                           (let ((_%$e174565%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L174549%_))))
                                             (if _%$e174565%_
                                                 _%$e174565%_
                                                 _%self174563%_))))
                                     (for-each
                                      (lambda (_%g174570174572%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver174568%_
                                         _%method-calls172242%_
                                         _%slot-refs172243%_
                                         _%g174570174572%_))
                                      _%L174549%_)))
                                 _%tl174523174546%_
                                 _%hd174522174544%_)))
                            (_%g174514174528%_ _%g174515174531%_))))
                    (_%g174514174528%_ _%g174515174531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174513174575%_
                                                 _%L174489%_))
                                              (let* ((_%g174578174597%_
                                                      (lambda (_%g174579174594%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174579174594%_))))
                                                     (_%g174577174708%_
                                                      (lambda (_%g174579174600%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174579174600%_))
                                                            (let ((_%e174581174602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174579174600%_))))
                      (let ((_%hd174582174605%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174581174602%_)))
                            (_%tl174583174607%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174581174602%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl174583174607%_))
                            (let ((_g176420_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174583174607%_
                                      '0))))
                              (begin
                                (let ((_g176421_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176420_)
                                             (##vector-length _g176420_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176421_ 2)))
                                      (error "Context expects 2 values"
                                             _g176421_)))
                                (let ((_%target174584174610%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176420_ 0)))
                                      (_%tl174586174612%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176420_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl174586174612%_))
                                      (letrec ((_%loop174587174615%_
                                                (lambda (_%hd174585174618%_
                                                         _%clause174591174620%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd174585174618%_))
                                                      (let ((_%e174588174623%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd174585174618%_))))
                (let ((_%lp-hd174589174626%_
                       (let () (declare (not safe)) (##car _%e174588174623%_)))
                      (_%lp-tl174590174628%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e174588174623%_))))
                  (_%loop174587174615%_
                   _%lp-tl174590174628%_
                   (cons _%lp-hd174589174626%_ _%clause174591174620%_))))
              (let ((_%clause174592174631%_ (reverse _%clause174591174620%_)))
                ((lambda (_%L174634%_)
                   (for-each
                    (lambda (_%clause174647%_)
                      (let* ((_%g174649174660%_
                              (lambda (_%g174650174657%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g174650174657%_))))
                             (_%g174648174698%_
                              (lambda (_%g174650174663%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g174650174663%_))
                                    (let ((_%e174653174665%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g174650174663%_))))
                                      (let ((_%hd174654174668%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174653174665%_)))
                                            (_%tl174655174670%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174653174665%_))))
                                        ((lambda (_%L174673%_ _%L174674%_)
                                           (let* ((_%self174686%_
                                                   (list-ref
                                                    _%L174674%_
                                                    _%self-index174252%_))
                                                  (_%receiver174691%_
                                                   (let ((_%$e174688%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L174673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e174688%_
                                                         _%$e174688%_
                                                         _%self174686%_))))
                                             (for-each
                                              (lambda (_%g174693174695%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver174691%_
                                                 _%method-calls172242%_
                                                 _%slot-refs172243%_
                                                 _%g174693174695%_))
                                              _%L174673%_)))
                                         _%tl174655174670%_
                                         _%hd174654174668%_)))
                                    (_%g174649174660%_ _%g174650174663%_)))))
                        (_%g174648174698%_ _%clause174647%_)))
                    (let ((__tmp176422
                           (lambda (_%g174700174703%_ _%g174701174705%_)
                             (cons _%g174700174703%_ _%g174701174705%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176422 '() _%L174634%_))))
                 _%clause174592174631%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop174587174615%_
                                         _%target174584174610%_
                                         '()))
                                      (_%g174578174597%_ _%g174579174600%_)))))
                            (_%g174578174597%_ _%g174579174600%_))))
                    (_%g174578174597%_ _%g174579174600%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174577174708%_
                                                 _%L174488%_))
                                              (if (_%no-specializer?172246%_)
                                                  _%stx172150%_
                                                  (let* ((_%specializer-id174717%_
                                                          (let* ((_%id174711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176423
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172223%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176423 '"::specialize")))
                         (_%specializer-id174714%_
                          (let ((__tmp176424
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172150%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174711%_
                             __tmp176424))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174714%_))
                    _%specializer-id174714%_))
                 (_%$klass174719%_
                  (let ((__tmp176425
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176425)))
                 (_%$method-table174721%_
                  (let ((__tmp176426
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176426)))
                 (_%methods174723%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172242%_)))
                 (_%$methods174727%_
                  (map (lambda (_%id174725%_)
                         (let ((__tmp176427 (gensym _%id174725%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176427)))
                       _%methods174723%_))
                 (_%_174736%_
                  (for-each
                   (lambda (_%g174728174731%_ _%g174729174733%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172242%_
                        _%g174728174731%_
                        _%g174729174733%_)))
                   _%methods174723%_
                   _%$methods174727%_))
                 (_%methods-bind174746%_
                  (map (lambda (_%g174738174741%_ _%g174739174743%_)
                         (_%generate-method-bind172152%_
                          _%$klass174719%_
                          _%$method-table174721%_
                          _%g174738174741%_
                          _%g174739174743%_))
                       _%methods174723%_
                       _%$methods174727%_))
                 (_%slots174748%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172243%_)))
                 (_%$slots174752%_
                  (map (lambda (_%id174750%_)
                         (let ((__tmp176428 (gensym _%id174750%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176428)))
                       _%slots174748%_))
                 (_%_174761%_
                  (for-each
                   (lambda (_%g174753174756%_ _%g174754174758%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172243%_
                        _%g174753174756%_
                        _%g174754174758%_)))
                   _%slots174748%_
                   _%$slots174752%_))
                 (_%slots-bind174770%_
                  (map (lambda (_%g174762174765%_ _%g174763174767%_)
                         (_%generate-slot-bind172153%_
                          _%$klass174719%_
                          _%g174762174765%_
                          _%g174763174767%_))
                       _%slots174748%_
                       _%$slots174752%_))
                 (_%specializer-lambda-expr174848%_
                  (let* ((_%g174772174786%_
                          (lambda (_%g174773174783%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174773174783%_))))
                         (_%g174771174845%_
                          (lambda (_%g174773174789%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174773174789%_))
                                (let ((_%e174776174791%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174773174789%_))))
                                  (let ((_%hd174777174794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174776174791%_)))
                                        (_%tl174778174796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174776174791%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl174778174796%_))
                                        (let ((_%e174779174799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl174778174796%_))))
                                          (let ((_%hd174780174802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174779174799%_)))
                                                (_%tl174781174804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174779174799%_))))
                                            ((lambda (_%L174807%_ _%L174808%_)
                                               (let* ((_%self174831%_
                                                       (list-ref
                                                        _%L174808%_
                                                        _%self-index174252%_))
                                                      (_%receiver174836%_
                                                       (let ((_%$e174833%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L174807%_))))
                 (if _%$e174833%_ _%$e174833%_ _%self174831%_)))
              (_%body174842%_
               (map (lambda (_%g174837174839%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver174836%_
                       _%$klass174719%_
                       _%method-calls172242%_
                       _%slot-refs172243%_
                       _%g174837174839%_))
                    _%L174807%_))
              (__tmp176429 (cons '%#lambda (cons _%L174808%_ _%body174842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp176429
                                                  _%L174489%_)))
                                             _%tl174781174804%_
                                             _%hd174780174802%_)))
                                        (_%g174772174786%_
                                         _%g174773174789%_))))
                                (_%g174772174786%_ _%g174773174789%_)))))
                    (_%g174771174845%_ _%L174489%_)))
                 (_%specializer-case-lambda-expr174988%_
                  (let* ((_%g174850174869%_
                          (lambda (_%g174851174866%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174851174866%_))))
                         (_%g174849174985%_
                          (lambda (_%g174851174872%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174851174872%_))
                                (let ((_%e174853174874%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174851174872%_))))
                                  (let ((_%hd174854174877%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174853174874%_)))
                                        (_%tl174855174879%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174853174874%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl174855174879%_))
                                        (let ((_g176430_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl174855174879%_
                                                  '0))))
                                          (begin
                                            (let ((_g176431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g176430_)
                                                         (##vector-length
                                                          _g176430_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g176431_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g176431_)))
                                            (let ((_%target174856174882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176430_
                                                      0)))
                                                  (_%tl174858174884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176430_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl174858174884%_))
                                                  (letrec ((_%loop174859174887%_
                                                            (lambda (_%hd174857174890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause174863174892%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd174857174890%_))
                          (let ((_%e174860174895%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd174857174890%_))))
                            (let ((_%lp-hd174861174898%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e174860174895%_)))
                                  (_%lp-tl174862174900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e174860174895%_))))
                              (_%loop174859174887%_
                               _%lp-tl174862174900%_
                               (cons _%lp-hd174861174898%_
                                     _%clause174863174892%_))))
                          (let ((_%clause174864174903%_
                                 (reverse _%clause174863174892%_)))
                            ((lambda (_%L174906%_)
                               (let* ((_%clauses174983%_
                                       (map (lambda (_%clause174920%_)
                                              (let* ((_%g174922174933%_
                                                      (lambda (_%g174923174930%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174923174930%_))))
                                                     (_%g174921174973%_
                                                      (lambda (_%g174923174936%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174923174936%_))
                                                            (let ((_%e174926174938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174923174936%_))))
                      (let ((_%hd174927174941%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174926174938%_)))
                            (_%tl174928174943%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174926174938%_))))
                        ((lambda (_%L174946%_ _%L174947%_)
                           (let* ((_%self174959%_
                                   (list-ref _%L174947%_ _%self-index174252%_))
                                  (_%receiver174964%_
                                   (let ((_%$e174961%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L174946%_))))
                                     (if _%$e174961%_
                                         _%$e174961%_
                                         _%self174959%_)))
                                  (_%body174970%_
                                   (map (lambda (_%g174965174967%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver174964%_
                                           _%$klass174719%_
                                           _%method-calls172242%_
                                           _%slot-refs172243%_
                                           _%g174965174967%_))
                                        _%L174946%_)))
                             (cons _%L174947%_ _%body174970%_)))
                         _%tl174928174943%_
                         _%hd174927174941%_)))
                    (_%g174922174933%_ _%g174923174936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174921174973%_
                                                 _%clause174920%_)))
                                            (let ((__tmp176432
                                                   (lambda (_%g174975174978%_
                                                            _%g174976174980%_)
                                                     (cons _%g174975174978%_
                                                           _%g174976174980%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp176432
                                               '()
                                               _%L174906%_))))
                                      (__tmp176433
                                       (cons '%#case-lambda
                                             _%clauses174983%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp176433
                                  _%L174488%_)))
                             _%clause174864174903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop174859174887%_
                                                     _%target174856174882%_
                                                     '()))
                                                  (_%g174850174869%_
                                                   _%g174851174872%_)))))
                                        (_%g174850174869%_
                                         _%g174851174872%_))))
                                (_%g174850174869%_ _%g174851174872%_)))))
                    (_%g174849174985%_ _%L174488%_)))
                 (_%specializer-impl174990%_
                  (let ((__tmp176434
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L173952%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L173951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp176435
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L174490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr174848%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr174988%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176435
                                                _%stx172150%_))
                                             '()))
                                 '())
                           (cons _%L173949%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L173948%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176434 _%stx172150%_)))
                 (_%specializer-impl174992%_
                  (_%generate-specializer-impl172154%_
                   _%$klass174719%_
                   _%$method-table174721%_
                   _%methods-bind174746%_
                   _%slots-bind174770%_
                   _%specializer-impl174990%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176437
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172223%_)))
                                                          (__tmp176436
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174717%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176437
                                                       '" => "
                                                       __tmp176436))
                                                    (_%generate-specializer-def172155%_
                                                     _%L172223%_
                                                     _%specializer-id174717%_
                                                     _%specializer-impl174992%_))))
                                            _%hd174421174483%_
                                            _%hd174418174475%_
                                            _%hd174415174467%_)
                                           (_%g174397174427%_
                                            _%g174398174430%_))))
                                   (_%g174397174427%_ _%g174398174430%_))
                               (_%g174397174427%_ _%g174398174430%_))
                           (_%g174397174427%_ _%g174398174430%_))))
                   (_%g174397174427%_ _%g174398174430%_))
               (_%g174397174427%_ _%g174398174430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174397174427%_
                                                _%g174398174430%_))))
                                       (_%g174397174427%_ _%g174398174430%_))))
                               (_%g174397174427%_ _%g174398174430%_))))
                       (_%g174397174427%_ _%g174398174430%_))))
               (_%g174397174427%_ _%g174398174430%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g174396174995%_ _%L173950%_))
                                         _%stx172150%_))))
                             _%hd174048174171%_
                             _%kw-ref174046174192%_
                             _%hd174036174158%_
                             _%hd174027174134%_
                             _%hd174018174110%_)
                            (_%g173992174054%_ _%g173993174057%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop174041174176%_
                                                 _%target174038174163%_
                                                 '()))
                                              (_%g173992174054%_
                                               _%g173993174057%_))))
                                      (_%g173992174054%_ _%g173993174057%_)))))
                            (_%g173992174054%_ _%g173993174057%_))
                        (_%g173992174054%_ _%g173993174057%_))
                    (_%g173992174054%_ _%g173993174057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173992174054%_
                                                     _%g173993174057%_))
                                                (_%g173992174054%_
                                                 _%g173993174057%_))
                                            (_%g173992174054%_
                                             _%g173993174057%_))))
                                    (_%g173992174054%_ _%g173993174057%_))))
                            (_%g173992174054%_ _%g173993174057%_))
                        (_%g173992174054%_ _%g173993174057%_))))
                (_%g173992174054%_ _%g173993174057%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173992174054%_
                                                     _%g173993174057%_))
                                                (_%g173992174054%_
                                                 _%g173993174057%_))))
                                        (_%g173992174054%_
                                         _%g173993174057%_))))
                                (_%g173992174054%_ _%g173993174057%_))
                            (_%g173992174054%_ _%g173993174057%_))))
                    (_%g173992174054%_ _%g173993174057%_))
                (_%g173992174054%_ _%g173993174057%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173992174054%_
                                                     _%g173993174057%_))))
                                            (_%g173992174054%_
                                             _%g173993174057%_))))
                                    (_%g173992174054%_ _%g173993174057%_))
                                (_%g173992174054%_ _%g173993174057%_))
                            (_%g173992174054%_ _%g173993174057%_))))
                    (_%g173992174054%_ _%g173993174057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173992174054%_
                                                     _%g173993174057%_))))
                                            (_%g173992174054%_
                                             _%g173993174057%_))
                                        (_%g173992174054%_ _%g173993174057%_))
                                    (_%g173992174054%_ _%g173993174057%_))))
                            (_%g173992174054%_ _%g173993174057%_)))))
                (_%g173991174999%_ _%L173949%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd173825173943%_
                                                    _%hd173822173935%_
                                                    _%hd173819173927%_
                                                    _%hd173816173919%_
                                                    _%hd173798173871%_)
                                                   (_%g173778173831%_
                                                    _%g173779173834%_))))
                                           (_%g173778173831%_
                                            _%g173779173834%_))
                                       (_%g173778173831%_ _%g173779173834%_))
                                   (_%g173778173831%_ _%g173779173834%_))
                               (_%g173778173831%_ _%g173779173834%_))))
                       (_%g173778173831%_ _%g173779173834%_))
                   (_%g173778173831%_ _%g173779173834%_))
               (_%g173778173831%_ _%g173779173834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173778173831%_
                                                _%g173779173834%_))
                                           (_%g173778173831%_
                                            _%g173779173834%_))))
                                   (_%g173778173831%_ _%g173779173834%_))))
                           (_%g173778173831%_ _%g173779173834%_))))
                   (_%g173778173831%_ _%g173779173834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173778173831%_
                                                    _%g173779173834%_))
                                               (_%g173778173831%_
                                                _%g173779173834%_))
                                           (_%g173778173831%_
                                            _%g173779173834%_))))
                                   (_%g173778173831%_ _%g173779173834%_))))
                           (_%g173778173831%_ _%g173779173834%_))
                       (_%g173778173831%_ _%g173779173834%_))))
               (_%g173778173831%_ _%g173779173834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173778173831%_
                                                _%g173779173834%_))))
                                       (_%g173778173831%_ _%g173779173834%_))))
                               (_%g173778173831%_ _%g173779173834%_))
                           (_%g173778173831%_ _%g173779173834%_))
                       (_%g173778173831%_ _%g173779173834%_))))
               (_%g173778173831%_ _%g173779173834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173777175002%_ _%L172222%_))
                                         _%stx172150%_))))))))
                  (_%__kont175236175237%_ (lambda () _%stx172150%_)))
              (let ((_%__match175265175266%_
                     (lambda (_%e172162172190%_
                              _%hd172163172193%_
                              _%tl172164172195%_
                              _%e172165172198%_
                              _%hd172166172201%_
                              _%tl172167172203%_
                              _%e172168172206%_
                              _%hd172169172209%_
                              _%tl172170172211%_
                              _%e172171172214%_
                              _%hd172172172217%_
                              _%tl172173172219%_)
                       (let ((_%L172222%_ _%hd172172172217%_)
                             (_%L172223%_ _%hd172169172209%_))
                         (if (let ((__tmp176438
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172223%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp176438))
                             (_%__kont175234175235%_ _%L172222%_ _%L172223%_)
                             (_%__kont175236175237%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175232175233%_))
                    (let ((_%e172162172190%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175232175233%_))))
                      (let ((_%tl172164172195%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172162172190%_)))
                            (_%hd172163172193%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172162172190%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172164172195%_))
                            (let ((_%e172165172198%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172164172195%_))))
                              (let ((_%tl172167172203%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172165172198%_)))
                                    (_%hd172166172201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172165172198%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172166172201%_))
                                    (let ((_%e172168172206%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172166172201%_))))
                                      (let ((_%tl172170172211%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172168172206%_)))
                                            (_%hd172169172209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172168172206%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172170172211%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172167172203%_))
                                                (let ((_%e172171172214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172167172203%_))))
                                                  (let ((_%tl172173172219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172171172214%_)))
                                                        (_%hd172172172217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172171172214%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172173172219%_))
                                                        (_%__match175265175266%_
                                                         _%e172162172190%_
                                                         _%hd172163172193%_
                                                         _%tl172164172195%_
                                                         _%e172165172198%_
                                                         _%hd172166172201%_
                                                         _%tl172167172203%_
                                                         _%e172168172206%_
                                                         _%hd172169172209%_
                                                         _%tl172170172211%_
                                                         _%e172171172214%_
                                                         _%hd172172172217%_
                                                         _%tl172173172219%_)
                                                        (_%__kont175236175237%_))))
                                                (_%__kont175236175237%_))
                                            (_%__kont175236175237%_))))
                                    (_%__kont175236175237%_))))
                            (_%__kont175236175237%_))))
                    (_%__kont175236175237%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self172002%_ _%stx172003%_)
        (let* ((_%__stx175268175269%_ _%stx172003%_)
               (_%g172006172039%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175268175269%_)))))
          (let ((_%__kont175270175271%_ (lambda (_%L172129%_) _%L172129%_))
                (_%__kont175272175273%_
                 (lambda (_%L172068%_ _%L172069%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172002%_ _%L172068%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx175268175269%_))
                (let ((_%e172009172089%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx175268175269%_))))
                  (let ((_%tl172011172094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172009172089%_)))
                        (_%hd172010172092%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172009172089%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172011172094%_))
                        (let ((_%e172012172097%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172011172094%_))))
                          (let ((_%tl172014172102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172012172097%_)))
                                (_%hd172013172100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172012172097%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172013172100%_))
                                (let ((_%e172015172105%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172013172100%_))))
                                  (let ((_%tl172017172110%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172015172105%_)))
                                        (_%hd172016172108%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172015172105%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172016172108%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd172016172108%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172017172110%_))
                                                (let ((_%e172018172113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172017172110%_))))
                                                  (let ((_%tl172020172118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172018172113%_)))
                                                        (_%hd172019172116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172018172113%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172020172118%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172014172102%_))
                                                            (let ((_%e172021172121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172014172102%_))))
                      (let ((_%tl172023172126%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172021172121%_)))
                            (_%hd172022172124%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172021172121%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172023172126%_))
                            (_%__kont175270175271%_ _%hd172019172116%_)
                            (let ()
                              (declare (not safe))
                              (_%g172006172039%_)))))
                    (let () (declare (not safe)) (_%g172006172039%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl172014172102%_))
                    (let ((_%e172032172060%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172014172102%_))))
                      (let ((_%tl172034172065%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172032172060%_)))
                            (_%hd172033172063%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172032172060%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172034172065%_))
                            (_%__kont175272175273%_
                             _%hd172033172063%_
                             _%hd172013172100%_)
                            (let ()
                              (declare (not safe))
                              (_%g172006172039%_)))))
                    (let () (declare (not safe)) (_%g172006172039%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172014172102%_))
                                                    (let ((_%e172032172060%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172014172102%_))))
                                                      (let ((_%tl172034172065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172032172060%_)))
                    (_%hd172033172063%_
                     (let () (declare (not safe)) (##car _%e172032172060%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172034172065%_))
                    (_%__kont175272175273%_
                     _%hd172033172063%_
                     _%hd172013172100%_)
                    (let () (declare (not safe)) (_%g172006172039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172006172039%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172014172102%_))
                                                (let ((_%e172032172060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172014172102%_))))
                                                  (let ((_%tl172034172065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172032172060%_)))
                                                        (_%hd172033172063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172032172060%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172034172065%_))
                                                        (_%__kont175272175273%_
                                                         _%hd172033172063%_
                                                         _%hd172013172100%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g172006172039%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g172006172039%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172014172102%_))
                                            (let ((_%e172032172060%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172014172102%_))))
                                              (let ((_%tl172034172065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172032172060%_)))
                                                    (_%hd172033172063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172032172060%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172034172065%_))
                                                    (_%__kont175272175273%_
                                                     _%hd172033172063%_
                                                     _%hd172013172100%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172006172039%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g172006172039%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172014172102%_))
                                    (let ((_%e172032172060%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172014172102%_))))
                                      (let ((_%tl172034172065%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172032172060%_)))
                                            (_%hd172033172063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172032172060%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172034172065%_))
                                            (_%__kont175272175273%_
                                             _%hd172033172063%_
                                             _%hd172013172100%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g172006172039%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g172006172039%_))))))
                        (let () (declare (not safe)) (_%g172006172039%_)))))
                (let () (declare (not safe)) (_%g172006172039%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self171918%_ _%stx171919%_)
        (let* ((_%g171921171942%_
                (lambda (_%g171922171939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171922171939%_))))
               (_%g171920171999%_
                (lambda (_%g171922171945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171922171945%_))
                      (let ((_%e171926171947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171922171945%_))))
                        (let ((_%hd171927171950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171926171947%_)))
                              (_%tl171928171952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171926171947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171928171952%_))
                              (let ((_%e171929171955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171928171952%_))))
                                (let ((_%hd171930171958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171929171955%_)))
                                      (_%tl171931171960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171929171955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171931171960%_))
                                      (let ((_%e171932171963%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171931171960%_))))
                                        (let ((_%hd171933171966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171932171963%_)))
                                              (_%tl171934171968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171932171963%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171934171968%_))
                                              (let ((_%e171935171971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171934171968%_))))
                                                (let ((_%hd171936171974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171935171971%_)))
                                                      (_%tl171937171976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171935171971%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171937171976%_))
                                                      ((lambda (_%L171979%_
                                                                _%L171980%_
                                                                _%L171981%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self171918%_
                                                            _%L171980%_)))
                                                       _%hd171936171974%_
                                                       _%hd171933171966%_
                                                       _%hd171930171958%_)
                                                      (_%g171921171942%_
                                                       _%g171922171945%_))))
                                              (_%g171921171942%_
                                               _%g171922171945%_))))
                                      (_%g171921171942%_ _%g171922171945%_))))
                              (_%g171921171942%_ _%g171922171945%_))))
                      (_%g171921171942%_ _%g171922171945%_)))))
          (_%g171920171999%_ _%stx171919%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self170879%_ _%stx170880%_)
        (let* ((_%__stx175334175335%_ _%stx170880%_)
               (_%g170888171110%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175334175335%_)))))
          (let ((_%__kont175336175337%_
                 (lambda (_%L171867%_ _%L171868%_ _%L171869%_ _%L171870%_)
                   (let ((__tmp176440
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170879%_ 'methods)))
                         (__tmp176439
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171868%_))))
                     (declare (not safe))
                     (hash-put! __tmp176440 __tmp176439 '#t))
                   (for-each
                    (lambda (_%g171903171905%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170879%_ _%g171903171905%_)))
                    (let ((__tmp176441
                           (lambda (_%g171907171910%_ _%g171908171912%_)
                             (cons _%g171907171910%_ _%g171908171912%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176441 '() _%L171867%_)))))
                (_%__kont175340175341%_
                 (lambda (_%L171702%_
                          _%L171703%_
                          _%L171704%_
                          _%L171705%_
                          _%L171706%_)
                   (let ((__tmp176443
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170879%_ 'methods)))
                         (__tmp176442
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171703%_))))
                     (declare (not safe))
                     (hash-put! __tmp176443 __tmp176442 '#t))
                   (for-each
                    (lambda (_%g171746171748%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170879%_ _%g171746171748%_)))
                    (let ((__tmp176444
                           (lambda (_%g171750171753%_ _%g171751171755%_)
                             (cons _%g171750171753%_ _%g171751171755%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176444 '() _%L171702%_)))))
                (_%__kont175344175345%_
                 (lambda (_%L171535%_ _%L171536%_ _%L171537%_)
                   (let ((__tmp176446
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170879%_ 'slots)))
                         (__tmp176445
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171535%_))))
                     (declare (not safe))
                     (hash-put! __tmp176446 __tmp176445 '#t))))
                (_%__kont175346175347%_
                 (lambda (_%L171412%_ _%L171413%_ _%L171414%_ _%L171415%_)
                   (let ((__tmp176448
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170879%_ 'slots)))
                         (__tmp176447
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171413%_))))
                     (declare (not safe))
                     (hash-put! __tmp176448 __tmp176447 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170879%_ _%L171412%_))))
                (_%__kont175348175349%_
                 (lambda (_%L171286%_ _%L171287%_)
                   (let* ((_%accessor171309%_
                           (let ((__tmp176449
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171287%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176449)))
                          (_%klass171311%_
                           (let ((__tmp176450
                                  (##structure-ref
                                   _%accessor171309%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170880%_
                              __tmp176450)))
                          (_%slot171313%_
                           (##structure-ref
                            _%accessor171309%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor171309%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171311%_
                                    _%slot171313%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171311%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176452
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170879%_ 'slots)))
                               (__tmp176451
                                (##structure-ref
                                 _%accessor171309%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp176452 __tmp176451 '#t))))))
                (_%__kont175350175351%_
                 (lambda (_%L171186%_ _%L171187%_ _%L171188%_)
                   (let* ((_%mutator171215%_
                           (let ((__tmp176453
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171188%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176453)))
                          (_%klass171217%_
                           (let ((__tmp176454
                                  (##structure-ref
                                   _%mutator171215%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170880%_
                              __tmp176454)))
                          (_%slot171219%_
                           (##structure-ref
                            _%mutator171215%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator171215%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171217%_
                                    _%slot171219%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171217%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176455
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170879%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp176455 _%slot171219%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self170879%_ _%L171186%_)))))
                (_%__kont175352175353%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self170879%_ _%stx170880%_)))))
            (let* ((_%__match175833175834%_
                    (lambda (_%e171082171122%_
                             _%hd171083171125%_
                             _%tl171084171127%_
                             _%e171085171130%_
                             _%hd171086171133%_
                             _%tl171087171135%_
                             _%e171088171138%_
                             _%hd171089171141%_
                             _%tl171090171143%_
                             _%e171091171146%_
                             _%hd171092171149%_
                             _%tl171093171151%_
                             _%e171094171154%_
                             _%hd171095171157%_
                             _%tl171096171159%_
                             _%e171097171162%_
                             _%hd171098171165%_
                             _%tl171099171167%_
                             _%e171100171170%_
                             _%hd171101171173%_
                             _%tl171102171175%_
                             _%e171103171178%_
                             _%hd171104171181%_
                             _%tl171105171183%_)
                      (let ((_%L171186%_ _%hd171104171181%_)
                            (_%L171187%_ _%hd171101171173%_)
                            (_%L171188%_ _%hd171092171149%_))
                        (if (and (let ((__tmp176456
                                        (let ((__tmp176457
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171188%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176457))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176456
                                    'gxc#!mutator::t))
                                 (let ((__tmp176458
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170879%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171187%_
                                    __tmp176458)))
                            (_%__kont175350175351%_
                             _%L171186%_
                             _%L171187%_
                             _%L171188%_)
                            (_%__kont175352175353%_)))))
                   (_%__match175831175832%_
                    (lambda (_%e171082171122%_
                             _%hd171083171125%_
                             _%tl171084171127%_
                             _%e171085171130%_
                             _%hd171086171133%_
                             _%tl171087171135%_
                             _%e171088171138%_
                             _%hd171089171141%_
                             _%tl171090171143%_
                             _%e171091171146%_
                             _%hd171092171149%_
                             _%tl171093171151%_
                             _%e171094171154%_
                             _%hd171095171157%_
                             _%tl171096171159%_
                             _%e171097171162%_
                             _%hd171098171165%_
                             _%tl171099171167%_
                             _%e171100171170%_
                             _%hd171101171173%_
                             _%tl171102171175%_
                             _%e171103171178%_
                             _%hd171104171181%_
                             _%tl171105171183%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171105171183%_))
                          (_%__match175833175834%_
                           _%e171082171122%_
                           _%hd171083171125%_
                           _%tl171084171127%_
                           _%e171085171130%_
                           _%hd171086171133%_
                           _%tl171087171135%_
                           _%e171088171138%_
                           _%hd171089171141%_
                           _%tl171090171143%_
                           _%e171091171146%_
                           _%hd171092171149%_
                           _%tl171093171151%_
                           _%e171094171154%_
                           _%hd171095171157%_
                           _%tl171096171159%_
                           _%e171097171162%_
                           _%hd171098171165%_
                           _%tl171099171167%_
                           _%e171100171170%_
                           _%hd171101171173%_
                           _%tl171102171175%_
                           _%e171103171178%_
                           _%hd171104171181%_
                           _%tl171105171183%_)
                          (_%__kont175352175353%_))))
                   (_%__match175825175826%_
                    (lambda (_%e171082171122%_
                             _%hd171083171125%_
                             _%tl171084171127%_
                             _%e171085171130%_
                             _%hd171086171133%_
                             _%tl171087171135%_
                             _%e171088171138%_
                             _%hd171089171141%_
                             _%tl171090171143%_
                             _%e171091171146%_
                             _%hd171092171149%_
                             _%tl171093171151%_
                             _%e171094171154%_
                             _%hd171095171157%_
                             _%tl171096171159%_
                             _%e171097171162%_
                             _%hd171098171165%_
                             _%tl171099171167%_
                             _%e171100171170%_
                             _%hd171101171173%_
                             _%tl171102171175%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171096171159%_))
                          (let ((_%e171103171178%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171096171159%_))))
                            (let ((_%tl171105171183%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171103171178%_)))
                                  (_%hd171104171181%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171103171178%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171105171183%_))
                                  (_%__match175833175834%_
                                   _%e171082171122%_
                                   _%hd171083171125%_
                                   _%tl171084171127%_
                                   _%e171085171130%_
                                   _%hd171086171133%_
                                   _%tl171087171135%_
                                   _%e171088171138%_
                                   _%hd171089171141%_
                                   _%tl171090171143%_
                                   _%e171091171146%_
                                   _%hd171092171149%_
                                   _%tl171093171151%_
                                   _%e171094171154%_
                                   _%hd171095171157%_
                                   _%tl171096171159%_
                                   _%e171097171162%_
                                   _%hd171098171165%_
                                   _%tl171099171167%_
                                   _%e171100171170%_
                                   _%hd171101171173%_
                                   _%tl171102171175%_
                                   _%e171103171178%_
                                   _%hd171104171181%_
                                   _%tl171105171183%_)
                                  (_%__kont175352175353%_))))
                          (_%__kont175352175353%_))))
                   (_%__match175771175772%_
                    (lambda (_%e171058171230%_
                             _%hd171059171233%_
                             _%tl171060171235%_
                             _%e171061171238%_
                             _%hd171062171241%_
                             _%tl171063171243%_
                             _%e171064171246%_
                             _%hd171065171249%_
                             _%tl171066171251%_
                             _%e171067171254%_
                             _%hd171068171257%_
                             _%tl171069171259%_
                             _%e171070171262%_
                             _%hd171071171265%_
                             _%tl171072171267%_
                             _%e171073171270%_
                             _%hd171074171273%_
                             _%tl171075171275%_
                             _%e171076171278%_
                             _%hd171077171281%_
                             _%tl171078171283%_)
                      (let ((_%L171286%_ _%hd171077171281%_)
                            (_%L171287%_ _%hd171068171257%_))
                        (if (and (let ((__tmp176459
                                        (let ((__tmp176460
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171287%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176460))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176459
                                    'gxc#!accessor::t))
                                 (let ((__tmp176461
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170879%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171286%_
                                    __tmp176461)))
                            (_%__kont175348175349%_ _%L171286%_ _%L171287%_)
                            (_%__kont175352175353%_)))))
                   (_%__match175769175770%_
                    (lambda (_%e171058171230%_
                             _%hd171059171233%_
                             _%tl171060171235%_
                             _%e171061171238%_
                             _%hd171062171241%_
                             _%tl171063171243%_
                             _%e171064171246%_
                             _%hd171065171249%_
                             _%tl171066171251%_
                             _%e171067171254%_
                             _%hd171068171257%_
                             _%tl171069171259%_
                             _%e171070171262%_
                             _%hd171071171265%_
                             _%tl171072171267%_
                             _%e171073171270%_
                             _%hd171074171273%_
                             _%tl171075171275%_
                             _%e171076171278%_
                             _%hd171077171281%_
                             _%tl171078171283%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171072171267%_))
                          (_%__match175771175772%_
                           _%e171058171230%_
                           _%hd171059171233%_
                           _%tl171060171235%_
                           _%e171061171238%_
                           _%hd171062171241%_
                           _%tl171063171243%_
                           _%e171064171246%_
                           _%hd171065171249%_
                           _%tl171066171251%_
                           _%e171067171254%_
                           _%hd171068171257%_
                           _%tl171069171259%_
                           _%e171070171262%_
                           _%hd171071171265%_
                           _%tl171072171267%_
                           _%e171073171270%_
                           _%hd171074171273%_
                           _%tl171075171275%_
                           _%e171076171278%_
                           _%hd171077171281%_
                           _%tl171078171283%_)
                          (_%__match175825175826%_
                           _%e171058171230%_
                           _%hd171059171233%_
                           _%tl171060171235%_
                           _%e171061171238%_
                           _%hd171062171241%_
                           _%tl171063171243%_
                           _%e171064171246%_
                           _%hd171065171249%_
                           _%tl171066171251%_
                           _%e171067171254%_
                           _%hd171068171257%_
                           _%tl171069171259%_
                           _%e171070171262%_
                           _%hd171071171265%_
                           _%tl171072171267%_
                           _%e171073171270%_
                           _%hd171074171273%_
                           _%tl171075171275%_
                           _%e171076171278%_
                           _%hd171077171281%_
                           _%tl171078171283%_))))
                   (_%__match175715175716%_
                    (lambda (_%e171023171324%_
                             _%hd171024171327%_
                             _%tl171025171329%_
                             _%e171026171332%_
                             _%hd171027171335%_
                             _%tl171028171337%_
                             _%e171029171340%_
                             _%hd171030171343%_
                             _%tl171031171345%_
                             _%e171032171348%_
                             _%hd171033171351%_
                             _%tl171034171353%_
                             _%e171035171356%_
                             _%hd171036171359%_
                             _%tl171037171361%_
                             _%e171038171364%_
                             _%hd171039171367%_
                             _%tl171040171369%_
                             _%e171041171372%_
                             _%hd171042171375%_
                             _%tl171043171377%_
                             _%e171044171380%_
                             _%hd171045171383%_
                             _%tl171046171385%_
                             _%e171047171388%_
                             _%hd171048171391%_
                             _%tl171049171393%_
                             _%e171050171396%_
                             _%hd171051171399%_
                             _%tl171052171401%_
                             _%e171053171404%_
                             _%hd171054171407%_
                             _%tl171055171409%_)
                      (let ((_%L171412%_ _%hd171054171407%_)
                            (_%L171413%_ _%hd171051171399%_)
                            (_%L171414%_ _%hd171042171375%_)
                            (_%L171415%_ _%hd171033171351%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171415%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171415%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp176462
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170879%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171414%_
                                    __tmp176462)))
                            (_%__kont175346175347%_
                             _%L171412%_
                             _%L171413%_
                             _%L171414%_
                             _%L171415%_)
                            (_%__kont175352175353%_)))))
                   (_%__match175707175708%_
                    (lambda (_%e171023171324%_
                             _%hd171024171327%_
                             _%tl171025171329%_
                             _%e171026171332%_
                             _%hd171027171335%_
                             _%tl171028171337%_
                             _%e171029171340%_
                             _%hd171030171343%_
                             _%tl171031171345%_
                             _%e171032171348%_
                             _%hd171033171351%_
                             _%tl171034171353%_
                             _%e171035171356%_
                             _%hd171036171359%_
                             _%tl171037171361%_
                             _%e171038171364%_
                             _%hd171039171367%_
                             _%tl171040171369%_
                             _%e171041171372%_
                             _%hd171042171375%_
                             _%tl171043171377%_
                             _%e171044171380%_
                             _%hd171045171383%_
                             _%tl171046171385%_
                             _%e171047171388%_
                             _%hd171048171391%_
                             _%tl171049171393%_
                             _%e171050171396%_
                             _%hd171051171399%_
                             _%tl171052171401%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171046171385%_))
                          (let ((_%e171053171404%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171046171385%_))))
                            (let ((_%tl171055171409%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171053171404%_)))
                                  (_%hd171054171407%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171053171404%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171055171409%_))
                                  (_%__match175715175716%_
                                   _%e171023171324%_
                                   _%hd171024171327%_
                                   _%tl171025171329%_
                                   _%e171026171332%_
                                   _%hd171027171335%_
                                   _%tl171028171337%_
                                   _%e171029171340%_
                                   _%hd171030171343%_
                                   _%tl171031171345%_
                                   _%e171032171348%_
                                   _%hd171033171351%_
                                   _%tl171034171353%_
                                   _%e171035171356%_
                                   _%hd171036171359%_
                                   _%tl171037171361%_
                                   _%e171038171364%_
                                   _%hd171039171367%_
                                   _%tl171040171369%_
                                   _%e171041171372%_
                                   _%hd171042171375%_
                                   _%tl171043171377%_
                                   _%e171044171380%_
                                   _%hd171045171383%_
                                   _%tl171046171385%_
                                   _%e171047171388%_
                                   _%hd171048171391%_
                                   _%tl171049171393%_
                                   _%e171050171396%_
                                   _%hd171051171399%_
                                   _%tl171052171401%_
                                   _%e171053171404%_
                                   _%hd171054171407%_
                                   _%tl171055171409%_)
                                  (_%__kont175352175353%_))))
                          (_%__match175831175832%_
                           _%e171023171324%_
                           _%hd171024171327%_
                           _%tl171025171329%_
                           _%e171026171332%_
                           _%hd171027171335%_
                           _%tl171028171337%_
                           _%e171029171340%_
                           _%hd171030171343%_
                           _%tl171031171345%_
                           _%e171032171348%_
                           _%hd171033171351%_
                           _%tl171034171353%_
                           _%e171035171356%_
                           _%hd171036171359%_
                           _%tl171037171361%_
                           _%e171038171364%_
                           _%hd171039171367%_
                           _%tl171040171369%_
                           _%e171041171372%_
                           _%hd171042171375%_
                           _%tl171043171377%_
                           _%e171044171380%_
                           _%hd171045171383%_
                           _%tl171046171385%_))))
                   (_%__match175629175630%_
                    (lambda (_%e170989171455%_
                             _%hd170990171458%_
                             _%tl170991171460%_
                             _%e170992171463%_
                             _%hd170993171466%_
                             _%tl170994171468%_
                             _%e170995171471%_
                             _%hd170996171474%_
                             _%tl170997171476%_
                             _%e170998171479%_
                             _%hd170999171482%_
                             _%tl171000171484%_
                             _%e171001171487%_
                             _%hd171002171490%_
                             _%tl171003171492%_
                             _%e171004171495%_
                             _%hd171005171498%_
                             _%tl171006171500%_
                             _%e171007171503%_
                             _%hd171008171506%_
                             _%tl171009171508%_
                             _%e171010171511%_
                             _%hd171011171514%_
                             _%tl171012171516%_
                             _%e171013171519%_
                             _%hd171014171522%_
                             _%tl171015171524%_
                             _%e171016171527%_
                             _%hd171017171530%_
                             _%tl171018171532%_)
                      (let ((_%L171535%_ _%hd171017171530%_)
                            (_%L171536%_ _%hd171008171506%_)
                            (_%L171537%_ _%hd170999171482%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171537%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171537%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp176463
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170879%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171536%_
                                    __tmp176463)))
                            (_%__kont175344175345%_
                             _%L171535%_
                             _%L171536%_
                             _%L171537%_)
                            (_%__match175833175834%_
                             _%e170989171455%_
                             _%hd170990171458%_
                             _%tl170991171460%_
                             _%e170992171463%_
                             _%hd170993171466%_
                             _%tl170994171468%_
                             _%e170995171471%_
                             _%hd170996171474%_
                             _%tl170997171476%_
                             _%e170998171479%_
                             _%hd170999171482%_
                             _%tl171000171484%_
                             _%e171001171487%_
                             _%hd171002171490%_
                             _%tl171003171492%_
                             _%e171004171495%_
                             _%hd171005171498%_
                             _%tl171006171500%_
                             _%e171007171503%_
                             _%hd171008171506%_
                             _%tl171009171508%_
                             _%e171010171511%_
                             _%hd171011171514%_
                             _%tl171012171516%_)))))
                   (_%__match175627175628%_
                    (lambda (_%e170989171455%_
                             _%hd170990171458%_
                             _%tl170991171460%_
                             _%e170992171463%_
                             _%hd170993171466%_
                             _%tl170994171468%_
                             _%e170995171471%_
                             _%hd170996171474%_
                             _%tl170997171476%_
                             _%e170998171479%_
                             _%hd170999171482%_
                             _%tl171000171484%_
                             _%e171001171487%_
                             _%hd171002171490%_
                             _%tl171003171492%_
                             _%e171004171495%_
                             _%hd171005171498%_
                             _%tl171006171500%_
                             _%e171007171503%_
                             _%hd171008171506%_
                             _%tl171009171508%_
                             _%e171010171511%_
                             _%hd171011171514%_
                             _%tl171012171516%_
                             _%e171013171519%_
                             _%hd171014171522%_
                             _%tl171015171524%_
                             _%e171016171527%_
                             _%hd171017171530%_
                             _%tl171018171532%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171012171516%_))
                          (_%__match175629175630%_
                           _%e170989171455%_
                           _%hd170990171458%_
                           _%tl170991171460%_
                           _%e170992171463%_
                           _%hd170993171466%_
                           _%tl170994171468%_
                           _%e170995171471%_
                           _%hd170996171474%_
                           _%tl170997171476%_
                           _%e170998171479%_
                           _%hd170999171482%_
                           _%tl171000171484%_
                           _%e171001171487%_
                           _%hd171002171490%_
                           _%tl171003171492%_
                           _%e171004171495%_
                           _%hd171005171498%_
                           _%tl171006171500%_
                           _%e171007171503%_
                           _%hd171008171506%_
                           _%tl171009171508%_
                           _%e171010171511%_
                           _%hd171011171514%_
                           _%tl171012171516%_
                           _%e171013171519%_
                           _%hd171014171522%_
                           _%tl171015171524%_
                           _%e171016171527%_
                           _%hd171017171530%_
                           _%tl171018171532%_)
                          (_%__match175707175708%_
                           _%e170989171455%_
                           _%hd170990171458%_
                           _%tl170991171460%_
                           _%e170992171463%_
                           _%hd170993171466%_
                           _%tl170994171468%_
                           _%e170995171471%_
                           _%hd170996171474%_
                           _%tl170997171476%_
                           _%e170998171479%_
                           _%hd170999171482%_
                           _%tl171000171484%_
                           _%e171001171487%_
                           _%hd171002171490%_
                           _%tl171003171492%_
                           _%e171004171495%_
                           _%hd171005171498%_
                           _%tl171006171500%_
                           _%e171007171503%_
                           _%hd171008171506%_
                           _%tl171009171508%_
                           _%e171010171511%_
                           _%hd171011171514%_
                           _%tl171012171516%_
                           _%e171013171519%_
                           _%hd171014171522%_
                           _%tl171015171524%_
                           _%e171016171527%_
                           _%hd171017171530%_
                           _%tl171018171532%_))))
                   (_%__match175617175618%_
                    (lambda (_%e170989171455%_
                             _%hd170990171458%_
                             _%tl170991171460%_
                             _%e170992171463%_
                             _%hd170993171466%_
                             _%tl170994171468%_
                             _%e170995171471%_
                             _%hd170996171474%_
                             _%tl170997171476%_
                             _%e170998171479%_
                             _%hd170999171482%_
                             _%tl171000171484%_
                             _%e171001171487%_
                             _%hd171002171490%_
                             _%tl171003171492%_
                             _%e171004171495%_
                             _%hd171005171498%_
                             _%tl171006171500%_
                             _%e171007171503%_
                             _%hd171008171506%_
                             _%tl171009171508%_
                             _%e171010171511%_
                             _%hd171011171514%_
                             _%tl171012171516%_
                             _%e171013171519%_
                             _%hd171014171522%_
                             _%tl171015171524%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd171014171522%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171015171524%_))
                              (let ((_%e171016171527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171015171524%_))))
                                (let ((_%tl171018171532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171016171527%_)))
                                      (_%hd171017171530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171016171527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171018171532%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl171012171516%_))
                                          (_%__match175629175630%_
                                           _%e170989171455%_
                                           _%hd170990171458%_
                                           _%tl170991171460%_
                                           _%e170992171463%_
                                           _%hd170993171466%_
                                           _%tl170994171468%_
                                           _%e170995171471%_
                                           _%hd170996171474%_
                                           _%tl170997171476%_
                                           _%e170998171479%_
                                           _%hd170999171482%_
                                           _%tl171000171484%_
                                           _%e171001171487%_
                                           _%hd171002171490%_
                                           _%tl171003171492%_
                                           _%e171004171495%_
                                           _%hd171005171498%_
                                           _%tl171006171500%_
                                           _%e171007171503%_
                                           _%hd171008171506%_
                                           _%tl171009171508%_
                                           _%e171010171511%_
                                           _%hd171011171514%_
                                           _%tl171012171516%_
                                           _%e171013171519%_
                                           _%hd171014171522%_
                                           _%tl171015171524%_
                                           _%e171016171527%_
                                           _%hd171017171530%_
                                           _%tl171018171532%_)
                                          (_%__match175707175708%_
                                           _%e170989171455%_
                                           _%hd170990171458%_
                                           _%tl170991171460%_
                                           _%e170992171463%_
                                           _%hd170993171466%_
                                           _%tl170994171468%_
                                           _%e170995171471%_
                                           _%hd170996171474%_
                                           _%tl170997171476%_
                                           _%e170998171479%_
                                           _%hd170999171482%_
                                           _%tl171000171484%_
                                           _%e171001171487%_
                                           _%hd171002171490%_
                                           _%tl171003171492%_
                                           _%e171004171495%_
                                           _%hd171005171498%_
                                           _%tl171006171500%_
                                           _%e171007171503%_
                                           _%hd171008171506%_
                                           _%tl171009171508%_
                                           _%e171010171511%_
                                           _%hd171011171514%_
                                           _%tl171012171516%_
                                           _%e171013171519%_
                                           _%hd171014171522%_
                                           _%tl171015171524%_
                                           _%e171016171527%_
                                           _%hd171017171530%_
                                           _%tl171018171532%_))
                                      (_%__match175831175832%_
                                       _%e170989171455%_
                                       _%hd170990171458%_
                                       _%tl170991171460%_
                                       _%e170992171463%_
                                       _%hd170993171466%_
                                       _%tl170994171468%_
                                       _%e170995171471%_
                                       _%hd170996171474%_
                                       _%tl170997171476%_
                                       _%e170998171479%_
                                       _%hd170999171482%_
                                       _%tl171000171484%_
                                       _%e171001171487%_
                                       _%hd171002171490%_
                                       _%tl171003171492%_
                                       _%e171004171495%_
                                       _%hd171005171498%_
                                       _%tl171006171500%_
                                       _%e171007171503%_
                                       _%hd171008171506%_
                                       _%tl171009171508%_
                                       _%e171010171511%_
                                       _%hd171011171514%_
                                       _%tl171012171516%_))))
                              (_%__match175831175832%_
                               _%e170989171455%_
                               _%hd170990171458%_
                               _%tl170991171460%_
                               _%e170992171463%_
                               _%hd170993171466%_
                               _%tl170994171468%_
                               _%e170995171471%_
                               _%hd170996171474%_
                               _%tl170997171476%_
                               _%e170998171479%_
                               _%hd170999171482%_
                               _%tl171000171484%_
                               _%e171001171487%_
                               _%hd171002171490%_
                               _%tl171003171492%_
                               _%e171004171495%_
                               _%hd171005171498%_
                               _%tl171006171500%_
                               _%e171007171503%_
                               _%hd171008171506%_
                               _%tl171009171508%_
                               _%e171010171511%_
                               _%hd171011171514%_
                               _%tl171012171516%_))
                          (_%__match175831175832%_
                           _%e170989171455%_
                           _%hd170990171458%_
                           _%tl170991171460%_
                           _%e170992171463%_
                           _%hd170993171466%_
                           _%tl170994171468%_
                           _%e170995171471%_
                           _%hd170996171474%_
                           _%tl170997171476%_
                           _%e170998171479%_
                           _%hd170999171482%_
                           _%tl171000171484%_
                           _%e171001171487%_
                           _%hd171002171490%_
                           _%tl171003171492%_
                           _%e171004171495%_
                           _%hd171005171498%_
                           _%tl171006171500%_
                           _%e171007171503%_
                           _%hd171008171506%_
                           _%tl171009171508%_
                           _%e171010171511%_
                           _%hd171011171514%_
                           _%tl171012171516%_))))
                   (_%__match175549175550%_
                    (lambda (_%e170938171574%_
                             _%hd170939171577%_
                             _%tl170940171579%_
                             _%e170941171582%_
                             _%hd170942171585%_
                             _%tl170943171587%_
                             _%e170944171590%_
                             _%hd170945171593%_
                             _%tl170946171595%_
                             _%e170947171598%_
                             _%hd170948171601%_
                             _%tl170949171603%_
                             _%e170950171606%_
                             _%hd170951171609%_
                             _%tl170952171611%_
                             _%e170953171614%_
                             _%hd170954171617%_
                             _%tl170955171619%_
                             _%e170956171622%_
                             _%hd170957171625%_
                             _%tl170958171627%_
                             _%e170959171630%_
                             _%hd170960171633%_
                             _%tl170961171635%_
                             _%e170962171638%_
                             _%hd170963171641%_
                             _%tl170964171643%_
                             _%e170965171646%_
                             _%hd170966171649%_
                             _%tl170967171651%_
                             _%e170968171654%_
                             _%hd170969171657%_
                             _%tl170970171659%_
                             _%e170971171662%_
                             _%hd170972171665%_
                             _%tl170973171667%_
                             _%e170974171670%_
                             _%hd170975171673%_
                             _%tl170976171675%_
                             _%__splice175342175343%_
                             _%target170977171678%_
                             _%tl170979171680%_)
                      (letrec ((_%loop170980171683%_
                                (lambda (_%hd170978171686%_
                                         _%args170984171688%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170978171686%_))
                                      (let ((_%e170981171691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170978171686%_))))
                                        (let ((_%lp-tl170983171696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170981171691%_)))
                                              (_%lp-hd170982171694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170981171691%_))))
                                          (_%loop170980171683%_
                                           _%lp-tl170983171696%_
                                           (cons _%lp-hd170982171694%_
                                                 _%args170984171688%_))))
                                      (let ((_%args170985171699%_
                                             (reverse _%args170984171688%_)))
                                        (let ((_%L171702%_
                                               _%args170985171699%_)
                                              (_%L171703%_ _%hd170975171673%_)
                                              (_%L171704%_ _%hd170966171649%_)
                                              (_%L171705%_ _%hd170957171625%_)
                                              (_%L171706%_ _%hd170948171601%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171706%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171705%_
                                                      'call-method))
                                                   (let ((__tmp176464
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170879%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171704%_
                                                      __tmp176464)))
                                              (_%__kont175340175341%_
                                               _%L171702%_
                                               _%L171703%_
                                               _%L171704%_
                                               _%L171705%_
                                               _%L171706%_)
                                              (_%__kont175352175353%_))))))))
                        (_%loop170980171683%_ _%target170977171678%_ '()))))
                   (_%__match175507175508%_
                    (lambda (_%e170938171574%_
                             _%hd170939171577%_
                             _%tl170940171579%_
                             _%e170941171582%_
                             _%hd170942171585%_
                             _%tl170943171587%_
                             _%e170944171590%_
                             _%hd170945171593%_
                             _%tl170946171595%_
                             _%e170947171598%_
                             _%hd170948171601%_
                             _%tl170949171603%_
                             _%e170950171606%_
                             _%hd170951171609%_
                             _%tl170952171611%_
                             _%e170953171614%_
                             _%hd170954171617%_
                             _%tl170955171619%_
                             _%e170956171622%_
                             _%hd170957171625%_
                             _%tl170958171627%_
                             _%e170959171630%_
                             _%hd170960171633%_
                             _%tl170961171635%_
                             _%e170962171638%_
                             _%hd170963171641%_
                             _%tl170964171643%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd170963171641%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170964171643%_))
                              (let ((_%e170965171646%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170964171643%_))))
                                (let ((_%tl170967171651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170965171646%_)))
                                      (_%hd170966171649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170965171646%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170967171651%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170961171635%_))
                                          (let ((_%e170968171654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170961171635%_))))
                                            (let ((_%tl170970171659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170968171654%_)))
                                                  (_%hd170969171657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170968171654%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd170969171657%_))
                                                  (let ((_%e170971171662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd170969171657%_))))
                                                    (let ((_%tl170973171667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170971171662%_)))
                                                          (_%hd170972171665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170971171662%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd170972171665%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd170972171665%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170973171667%_))
                          (let ((_%e170974171670%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170973171667%_))))
                            (let ((_%tl170976171675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170974171670%_)))
                                  (_%hd170975171673%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170974171670%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170976171675%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl170970171659%_))
                                      (let ((_%__splice175342175343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl170970171659%_
                                                '0))))
                                        (let ((_%tl170979171680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175342175343%_
                                                  '1)))
                                              (_%target170977171678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175342175343%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170979171680%_))
                                              (_%__match175549175550%_
                                               _%e170938171574%_
                                               _%hd170939171577%_
                                               _%tl170940171579%_
                                               _%e170941171582%_
                                               _%hd170942171585%_
                                               _%tl170943171587%_
                                               _%e170944171590%_
                                               _%hd170945171593%_
                                               _%tl170946171595%_
                                               _%e170947171598%_
                                               _%hd170948171601%_
                                               _%tl170949171603%_
                                               _%e170950171606%_
                                               _%hd170951171609%_
                                               _%tl170952171611%_
                                               _%e170953171614%_
                                               _%hd170954171617%_
                                               _%tl170955171619%_
                                               _%e170956171622%_
                                               _%hd170957171625%_
                                               _%tl170958171627%_
                                               _%e170959171630%_
                                               _%hd170960171633%_
                                               _%tl170961171635%_
                                               _%e170962171638%_
                                               _%hd170963171641%_
                                               _%tl170964171643%_
                                               _%e170965171646%_
                                               _%hd170966171649%_
                                               _%tl170967171651%_
                                               _%e170968171654%_
                                               _%hd170969171657%_
                                               _%tl170970171659%_
                                               _%e170971171662%_
                                               _%hd170972171665%_
                                               _%tl170973171667%_
                                               _%e170974171670%_
                                               _%hd170975171673%_
                                               _%tl170976171675%_
                                               _%__splice175342175343%_
                                               _%target170977171678%_
                                               _%tl170979171680%_)
                                              (_%__kont175352175353%_))))
                                      (_%__kont175352175353%_))
                                  (_%__kont175352175353%_))))
                          (_%__kont175352175353%_))
                      (_%__kont175352175353%_))
                  (_%__kont175352175353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175352175353%_))))
                                          (_%__match175831175832%_
                                           _%e170938171574%_
                                           _%hd170939171577%_
                                           _%tl170940171579%_
                                           _%e170941171582%_
                                           _%hd170942171585%_
                                           _%tl170943171587%_
                                           _%e170944171590%_
                                           _%hd170945171593%_
                                           _%tl170946171595%_
                                           _%e170947171598%_
                                           _%hd170948171601%_
                                           _%tl170949171603%_
                                           _%e170950171606%_
                                           _%hd170951171609%_
                                           _%tl170952171611%_
                                           _%e170953171614%_
                                           _%hd170954171617%_
                                           _%tl170955171619%_
                                           _%e170956171622%_
                                           _%hd170957171625%_
                                           _%tl170958171627%_
                                           _%e170959171630%_
                                           _%hd170960171633%_
                                           _%tl170961171635%_))
                                      (_%__match175831175832%_
                                       _%e170938171574%_
                                       _%hd170939171577%_
                                       _%tl170940171579%_
                                       _%e170941171582%_
                                       _%hd170942171585%_
                                       _%tl170943171587%_
                                       _%e170944171590%_
                                       _%hd170945171593%_
                                       _%tl170946171595%_
                                       _%e170947171598%_
                                       _%hd170948171601%_
                                       _%tl170949171603%_
                                       _%e170950171606%_
                                       _%hd170951171609%_
                                       _%tl170952171611%_
                                       _%e170953171614%_
                                       _%hd170954171617%_
                                       _%tl170955171619%_
                                       _%e170956171622%_
                                       _%hd170957171625%_
                                       _%tl170958171627%_
                                       _%e170959171630%_
                                       _%hd170960171633%_
                                       _%tl170961171635%_))))
                              (_%__match175831175832%_
                               _%e170938171574%_
                               _%hd170939171577%_
                               _%tl170940171579%_
                               _%e170941171582%_
                               _%hd170942171585%_
                               _%tl170943171587%_
                               _%e170944171590%_
                               _%hd170945171593%_
                               _%tl170946171595%_
                               _%e170947171598%_
                               _%hd170948171601%_
                               _%tl170949171603%_
                               _%e170950171606%_
                               _%hd170951171609%_
                               _%tl170952171611%_
                               _%e170953171614%_
                               _%hd170954171617%_
                               _%tl170955171619%_
                               _%e170956171622%_
                               _%hd170957171625%_
                               _%tl170958171627%_
                               _%e170959171630%_
                               _%hd170960171633%_
                               _%tl170961171635%_))
                          (_%__match175617175618%_
                           _%e170938171574%_
                           _%hd170939171577%_
                           _%tl170940171579%_
                           _%e170941171582%_
                           _%hd170942171585%_
                           _%tl170943171587%_
                           _%e170944171590%_
                           _%hd170945171593%_
                           _%tl170946171595%_
                           _%e170947171598%_
                           _%hd170948171601%_
                           _%tl170949171603%_
                           _%e170950171606%_
                           _%hd170951171609%_
                           _%tl170952171611%_
                           _%e170953171614%_
                           _%hd170954171617%_
                           _%tl170955171619%_
                           _%e170956171622%_
                           _%hd170957171625%_
                           _%tl170958171627%_
                           _%e170959171630%_
                           _%hd170960171633%_
                           _%tl170961171635%_
                           _%e170962171638%_
                           _%hd170963171641%_
                           _%tl170964171643%_))))
                   (_%__match175439175440%_
                    (lambda (_%e170894171763%_
                             _%hd170895171766%_
                             _%tl170896171768%_
                             _%e170897171771%_
                             _%hd170898171774%_
                             _%tl170899171776%_
                             _%e170900171779%_
                             _%hd170901171782%_
                             _%tl170902171784%_
                             _%e170903171787%_
                             _%hd170904171790%_
                             _%tl170905171792%_
                             _%e170906171795%_
                             _%hd170907171798%_
                             _%tl170908171800%_
                             _%e170909171803%_
                             _%hd170910171806%_
                             _%tl170911171808%_
                             _%e170912171811%_
                             _%hd170913171814%_
                             _%tl170914171816%_
                             _%e170915171819%_
                             _%hd170916171822%_
                             _%tl170917171824%_
                             _%e170918171827%_
                             _%hd170919171830%_
                             _%tl170920171832%_
                             _%e170921171835%_
                             _%hd170922171838%_
                             _%tl170923171840%_
                             _%__splice175338175339%_
                             _%target170924171843%_
                             _%tl170926171845%_)
                      (letrec ((_%loop170927171848%_
                                (lambda (_%hd170925171851%_
                                         _%args170931171853%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170925171851%_))
                                      (let ((_%e170928171856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170925171851%_))))
                                        (let ((_%lp-tl170930171861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170928171856%_)))
                                              (_%lp-hd170929171859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170928171856%_))))
                                          (_%loop170927171848%_
                                           _%lp-tl170930171861%_
                                           (cons _%lp-hd170929171859%_
                                                 _%args170931171853%_))))
                                      (let ((_%args170932171864%_
                                             (reverse _%args170931171853%_)))
                                        (let ((_%L171867%_
                                               _%args170932171864%_)
                                              (_%L171868%_ _%hd170922171838%_)
                                              (_%L171869%_ _%hd170913171814%_)
                                              (_%L171870%_ _%hd170904171790%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171870%_
                                                      'call-method))
                                                   (let ((__tmp176465
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170879%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171869%_
                                                      __tmp176465)))
                                              (_%__kont175336175337%_
                                               _%L171867%_
                                               _%L171868%_
                                               _%L171869%_
                                               _%L171870%_)
                                              (_%__match175627175628%_
                                               _%e170894171763%_
                                               _%hd170895171766%_
                                               _%tl170896171768%_
                                               _%e170897171771%_
                                               _%hd170898171774%_
                                               _%tl170899171776%_
                                               _%e170900171779%_
                                               _%hd170901171782%_
                                               _%tl170902171784%_
                                               _%e170903171787%_
                                               _%hd170904171790%_
                                               _%tl170905171792%_
                                               _%e170906171795%_
                                               _%hd170907171798%_
                                               _%tl170908171800%_
                                               _%e170909171803%_
                                               _%hd170910171806%_
                                               _%tl170911171808%_
                                               _%e170912171811%_
                                               _%hd170913171814%_
                                               _%tl170914171816%_
                                               _%e170915171819%_
                                               _%hd170916171822%_
                                               _%tl170917171824%_
                                               _%e170918171827%_
                                               _%hd170919171830%_
                                               _%tl170920171832%_
                                               _%e170921171835%_
                                               _%hd170922171838%_
                                               _%tl170923171840%_))))))))
                        (_%loop170927171848%_ _%target170924171843%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx175334175335%_))
                  (let ((_%e170894171763%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx175334175335%_))))
                    (let ((_%tl170896171768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170894171763%_)))
                          (_%hd170895171766%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170894171763%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170896171768%_))
                          (let ((_%e170897171771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170896171768%_))))
                            (let ((_%tl170899171776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170897171771%_)))
                                  (_%hd170898171774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170897171771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd170898171774%_))
                                  (let ((_%e170900171779%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd170898171774%_))))
                                    (let ((_%tl170902171784%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170900171779%_)))
                                          (_%hd170901171782%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170900171779%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd170901171782%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd170901171782%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl170902171784%_))
                                                  (let ((_%e170903171787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl170902171784%_))))
                                                    (let ((_%tl170905171792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170903171787%_)))
                                                          (_%hd170904171790%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170903171787%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl170905171792%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170899171776%_))
                      (let ((_%e170906171795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170899171776%_))))
                        (let ((_%tl170908171800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170906171795%_)))
                              (_%hd170907171798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170906171795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd170907171798%_))
                              (let ((_%e170909171803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd170907171798%_))))
                                (let ((_%tl170911171808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170909171803%_)))
                                      (_%hd170910171806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170909171803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170910171806%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd170910171806%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170911171808%_))
                                              (let ((_%e170912171811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170911171808%_))))
                                                (let ((_%tl170914171816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170912171811%_)))
                                                      (_%hd170913171814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170912171811%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170914171816%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170908171800%_))
                                                          (let ((_%e170915171819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170908171800%_))))
                    (let ((_%tl170917171824%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170915171819%_)))
                          (_%hd170916171822%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170915171819%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170916171822%_))
                          (let ((_%e170918171827%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170916171822%_))))
                            (let ((_%tl170920171832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170918171827%_)))
                                  (_%hd170919171830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170918171827%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd170919171830%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd170919171830%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170920171832%_))
                                          (let ((_%e170921171835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170920171832%_))))
                                            (let ((_%tl170923171840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170921171835%_)))
                                                  (_%hd170922171838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170921171835%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170923171840%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170917171824%_))
                                                      (let ((_%__splice175338175339%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl170917171824%_ '0))))
                (let ((_%tl170926171845%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175338175339%_ '1)))
                      (_%target170924171843%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175338175339%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170926171845%_))
                      (_%__match175439175440%_
                       _%e170894171763%_
                       _%hd170895171766%_
                       _%tl170896171768%_
                       _%e170897171771%_
                       _%hd170898171774%_
                       _%tl170899171776%_
                       _%e170900171779%_
                       _%hd170901171782%_
                       _%tl170902171784%_
                       _%e170903171787%_
                       _%hd170904171790%_
                       _%tl170905171792%_
                       _%e170906171795%_
                       _%hd170907171798%_
                       _%tl170908171800%_
                       _%e170909171803%_
                       _%hd170910171806%_
                       _%tl170911171808%_
                       _%e170912171811%_
                       _%hd170913171814%_
                       _%tl170914171816%_
                       _%e170915171819%_
                       _%hd170916171822%_
                       _%tl170917171824%_
                       _%e170918171827%_
                       _%hd170919171830%_
                       _%tl170920171832%_
                       _%e170921171835%_
                       _%hd170922171838%_
                       _%tl170923171840%_
                       _%__splice175338175339%_
                       _%target170924171843%_
                       _%tl170926171845%_)
                      (_%__match175627175628%_
                       _%e170894171763%_
                       _%hd170895171766%_
                       _%tl170896171768%_
                       _%e170897171771%_
                       _%hd170898171774%_
                       _%tl170899171776%_
                       _%e170900171779%_
                       _%hd170901171782%_
                       _%tl170902171784%_
                       _%e170903171787%_
                       _%hd170904171790%_
                       _%tl170905171792%_
                       _%e170906171795%_
                       _%hd170907171798%_
                       _%tl170908171800%_
                       _%e170909171803%_
                       _%hd170910171806%_
                       _%tl170911171808%_
                       _%e170912171811%_
                       _%hd170913171814%_
                       _%tl170914171816%_
                       _%e170915171819%_
                       _%hd170916171822%_
                       _%tl170917171824%_
                       _%e170918171827%_
                       _%hd170919171830%_
                       _%tl170920171832%_
                       _%e170921171835%_
                       _%hd170922171838%_
                       _%tl170923171840%_))))
              (_%__match175627175628%_
               _%e170894171763%_
               _%hd170895171766%_
               _%tl170896171768%_
               _%e170897171771%_
               _%hd170898171774%_
               _%tl170899171776%_
               _%e170900171779%_
               _%hd170901171782%_
               _%tl170902171784%_
               _%e170903171787%_
               _%hd170904171790%_
               _%tl170905171792%_
               _%e170906171795%_
               _%hd170907171798%_
               _%tl170908171800%_
               _%e170909171803%_
               _%hd170910171806%_
               _%tl170911171808%_
               _%e170912171811%_
               _%hd170913171814%_
               _%tl170914171816%_
               _%e170915171819%_
               _%hd170916171822%_
               _%tl170917171824%_
               _%e170918171827%_
               _%hd170919171830%_
               _%tl170920171832%_
               _%e170921171835%_
               _%hd170922171838%_
               _%tl170923171840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match175831175832%_
                                                   _%e170894171763%_
                                                   _%hd170895171766%_
                                                   _%tl170896171768%_
                                                   _%e170897171771%_
                                                   _%hd170898171774%_
                                                   _%tl170899171776%_
                                                   _%e170900171779%_
                                                   _%hd170901171782%_
                                                   _%tl170902171784%_
                                                   _%e170903171787%_
                                                   _%hd170904171790%_
                                                   _%tl170905171792%_
                                                   _%e170906171795%_
                                                   _%hd170907171798%_
                                                   _%tl170908171800%_
                                                   _%e170909171803%_
                                                   _%hd170910171806%_
                                                   _%tl170911171808%_
                                                   _%e170912171811%_
                                                   _%hd170913171814%_
                                                   _%tl170914171816%_
                                                   _%e170915171819%_
                                                   _%hd170916171822%_
                                                   _%tl170917171824%_))))
                                          (_%__match175831175832%_
                                           _%e170894171763%_
                                           _%hd170895171766%_
                                           _%tl170896171768%_
                                           _%e170897171771%_
                                           _%hd170898171774%_
                                           _%tl170899171776%_
                                           _%e170900171779%_
                                           _%hd170901171782%_
                                           _%tl170902171784%_
                                           _%e170903171787%_
                                           _%hd170904171790%_
                                           _%tl170905171792%_
                                           _%e170906171795%_
                                           _%hd170907171798%_
                                           _%tl170908171800%_
                                           _%e170909171803%_
                                           _%hd170910171806%_
                                           _%tl170911171808%_
                                           _%e170912171811%_
                                           _%hd170913171814%_
                                           _%tl170914171816%_
                                           _%e170915171819%_
                                           _%hd170916171822%_
                                           _%tl170917171824%_))
                                      (_%__match175507175508%_
                                       _%e170894171763%_
                                       _%hd170895171766%_
                                       _%tl170896171768%_
                                       _%e170897171771%_
                                       _%hd170898171774%_
                                       _%tl170899171776%_
                                       _%e170900171779%_
                                       _%hd170901171782%_
                                       _%tl170902171784%_
                                       _%e170903171787%_
                                       _%hd170904171790%_
                                       _%tl170905171792%_
                                       _%e170906171795%_
                                       _%hd170907171798%_
                                       _%tl170908171800%_
                                       _%e170909171803%_
                                       _%hd170910171806%_
                                       _%tl170911171808%_
                                       _%e170912171811%_
                                       _%hd170913171814%_
                                       _%tl170914171816%_
                                       _%e170915171819%_
                                       _%hd170916171822%_
                                       _%tl170917171824%_
                                       _%e170918171827%_
                                       _%hd170919171830%_
                                       _%tl170920171832%_))
                                  (_%__match175831175832%_
                                   _%e170894171763%_
                                   _%hd170895171766%_
                                   _%tl170896171768%_
                                   _%e170897171771%_
                                   _%hd170898171774%_
                                   _%tl170899171776%_
                                   _%e170900171779%_
                                   _%hd170901171782%_
                                   _%tl170902171784%_
                                   _%e170903171787%_
                                   _%hd170904171790%_
                                   _%tl170905171792%_
                                   _%e170906171795%_
                                   _%hd170907171798%_
                                   _%tl170908171800%_
                                   _%e170909171803%_
                                   _%hd170910171806%_
                                   _%tl170911171808%_
                                   _%e170912171811%_
                                   _%hd170913171814%_
                                   _%tl170914171816%_
                                   _%e170915171819%_
                                   _%hd170916171822%_
                                   _%tl170917171824%_))))
                          (_%__match175831175832%_
                           _%e170894171763%_
                           _%hd170895171766%_
                           _%tl170896171768%_
                           _%e170897171771%_
                           _%hd170898171774%_
                           _%tl170899171776%_
                           _%e170900171779%_
                           _%hd170901171782%_
                           _%tl170902171784%_
                           _%e170903171787%_
                           _%hd170904171790%_
                           _%tl170905171792%_
                           _%e170906171795%_
                           _%hd170907171798%_
                           _%tl170908171800%_
                           _%e170909171803%_
                           _%hd170910171806%_
                           _%tl170911171808%_
                           _%e170912171811%_
                           _%hd170913171814%_
                           _%tl170914171816%_
                           _%e170915171819%_
                           _%hd170916171822%_
                           _%tl170917171824%_))))
                  (_%__match175769175770%_
                   _%e170894171763%_
                   _%hd170895171766%_
                   _%tl170896171768%_
                   _%e170897171771%_
                   _%hd170898171774%_
                   _%tl170899171776%_
                   _%e170900171779%_
                   _%hd170901171782%_
                   _%tl170902171784%_
                   _%e170903171787%_
                   _%hd170904171790%_
                   _%tl170905171792%_
                   _%e170906171795%_
                   _%hd170907171798%_
                   _%tl170908171800%_
                   _%e170909171803%_
                   _%hd170910171806%_
                   _%tl170911171808%_
                   _%e170912171811%_
                   _%hd170913171814%_
                   _%tl170914171816%_))
              (_%__kont175352175353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont175352175353%_))
                                          (_%__kont175352175353%_))
                                      (_%__kont175352175353%_))))
                              (_%__kont175352175353%_))))
                      (_%__kont175352175353%_))
                  (_%__kont175352175353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175352175353%_))
                                              (_%__kont175352175353%_))
                                          (_%__kont175352175353%_))))
                                  (_%__kont175352175353%_))))
                          (_%__kont175352175353%_))))
                  (_%__kont175352175353%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self169818%_ _%stx169819%_)
        (letrec ((_%force-e169821%_
                  (lambda (_%target170877%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target170877%_ '()))
                                      '()))))))
          (let* ((_%__stx175836175837%_ _%stx169819%_)
                 (_%g169829170051%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175836175837%_)))))
            (let ((_%__kont175838175839%_
                   (lambda (_%L170823%_ _%L170824%_ _%L170825%_ _%L170826%_)
                     (let ((_%$method170871%_
                            (let ((__tmp176467
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169818%_ 'methods)))
                                  (__tmp176466
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170824%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176467 __tmp176466)))
                           (_%args170872%_
                            (map (lambda (_%g170859170861%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169818%_
                                      _%g170859170861%_)))
                                 (let ((__tmp176468
                                        (lambda (_%g170863170866%_
                                                 _%g170864170868%_)
                                          (cons _%g170863170866%_
                                                _%g170864170868%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176468 '() _%L170823%_)))))
                       (let ((__tmp176469
                              (cons '%#call
                                    (cons (_%force-e169821%_ _%$method170871%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169818%_
                                                               'receiver))
                                                            '()))
                                                _%args170872%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176469 _%stx169819%_)))))
                  (_%__kont175842175843%_
                   (lambda (_%L170655%_
                            _%L170656%_
                            _%L170657%_
                            _%L170658%_
                            _%L170659%_)
                     (let ((_%$method170711%_
                            (let ((__tmp176471
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169818%_ 'methods)))
                                  (__tmp176470
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170656%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176471 __tmp176470)))
                           (_%args170712%_
                            (map (lambda (_%g170699170701%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169818%_
                                      _%g170699170701%_)))
                                 (let ((__tmp176472
                                        (lambda (_%g170703170706%_
                                                 _%g170704170708%_)
                                          (cons _%g170703170706%_
                                                _%g170704170708%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176472 '() _%L170655%_)))))
                       (let ((__tmp176473
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e169821%_
                                                 _%$method170711%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169818%_ 'receiver))
                          '()))
              _%args170712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176473 _%stx169819%_)))))
                  (_%__kont175846175847%_
                   (lambda (_%L170486%_ _%L170487%_ _%L170488%_)
                     (let* ((_%$field170520%_
                             (let ((__tmp176475
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self169818%_ 'slots)))
                                   (__tmp176474
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L170486%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp176475 __tmp176474)))
                            (__tmp176476
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self169818%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field170520%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self169818%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp176476 _%stx169819%_))))
                  (_%__kont175848175849%_
                   (lambda (_%L170360%_ _%L170361%_ _%L170362%_ _%L170363%_)
                     (let ((_%$field170398%_
                            (let ((__tmp176478
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169818%_ 'slots)))
                                  (__tmp176477
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170361%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176478 __tmp176477)))
                           (_%expr170399%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self169818%_ _%L170360%_))))
                       (let ((__tmp176479
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self169818%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field170398%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169818%_ 'receiver))
                          '()))
              (cons _%expr170399%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176479 _%stx169819%_)))))
                  (_%__kont175850175851%_
                   (lambda (_%L170232%_ _%L170233%_)
                     (let* ((_%accessor170255%_
                             (let ((__tmp176480
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170233%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176480)))
                            (_%klass170257%_
                             (let ((__tmp176481
                                    (##structure-ref
                                     _%accessor170255%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169819%_
                                __tmp176481)))
                            (_%slot170259%_
                             (##structure-ref
                              _%accessor170255%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor170255%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170257%_
                                      _%slot170259%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170257%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx169819%_
                           (let* ((_%$field170265%_
                                   (let ((__tmp176482
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169818%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176482 _%slot170259%_)))
                                  (__tmp176483
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169818%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169818%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176483
                              _%stx169819%_))))))
                  (_%__kont175852175853%_
                   (lambda (_%L170127%_ _%L170128%_ _%L170129%_)
                     (let* ((_%mutator170157%_
                             (let ((__tmp176484
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170129%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176484)))
                            (_%klass170159%_
                             (let ((__tmp176485
                                    (##structure-ref
                                     _%mutator170157%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169819%_
                                __tmp176485)))
                            (_%slot170161%_
                             (##structure-ref
                              _%mutator170157%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr170163%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self169818%_ _%L170127%_))))
                       (if (if (##structure-ref
                                _%mutator170157%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170159%_
                                      _%slot170161%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170159%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp176486
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L170129%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L170128%_
                                                                '()))
                                                    (cons _%expr170163%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176486 _%stx169819%_))
                           (let* ((_%$field170169%_
                                   (let ((__tmp176487
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169818%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176487 _%slot170161%_)))
                                  (__tmp176488
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169818%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169818%_ 'receiver))
                               '()))
                   (cons _%expr170163%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176488
                              _%stx169819%_))))))
                  (_%__kont175854175855%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self169818%_ _%stx169819%_)))))
              (let* ((_%__match176335176336%_
                      (lambda (_%e170023170063%_
                               _%hd170024170066%_
                               _%tl170025170068%_
                               _%e170026170071%_
                               _%hd170027170074%_
                               _%tl170028170076%_
                               _%e170029170079%_
                               _%hd170030170082%_
                               _%tl170031170084%_
                               _%e170032170087%_
                               _%hd170033170090%_
                               _%tl170034170092%_
                               _%e170035170095%_
                               _%hd170036170098%_
                               _%tl170037170100%_
                               _%e170038170103%_
                               _%hd170039170106%_
                               _%tl170040170108%_
                               _%e170041170111%_
                               _%hd170042170114%_
                               _%tl170043170116%_
                               _%e170044170119%_
                               _%hd170045170122%_
                               _%tl170046170124%_)
                        (let ((_%L170127%_ _%hd170045170122%_)
                              (_%L170128%_ _%hd170042170114%_)
                              (_%L170129%_ _%hd170033170090%_))
                          (if (and (let ((__tmp176489
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169818%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170128%_
                                      __tmp176489))
                                   (let ((__tmp176490
                                          (let ((__tmp176491
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170129%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176491))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176490
                                      'gxc#!mutator::t)))
                              (_%__kont175852175853%_
                               _%L170127%_
                               _%L170128%_
                               _%L170129%_)
                              (_%__kont175854175855%_)))))
                     (_%__match176333176334%_
                      (lambda (_%e170023170063%_
                               _%hd170024170066%_
                               _%tl170025170068%_
                               _%e170026170071%_
                               _%hd170027170074%_
                               _%tl170028170076%_
                               _%e170029170079%_
                               _%hd170030170082%_
                               _%tl170031170084%_
                               _%e170032170087%_
                               _%hd170033170090%_
                               _%tl170034170092%_
                               _%e170035170095%_
                               _%hd170036170098%_
                               _%tl170037170100%_
                               _%e170038170103%_
                               _%hd170039170106%_
                               _%tl170040170108%_
                               _%e170041170111%_
                               _%hd170042170114%_
                               _%tl170043170116%_
                               _%e170044170119%_
                               _%hd170045170122%_
                               _%tl170046170124%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170046170124%_))
                            (_%__match176335176336%_
                             _%e170023170063%_
                             _%hd170024170066%_
                             _%tl170025170068%_
                             _%e170026170071%_
                             _%hd170027170074%_
                             _%tl170028170076%_
                             _%e170029170079%_
                             _%hd170030170082%_
                             _%tl170031170084%_
                             _%e170032170087%_
                             _%hd170033170090%_
                             _%tl170034170092%_
                             _%e170035170095%_
                             _%hd170036170098%_
                             _%tl170037170100%_
                             _%e170038170103%_
                             _%hd170039170106%_
                             _%tl170040170108%_
                             _%e170041170111%_
                             _%hd170042170114%_
                             _%tl170043170116%_
                             _%e170044170119%_
                             _%hd170045170122%_
                             _%tl170046170124%_)
                            (_%__kont175854175855%_))))
                     (_%__match176327176328%_
                      (lambda (_%e170023170063%_
                               _%hd170024170066%_
                               _%tl170025170068%_
                               _%e170026170071%_
                               _%hd170027170074%_
                               _%tl170028170076%_
                               _%e170029170079%_
                               _%hd170030170082%_
                               _%tl170031170084%_
                               _%e170032170087%_
                               _%hd170033170090%_
                               _%tl170034170092%_
                               _%e170035170095%_
                               _%hd170036170098%_
                               _%tl170037170100%_
                               _%e170038170103%_
                               _%hd170039170106%_
                               _%tl170040170108%_
                               _%e170041170111%_
                               _%hd170042170114%_
                               _%tl170043170116%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170037170100%_))
                            (let ((_%e170044170119%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170037170100%_))))
                              (let ((_%tl170046170124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170044170119%_)))
                                    (_%hd170045170122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170044170119%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170046170124%_))
                                    (_%__match176335176336%_
                                     _%e170023170063%_
                                     _%hd170024170066%_
                                     _%tl170025170068%_
                                     _%e170026170071%_
                                     _%hd170027170074%_
                                     _%tl170028170076%_
                                     _%e170029170079%_
                                     _%hd170030170082%_
                                     _%tl170031170084%_
                                     _%e170032170087%_
                                     _%hd170033170090%_
                                     _%tl170034170092%_
                                     _%e170035170095%_
                                     _%hd170036170098%_
                                     _%tl170037170100%_
                                     _%e170038170103%_
                                     _%hd170039170106%_
                                     _%tl170040170108%_
                                     _%e170041170111%_
                                     _%hd170042170114%_
                                     _%tl170043170116%_
                                     _%e170044170119%_
                                     _%hd170045170122%_
                                     _%tl170046170124%_)
                                    (_%__kont175854175855%_))))
                            (_%__kont175854175855%_))))
                     (_%__match176273176274%_
                      (lambda (_%e169999170176%_
                               _%hd170000170179%_
                               _%tl170001170181%_
                               _%e170002170184%_
                               _%hd170003170187%_
                               _%tl170004170189%_
                               _%e170005170192%_
                               _%hd170006170195%_
                               _%tl170007170197%_
                               _%e170008170200%_
                               _%hd170009170203%_
                               _%tl170010170205%_
                               _%e170011170208%_
                               _%hd170012170211%_
                               _%tl170013170213%_
                               _%e170014170216%_
                               _%hd170015170219%_
                               _%tl170016170221%_
                               _%e170017170224%_
                               _%hd170018170227%_
                               _%tl170019170229%_)
                        (let ((_%L170232%_ _%hd170018170227%_)
                              (_%L170233%_ _%hd170009170203%_))
                          (if (and (let ((__tmp176492
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169818%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170232%_
                                      __tmp176492))
                                   (let ((__tmp176493
                                          (let ((__tmp176494
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170233%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176494))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176493
                                      'gxc#!accessor::t)))
                              (_%__kont175850175851%_ _%L170232%_ _%L170233%_)
                              (_%__kont175854175855%_)))))
                     (_%__match176271176272%_
                      (lambda (_%e169999170176%_
                               _%hd170000170179%_
                               _%tl170001170181%_
                               _%e170002170184%_
                               _%hd170003170187%_
                               _%tl170004170189%_
                               _%e170005170192%_
                               _%hd170006170195%_
                               _%tl170007170197%_
                               _%e170008170200%_
                               _%hd170009170203%_
                               _%tl170010170205%_
                               _%e170011170208%_
                               _%hd170012170211%_
                               _%tl170013170213%_
                               _%e170014170216%_
                               _%hd170015170219%_
                               _%tl170016170221%_
                               _%e170017170224%_
                               _%hd170018170227%_
                               _%tl170019170229%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170013170213%_))
                            (_%__match176273176274%_
                             _%e169999170176%_
                             _%hd170000170179%_
                             _%tl170001170181%_
                             _%e170002170184%_
                             _%hd170003170187%_
                             _%tl170004170189%_
                             _%e170005170192%_
                             _%hd170006170195%_
                             _%tl170007170197%_
                             _%e170008170200%_
                             _%hd170009170203%_
                             _%tl170010170205%_
                             _%e170011170208%_
                             _%hd170012170211%_
                             _%tl170013170213%_
                             _%e170014170216%_
                             _%hd170015170219%_
                             _%tl170016170221%_
                             _%e170017170224%_
                             _%hd170018170227%_
                             _%tl170019170229%_)
                            (_%__match176327176328%_
                             _%e169999170176%_
                             _%hd170000170179%_
                             _%tl170001170181%_
                             _%e170002170184%_
                             _%hd170003170187%_
                             _%tl170004170189%_
                             _%e170005170192%_
                             _%hd170006170195%_
                             _%tl170007170197%_
                             _%e170008170200%_
                             _%hd170009170203%_
                             _%tl170010170205%_
                             _%e170011170208%_
                             _%hd170012170211%_
                             _%tl170013170213%_
                             _%e170014170216%_
                             _%hd170015170219%_
                             _%tl170016170221%_
                             _%e170017170224%_
                             _%hd170018170227%_
                             _%tl170019170229%_))))
                     (_%__match176217176218%_
                      (lambda (_%e169964170272%_
                               _%hd169965170275%_
                               _%tl169966170277%_
                               _%e169967170280%_
                               _%hd169968170283%_
                               _%tl169969170285%_
                               _%e169970170288%_
                               _%hd169971170291%_
                               _%tl169972170293%_
                               _%e169973170296%_
                               _%hd169974170299%_
                               _%tl169975170301%_
                               _%e169976170304%_
                               _%hd169977170307%_
                               _%tl169978170309%_
                               _%e169979170312%_
                               _%hd169980170315%_
                               _%tl169981170317%_
                               _%e169982170320%_
                               _%hd169983170323%_
                               _%tl169984170325%_
                               _%e169985170328%_
                               _%hd169986170331%_
                               _%tl169987170333%_
                               _%e169988170336%_
                               _%hd169989170339%_
                               _%tl169990170341%_
                               _%e169991170344%_
                               _%hd169992170347%_
                               _%tl169993170349%_
                               _%e169994170352%_
                               _%hd169995170355%_
                               _%tl169996170357%_)
                        (let ((_%L170360%_ _%hd169995170355%_)
                              (_%L170361%_ _%hd169992170347%_)
                              (_%L170362%_ _%hd169983170323%_)
                              (_%L170363%_ _%hd169974170299%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170363%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170363%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp176495
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169818%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170362%_
                                      __tmp176495)))
                              (_%__kont175848175849%_
                               _%L170360%_
                               _%L170361%_
                               _%L170362%_
                               _%L170363%_)
                              (_%__kont175854175855%_)))))
                     (_%__match176209176210%_
                      (lambda (_%e169964170272%_
                               _%hd169965170275%_
                               _%tl169966170277%_
                               _%e169967170280%_
                               _%hd169968170283%_
                               _%tl169969170285%_
                               _%e169970170288%_
                               _%hd169971170291%_
                               _%tl169972170293%_
                               _%e169973170296%_
                               _%hd169974170299%_
                               _%tl169975170301%_
                               _%e169976170304%_
                               _%hd169977170307%_
                               _%tl169978170309%_
                               _%e169979170312%_
                               _%hd169980170315%_
                               _%tl169981170317%_
                               _%e169982170320%_
                               _%hd169983170323%_
                               _%tl169984170325%_
                               _%e169985170328%_
                               _%hd169986170331%_
                               _%tl169987170333%_
                               _%e169988170336%_
                               _%hd169989170339%_
                               _%tl169990170341%_
                               _%e169991170344%_
                               _%hd169992170347%_
                               _%tl169993170349%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169987170333%_))
                            (let ((_%e169994170352%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169987170333%_))))
                              (let ((_%tl169996170357%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169994170352%_)))
                                    (_%hd169995170355%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169994170352%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169996170357%_))
                                    (_%__match176217176218%_
                                     _%e169964170272%_
                                     _%hd169965170275%_
                                     _%tl169966170277%_
                                     _%e169967170280%_
                                     _%hd169968170283%_
                                     _%tl169969170285%_
                                     _%e169970170288%_
                                     _%hd169971170291%_
                                     _%tl169972170293%_
                                     _%e169973170296%_
                                     _%hd169974170299%_
                                     _%tl169975170301%_
                                     _%e169976170304%_
                                     _%hd169977170307%_
                                     _%tl169978170309%_
                                     _%e169979170312%_
                                     _%hd169980170315%_
                                     _%tl169981170317%_
                                     _%e169982170320%_
                                     _%hd169983170323%_
                                     _%tl169984170325%_
                                     _%e169985170328%_
                                     _%hd169986170331%_
                                     _%tl169987170333%_
                                     _%e169988170336%_
                                     _%hd169989170339%_
                                     _%tl169990170341%_
                                     _%e169991170344%_
                                     _%hd169992170347%_
                                     _%tl169993170349%_
                                     _%e169994170352%_
                                     _%hd169995170355%_
                                     _%tl169996170357%_)
                                    (_%__kont175854175855%_))))
                            (_%__match176333176334%_
                             _%e169964170272%_
                             _%hd169965170275%_
                             _%tl169966170277%_
                             _%e169967170280%_
                             _%hd169968170283%_
                             _%tl169969170285%_
                             _%e169970170288%_
                             _%hd169971170291%_
                             _%tl169972170293%_
                             _%e169973170296%_
                             _%hd169974170299%_
                             _%tl169975170301%_
                             _%e169976170304%_
                             _%hd169977170307%_
                             _%tl169978170309%_
                             _%e169979170312%_
                             _%hd169980170315%_
                             _%tl169981170317%_
                             _%e169982170320%_
                             _%hd169983170323%_
                             _%tl169984170325%_
                             _%e169985170328%_
                             _%hd169986170331%_
                             _%tl169987170333%_))))
                     (_%__match176131176132%_
                      (lambda (_%e169930170406%_
                               _%hd169931170409%_
                               _%tl169932170411%_
                               _%e169933170414%_
                               _%hd169934170417%_
                               _%tl169935170419%_
                               _%e169936170422%_
                               _%hd169937170425%_
                               _%tl169938170427%_
                               _%e169939170430%_
                               _%hd169940170433%_
                               _%tl169941170435%_
                               _%e169942170438%_
                               _%hd169943170441%_
                               _%tl169944170443%_
                               _%e169945170446%_
                               _%hd169946170449%_
                               _%tl169947170451%_
                               _%e169948170454%_
                               _%hd169949170457%_
                               _%tl169950170459%_
                               _%e169951170462%_
                               _%hd169952170465%_
                               _%tl169953170467%_
                               _%e169954170470%_
                               _%hd169955170473%_
                               _%tl169956170475%_
                               _%e169957170478%_
                               _%hd169958170481%_
                               _%tl169959170483%_)
                        (let ((_%L170486%_ _%hd169958170481%_)
                              (_%L170487%_ _%hd169949170457%_)
                              (_%L170488%_ _%hd169940170433%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170488%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170488%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp176496
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169818%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170487%_
                                      __tmp176496)))
                              (_%__kont175846175847%_
                               _%L170486%_
                               _%L170487%_
                               _%L170488%_)
                              (_%__match176335176336%_
                               _%e169930170406%_
                               _%hd169931170409%_
                               _%tl169932170411%_
                               _%e169933170414%_
                               _%hd169934170417%_
                               _%tl169935170419%_
                               _%e169936170422%_
                               _%hd169937170425%_
                               _%tl169938170427%_
                               _%e169939170430%_
                               _%hd169940170433%_
                               _%tl169941170435%_
                               _%e169942170438%_
                               _%hd169943170441%_
                               _%tl169944170443%_
                               _%e169945170446%_
                               _%hd169946170449%_
                               _%tl169947170451%_
                               _%e169948170454%_
                               _%hd169949170457%_
                               _%tl169950170459%_
                               _%e169951170462%_
                               _%hd169952170465%_
                               _%tl169953170467%_)))))
                     (_%__match176129176130%_
                      (lambda (_%e169930170406%_
                               _%hd169931170409%_
                               _%tl169932170411%_
                               _%e169933170414%_
                               _%hd169934170417%_
                               _%tl169935170419%_
                               _%e169936170422%_
                               _%hd169937170425%_
                               _%tl169938170427%_
                               _%e169939170430%_
                               _%hd169940170433%_
                               _%tl169941170435%_
                               _%e169942170438%_
                               _%hd169943170441%_
                               _%tl169944170443%_
                               _%e169945170446%_
                               _%hd169946170449%_
                               _%tl169947170451%_
                               _%e169948170454%_
                               _%hd169949170457%_
                               _%tl169950170459%_
                               _%e169951170462%_
                               _%hd169952170465%_
                               _%tl169953170467%_
                               _%e169954170470%_
                               _%hd169955170473%_
                               _%tl169956170475%_
                               _%e169957170478%_
                               _%hd169958170481%_
                               _%tl169959170483%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169953170467%_))
                            (_%__match176131176132%_
                             _%e169930170406%_
                             _%hd169931170409%_
                             _%tl169932170411%_
                             _%e169933170414%_
                             _%hd169934170417%_
                             _%tl169935170419%_
                             _%e169936170422%_
                             _%hd169937170425%_
                             _%tl169938170427%_
                             _%e169939170430%_
                             _%hd169940170433%_
                             _%tl169941170435%_
                             _%e169942170438%_
                             _%hd169943170441%_
                             _%tl169944170443%_
                             _%e169945170446%_
                             _%hd169946170449%_
                             _%tl169947170451%_
                             _%e169948170454%_
                             _%hd169949170457%_
                             _%tl169950170459%_
                             _%e169951170462%_
                             _%hd169952170465%_
                             _%tl169953170467%_
                             _%e169954170470%_
                             _%hd169955170473%_
                             _%tl169956170475%_
                             _%e169957170478%_
                             _%hd169958170481%_
                             _%tl169959170483%_)
                            (_%__match176209176210%_
                             _%e169930170406%_
                             _%hd169931170409%_
                             _%tl169932170411%_
                             _%e169933170414%_
                             _%hd169934170417%_
                             _%tl169935170419%_
                             _%e169936170422%_
                             _%hd169937170425%_
                             _%tl169938170427%_
                             _%e169939170430%_
                             _%hd169940170433%_
                             _%tl169941170435%_
                             _%e169942170438%_
                             _%hd169943170441%_
                             _%tl169944170443%_
                             _%e169945170446%_
                             _%hd169946170449%_
                             _%tl169947170451%_
                             _%e169948170454%_
                             _%hd169949170457%_
                             _%tl169950170459%_
                             _%e169951170462%_
                             _%hd169952170465%_
                             _%tl169953170467%_
                             _%e169954170470%_
                             _%hd169955170473%_
                             _%tl169956170475%_
                             _%e169957170478%_
                             _%hd169958170481%_
                             _%tl169959170483%_))))
                     (_%__match176119176120%_
                      (lambda (_%e169930170406%_
                               _%hd169931170409%_
                               _%tl169932170411%_
                               _%e169933170414%_
                               _%hd169934170417%_
                               _%tl169935170419%_
                               _%e169936170422%_
                               _%hd169937170425%_
                               _%tl169938170427%_
                               _%e169939170430%_
                               _%hd169940170433%_
                               _%tl169941170435%_
                               _%e169942170438%_
                               _%hd169943170441%_
                               _%tl169944170443%_
                               _%e169945170446%_
                               _%hd169946170449%_
                               _%tl169947170451%_
                               _%e169948170454%_
                               _%hd169949170457%_
                               _%tl169950170459%_
                               _%e169951170462%_
                               _%hd169952170465%_
                               _%tl169953170467%_
                               _%e169954170470%_
                               _%hd169955170473%_
                               _%tl169956170475%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd169955170473%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169956170475%_))
                                (let ((_%e169957170478%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169956170475%_))))
                                  (let ((_%tl169959170483%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169957170478%_)))
                                        (_%hd169958170481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169957170478%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169959170483%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169953170467%_))
                                            (_%__match176131176132%_
                                             _%e169930170406%_
                                             _%hd169931170409%_
                                             _%tl169932170411%_
                                             _%e169933170414%_
                                             _%hd169934170417%_
                                             _%tl169935170419%_
                                             _%e169936170422%_
                                             _%hd169937170425%_
                                             _%tl169938170427%_
                                             _%e169939170430%_
                                             _%hd169940170433%_
                                             _%tl169941170435%_
                                             _%e169942170438%_
                                             _%hd169943170441%_
                                             _%tl169944170443%_
                                             _%e169945170446%_
                                             _%hd169946170449%_
                                             _%tl169947170451%_
                                             _%e169948170454%_
                                             _%hd169949170457%_
                                             _%tl169950170459%_
                                             _%e169951170462%_
                                             _%hd169952170465%_
                                             _%tl169953170467%_
                                             _%e169954170470%_
                                             _%hd169955170473%_
                                             _%tl169956170475%_
                                             _%e169957170478%_
                                             _%hd169958170481%_
                                             _%tl169959170483%_)
                                            (_%__match176209176210%_
                                             _%e169930170406%_
                                             _%hd169931170409%_
                                             _%tl169932170411%_
                                             _%e169933170414%_
                                             _%hd169934170417%_
                                             _%tl169935170419%_
                                             _%e169936170422%_
                                             _%hd169937170425%_
                                             _%tl169938170427%_
                                             _%e169939170430%_
                                             _%hd169940170433%_
                                             _%tl169941170435%_
                                             _%e169942170438%_
                                             _%hd169943170441%_
                                             _%tl169944170443%_
                                             _%e169945170446%_
                                             _%hd169946170449%_
                                             _%tl169947170451%_
                                             _%e169948170454%_
                                             _%hd169949170457%_
                                             _%tl169950170459%_
                                             _%e169951170462%_
                                             _%hd169952170465%_
                                             _%tl169953170467%_
                                             _%e169954170470%_
                                             _%hd169955170473%_
                                             _%tl169956170475%_
                                             _%e169957170478%_
                                             _%hd169958170481%_
                                             _%tl169959170483%_))
                                        (_%__match176333176334%_
                                         _%e169930170406%_
                                         _%hd169931170409%_
                                         _%tl169932170411%_
                                         _%e169933170414%_
                                         _%hd169934170417%_
                                         _%tl169935170419%_
                                         _%e169936170422%_
                                         _%hd169937170425%_
                                         _%tl169938170427%_
                                         _%e169939170430%_
                                         _%hd169940170433%_
                                         _%tl169941170435%_
                                         _%e169942170438%_
                                         _%hd169943170441%_
                                         _%tl169944170443%_
                                         _%e169945170446%_
                                         _%hd169946170449%_
                                         _%tl169947170451%_
                                         _%e169948170454%_
                                         _%hd169949170457%_
                                         _%tl169950170459%_
                                         _%e169951170462%_
                                         _%hd169952170465%_
                                         _%tl169953170467%_))))
                                (_%__match176333176334%_
                                 _%e169930170406%_
                                 _%hd169931170409%_
                                 _%tl169932170411%_
                                 _%e169933170414%_
                                 _%hd169934170417%_
                                 _%tl169935170419%_
                                 _%e169936170422%_
                                 _%hd169937170425%_
                                 _%tl169938170427%_
                                 _%e169939170430%_
                                 _%hd169940170433%_
                                 _%tl169941170435%_
                                 _%e169942170438%_
                                 _%hd169943170441%_
                                 _%tl169944170443%_
                                 _%e169945170446%_
                                 _%hd169946170449%_
                                 _%tl169947170451%_
                                 _%e169948170454%_
                                 _%hd169949170457%_
                                 _%tl169950170459%_
                                 _%e169951170462%_
                                 _%hd169952170465%_
                                 _%tl169953170467%_))
                            (_%__match176333176334%_
                             _%e169930170406%_
                             _%hd169931170409%_
                             _%tl169932170411%_
                             _%e169933170414%_
                             _%hd169934170417%_
                             _%tl169935170419%_
                             _%e169936170422%_
                             _%hd169937170425%_
                             _%tl169938170427%_
                             _%e169939170430%_
                             _%hd169940170433%_
                             _%tl169941170435%_
                             _%e169942170438%_
                             _%hd169943170441%_
                             _%tl169944170443%_
                             _%e169945170446%_
                             _%hd169946170449%_
                             _%tl169947170451%_
                             _%e169948170454%_
                             _%hd169949170457%_
                             _%tl169950170459%_
                             _%e169951170462%_
                             _%hd169952170465%_
                             _%tl169953170467%_))))
                     (_%__match176051176052%_
                      (lambda (_%e169879170527%_
                               _%hd169880170530%_
                               _%tl169881170532%_
                               _%e169882170535%_
                               _%hd169883170538%_
                               _%tl169884170540%_
                               _%e169885170543%_
                               _%hd169886170546%_
                               _%tl169887170548%_
                               _%e169888170551%_
                               _%hd169889170554%_
                               _%tl169890170556%_
                               _%e169891170559%_
                               _%hd169892170562%_
                               _%tl169893170564%_
                               _%e169894170567%_
                               _%hd169895170570%_
                               _%tl169896170572%_
                               _%e169897170575%_
                               _%hd169898170578%_
                               _%tl169899170580%_
                               _%e169900170583%_
                               _%hd169901170586%_
                               _%tl169902170588%_
                               _%e169903170591%_
                               _%hd169904170594%_
                               _%tl169905170596%_
                               _%e169906170599%_
                               _%hd169907170602%_
                               _%tl169908170604%_
                               _%e169909170607%_
                               _%hd169910170610%_
                               _%tl169911170612%_
                               _%e169912170615%_
                               _%hd169913170618%_
                               _%tl169914170620%_
                               _%e169915170623%_
                               _%hd169916170626%_
                               _%tl169917170628%_
                               _%__splice175844175845%_
                               _%target169918170631%_
                               _%tl169920170633%_)
                        (letrec ((_%loop169921170636%_
                                  (lambda (_%hd169919170639%_
                                           _%args169925170641%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169919170639%_))
                                        (let ((_%e169922170644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169919170639%_))))
                                          (let ((_%lp-tl169924170649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169922170644%_)))
                                                (_%lp-hd169923170647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169922170644%_))))
                                            (_%loop169921170636%_
                                             _%lp-tl169924170649%_
                                             (cons _%lp-hd169923170647%_
                                                   _%args169925170641%_))))
                                        (let ((_%args169926170652%_
                                               (reverse _%args169925170641%_)))
                                          (let ((_%L170655%_
                                                 _%args169926170652%_)
                                                (_%L170656%_
                                                 _%hd169916170626%_)
                                                (_%L170657%_
                                                 _%hd169907170602%_)
                                                (_%L170658%_
                                                 _%hd169898170578%_)
                                                (_%L170659%_
                                                 _%hd169889170554%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170659%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170658%_
                                                        'call-method))
                                                     (let ((__tmp176497
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169818%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170657%_
                                                        __tmp176497)))
                                                (_%__kont175842175843%_
                                                 _%L170655%_
                                                 _%L170656%_
                                                 _%L170657%_
                                                 _%L170658%_
                                                 _%L170659%_)
                                                (_%__kont175854175855%_))))))))
                          (_%loop169921170636%_ _%target169918170631%_ '()))))
                     (_%__match176009176010%_
                      (lambda (_%e169879170527%_
                               _%hd169880170530%_
                               _%tl169881170532%_
                               _%e169882170535%_
                               _%hd169883170538%_
                               _%tl169884170540%_
                               _%e169885170543%_
                               _%hd169886170546%_
                               _%tl169887170548%_
                               _%e169888170551%_
                               _%hd169889170554%_
                               _%tl169890170556%_
                               _%e169891170559%_
                               _%hd169892170562%_
                               _%tl169893170564%_
                               _%e169894170567%_
                               _%hd169895170570%_
                               _%tl169896170572%_
                               _%e169897170575%_
                               _%hd169898170578%_
                               _%tl169899170580%_
                               _%e169900170583%_
                               _%hd169901170586%_
                               _%tl169902170588%_
                               _%e169903170591%_
                               _%hd169904170594%_
                               _%tl169905170596%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd169904170594%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169905170596%_))
                                (let ((_%e169906170599%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169905170596%_))))
                                  (let ((_%tl169908170604%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169906170599%_)))
                                        (_%hd169907170602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169906170599%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169908170604%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169902170588%_))
                                            (let ((_%e169909170607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169902170588%_))))
                                              (let ((_%tl169911170612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169909170607%_)))
                                                    (_%hd169910170610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169909170607%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169910170610%_))
                                                    (let ((_%e169912170615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169910170610%_))))
                                                      (let ((_%tl169914170620%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169912170615%_)))
                    (_%hd169913170618%_
                     (let () (declare (not safe)) (##car _%e169912170615%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169913170618%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd169913170618%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169914170620%_))
                            (let ((_%e169915170623%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169914170620%_))))
                              (let ((_%tl169917170628%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169915170623%_)))
                                    (_%hd169916170626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169915170623%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169917170628%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl169911170612%_))
                                        (let ((_%__splice175844175845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl169911170612%_
                                                  '0))))
                                          (let ((_%tl169920170633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175844175845%_
                                                    '1)))
                                                (_%target169918170631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175844175845%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169920170633%_))
                                                (_%__match176051176052%_
                                                 _%e169879170527%_
                                                 _%hd169880170530%_
                                                 _%tl169881170532%_
                                                 _%e169882170535%_
                                                 _%hd169883170538%_
                                                 _%tl169884170540%_
                                                 _%e169885170543%_
                                                 _%hd169886170546%_
                                                 _%tl169887170548%_
                                                 _%e169888170551%_
                                                 _%hd169889170554%_
                                                 _%tl169890170556%_
                                                 _%e169891170559%_
                                                 _%hd169892170562%_
                                                 _%tl169893170564%_
                                                 _%e169894170567%_
                                                 _%hd169895170570%_
                                                 _%tl169896170572%_
                                                 _%e169897170575%_
                                                 _%hd169898170578%_
                                                 _%tl169899170580%_
                                                 _%e169900170583%_
                                                 _%hd169901170586%_
                                                 _%tl169902170588%_
                                                 _%e169903170591%_
                                                 _%hd169904170594%_
                                                 _%tl169905170596%_
                                                 _%e169906170599%_
                                                 _%hd169907170602%_
                                                 _%tl169908170604%_
                                                 _%e169909170607%_
                                                 _%hd169910170610%_
                                                 _%tl169911170612%_
                                                 _%e169912170615%_
                                                 _%hd169913170618%_
                                                 _%tl169914170620%_
                                                 _%e169915170623%_
                                                 _%hd169916170626%_
                                                 _%tl169917170628%_
                                                 _%__splice175844175845%_
                                                 _%target169918170631%_
                                                 _%tl169920170633%_)
                                                (_%__kont175854175855%_))))
                                        (_%__kont175854175855%_))
                                    (_%__kont175854175855%_))))
                            (_%__kont175854175855%_))
                        (_%__kont175854175855%_))
                    (_%__kont175854175855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175854175855%_))))
                                            (_%__match176333176334%_
                                             _%e169879170527%_
                                             _%hd169880170530%_
                                             _%tl169881170532%_
                                             _%e169882170535%_
                                             _%hd169883170538%_
                                             _%tl169884170540%_
                                             _%e169885170543%_
                                             _%hd169886170546%_
                                             _%tl169887170548%_
                                             _%e169888170551%_
                                             _%hd169889170554%_
                                             _%tl169890170556%_
                                             _%e169891170559%_
                                             _%hd169892170562%_
                                             _%tl169893170564%_
                                             _%e169894170567%_
                                             _%hd169895170570%_
                                             _%tl169896170572%_
                                             _%e169897170575%_
                                             _%hd169898170578%_
                                             _%tl169899170580%_
                                             _%e169900170583%_
                                             _%hd169901170586%_
                                             _%tl169902170588%_))
                                        (_%__match176333176334%_
                                         _%e169879170527%_
                                         _%hd169880170530%_
                                         _%tl169881170532%_
                                         _%e169882170535%_
                                         _%hd169883170538%_
                                         _%tl169884170540%_
                                         _%e169885170543%_
                                         _%hd169886170546%_
                                         _%tl169887170548%_
                                         _%e169888170551%_
                                         _%hd169889170554%_
                                         _%tl169890170556%_
                                         _%e169891170559%_
                                         _%hd169892170562%_
                                         _%tl169893170564%_
                                         _%e169894170567%_
                                         _%hd169895170570%_
                                         _%tl169896170572%_
                                         _%e169897170575%_
                                         _%hd169898170578%_
                                         _%tl169899170580%_
                                         _%e169900170583%_
                                         _%hd169901170586%_
                                         _%tl169902170588%_))))
                                (_%__match176333176334%_
                                 _%e169879170527%_
                                 _%hd169880170530%_
                                 _%tl169881170532%_
                                 _%e169882170535%_
                                 _%hd169883170538%_
                                 _%tl169884170540%_
                                 _%e169885170543%_
                                 _%hd169886170546%_
                                 _%tl169887170548%_
                                 _%e169888170551%_
                                 _%hd169889170554%_
                                 _%tl169890170556%_
                                 _%e169891170559%_
                                 _%hd169892170562%_
                                 _%tl169893170564%_
                                 _%e169894170567%_
                                 _%hd169895170570%_
                                 _%tl169896170572%_
                                 _%e169897170575%_
                                 _%hd169898170578%_
                                 _%tl169899170580%_
                                 _%e169900170583%_
                                 _%hd169901170586%_
                                 _%tl169902170588%_))
                            (_%__match176119176120%_
                             _%e169879170527%_
                             _%hd169880170530%_
                             _%tl169881170532%_
                             _%e169882170535%_
                             _%hd169883170538%_
                             _%tl169884170540%_
                             _%e169885170543%_
                             _%hd169886170546%_
                             _%tl169887170548%_
                             _%e169888170551%_
                             _%hd169889170554%_
                             _%tl169890170556%_
                             _%e169891170559%_
                             _%hd169892170562%_
                             _%tl169893170564%_
                             _%e169894170567%_
                             _%hd169895170570%_
                             _%tl169896170572%_
                             _%e169897170575%_
                             _%hd169898170578%_
                             _%tl169899170580%_
                             _%e169900170583%_
                             _%hd169901170586%_
                             _%tl169902170588%_
                             _%e169903170591%_
                             _%hd169904170594%_
                             _%tl169905170596%_))))
                     (_%__match175941175942%_
                      (lambda (_%e169835170719%_
                               _%hd169836170722%_
                               _%tl169837170724%_
                               _%e169838170727%_
                               _%hd169839170730%_
                               _%tl169840170732%_
                               _%e169841170735%_
                               _%hd169842170738%_
                               _%tl169843170740%_
                               _%e169844170743%_
                               _%hd169845170746%_
                               _%tl169846170748%_
                               _%e169847170751%_
                               _%hd169848170754%_
                               _%tl169849170756%_
                               _%e169850170759%_
                               _%hd169851170762%_
                               _%tl169852170764%_
                               _%e169853170767%_
                               _%hd169854170770%_
                               _%tl169855170772%_
                               _%e169856170775%_
                               _%hd169857170778%_
                               _%tl169858170780%_
                               _%e169859170783%_
                               _%hd169860170786%_
                               _%tl169861170788%_
                               _%e169862170791%_
                               _%hd169863170794%_
                               _%tl169864170796%_
                               _%__splice175840175841%_
                               _%target169865170799%_
                               _%tl169867170801%_)
                        (letrec ((_%loop169868170804%_
                                  (lambda (_%hd169866170807%_
                                           _%args169872170809%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169866170807%_))
                                        (let ((_%e169869170812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169866170807%_))))
                                          (let ((_%lp-tl169871170817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169869170812%_)))
                                                (_%lp-hd169870170815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169869170812%_))))
                                            (_%loop169868170804%_
                                             _%lp-tl169871170817%_
                                             (cons _%lp-hd169870170815%_
                                                   _%args169872170809%_))))
                                        (let ((_%args169873170820%_
                                               (reverse _%args169872170809%_)))
                                          (let ((_%L170823%_
                                                 _%args169873170820%_)
                                                (_%L170824%_
                                                 _%hd169863170794%_)
                                                (_%L170825%_
                                                 _%hd169854170770%_)
                                                (_%L170826%_
                                                 _%hd169845170746%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170826%_
                                                        'call-method))
                                                     (let ((__tmp176498
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169818%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170825%_
                                                        __tmp176498)))
                                                (_%__kont175838175839%_
                                                 _%L170823%_
                                                 _%L170824%_
                                                 _%L170825%_
                                                 _%L170826%_)
                                                (_%__match176129176130%_
                                                 _%e169835170719%_
                                                 _%hd169836170722%_
                                                 _%tl169837170724%_
                                                 _%e169838170727%_
                                                 _%hd169839170730%_
                                                 _%tl169840170732%_
                                                 _%e169841170735%_
                                                 _%hd169842170738%_
                                                 _%tl169843170740%_
                                                 _%e169844170743%_
                                                 _%hd169845170746%_
                                                 _%tl169846170748%_
                                                 _%e169847170751%_
                                                 _%hd169848170754%_
                                                 _%tl169849170756%_
                                                 _%e169850170759%_
                                                 _%hd169851170762%_
                                                 _%tl169852170764%_
                                                 _%e169853170767%_
                                                 _%hd169854170770%_
                                                 _%tl169855170772%_
                                                 _%e169856170775%_
                                                 _%hd169857170778%_
                                                 _%tl169858170780%_
                                                 _%e169859170783%_
                                                 _%hd169860170786%_
                                                 _%tl169861170788%_
                                                 _%e169862170791%_
                                                 _%hd169863170794%_
                                                 _%tl169864170796%_))))))))
                          (_%loop169868170804%_ _%target169865170799%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175836175837%_))
                    (let ((_%e169835170719%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175836175837%_))))
                      (let ((_%tl169837170724%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169835170719%_)))
                            (_%hd169836170722%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169835170719%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169837170724%_))
                            (let ((_%e169838170727%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169837170724%_))))
                              (let ((_%tl169840170732%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169838170727%_)))
                                    (_%hd169839170730%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169838170727%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169839170730%_))
                                    (let ((_%e169841170735%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169839170730%_))))
                                      (let ((_%tl169843170740%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169841170735%_)))
                                            (_%hd169842170738%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169841170735%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169842170738%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169842170738%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169843170740%_))
                                                    (let ((_%e169844170743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169843170740%_))))
                                                      (let ((_%tl169846170748%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169844170743%_)))
                    (_%hd169845170746%_
                     (let () (declare (not safe)) (##car _%e169844170743%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169846170748%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169840170732%_))
                        (let ((_%e169847170751%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169840170732%_))))
                          (let ((_%tl169849170756%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169847170751%_)))
                                (_%hd169848170754%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169847170751%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169848170754%_))
                                (let ((_%e169850170759%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169848170754%_))))
                                  (let ((_%tl169852170764%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169850170759%_)))
                                        (_%hd169851170762%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169850170759%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169851170762%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd169851170762%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169852170764%_))
                                                (let ((_%e169853170767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169852170764%_))))
                                                  (let ((_%tl169855170772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169853170767%_)))
                                                        (_%hd169854170770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169853170767%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169855170772%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169849170756%_))
                                                            (let ((_%e169856170775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169849170756%_))))
                      (let ((_%tl169858170780%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169856170775%_)))
                            (_%hd169857170778%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169856170775%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd169857170778%_))
                            (let ((_%e169859170783%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd169857170778%_))))
                              (let ((_%tl169861170788%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169859170783%_)))
                                    (_%hd169860170786%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169859170783%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169860170786%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd169860170786%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169861170788%_))
                                            (let ((_%e169862170791%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169861170788%_))))
                                              (let ((_%tl169864170796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169862170791%_)))
                                                    (_%hd169863170794%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169862170791%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169864170796%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl169858170780%_))
                                                        (let ((_%__splice175840175841%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl169858170780%_ '0))))
                  (let ((_%tl169867170801%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175840175841%_ '1)))
                        (_%target169865170799%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175840175841%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169867170801%_))
                        (_%__match175941175942%_
                         _%e169835170719%_
                         _%hd169836170722%_
                         _%tl169837170724%_
                         _%e169838170727%_
                         _%hd169839170730%_
                         _%tl169840170732%_
                         _%e169841170735%_
                         _%hd169842170738%_
                         _%tl169843170740%_
                         _%e169844170743%_
                         _%hd169845170746%_
                         _%tl169846170748%_
                         _%e169847170751%_
                         _%hd169848170754%_
                         _%tl169849170756%_
                         _%e169850170759%_
                         _%hd169851170762%_
                         _%tl169852170764%_
                         _%e169853170767%_
                         _%hd169854170770%_
                         _%tl169855170772%_
                         _%e169856170775%_
                         _%hd169857170778%_
                         _%tl169858170780%_
                         _%e169859170783%_
                         _%hd169860170786%_
                         _%tl169861170788%_
                         _%e169862170791%_
                         _%hd169863170794%_
                         _%tl169864170796%_
                         _%__splice175840175841%_
                         _%target169865170799%_
                         _%tl169867170801%_)
                        (_%__match176129176130%_
                         _%e169835170719%_
                         _%hd169836170722%_
                         _%tl169837170724%_
                         _%e169838170727%_
                         _%hd169839170730%_
                         _%tl169840170732%_
                         _%e169841170735%_
                         _%hd169842170738%_
                         _%tl169843170740%_
                         _%e169844170743%_
                         _%hd169845170746%_
                         _%tl169846170748%_
                         _%e169847170751%_
                         _%hd169848170754%_
                         _%tl169849170756%_
                         _%e169850170759%_
                         _%hd169851170762%_
                         _%tl169852170764%_
                         _%e169853170767%_
                         _%hd169854170770%_
                         _%tl169855170772%_
                         _%e169856170775%_
                         _%hd169857170778%_
                         _%tl169858170780%_
                         _%e169859170783%_
                         _%hd169860170786%_
                         _%tl169861170788%_
                         _%e169862170791%_
                         _%hd169863170794%_
                         _%tl169864170796%_))))
                (_%__match176129176130%_
                 _%e169835170719%_
                 _%hd169836170722%_
                 _%tl169837170724%_
                 _%e169838170727%_
                 _%hd169839170730%_
                 _%tl169840170732%_
                 _%e169841170735%_
                 _%hd169842170738%_
                 _%tl169843170740%_
                 _%e169844170743%_
                 _%hd169845170746%_
                 _%tl169846170748%_
                 _%e169847170751%_
                 _%hd169848170754%_
                 _%tl169849170756%_
                 _%e169850170759%_
                 _%hd169851170762%_
                 _%tl169852170764%_
                 _%e169853170767%_
                 _%hd169854170770%_
                 _%tl169855170772%_
                 _%e169856170775%_
                 _%hd169857170778%_
                 _%tl169858170780%_
                 _%e169859170783%_
                 _%hd169860170786%_
                 _%tl169861170788%_
                 _%e169862170791%_
                 _%hd169863170794%_
                 _%tl169864170796%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match176333176334%_
                                                     _%e169835170719%_
                                                     _%hd169836170722%_
                                                     _%tl169837170724%_
                                                     _%e169838170727%_
                                                     _%hd169839170730%_
                                                     _%tl169840170732%_
                                                     _%e169841170735%_
                                                     _%hd169842170738%_
                                                     _%tl169843170740%_
                                                     _%e169844170743%_
                                                     _%hd169845170746%_
                                                     _%tl169846170748%_
                                                     _%e169847170751%_
                                                     _%hd169848170754%_
                                                     _%tl169849170756%_
                                                     _%e169850170759%_
                                                     _%hd169851170762%_
                                                     _%tl169852170764%_
                                                     _%e169853170767%_
                                                     _%hd169854170770%_
                                                     _%tl169855170772%_
                                                     _%e169856170775%_
                                                     _%hd169857170778%_
                                                     _%tl169858170780%_))))
                                            (_%__match176333176334%_
                                             _%e169835170719%_
                                             _%hd169836170722%_
                                             _%tl169837170724%_
                                             _%e169838170727%_
                                             _%hd169839170730%_
                                             _%tl169840170732%_
                                             _%e169841170735%_
                                             _%hd169842170738%_
                                             _%tl169843170740%_
                                             _%e169844170743%_
                                             _%hd169845170746%_
                                             _%tl169846170748%_
                                             _%e169847170751%_
                                             _%hd169848170754%_
                                             _%tl169849170756%_
                                             _%e169850170759%_
                                             _%hd169851170762%_
                                             _%tl169852170764%_
                                             _%e169853170767%_
                                             _%hd169854170770%_
                                             _%tl169855170772%_
                                             _%e169856170775%_
                                             _%hd169857170778%_
                                             _%tl169858170780%_))
                                        (_%__match176009176010%_
                                         _%e169835170719%_
                                         _%hd169836170722%_
                                         _%tl169837170724%_
                                         _%e169838170727%_
                                         _%hd169839170730%_
                                         _%tl169840170732%_
                                         _%e169841170735%_
                                         _%hd169842170738%_
                                         _%tl169843170740%_
                                         _%e169844170743%_
                                         _%hd169845170746%_
                                         _%tl169846170748%_
                                         _%e169847170751%_
                                         _%hd169848170754%_
                                         _%tl169849170756%_
                                         _%e169850170759%_
                                         _%hd169851170762%_
                                         _%tl169852170764%_
                                         _%e169853170767%_
                                         _%hd169854170770%_
                                         _%tl169855170772%_
                                         _%e169856170775%_
                                         _%hd169857170778%_
                                         _%tl169858170780%_
                                         _%e169859170783%_
                                         _%hd169860170786%_
                                         _%tl169861170788%_))
                                    (_%__match176333176334%_
                                     _%e169835170719%_
                                     _%hd169836170722%_
                                     _%tl169837170724%_
                                     _%e169838170727%_
                                     _%hd169839170730%_
                                     _%tl169840170732%_
                                     _%e169841170735%_
                                     _%hd169842170738%_
                                     _%tl169843170740%_
                                     _%e169844170743%_
                                     _%hd169845170746%_
                                     _%tl169846170748%_
                                     _%e169847170751%_
                                     _%hd169848170754%_
                                     _%tl169849170756%_
                                     _%e169850170759%_
                                     _%hd169851170762%_
                                     _%tl169852170764%_
                                     _%e169853170767%_
                                     _%hd169854170770%_
                                     _%tl169855170772%_
                                     _%e169856170775%_
                                     _%hd169857170778%_
                                     _%tl169858170780%_))))
                            (_%__match176333176334%_
                             _%e169835170719%_
                             _%hd169836170722%_
                             _%tl169837170724%_
                             _%e169838170727%_
                             _%hd169839170730%_
                             _%tl169840170732%_
                             _%e169841170735%_
                             _%hd169842170738%_
                             _%tl169843170740%_
                             _%e169844170743%_
                             _%hd169845170746%_
                             _%tl169846170748%_
                             _%e169847170751%_
                             _%hd169848170754%_
                             _%tl169849170756%_
                             _%e169850170759%_
                             _%hd169851170762%_
                             _%tl169852170764%_
                             _%e169853170767%_
                             _%hd169854170770%_
                             _%tl169855170772%_
                             _%e169856170775%_
                             _%hd169857170778%_
                             _%tl169858170780%_))))
                    (_%__match176271176272%_
                     _%e169835170719%_
                     _%hd169836170722%_
                     _%tl169837170724%_
                     _%e169838170727%_
                     _%hd169839170730%_
                     _%tl169840170732%_
                     _%e169841170735%_
                     _%hd169842170738%_
                     _%tl169843170740%_
                     _%e169844170743%_
                     _%hd169845170746%_
                     _%tl169846170748%_
                     _%e169847170751%_
                     _%hd169848170754%_
                     _%tl169849170756%_
                     _%e169850170759%_
                     _%hd169851170762%_
                     _%tl169852170764%_
                     _%e169853170767%_
                     _%hd169854170770%_
                     _%tl169855170772%_))
                (_%__kont175854175855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont175854175855%_))
                                            (_%__kont175854175855%_))
                                        (_%__kont175854175855%_))))
                                (_%__kont175854175855%_))))
                        (_%__kont175854175855%_))
                    (_%__kont175854175855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175854175855%_))
                                                (_%__kont175854175855%_))
                                            (_%__kont175854175855%_))))
                                    (_%__kont175854175855%_))))
                            (_%__kont175854175855%_))))
                    (_%__kont175854175855%_))))))))))
