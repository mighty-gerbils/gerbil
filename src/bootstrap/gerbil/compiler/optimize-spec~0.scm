(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771092632)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp235235 (list gxc#::identity::t))
            (__tmp235234 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp235235
         '()
         __tmp235234
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args234032%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args234032%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp235236
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
        (__make-atomic-promise __tmp235236)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx234024%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self234027%_
                (let ((__obj235227
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj235227))
               (__tmp235237
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234027%_ _%stx234024%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235237
           gxc#current-compile-method
           _%self234027%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp235239 (list gxc#::false::t))
            (__tmp235238 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp235239
         '()
         __tmp235238
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args234021%_
        (apply make-instance gxc#::extract-receiver::t _%$args234021%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp235240
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
        (__make-atomic-promise __tmp235240)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx234013%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self234016%_
                (let ((__obj235229
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj235229))
               (__tmp235241
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234016%_ _%stx234013%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235241
           gxc#current-compile-method
           _%self234016%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp235243 (list gxc#::void::t))
            (__tmp235242 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp235243
         '(receiver methods slots)
         __tmp235242
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args234010%_
        (apply make-instance gxc#::collect-object-refs::t _%$args234010%_)))
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
      (let ((__tmp235244
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
        (__make-atomic-promise __tmp235244)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords233979%_
               _%receiver233974233980%_
               _%methods233975233981%_
               _%slots233976233982%_
               _%stx233983%_)
        (let* ((_%receiver233986%_
                (if (eq? _%receiver233974233980%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver233974233980%_))
               (_%methods233988%_
                (if (eq? _%methods233975233981%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods233975233981%_))
               (_%slots233990%_
                (if (eq? _%slots233976233982%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots233976233982%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self233992%_
                  (let ((__obj235231
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
                       __obj235231
                       _%receiver233986%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235231
                       _%methods233988%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235231
                       _%slots233990%_
                       '3
                       '#f
                       '#f))
                    __obj235231))
                 (__tmp235245
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self233992%_ _%stx233983%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235245
             gxc#current-compile-method
             _%self233992%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords233999%_ . _%args234000%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords233999%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233999%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233999%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233999%_
                  'slots:
                  absent-value))
               _%args234000%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args233977234006%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args233977234006%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp235247 (list gxc#::basic-xform-expression::t))
            (__tmp235246 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp235247
         '(receiver klass methods slots)
         __tmp235246
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args233970%_
        (apply make-instance gxc#::subst-object-refs::t _%$args233970%_)))
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
      (let ((__tmp235248
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
        (__make-atomic-promise __tmp235248)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords233936%_
               _%receiver233930233937%_
               _%klass233931233938%_
               _%methods233932233939%_
               _%slots233933233940%_
               _%stx233941%_)
        (let* ((_%receiver233944%_
                (if (eq? _%receiver233930233937%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver233930233937%_))
               (_%klass233946%_
                (if (eq? _%klass233931233938%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass233931233938%_))
               (_%methods233948%_
                (if (eq? _%methods233932233939%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods233932233939%_))
               (_%slots233950%_
                (if (eq? _%slots233933233940%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots233933233940%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self233952%_
                  (let ((__obj235233
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
                       __obj235233
                       _%receiver233944%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235233
                       _%klass233946%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235233
                       _%methods233948%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235233
                       _%slots233950%_
                       '4
                       '#f
                       '#f))
                    __obj235233))
                 (__tmp235249
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self233952%_ _%stx233941%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235249
             gxc#current-compile-method
             _%self233952%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords233959%_ . _%args233960%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords233959%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233959%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233959%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233959%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233959%_
                  'slots:
                  absent-value))
               _%args233960%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args233934233966%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args233934233966%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self231061%_ _%stx231062%_)
        (letrec ((_%generate-method-bind231064%_
                  (lambda (_%$klass233922%_
                           _%$method-table233923%_
                           _%id233924%_
                           _%$id233925%_)
                    (let ((_%$tmp233927%_
                           (let ((__tmp235250
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235250))))
                      (cons (cons _%$id233925%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp233927%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table233923%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id233924%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp233927%_ '()))
                    (cons (cons '%#ref (cons _%$tmp233927%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id233924%_
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
                 (_%generate-slot-bind231065%_
                  (lambda (_%$klass233916%_ _%id233917%_ _%$id233918%_)
                    (let ((_%$tmp233920%_
                           (let ((__tmp235251
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235251))))
                      (cons (cons _%$id233918%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp233920%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass233916%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id233917%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp233920%_ '()))
                        (cons (cons '%#ref (cons _%$tmp233920%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id233917%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl231066%_
                  (lambda (_%$klass233910%_
                           _%$method-table233911%_
                           _%methods-bind233912%_
                           _%slots-bind233913%_
                           _%specializer-impl233914%_)
                    (let ((__tmp235252
                           (cons '%#lambda
                                 (cons (cons _%$klass233910%_
                                             (cons _%$method-table233911%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind233913%_
                                                            _%methods-bind233912%_))
                                                         (cons _%specializer-impl233914%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235252 _%stx231062%_))))
                 (_%generate-specializer-def231067%_
                  (lambda (_%id233906%_
                           _%specializer-id233907%_
                           _%specializer-impl233908%_)
                    (let ((__tmp235253
                           (cons '%#begin
                                 (cons _%stx231062%_
                                       (cons (let ((__tmp235254
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id233907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl233908%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235254
                                                _%stx231062%_))
                                             (cons (let ((__tmp235255
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id233906%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id233907%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235255
                                                      _%stx231062%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235253 _%stx231062%_)))))
          (let* ((_%__stx234121234122%_ _%stx231062%_)
                 (_%g231070231090%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234121234122%_)))))
            (let ((_%__kont234123234124%_
                   (lambda (_%g231072231134%_ _%g231073231135%_)
                     (let ((_%method-calls231154%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs231155%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty231156%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?231158%_
                                 (lambda ()
                                   (if (let ((__tmp235256
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls231154%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235256))
                                       (let ((__tmp235257
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs231155%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235257))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g231072231134%_))
                             (let* ((_%__stx234035234036%_ _%g231072231134%_)
                                    (_%g231542231560%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx234035234036%_)))))
                               (let ((_%__kont234037234038%_
                                      (lambda (_%g231544231596%_
                                               _%g231545231597%_
                                               _%g231546231598%_)
                                        (let ((_%receiver231618%_
                                               (let ((_%$e231615%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g231544231596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e231615%_
                                                     _%$e231615%_
                                                     _%g231546231598%_))))
                                          (for-each
                                           (lambda (_%g231619231621%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver231618%_
                                              _%method-calls231154%_
                                              _%slot-refs231155%_
                                              _%g231619231621%_))
                                           _%g231544231596%_)
                                          (if (_%no-specializer?231158%_)
                                              _%stx231062%_
                                              (let* ((_%specializer-id231630%_
                                                      (let* ((_%id231624%_
                                                              (let ((__tmp235258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231073231135%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235258 '"::specialize")))
                     (_%specializer-id231627%_
                      (let ((__tmp235259
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231062%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id231624%_ __tmp235259))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id231627%_))
                _%specializer-id231627%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass231632%_
                                                      (let ((__tmp235260
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235260)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table231634%_
                                                      (let ((__tmp235261
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235261)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods231636%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231154%_)))
                                                     (_%$methods231640%_
                                                      (let ((__tmp235262
                                                             (lambda (_%id231638%_)
                                                               (let ((__tmp235263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231638%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235263)))))
                (declare (not safe))
                (##map __tmp235262 _%methods231636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231649%_
                                                      (let ((__tmp235264
                                                             (lambda (_%g231641231644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231642231646%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231154%_
                          _%g231641231644%_
                          _%g231642231646%_)))))
                (declare (not safe))
                (##for-each __tmp235264 _%methods231636%_ _%$methods231640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind231659%_
                                                      (let ((__tmp235265
                                                             (lambda (_%g231651231654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231652231656%_)
                       (_%generate-method-bind231064%_
                        _%$klass231632%_
                        _%$method-table231634%_
                        _%g231651231654%_
                        _%g231652231656%_))))
                (declare (not safe))
                (##map __tmp235265 _%methods231636%_ _%$methods231640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots231661%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231155%_)))
                                                     (_%$slots231665%_
                                                      (let ((__tmp235266
                                                             (lambda (_%id231663%_)
                                                               (let ((__tmp235267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231663%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235267)))))
                (declare (not safe))
                (##map __tmp235266 _%slots231661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231674%_
                                                      (let ((__tmp235268
                                                             (lambda (_%g231666231669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231667231671%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231155%_
                          _%g231666231669%_
                          _%g231667231671%_)))))
                (declare (not safe))
                (##for-each __tmp235268 _%slots231661%_ _%$slots231665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind231683%_
                                                      (let ((__tmp235269
                                                             (lambda (_%g231675231678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231676231680%_)
                       (_%generate-slot-bind231065%_
                        _%$klass231632%_
                        _%g231675231678%_
                        _%g231676231680%_))))
                (declare (not safe))
                (##map __tmp235269 _%slots231661%_ _%$slots231665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body231689%_
                                                      (map (lambda (_%g231684231686%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver231618%_
                                                              _%$klass231632%_
                                                              _%method-calls231154%_
                                                              _%slot-refs231155%_
                                                              _%g231684231686%_))
                                                           _%g231544231596%_))
                                                     (_%specializer-impl231691%_
                                                      (let ((__tmp235270
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g231546231598%_ _%g231545231597%_)
                                 _%specializer-body231689%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235270 _%stx231062%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl231693%_
                                                      (_%generate-specializer-impl231066%_
                                                       _%$klass231632%_
                                                       _%$method-table231634%_
                                                       _%methods-bind231659%_
                                                       _%slots-bind231683%_
                                                       _%specializer-impl231691%_)))
                                                (let ((__tmp235272
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231073231135%_)))
                                                      (__tmp235271
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id231630%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235272
                                                   '" => "
                                                   __tmp235271))
                                                (_%generate-specializer-def231067%_
                                                 _%g231073231135%_
                                                 _%specializer-id231630%_
                                                 _%specializer-impl231693%_))))))
                                     (_%__kont234039234040%_
                                      (lambda () _%stx231062%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx234035234036%_))
                                     (let ((_%e231547231572%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx234035234036%_))))
                                       (let ((_%tl231549231577%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231547231572%_)))
                                             (_%hd231548231575%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231547231572%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231549231577%_))
                                             (let ((_%e231550231580%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl231549231577%_))))
                                               (let ((_%tl231552231585%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231550231580%_)))
                                                     (_%hd231551231583%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231550231580%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd231551231583%_))
                                                     (let ((_%e231553231588%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231551231583%_))))
                                                       (let ((_%tl231555231593%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e231553231588%_)))
                     (_%hd231554231591%_
                      (let () (declare (not safe)) (##car _%e231553231588%_))))
                 (_%__kont234037234038%_
                  _%tl231552231585%_
                  _%tl231555231593%_
                  _%hd231554231591%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont234039234040%_))))
                                             (_%__kont234039234040%_))))
                                     (_%__kont234039234040%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g231072231134%_))
                                 (let* ((_%g231700231719%_
                                         (lambda (_%g231701231716%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231701231716%_))))
                                        (_%g231699232015%_
                                         (lambda (_%g231701231722%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231701231722%_))
                                               (let ((_%e231703231724%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g231701231722%_))))
                                                 (let ((_%hd231704231727%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231703231724%_)))
                                                       (_%tl231705231729%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231703231724%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl231705231729%_))
                                                       (let ((_g235273_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl231705231729%_ '0))))
                 (begin
                   (let ((_g235274_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g235273_)
                                (##values-length _g235273_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g235274_ 2)))
                         (error "Context expects 2 values" _g235274_)))
                   (let ((_%target231706231732%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235273_ 0)))
                         (_%tl231708231734%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235273_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231708231734%_))
                         (letrec ((_%loop231709231737%_
                                   (lambda (_%hd231707231740%_
                                            _%clause231713231742%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd231707231740%_))
                                         (let ((_%e231710231744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231707231740%_))))
                                           (let ((_%lp-hd231711231747%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e231710231744%_)))
                                                 (_%lp-tl231712231749%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e231710231744%_))))
                                             (_%loop231709231737%_
                                              _%lp-tl231712231749%_
                                              (cons _%lp-hd231711231747%_
                                                    _%clause231713231742%_))))
                                         (let ((_%clause231714231752%_
                                                (reverse _%clause231713231742%_)))
                                           ((lambda (_%g231702231754%_)
                                              (for-each
                                               (lambda (_%clause231768%_)
                                                 (let* ((_%__stx234061234062%_
                                                         _%clause231768%_)
                                                        (_%g231771231786%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx234061234062%_)))))
                                                   (let ((_%__kont234063234064%_
                                                          (lambda (_%g231773231814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g231774231815%_
                           _%g231775231816%_)
                    (let ((_%receiver231835%_
                           (let ((_%$e231832%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g231773231814%_))))
                             (if _%$e231832%_
                                 _%$e231832%_
                                 _%g231775231816%_))))
                      (for-each
                       (lambda (_%g231836231838%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver231835%_
                          _%method-calls231154%_
                          _%slot-refs231155%_
                          _%g231836231838%_))
                       _%g231773231814%_))))
                 (_%__kont234065234066%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx234061234062%_))
                                                         (let ((_%e231776231798%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx234061234062%_))))
                   (let ((_%tl231778231803%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231776231798%_)))
                         (_%hd231777231801%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231776231798%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd231777231801%_))
                         (let ((_%e231779231806%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd231777231801%_))))
                           (let ((_%tl231781231811%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231779231806%_)))
                                 (_%hd231780231809%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231779231806%_))))
                             (_%__kont234063234064%_
                              _%tl231778231803%_
                              _%tl231781231811%_
                              _%hd231780231809%_)))
                         (_%__kont234065234066%_))))
                 (_%__kont234065234066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp235275
                                                      (lambda (_%g231843231846%_
                                                               _%g231844231848%_)
                                                        (cons _%g231843231846%_
                                                              _%g231844231848%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235275
                                                  '()
                                                  _%g231702231754%_)))
                                              (if (_%no-specializer?231158%_)
                                                  _%stx231062%_
                                                  (let* ((_%specializer-id231857%_
                                                          (let* ((_%id231851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235276
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231073231135%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235276 '"::specialize")))
                         (_%specializer-id231854%_
                          (let ((__tmp235277
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231062%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id231851%_
                             __tmp235277))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id231854%_))
                    _%specializer-id231854%_))
                 (_%$klass231859%_
                  (let ((__tmp235278
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235278)))
                 (_%$method-table231861%_
                  (let ((__tmp235279
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235279)))
                 (_%methods231863%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231154%_)))
                 (_%$methods231867%_
                  (let ((__tmp235280
                         (lambda (_%id231865%_)
                           (let ((__tmp235281 (gensym _%id231865%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235281)))))
                    (declare (not safe))
                    (##map __tmp235280 _%methods231863%_)))
                 (_%_231876%_
                  (let ((__tmp235282
                         (lambda (_%g231868231871%_ _%g231869231873%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231154%_
                              _%g231868231871%_
                              _%g231869231873%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235282
                     _%methods231863%_
                     _%$methods231867%_)))
                 (_%methods-bind231886%_
                  (let ((__tmp235283
                         (lambda (_%g231878231881%_ _%g231879231883%_)
                           (_%generate-method-bind231064%_
                            _%$klass231859%_
                            _%$method-table231861%_
                            _%g231878231881%_
                            _%g231879231883%_))))
                    (declare (not safe))
                    (##map __tmp235283 _%methods231863%_ _%$methods231867%_)))
                 (_%slots231888%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231155%_)))
                 (_%$slots231892%_
                  (let ((__tmp235284
                         (lambda (_%id231890%_)
                           (let ((__tmp235285 (gensym _%id231890%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235285)))))
                    (declare (not safe))
                    (##map __tmp235284 _%slots231888%_)))
                 (_%_231901%_
                  (let ((__tmp235286
                         (lambda (_%g231893231896%_ _%g231894231898%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231155%_
                              _%g231893231896%_
                              _%g231894231898%_)))))
                    (declare (not safe))
                    (##for-each __tmp235286 _%slots231888%_ _%$slots231892%_)))
                 (_%slots-bind231910%_
                  (let ((__tmp235287
                         (lambda (_%g231902231905%_ _%g231903231907%_)
                           (_%generate-slot-bind231065%_
                            _%$klass231859%_
                            _%g231902231905%_
                            _%g231903231907%_))))
                    (declare (not safe))
                    (##map __tmp235287 _%slots231888%_ _%$slots231892%_)))
                 (_%specializer-clauses232008%_
                  (map (lambda (_%clause231912%_)
                         (let* ((_%__stx234081234082%_ _%clause231912%_)
                                (_%g231915231930%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx234081234082%_)))))
                           (let ((_%__kont234083234084%_
                                  (lambda (_%g231917231958%_
                                           _%g231918231959%_
                                           _%g231919231960%_)
                                    (let* ((_%receiver231989%_
                                            (let ((_%$e231986%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g231917231958%_))))
                                              (if _%$e231986%_
                                                  _%$e231986%_
                                                  _%g231919231960%_)))
                                           (_%body231995%_
                                            (map (lambda (_%g231990231992%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver231989%_
                                                    _%$klass231859%_
                                                    _%method-calls231154%_
                                                    _%slot-refs231155%_
                                                    _%g231990231992%_))
                                                 _%g231917231958%_)))
                                      (cons (cons _%g231919231960%_
                                                  _%g231918231959%_)
                                            _%body231995%_))))
                                 (_%__kont234085234086%_
                                  (lambda () _%clause231912%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx234081234082%_))
                                 (let ((_%e231920231942%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx234081234082%_))))
                                   (let ((_%tl231922231947%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231920231942%_)))
                                         (_%hd231921231945%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231920231942%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd231921231945%_))
                                         (let ((_%e231923231950%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231921231945%_))))
                                           (let ((_%tl231925231955%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e231923231950%_)))
                                                 (_%hd231924231953%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e231923231950%_))))
                                             (_%__kont234083234084%_
                                              _%tl231922231947%_
                                              _%tl231925231955%_
                                              _%hd231924231953%_)))
                                         (_%__kont234085234086%_))))
                                 (_%__kont234085234086%_)))))
                       (let ((__tmp235288
                              (lambda (_%g232000232003%_ _%g232001232005%_)
                                (cons _%g232000232003%_ _%g232001232005%_))))
                         (declare (not safe))
                         (foldr__0 __tmp235288 '() _%g231702231754%_))))
                 (_%specializer-impl232010%_
                  (let ((__tmp235289
                         (cons '%#case-lambda _%specializer-clauses232008%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235289 _%stx231062%_)))
                 (_%specializer-impl232012%_
                  (_%generate-specializer-impl231066%_
                   _%$klass231859%_
                   _%$method-table231861%_
                   _%methods-bind231886%_
                   _%slots-bind231910%_
                   _%specializer-impl232010%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235291
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231073231135%_)))
                                                          (__tmp235290
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id231857%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235291
                                                       '" => "
                                                       __tmp235290))
                                                    (_%generate-specializer-def231067%_
                                                     _%g231073231135%_
                                                     _%specializer-id231857%_
                                                     _%specializer-impl232012%_))))
                                            _%clause231714231752%_))))))
                           (_%loop231709231737%_ _%target231706231732%_ '()))
                         (_%g231700231719%_ _%g231701231722%_)))))
               (_%g231700231719%_ _%g231701231722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231700231719%_
                                                _%g231701231722%_)))))
                                   (_%g231699232015%_ _%g231072231134%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g231072231134%_))
                                     (let* ((_%g232019232049%_
                                             (lambda (_%g232020232046%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g232020232046%_))))
                                            (_%g232018232676%_
                                             (lambda (_%g232020232052%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g232020232052%_))
                                                   (let ((_%e232024232054%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g232020232052%_))))
                                                     (let ((_%hd232025232057%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232024232054%_)))
                                                           (_%tl232026232059%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232024232054%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl232026232059%_))
                                                           (let ((_%e232027232062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl232026232059%_))))
                     (let ((_%hd232028232065%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232027232062%_)))
                           (_%tl232029232067%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232027232062%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232028232065%_))
                           (let ((_%e232030232070%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232028232065%_))))
                             (let ((_%hd232031232073%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232030232070%_)))
                                   (_%tl232032232075%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232030232070%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232031232073%_))
                                   (let ((_%e232033232078%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232031232073%_))))
                                     (let ((_%hd232034232081%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232033232078%_)))
                                           (_%tl232035232083%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232033232078%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd232034232081%_))
                                           (let ((_%e232036232086%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd232034232081%_))))
                                             (let ((_%hd232037232089%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232036232086%_)))
                                                   (_%tl232038232091%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232036232086%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232038232091%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl232035232083%_))
                                                       (let ((_%e232039232094%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl232035232083%_))))
                 (let ((_%hd232040232097%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232039232094%_)))
                       (_%tl232041232099%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232039232094%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232041232099%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl232032232075%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232029232067%_))
                               (let ((_%e232042232102%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232029232067%_))))
                                 (let ((_%hd232043232105%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232042232102%_)))
                                       (_%tl232044232107%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232042232102%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232044232107%_))
                                       ((lambda (_%g232021232110%_
                                                 _%g232022232111%_
                                                 _%g232023232112%_)
                                          (let* ((_%g232136232154%_
                                                  (lambda (_%g232137232151%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232137232151%_))))
                                                 (_%g232135232210%_
                                                  (lambda (_%g232137232157%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232137232157%_))
                                                        (let ((_%e232141232159%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232137232157%_))))
                  (let ((_%hd232142232162%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232141232159%_)))
                        (_%tl232143232164%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232141232159%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl232143232164%_))
                        (let ((_%e232144232167%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl232143232164%_))))
                          (let ((_%hd232145232170%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e232144232167%_)))
                                (_%tl232146232172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e232144232167%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd232145232170%_))
                                (let ((_%e232147232175%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd232145232170%_))))
                                  (let ((_%hd232148232178%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232147232175%_)))
                                        (_%tl232149232180%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232147232175%_))))
                                    ((lambda (_%g232138232183%_
                                              _%g232139232184%_
                                              _%g232140232185%_)
                                       (let ((_%receiver232204%_
                                              (let ((_%$e232201%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g232138232183%_))))
                                                (if _%$e232201%_
                                                    _%$e232201%_
                                                    _%g232140232185%_))))
                                         (for-each
                                          (lambda (_%g232205232207%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver232204%_
                                             _%method-calls231154%_
                                             _%slot-refs231155%_
                                             _%g232205232207%_))
                                          _%g232138232183%_)))
                                     _%tl232146232172%_
                                     _%tl232149232180%_
                                     _%hd232148232178%_)))
                                (_%g232136232154%_ _%g232137232157%_))))
                        (_%g232136232154%_ _%g232137232157%_))))
                (_%g232136232154%_ _%g232137232157%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232135232210%_
                                             _%g232022232111%_))
                                          (let* ((_%g232213232232%_
                                                  (lambda (_%g232214232229%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232214232229%_))))
                                                 (_%g232212232354%_
                                                  (lambda (_%g232214232235%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232214232235%_))
                                                        (let ((_%e232216232237%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232214232235%_))))
                  (let ((_%hd232217232240%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232216232237%_)))
                        (_%tl232218232242%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232216232237%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232218232242%_))
                        (let ((_g235292_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl232218232242%_
                                  '0))))
                          (begin
                            (let ((_g235293_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g235292_)
                                         (##values-length _g235292_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g235293_ 2)))
                                  (error "Context expects 2 values"
                                         _g235293_)))
                            (let ((_%target232219232245%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235292_ 0)))
                                  (_%tl232221232247%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235292_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232221232247%_))
                                  (letrec ((_%loop232222232250%_
                                            (lambda (_%hd232220232253%_
                                                     _%clause232226232255%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd232220232253%_))
                                                  (let ((_%e232223232257%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd232220232253%_))))
                                                    (let ((_%lp-hd232224232260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232223232257%_)))
                                                          (_%lp-tl232225232262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232223232257%_))))
                                                      (_%loop232222232250%_
                                                       _%lp-tl232225232262%_
                                                       (cons _%lp-hd232224232260%_
                                                             _%clause232226232255%_))))
                                                  (let ((_%clause232227232265%_
                                                         (reverse _%clause232226232255%_)))
                                                    ((lambda (_%g232215232267%_)
                                                       (for-each
                                                        (lambda (_%clause232280%_)
                                                          (let* ((_%g232282232297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g232283232294%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g232283232294%_))))
                         (_%g232281232344%_
                          (lambda (_%g232283232300%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g232283232300%_))
                                (let ((_%e232287232302%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g232283232300%_))))
                                  (let ((_%hd232288232305%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232287232302%_)))
                                        (_%tl232289232307%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232287232302%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232288232305%_))
                                        (let ((_%e232290232310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232288232305%_))))
                                          (let ((_%hd232291232313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232290232310%_)))
                                                (_%tl232292232315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232290232310%_))))
                                            ((lambda (_%g232284232318%_
                                                      _%g232285232319%_
                                                      _%g232286232320%_)
                                               (let ((_%receiver232338%_
                                                      (let ((_%$e232335%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g232284232318%_))))
                (if _%$e232335%_ _%$e232335%_ _%g232286232320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g232339232341%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver232338%_
                                                     _%method-calls231154%_
                                                     _%slot-refs231155%_
                                                     _%g232339232341%_))
                                                  _%g232284232318%_)))
                                             _%tl232289232307%_
                                             _%tl232292232315%_
                                             _%hd232291232313%_)))
                                        (_%g232282232297%_
                                         _%g232283232300%_))))
                                (_%g232282232297%_ _%g232283232300%_)))))
                    (_%g232281232344%_ _%clause232280%_)))
                (let ((__tmp235294
                       (lambda (_%g232346232349%_ _%g232347232351%_)
                         (cons _%g232346232349%_ _%g232347232351%_))))
                  (declare (not safe))
                  (foldr__0 __tmp235294 '() _%g232215232267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause232227232265%_))))))
                                    (_%loop232222232250%_
                                     _%target232219232245%_
                                     '()))
                                  (_%g232213232232%_ _%g232214232235%_)))))
                        (_%g232213232232%_ _%g232214232235%_))))
                (_%g232213232232%_ _%g232214232235%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232212232354%_
                                             _%g232021232110%_))
                                          (if (_%no-specializer?231158%_)
                                              _%stx231062%_
                                              (let* ((_%specializer-id232363%_
                                                      (let* ((_%id232357%_
                                                              (let ((__tmp235295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231073231135%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235295 '"::specialize")))
                     (_%specializer-id232360%_
                      (let ((__tmp235296
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231062%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232357%_ __tmp235296))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232360%_))
                _%specializer-id232360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232365%_
                                                      (let ((__tmp235297
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235297)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232367%_
                                                      (let ((__tmp235298
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235298)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232369%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231154%_)))
                                                     (_%$methods232373%_
                                                      (let ((__tmp235299
                                                             (lambda (_%id232371%_)
                                                               (let ((__tmp235300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232371%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235300)))))
                (declare (not safe))
                (##map __tmp235299 _%methods232369%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232382%_
                                                      (let ((__tmp235301
                                                             (lambda (_%g232374232377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232375232379%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231154%_
                          _%g232374232377%_
                          _%g232375232379%_)))))
                (declare (not safe))
                (##for-each __tmp235301 _%methods232369%_ _%$methods232373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232392%_
                                                      (let ((__tmp235302
                                                             (lambda (_%g232384232387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232385232389%_)
                       (_%generate-method-bind231064%_
                        _%$klass232365%_
                        _%$method-table232367%_
                        _%g232384232387%_
                        _%g232385232389%_))))
                (declare (not safe))
                (##map __tmp235302 _%methods232369%_ _%$methods232373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232394%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231155%_)))
                                                     (_%$slots232398%_
                                                      (let ((__tmp235303
                                                             (lambda (_%id232396%_)
                                                               (let ((__tmp235304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232396%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235304)))))
                (declare (not safe))
                (##map __tmp235303 _%slots232394%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232407%_
                                                      (let ((__tmp235305
                                                             (lambda (_%g232399232402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232400232404%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231155%_
                          _%g232399232402%_
                          _%g232400232404%_)))))
                (declare (not safe))
                (##for-each __tmp235305 _%slots232394%_ _%$slots232398%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232416%_
                                                      (let ((__tmp235306
                                                             (lambda (_%g232408232411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232409232413%_)
                       (_%generate-slot-bind231065%_
                        _%$klass232365%_
                        _%g232408232411%_
                        _%g232409232413%_))))
                (declare (not safe))
                (##map __tmp235306 _%slots232394%_ _%$slots232398%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr232508%_
                                                      (let* ((_%g232418232436%_
                                                              (lambda (_%g232419232433%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232419232433%_))))
                     (_%g232417232505%_
                      (lambda (_%g232419232439%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232419232439%_))
                            (let ((_%e232423232441%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232419232439%_))))
                              (let ((_%hd232424232444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232423232441%_)))
                                    (_%tl232425232446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232423232441%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232425232446%_))
                                    (let ((_%e232426232449%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232425232446%_))))
                                      (let ((_%hd232427232452%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232426232449%_)))
                                            (_%tl232428232454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232426232449%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232427232452%_))
                                            (let ((_%e232429232457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232427232452%_))))
                                              (let ((_%hd232430232460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232429232457%_)))
                                                    (_%tl232431232462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232429232457%_))))
                                                ((lambda (_%g232420232465%_
                                                          _%g232421232466%_
                                                          _%g232422232467%_)
                                                   (let* ((_%receiver232496%_
                                                           (let ((_%$e232493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g232420232465%_))))
                     (if _%$e232493%_ _%$e232493%_ _%g232422232467%_)))
                  (_%body232502%_
                   (map (lambda (_%g232497232499%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver232496%_
                           _%$klass232365%_
                           _%method-calls231154%_
                           _%slot-refs231155%_
                           _%g232497232499%_))
                        _%g232420232465%_))
                  (__tmp235307
                   (cons '%#lambda
                         (cons (cons _%g232422232467%_ _%g232421232466%_)
                               _%body232502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235307
                                                      _%g232022232111%_)))
                                                 _%tl232428232454%_
                                                 _%tl232431232462%_
                                                 _%hd232430232460%_)))
                                            (_%g232418232436%_
                                             _%g232419232439%_))))
                                    (_%g232418232436%_ _%g232419232439%_))))
                            (_%g232418232436%_ _%g232419232439%_)))))
                (_%g232417232505%_ _%g232022232111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr232669%_
                                                      (let* ((_%g232510232529%_
                                                              (lambda (_%g232511232526%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232511232526%_))))
                     (_%g232509232666%_
                      (lambda (_%g232511232532%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232511232532%_))
                            (let ((_%e232513232534%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232511232532%_))))
                              (let ((_%hd232514232537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232513232534%_)))
                                    (_%tl232515232539%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232513232534%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl232515232539%_))
                                    (let ((_g235308_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl232515232539%_
                                              '0))))
                                      (begin
                                        (let ((_g235309_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g235308_)
                                                     (##values-length
                                                      _g235308_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g235309_ 2)))
                                              (error "Context expects 2 values"
                                                     _g235309_)))
                                        (let ((_%target232516232542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235308_ 0)))
                                              (_%tl232518232544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235308_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232518232544%_))
                                              (letrec ((_%loop232519232547%_
                                                        (lambda (_%hd232517232550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause232523232552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd232517232550%_))
                      (let ((_%e232520232554%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd232517232550%_))))
                        (let ((_%lp-hd232521232557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232520232554%_)))
                              (_%lp-tl232522232559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232520232554%_))))
                          (_%loop232519232547%_
                           _%lp-tl232522232559%_
                           (cons _%lp-hd232521232557%_
                                 _%clause232523232552%_))))
                      (let ((_%clause232524232562%_
                             (reverse _%clause232523232552%_)))
                        ((lambda (_%g232512232564%_)
                           (let* ((_%clauses232664%_
                                   (map (lambda (_%clause232578%_)
                                          (let* ((_%__stx234101234102%_
                                                  _%clause232578%_)
                                                 (_%g232581232596%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx234101234102%_)))))
                                            (let ((_%__kont234103234104%_
                                                   (lambda (_%g232583232624%_
                                                            _%g232584232625%_
                                                            _%g232585232626%_)
                                                     (let* ((_%receiver232645%_
                                                             (let ((_%$e232642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g232583232624%_))))
                       (if _%$e232642%_ _%$e232642%_ _%g232585232626%_)))
                    (_%body232651%_
                     (map (lambda (_%g232646232648%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver232645%_
                             _%$klass232365%_
                             _%method-calls231154%_
                             _%slot-refs231155%_
                             _%g232646232648%_))
                          _%g232583232624%_)))
               (cons (cons _%g232585232626%_ _%g232584232625%_)
                     _%body232651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234105234106%_
                                                   (lambda ()
                                                     _%clause232578%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx234101234102%_))
                                                  (let ((_%e232586232608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx234101234102%_))))
                                                    (let ((_%tl232588232613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232586232608%_)))
                                                          (_%hd232587232611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232586232608%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd232587232611%_))
                                                          (let ((_%e232589232616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd232587232611%_))))
                    (let ((_%tl232591232621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e232589232616%_)))
                          (_%hd232590232619%_
                           (let ()
                             (declare (not safe))
                             (##car _%e232589232616%_))))
                      (_%__kont234103234104%_
                       _%tl232588232613%_
                       _%tl232591232621%_
                       _%hd232590232619%_)))
                  (_%__kont234105234106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234105234106%_)))))
                                        (let ((__tmp235310
                                               (lambda (_%g232656232659%_
                                                        _%g232657232661%_)
                                                 (cons _%g232656232659%_
                                                       _%g232657232661%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp235310
                                           '()
                                           _%g232512232564%_))))
                                  (__tmp235311
                                   (cons '%#case-lambda _%clauses232664%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235311
                              _%g232021232110%_)))
                         _%clause232524232562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop232519232547%_
                                                 _%target232516232542%_
                                                 '()))
                                              (_%g232510232529%_
                                               _%g232511232532%_)))))
                                    (_%g232510232529%_ _%g232511232532%_))))
                            (_%g232510232529%_ _%g232511232532%_)))))
                (_%g232509232666%_ _%g232021232110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232671%_
                                                      (let ((__tmp235312
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g232023232112%_ '())
                                             (cons _%specializer-lambda-expr232508%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr232669%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235312 _%stx231062%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232673%_
                                                      (_%generate-specializer-impl231066%_
                                                       _%$klass232365%_
                                                       _%$method-table232367%_
                                                       _%methods-bind232392%_
                                                       _%slots-bind232416%_
                                                       _%specializer-impl232671%_)))
                                                (let ((__tmp235314
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231073231135%_)))
                                                      (__tmp235313
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232363%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235314
                                                   '" => "
                                                   __tmp235313))
                                                (_%generate-specializer-def231067%_
                                                 _%g231073231135%_
                                                 _%specializer-id232363%_
                                                 _%specializer-impl232673%_))))
                                        _%hd232043232105%_
                                        _%hd232040232097%_
                                        _%hd232037232089%_)
                                       (_%g232019232049%_ _%g232020232052%_))))
                               (_%g232019232049%_ _%g232020232052%_))
                           (_%g232019232049%_ _%g232020232052%_))
                       (_%g232019232049%_ _%g232020232052%_))))
               (_%g232019232049%_ _%g232020232052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232019232049%_
                                                    _%g232020232052%_))))
                                           (_%g232019232049%_
                                            _%g232020232052%_))))
                                   (_%g232019232049%_ _%g232020232052%_))))
                           (_%g232019232049%_ _%g232020232052%_))))
                   (_%g232019232049%_ _%g232020232052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232019232049%_
                                                    _%g232020232052%_)))))
                                       (_%g232018232676%_ _%g231072231134%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g231072231134%_))
                                         (let* ((_%g232680232733%_
                                                 (lambda (_%g232681232730%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g232681232730%_))))
                                                (_%g232679233898%_
                                                 (lambda (_%g232681232736%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g232681232736%_))
                                                       (let ((_%e232687232738%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g232681232736%_))))
                 (let ((_%hd232688232741%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232687232738%_)))
                       (_%tl232689232743%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232687232738%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd232688232741%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd232688232741%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232689232743%_))
                               (let ((_%e232690232746%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232689232743%_))))
                                 (let ((_%hd232691232749%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232690232746%_)))
                                       (_%tl232692232751%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232690232746%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd232691232749%_))
                                       (let ((_%e232693232754%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd232691232749%_))))
                                         (let ((_%hd232694232757%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e232693232754%_)))
                                               (_%tl232695232759%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e232693232754%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd232694232757%_))
                                               (let ((_%e232696232762%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd232694232757%_))))
                                                 (let ((_%hd232697232765%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232696232762%_)))
                                                       (_%tl232698232767%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232696232762%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd232697232765%_))
                                                       (let ((_%e232699232770%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd232697232765%_))))
                 (let ((_%hd232700232773%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232699232770%_)))
                       (_%tl232701232775%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232699232770%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232701232775%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl232698232767%_))
                           (let ((_%e232702232778%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl232698232767%_))))
                             (let ((_%hd232703232781%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232702232778%_)))
                                   (_%tl232704232783%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232702232778%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232703232781%_))
                                   (let ((_%e232705232786%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232703232781%_))))
                                     (let ((_%hd232706232789%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232705232786%_)))
                                           (_%tl232707232791%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232705232786%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd232706232789%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd232706232789%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl232707232791%_))
                                                   (let ((_%e232708232794%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl232707232791%_))))
                                                     (let ((_%hd232709232797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232708232794%_)))
                                                           (_%tl232710232799%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232708232794%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd232709232797%_))
                                                           (let ((_%e232711232802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd232709232797%_))))
                     (let ((_%hd232712232805%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232711232802%_)))
                           (_%tl232713232807%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232711232802%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232712232805%_))
                           (let ((_%e232714232810%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232712232805%_))))
                             (let ((_%hd232715232813%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232714232810%_)))
                                   (_%tl232716232815%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232714232810%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232715232813%_))
                                   (let ((_%e232717232818%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232715232813%_))))
                                     (let ((_%hd232718232821%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232717232818%_)))
                                           (_%tl232719232823%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232717232818%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl232719232823%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl232716232815%_))
                                               (let ((_%e232720232826%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl232716232815%_))))
                                                 (let ((_%hd232721232829%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232720232826%_)))
                                                       (_%tl232722232831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232720232826%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl232722232831%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl232713232807%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl232710232799%_))
                       (let ((_%e232723232834%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl232710232799%_))))
                         (let ((_%hd232724232837%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e232723232834%_)))
                               (_%tl232725232839%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e232723232834%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl232725232839%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl232704232783%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232695232759%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl232692232751%_))
                                           (let ((_%e232726232842%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl232692232751%_))))
                                             (let ((_%hd232727232845%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232726232842%_)))
                                                   (_%tl232728232847%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232726232842%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232728232847%_))
                                                   ((lambda (_%g232682232850%_
                                                             _%g232683232851%_
                                                             _%g232684232852%_
                                                             _%g232685232853%_
                                                             _%g232686232854%_)
                                                      (let* ((_%g232894232956%_
                                                              (lambda (_%g232895232953%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232895232953%_))))
                     (_%g232893233895%_
                      (lambda (_%g232895232959%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232895232959%_))
                            (let ((_%e232901232961%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232895232959%_))))
                              (let ((_%hd232902232964%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232901232961%_)))
                                    (_%tl232903232966%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232901232961%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd232902232964%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd232902232964%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl232903232966%_))
                                            (let ((_%e232904232969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl232903232966%_))))
                                              (let ((_%hd232905232972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232904232969%_)))
                                                    (_%tl232906232974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232904232969%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232906232974%_))
                                                    (let ((_%e232907232977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232906232974%_))))
                                                      (let ((_%hd232908232980%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e232907232977%_)))
                    (_%tl232909232982%_
                     (let () (declare (not safe)) (##cdr _%e232907232977%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd232908232980%_))
                    (let ((_%e232910232985%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd232908232980%_))))
                      (let ((_%hd232911232988%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232910232985%_)))
                            (_%tl232912232990%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232910232985%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd232911232988%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd232911232988%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232912232990%_))
                                    (let ((_%e232913232993%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232912232990%_))))
                                      (let ((_%hd232914232996%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232913232993%_)))
                                            (_%tl232915232998%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232913232993%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232914232996%_))
                                            (let ((_%e232916233001%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232914232996%_))))
                                              (let ((_%hd232917233004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232916233001%_)))
                                                    (_%tl232918233006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232916233001%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd232917233004%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd232917233004%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl232918233006%_))
                                                            (let ((_%e232919233009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl232918233006%_))))
                      (let ((_%hd232920233012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232919233009%_)))
                            (_%tl232921233014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232919233009%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232921233014%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl232915232998%_))
                                (let ((_%e232922233017%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl232915232998%_))))
                                  (let ((_%hd232923233020%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232922233017%_)))
                                        (_%tl232924233022%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232922233017%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232923233020%_))
                                        (let ((_%e232925233025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232923233020%_))))
                                          (let ((_%hd232926233028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232925233025%_)))
                                                (_%tl232927233030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232925233025%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd232926233028%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd232926233028%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl232927233030%_))
                                                        (let ((_%e232928233033%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl232927233030%_))))
                  (let ((_%hd232929233036%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232928233033%_)))
                        (_%tl232930233038%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232928233033%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl232930233038%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl232924233022%_))
                            (let ((_%e232931233041%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl232924233022%_))))
                              (let ((_%hd232932233044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232931233041%_)))
                                    (_%tl232933233046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232931233041%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd232932233044%_))
                                    (let ((_%e232934233049%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd232932233044%_))))
                                      (let ((_%hd232935233052%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232934233049%_)))
                                            (_%tl232936233054%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232934233049%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd232935233052%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd232935233052%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232936233054%_))
                                                    (let ((_%e232937233057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232936233054%_))))
                                                      (let ((_%hd232938233060%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e232937233057%_)))
                    (_%tl232939233062%_
                     (let () (declare (not safe)) (##cdr _%e232937233057%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl232939233062%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232933233046%_))
                        (if (let ((__tmp235315
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl232933233046%_))))
                              (declare (not safe))
                              (##fx>= __tmp235315 '1))
                            (let ((_g235316_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl232933233046%_
                                      '1))))
                              (begin
                                (let ((_g235317_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235316_)
                                             (##values-length _g235316_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235317_ 2)))
                                      (error "Context expects 2 values"
                                             _g235317_)))
                                (let ((_%target232940233065%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235316_ 0)))
                                      (_%tl232942233067%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235316_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl232942233067%_))
                                      (let ((_%e232949233070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl232942233067%_))))
                                        (let ((_%hd232950233073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e232949233070%_)))
                                              (_%tl232951233075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e232949233070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232951233075%_))
                                              (letrec ((_%loop232943233078%_
                                                        (lambda (_%hd232941233081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref232947233083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd232941233081%_))
                      (let ((_%e232944233085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd232941233081%_))))
                        (let ((_%lp-hd232945233088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232944233085%_)))
                              (_%lp-tl232946233090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232944233085%_))))
                          (_%loop232943233078%_
                           _%lp-tl232946233090%_
                           (cons _%lp-hd232945233088%_
                                 _%kw-ref232947233083%_))))
                      (let ((_%kw-ref232948233093%_
                             (reverse _%kw-ref232947233083%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232909232982%_))
                            ((lambda (_%g232896233095%_
                                      _%g232897233096%_
                                      _%g232898233097%_
                                      _%g232899233098%_
                                      _%g232900233099%_)
                               (let* ((_%kw-count233150%_
                                       (length (let ((__tmp235318
                                                      (lambda (_%g233142233145%_
                                                               _%g233143233147%_)
                                                        (cons _%g233142233145%_
                                                              _%g233143233147%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235318
                                                  '()
                                                  _%g232897233096%_))))
                                      (_%self-index233152%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count233150%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g232684232852%_))
                                     (let* ((_%g233156233170%_
                                             (lambda (_%g233157233167%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233157233167%_))))
                                            (_%g233155233293%_
                                             (lambda (_%g233157233173%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233157233173%_))
                                                   (let ((_%e233160233175%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233157233173%_))))
                                                     (let ((_%hd233161233178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233160233175%_)))
                                                           (_%tl233162233180%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233160233175%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233162233180%_))
                                                           (let ((_%e233163233183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233162233180%_))))
                     (let ((_%hd233164233186%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233163233183%_)))
                           (_%tl233165233188%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233163233183%_))))
                       ((lambda (_%g233158233191%_ _%g233159233192%_)
                          (let* ((_%self233209%_
                                  (list-ref
                                   _%g233159233192%_
                                   _%self-index233152%_))
                                 (_%receiver233214%_
                                  (let ((_%$e233211%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g233158233191%_))))
                                    (if _%$e233211%_
                                        _%$e233211%_
                                        _%self233209%_))))
                            (for-each
                             (lambda (_%g233216233218%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver233214%_
                                _%method-calls231154%_
                                _%slot-refs231155%_
                                _%g233216233218%_))
                             _%g233158233191%_)
                            (if (_%no-specializer?231158%_)
                                _%stx231062%_
                                (let* ((_%specializer-id233227%_
                                        (let* ((_%id233221%_
                                                (let ((__tmp235319
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231073231135%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp235319
                                                   '"::specialize")))
                                               (_%specializer-id233224%_
                                                (let ((__tmp235320
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx231062%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id233221%_
                                                   __tmp235320))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id233224%_))
                                          _%specializer-id233224%_))
                                       (_%$klass233229%_
                                        (let ((__tmp235321
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235321)))
                                       (_%$method-table233231%_
                                        (let ((__tmp235322
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235322)))
                                       (_%methods233233%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls231154%_)))
                                       (_%$methods233237%_
                                        (let ((__tmp235323
                                               (lambda (_%id233235%_)
                                                 (let ((__tmp235324
                                                        (gensym _%id233235%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235324)))))
                                          (declare (not safe))
                                          (##map __tmp235323
                                                 _%methods233233%_)))
                                       (_%_233246%_
                                        (let ((__tmp235325
                                               (lambda (_%g233238233241%_
                                                        _%g233239233243%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls231154%_
                                                    _%g233238233241%_
                                                    _%g233239233243%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235325
                                           _%methods233233%_
                                           _%$methods233237%_)))
                                       (_%methods-bind233256%_
                                        (let ((__tmp235326
                                               (lambda (_%g233248233251%_
                                                        _%g233249233253%_)
                                                 (_%generate-method-bind231064%_
                                                  _%$klass233229%_
                                                  _%$method-table233231%_
                                                  _%g233248233251%_
                                                  _%g233249233253%_))))
                                          (declare (not safe))
                                          (##map __tmp235326
                                                 _%methods233233%_
                                                 _%$methods233237%_)))
                                       (_%slots233258%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs231155%_)))
                                       (_%$slots233262%_
                                        (let ((__tmp235327
                                               (lambda (_%id233260%_)
                                                 (let ((__tmp235328
                                                        (gensym _%id233260%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235328)))))
                                          (declare (not safe))
                                          (##map __tmp235327 _%slots233258%_)))
                                       (_%_233271%_
                                        (let ((__tmp235329
                                               (lambda (_%g233263233266%_
                                                        _%g233264233268%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs231155%_
                                                    _%g233263233266%_
                                                    _%g233264233268%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235329
                                           _%slots233258%_
                                           _%$slots233262%_)))
                                       (_%slots-bind233280%_
                                        (let ((__tmp235330
                                               (lambda (_%g233272233275%_
                                                        _%g233273233277%_)
                                                 (_%generate-slot-bind231065%_
                                                  _%$klass233229%_
                                                  _%g233272233275%_
                                                  _%g233273233277%_))))
                                          (declare (not safe))
                                          (##map __tmp235330
                                                 _%slots233258%_
                                                 _%$slots233262%_)))
                                       (_%specializer-impl233288%_
                                        (let* ((_%specializer-body233286%_
                                                (map (lambda (_%g233281233283%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver233214%_
                                                        _%$klass233229%_
                                                        _%method-calls231154%_
                                                        _%slot-refs231155%_
                                                        _%g233281233283%_))
                                                     _%g233158233191%_))
                                               (__tmp235331
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g232686232854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g232685232853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp235332
                                   (cons '%#lambda
                                         (cons _%g233159233192%_
                                               _%specializer-body233286%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp235332
                               _%g232684232852%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g232683232851%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g232682232850%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp235331
                                           _%stx231062%_)))
                                       (_%specializer-impl233290%_
                                        (_%generate-specializer-impl231066%_
                                         _%$klass233229%_
                                         _%$method-table233231%_
                                         _%methods-bind233256%_
                                         _%slots-bind233280%_
                                         _%specializer-impl233288%_)))
                                  (let ((__tmp235334
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g231073231135%_)))
                                        (__tmp235333
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id233227%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp235334
                                     '" => "
                                     __tmp235333))
                                  (_%generate-specializer-def231067%_
                                   _%g231073231135%_
                                   _%specializer-id233227%_
                                   _%specializer-impl233290%_)))))
                        _%tl233165233188%_
                        _%hd233164233186%_)))
                   (_%g233156233170%_ _%g233157233173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233156233170%_
                                                    _%g233157233173%_)))))
                                       (_%g233155233293%_ _%g232684232852%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g232684232852%_))
                                         (let* ((_%g233297233327%_
                                                 (lambda (_%g233298233324%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233298233324%_))))
                                                (_%g233296233891%_
                                                 (lambda (_%g233298233330%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233298233330%_))
                                                       (let ((_%e233302233332%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233298233330%_))))
                 (let ((_%hd233303233335%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233302233332%_)))
                       (_%tl233304233337%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233302233332%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl233304233337%_))
                       (let ((_%e233305233340%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233304233337%_))))
                         (let ((_%hd233306233343%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233305233340%_)))
                               (_%tl233307233345%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233305233340%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd233306233343%_))
                               (let ((_%e233308233348%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd233306233343%_))))
                                 (let ((_%hd233309233351%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233308233348%_)))
                                       (_%tl233310233353%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233308233348%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233309233351%_))
                                       (let ((_%e233311233356%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233309233351%_))))
                                         (let ((_%hd233312233359%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233311233356%_)))
                                               (_%tl233313233361%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233311233356%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233312233359%_))
                                               (let ((_%e233314233364%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233312233359%_))))
                                                 (let ((_%hd233315233367%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233314233364%_)))
                                                       (_%tl233316233369%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233314233364%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233316233369%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233313233361%_))
                                                           (let ((_%e233317233372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233313233361%_))))
                     (let ((_%hd233318233375%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233317233372%_)))
                           (_%tl233319233377%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233317233372%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233319233377%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233310233353%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl233307233345%_))
                                   (let ((_%e233320233380%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl233307233345%_))))
                                     (let ((_%hd233321233383%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233320233380%_)))
                                           (_%tl233322233385%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233320233380%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233322233385%_))
                                           ((lambda (_%g233299233388%_
                                                     _%g233300233389%_
                                                     _%g233301233390%_)
                                              (let* ((_%g233414233428%_
                                                      (lambda (_%g233415233425%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233415233425%_))))
                                                     (_%g233413233475%_
                                                      (lambda (_%g233415233431%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233415233431%_))
                                                            (let ((_%e233418233433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233415233431%_))))
                      (let ((_%hd233419233436%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233418233433%_)))
                            (_%tl233420233438%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233418233433%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233420233438%_))
                            (let ((_%e233421233441%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233420233438%_))))
                              (let ((_%hd233422233444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233421233441%_)))
                                    (_%tl233423233446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233421233441%_))))
                                ((lambda (_%g233416233449%_ _%g233417233450%_)
                                   (let* ((_%self233463%_
                                           (list-ref
                                            _%g233417233450%_
                                            _%self-index233152%_))
                                          (_%receiver233468%_
                                           (let ((_%$e233465%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g233416233449%_))))
                                             (if _%$e233465%_
                                                 _%$e233465%_
                                                 _%self233463%_))))
                                     (for-each
                                      (lambda (_%g233470233472%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver233468%_
                                         _%method-calls231154%_
                                         _%slot-refs231155%_
                                         _%g233470233472%_))
                                      _%g233416233449%_)))
                                 _%tl233423233446%_
                                 _%hd233422233444%_)))
                            (_%g233414233428%_ _%g233415233431%_))))
                    (_%g233414233428%_ _%g233415233431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233413233475%_
                                                 _%g233300233389%_))
                                              (let* ((_%g233478233497%_
                                                      (lambda (_%g233479233494%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233479233494%_))))
                                                     (_%g233477233606%_
                                                      (lambda (_%g233479233500%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233479233500%_))
                                                            (let ((_%e233481233502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233479233500%_))))
                      (let ((_%hd233482233505%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233481233502%_)))
                            (_%tl233483233507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233481233502%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl233483233507%_))
                            (let ((_g235335_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233483233507%_
                                      '0))))
                              (begin
                                (let ((_g235336_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235335_)
                                             (##values-length _g235335_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235336_ 2)))
                                      (error "Context expects 2 values"
                                             _g235336_)))
                                (let ((_%target233484233510%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235335_ 0)))
                                      (_%tl233486233512%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235335_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl233486233512%_))
                                      (letrec ((_%loop233487233515%_
                                                (lambda (_%hd233485233518%_
                                                         _%clause233491233520%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd233485233518%_))
                                                      (let ((_%e233488233522%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd233485233518%_))))
                (let ((_%lp-hd233489233525%_
                       (let () (declare (not safe)) (##car _%e233488233522%_)))
                      (_%lp-tl233490233527%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e233488233522%_))))
                  (_%loop233487233515%_
                   _%lp-tl233490233527%_
                   (cons _%lp-hd233489233525%_ _%clause233491233520%_))))
              (let ((_%clause233492233530%_ (reverse _%clause233491233520%_)))
                ((lambda (_%g233480233532%_)
                   (for-each
                    (lambda (_%clause233545%_)
                      (let* ((_%g233547233558%_
                              (lambda (_%g233548233555%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g233548233555%_))))
                             (_%g233546233596%_
                              (lambda (_%g233548233561%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g233548233561%_))
                                    (let ((_%e233551233563%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g233548233561%_))))
                                      (let ((_%hd233552233566%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233551233563%_)))
                                            (_%tl233553233568%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233551233563%_))))
                                        ((lambda (_%g233549233571%_
                                                  _%g233550233572%_)
                                           (let* ((_%self233584%_
                                                   (list-ref
                                                    _%g233550233572%_
                                                    _%self-index233152%_))
                                                  (_%receiver233589%_
                                                   (let ((_%$e233586%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g233549233571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e233586%_
                                                         _%$e233586%_
                                                         _%self233584%_))))
                                             (for-each
                                              (lambda (_%g233591233593%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver233589%_
                                                 _%method-calls231154%_
                                                 _%slot-refs231155%_
                                                 _%g233591233593%_))
                                              _%g233549233571%_)))
                                         _%tl233553233568%_
                                         _%hd233552233566%_)))
                                    (_%g233547233558%_ _%g233548233561%_)))))
                        (_%g233546233596%_ _%clause233545%_)))
                    (let ((__tmp235337
                           (lambda (_%g233598233601%_ _%g233599233603%_)
                             (cons _%g233598233601%_ _%g233599233603%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235337 '() _%g233480233532%_))))
                 _%clause233492233530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop233487233515%_
                                         _%target233484233510%_
                                         '()))
                                      (_%g233478233497%_ _%g233479233500%_)))))
                            (_%g233478233497%_ _%g233479233500%_))))
                    (_%g233478233497%_ _%g233479233500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233477233606%_
                                                 _%g233299233388%_))
                                              (if (_%no-specializer?231158%_)
                                                  _%stx231062%_
                                                  (let* ((_%specializer-id233615%_
                                                          (let* ((_%id233609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235338
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231073231135%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235338 '"::specialize")))
                         (_%specializer-id233612%_
                          (let ((__tmp235339
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231062%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id233609%_
                             __tmp235339))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id233612%_))
                    _%specializer-id233612%_))
                 (_%$klass233617%_
                  (let ((__tmp235340
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235340)))
                 (_%$method-table233619%_
                  (let ((__tmp235341
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235341)))
                 (_%methods233621%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231154%_)))
                 (_%$methods233625%_
                  (let ((__tmp235342
                         (lambda (_%id233623%_)
                           (let ((__tmp235343 (gensym _%id233623%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235343)))))
                    (declare (not safe))
                    (##map __tmp235342 _%methods233621%_)))
                 (_%_233634%_
                  (let ((__tmp235344
                         (lambda (_%g233626233629%_ _%g233627233631%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231154%_
                              _%g233626233629%_
                              _%g233627233631%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235344
                     _%methods233621%_
                     _%$methods233625%_)))
                 (_%methods-bind233644%_
                  (let ((__tmp235345
                         (lambda (_%g233636233639%_ _%g233637233641%_)
                           (_%generate-method-bind231064%_
                            _%$klass233617%_
                            _%$method-table233619%_
                            _%g233636233639%_
                            _%g233637233641%_))))
                    (declare (not safe))
                    (##map __tmp235345 _%methods233621%_ _%$methods233625%_)))
                 (_%slots233646%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231155%_)))
                 (_%$slots233650%_
                  (let ((__tmp235346
                         (lambda (_%id233648%_)
                           (let ((__tmp235347 (gensym _%id233648%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235347)))))
                    (declare (not safe))
                    (##map __tmp235346 _%slots233646%_)))
                 (_%_233659%_
                  (let ((__tmp235348
                         (lambda (_%g233651233654%_ _%g233652233656%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231155%_
                              _%g233651233654%_
                              _%g233652233656%_)))))
                    (declare (not safe))
                    (##for-each __tmp235348 _%slots233646%_ _%$slots233650%_)))
                 (_%slots-bind233668%_
                  (let ((__tmp235349
                         (lambda (_%g233660233663%_ _%g233661233665%_)
                           (_%generate-slot-bind231065%_
                            _%$klass233617%_
                            _%g233660233663%_
                            _%g233661233665%_))))
                    (declare (not safe))
                    (##map __tmp235349 _%slots233646%_ _%$slots233650%_)))
                 (_%specializer-lambda-expr233746%_
                  (let* ((_%g233670233684%_
                          (lambda (_%g233671233681%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233671233681%_))))
                         (_%g233669233743%_
                          (lambda (_%g233671233687%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233671233687%_))
                                (let ((_%e233674233689%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233671233687%_))))
                                  (let ((_%hd233675233692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233674233689%_)))
                                        (_%tl233676233694%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233674233689%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl233676233694%_))
                                        (let ((_%e233677233697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl233676233694%_))))
                                          (let ((_%hd233678233700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233677233697%_)))
                                                (_%tl233679233702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233677233697%_))))
                                            ((lambda (_%g233672233705%_
                                                      _%g233673233706%_)
                                               (let* ((_%self233729%_
                                                       (list-ref
                                                        _%g233673233706%_
                                                        _%self-index233152%_))
                                                      (_%receiver233734%_
                                                       (let ((_%$e233731%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g233672233705%_))))
                 (if _%$e233731%_ _%$e233731%_ _%self233729%_)))
              (_%body233740%_
               (map (lambda (_%g233735233737%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver233734%_
                       _%$klass233617%_
                       _%method-calls231154%_
                       _%slot-refs231155%_
                       _%g233735233737%_))
                    _%g233672233705%_))
              (__tmp235350
               (cons '%#lambda (cons _%g233673233706%_ _%body233740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp235350
                                                  _%g233300233389%_)))
                                             _%tl233679233702%_
                                             _%hd233678233700%_)))
                                        (_%g233670233684%_
                                         _%g233671233687%_))))
                                (_%g233670233684%_ _%g233671233687%_)))))
                    (_%g233669233743%_ _%g233300233389%_)))
                 (_%specializer-case-lambda-expr233884%_
                  (let* ((_%g233748233767%_
                          (lambda (_%g233749233764%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233749233764%_))))
                         (_%g233747233881%_
                          (lambda (_%g233749233770%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233749233770%_))
                                (let ((_%e233751233772%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233749233770%_))))
                                  (let ((_%hd233752233775%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233751233772%_)))
                                        (_%tl233753233777%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233751233772%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl233753233777%_))
                                        (let ((_g235351_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl233753233777%_
                                                  '0))))
                                          (begin
                                            (let ((_g235352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g235351_)
                                                         (##values-length
                                                          _g235351_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g235352_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g235352_)))
                                            (let ((_%target233754233780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235351_
                                                      0)))
                                                  (_%tl233756233782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235351_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl233756233782%_))
                                                  (letrec ((_%loop233757233785%_
                                                            (lambda (_%hd233755233788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause233761233790%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd233755233788%_))
                          (let ((_%e233758233792%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd233755233788%_))))
                            (let ((_%lp-hd233759233795%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e233758233792%_)))
                                  (_%lp-tl233760233797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e233758233792%_))))
                              (_%loop233757233785%_
                               _%lp-tl233760233797%_
                               (cons _%lp-hd233759233795%_
                                     _%clause233761233790%_))))
                          (let ((_%clause233762233800%_
                                 (reverse _%clause233761233790%_)))
                            ((lambda (_%g233750233802%_)
                               (let* ((_%clauses233879%_
                                       (map (lambda (_%clause233816%_)
                                              (let* ((_%g233818233829%_
                                                      (lambda (_%g233819233826%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233819233826%_))))
                                                     (_%g233817233869%_
                                                      (lambda (_%g233819233832%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233819233832%_))
                                                            (let ((_%e233822233834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233819233832%_))))
                      (let ((_%hd233823233837%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233822233834%_)))
                            (_%tl233824233839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233822233834%_))))
                        ((lambda (_%g233820233842%_ _%g233821233843%_)
                           (let* ((_%self233855%_
                                   (list-ref
                                    _%g233821233843%_
                                    _%self-index233152%_))
                                  (_%receiver233860%_
                                   (let ((_%$e233857%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g233820233842%_))))
                                     (if _%$e233857%_
                                         _%$e233857%_
                                         _%self233855%_)))
                                  (_%body233866%_
                                   (map (lambda (_%g233861233863%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver233860%_
                                           _%$klass233617%_
                                           _%method-calls231154%_
                                           _%slot-refs231155%_
                                           _%g233861233863%_))
                                        _%g233820233842%_)))
                             (cons _%g233821233843%_ _%body233866%_)))
                         _%tl233824233839%_
                         _%hd233823233837%_)))
                    (_%g233818233829%_ _%g233819233832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233817233869%_
                                                 _%clause233816%_)))
                                            (let ((__tmp235353
                                                   (lambda (_%g233871233874%_
                                                            _%g233872233876%_)
                                                     (cons _%g233871233874%_
                                                           _%g233872233876%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp235353
                                               '()
                                               _%g233750233802%_))))
                                      (__tmp235354
                                       (cons '%#case-lambda
                                             _%clauses233879%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp235354
                                  _%g233299233388%_)))
                             _%clause233762233800%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop233757233785%_
                                                     _%target233754233780%_
                                                     '()))
                                                  (_%g233748233767%_
                                                   _%g233749233770%_)))))
                                        (_%g233748233767%_
                                         _%g233749233770%_))))
                                (_%g233748233767%_ _%g233749233770%_)))))
                    (_%g233747233881%_ _%g233299233388%_)))
                 (_%specializer-impl233886%_
                  (let ((__tmp235355
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g232686232854%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g232685232853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp235356
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g233301233390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr233746%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr233884%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235356
                                                _%stx231062%_))
                                             '()))
                                 '())
                           (cons _%g232683232851%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g232682232850%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235355 _%stx231062%_)))
                 (_%specializer-impl233888%_
                  (_%generate-specializer-impl231066%_
                   _%$klass233617%_
                   _%$method-table233619%_
                   _%methods-bind233644%_
                   _%slots-bind233668%_
                   _%specializer-impl233886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235358
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231073231135%_)))
                                                          (__tmp235357
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id233615%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235358
                                                       '" => "
                                                       __tmp235357))
                                                    (_%generate-specializer-def231067%_
                                                     _%g231073231135%_
                                                     _%specializer-id233615%_
                                                     _%specializer-impl233888%_))))
                                            _%hd233321233383%_
                                            _%hd233318233375%_
                                            _%hd233315233367%_)
                                           (_%g233297233327%_
                                            _%g233298233330%_))))
                                   (_%g233297233327%_ _%g233298233330%_))
                               (_%g233297233327%_ _%g233298233330%_))
                           (_%g233297233327%_ _%g233298233330%_))))
                   (_%g233297233327%_ _%g233298233330%_))
               (_%g233297233327%_ _%g233298233330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233297233327%_
                                                _%g233298233330%_))))
                                       (_%g233297233327%_ _%g233298233330%_))))
                               (_%g233297233327%_ _%g233298233330%_))))
                       (_%g233297233327%_ _%g233298233330%_))))
               (_%g233297233327%_ _%g233298233330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233296233891%_
                                            _%g232684232852%_))
                                         _%stx231062%_))))
                             _%hd232950233073%_
                             _%kw-ref232948233093%_
                             _%hd232938233060%_
                             _%hd232929233036%_
                             _%hd232920233012%_)
                            (_%g232894232956%_ _%g232895232959%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop232943233078%_
                                                 _%target232940233065%_
                                                 '()))
                                              (_%g232894232956%_
                                               _%g232895232959%_))))
                                      (_%g232894232956%_ _%g232895232959%_)))))
                            (_%g232894232956%_ _%g232895232959%_))
                        (_%g232894232956%_ _%g232895232959%_))
                    (_%g232894232956%_ _%g232895232959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232894232956%_
                                                     _%g232895232959%_))
                                                (_%g232894232956%_
                                                 _%g232895232959%_))
                                            (_%g232894232956%_
                                             _%g232895232959%_))))
                                    (_%g232894232956%_ _%g232895232959%_))))
                            (_%g232894232956%_ _%g232895232959%_))
                        (_%g232894232956%_ _%g232895232959%_))))
                (_%g232894232956%_ _%g232895232959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232894232956%_
                                                     _%g232895232959%_))
                                                (_%g232894232956%_
                                                 _%g232895232959%_))))
                                        (_%g232894232956%_
                                         _%g232895232959%_))))
                                (_%g232894232956%_ _%g232895232959%_))
                            (_%g232894232956%_ _%g232895232959%_))))
                    (_%g232894232956%_ _%g232895232959%_))
                (_%g232894232956%_ _%g232895232959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232894232956%_
                                                     _%g232895232959%_))))
                                            (_%g232894232956%_
                                             _%g232895232959%_))))
                                    (_%g232894232956%_ _%g232895232959%_))
                                (_%g232894232956%_ _%g232895232959%_))
                            (_%g232894232956%_ _%g232895232959%_))))
                    (_%g232894232956%_ _%g232895232959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232894232956%_
                                                     _%g232895232959%_))))
                                            (_%g232894232956%_
                                             _%g232895232959%_))
                                        (_%g232894232956%_ _%g232895232959%_))
                                    (_%g232894232956%_ _%g232895232959%_))))
                            (_%g232894232956%_ _%g232895232959%_)))))
                (_%g232893233895%_ _%g232683232851%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd232727232845%_
                                                    _%hd232724232837%_
                                                    _%hd232721232829%_
                                                    _%hd232718232821%_
                                                    _%hd232700232773%_)
                                                   (_%g232680232733%_
                                                    _%g232681232736%_))))
                                           (_%g232680232733%_
                                            _%g232681232736%_))
                                       (_%g232680232733%_ _%g232681232736%_))
                                   (_%g232680232733%_ _%g232681232736%_))
                               (_%g232680232733%_ _%g232681232736%_))))
                       (_%g232680232733%_ _%g232681232736%_))
                   (_%g232680232733%_ _%g232681232736%_))
               (_%g232680232733%_ _%g232681232736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232680232733%_
                                                _%g232681232736%_))
                                           (_%g232680232733%_
                                            _%g232681232736%_))))
                                   (_%g232680232733%_ _%g232681232736%_))))
                           (_%g232680232733%_ _%g232681232736%_))))
                   (_%g232680232733%_ _%g232681232736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232680232733%_
                                                    _%g232681232736%_))
                                               (_%g232680232733%_
                                                _%g232681232736%_))
                                           (_%g232680232733%_
                                            _%g232681232736%_))))
                                   (_%g232680232733%_ _%g232681232736%_))))
                           (_%g232680232733%_ _%g232681232736%_))
                       (_%g232680232733%_ _%g232681232736%_))))
               (_%g232680232733%_ _%g232681232736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232680232733%_
                                                _%g232681232736%_))))
                                       (_%g232680232733%_ _%g232681232736%_))))
                               (_%g232680232733%_ _%g232681232736%_))
                           (_%g232680232733%_ _%g232681232736%_))
                       (_%g232680232733%_ _%g232681232736%_))))
               (_%g232680232733%_ _%g232681232736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g232679233898%_
                                            _%g231072231134%_))
                                         _%stx231062%_))))))))
                  (_%__kont234125234126%_ (lambda () _%stx231062%_)))
              (let ((_%__match234154234155%_
                     (lambda (_%e231074231102%_
                              _%hd231075231105%_
                              _%tl231076231107%_
                              _%e231077231110%_
                              _%hd231078231113%_
                              _%tl231079231115%_
                              _%e231080231118%_
                              _%hd231081231121%_
                              _%tl231082231123%_
                              _%e231083231126%_
                              _%hd231084231129%_
                              _%tl231085231131%_)
                       (let ((_%g231072231134%_ _%hd231084231129%_)
                             (_%g231073231135%_ _%hd231081231121%_))
                         (if (let ((__tmp235359
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g231073231135%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp235359))
                             (_%__kont234123234124%_
                              _%g231072231134%_
                              _%g231073231135%_)
                             (_%__kont234125234126%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234121234122%_))
                    (let ((_%e231074231102%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234121234122%_))))
                      (let ((_%tl231076231107%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231074231102%_)))
                            (_%hd231075231105%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231074231102%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231076231107%_))
                            (let ((_%e231077231110%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231076231107%_))))
                              (let ((_%tl231079231115%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231077231110%_)))
                                    (_%hd231078231113%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231077231110%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231078231113%_))
                                    (let ((_%e231080231118%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231078231113%_))))
                                      (let ((_%tl231082231123%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231080231118%_)))
                                            (_%hd231081231121%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231080231118%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231082231123%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231079231115%_))
                                                (let ((_%e231083231126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231079231115%_))))
                                                  (let ((_%tl231085231131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231083231126%_)))
                                                        (_%hd231084231129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231083231126%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231085231131%_))
                                                        (_%__match234154234155%_
                                                         _%e231074231102%_
                                                         _%hd231075231105%_
                                                         _%tl231076231107%_
                                                         _%e231077231110%_
                                                         _%hd231078231113%_
                                                         _%tl231079231115%_
                                                         _%e231080231118%_
                                                         _%hd231081231121%_
                                                         _%tl231082231123%_
                                                         _%e231083231126%_
                                                         _%hd231084231129%_
                                                         _%tl231085231131%_)
                                                        (_%__kont234125234126%_))))
                                                (_%__kont234125234126%_))
                                            (_%__kont234125234126%_))))
                                    (_%__kont234125234126%_))))
                            (_%__kont234125234126%_))))
                    (_%__kont234125234126%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self230914%_ _%stx230915%_)
        (let* ((_%__stx234157234158%_ _%stx230915%_)
               (_%g230918230951%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234157234158%_)))))
          (let ((_%__kont234159234160%_
                 (lambda (_%g230920231041%_) _%g230920231041%_))
                (_%__kont234161234162%_
                 (lambda (_%g230936230980%_ _%g230937230981%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230914%_ _%g230936230980%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx234157234158%_))
                (let ((_%e230921231001%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx234157234158%_))))
                  (let ((_%tl230923231006%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230921231001%_)))
                        (_%hd230922231004%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230921231001%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230923231006%_))
                        (let ((_%e230924231009%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl230923231006%_))))
                          (let ((_%tl230926231014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230924231009%_)))
                                (_%hd230925231012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230924231009%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd230925231012%_))
                                (let ((_%e230927231017%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230925231012%_))))
                                  (let ((_%tl230929231022%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230927231017%_)))
                                        (_%hd230928231020%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230927231017%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd230928231020%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd230928231020%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230929231022%_))
                                                (let ((_%e230930231025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230929231022%_))))
                                                  (let ((_%tl230932231030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230930231025%_)))
                                                        (_%hd230931231028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230930231025%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230932231030%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl230926231014%_))
                                                            (let ((_%e230933231033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230926231014%_))))
                      (let ((_%tl230935231038%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230933231033%_)))
                            (_%hd230934231036%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230933231033%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230935231038%_))
                            (_%__kont234159234160%_ _%hd230931231028%_)
                            (let ()
                              (declare (not safe))
                              (_%g230918230951%_)))))
                    (let () (declare (not safe)) (_%g230918230951%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl230926231014%_))
                    (let ((_%e230944230972%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230926231014%_))))
                      (let ((_%tl230946230977%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230944230972%_)))
                            (_%hd230945230975%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230944230972%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230946230977%_))
                            (_%__kont234161234162%_
                             _%hd230945230975%_
                             _%hd230925231012%_)
                            (let ()
                              (declare (not safe))
                              (_%g230918230951%_)))))
                    (let () (declare (not safe)) (_%g230918230951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl230926231014%_))
                                                    (let ((_%e230944230972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl230926231014%_))))
                                                      (let ((_%tl230946230977%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e230944230972%_)))
                    (_%hd230945230975%_
                     (let () (declare (not safe)) (##car _%e230944230972%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl230946230977%_))
                    (_%__kont234161234162%_
                     _%hd230945230975%_
                     _%hd230925231012%_)
                    (let () (declare (not safe)) (_%g230918230951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g230918230951%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230926231014%_))
                                                (let ((_%e230944230972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230926231014%_))))
                                                  (let ((_%tl230946230977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230944230972%_)))
                                                        (_%hd230945230975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230944230972%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230946230977%_))
                                                        (_%__kont234161234162%_
                                                         _%hd230945230975%_
                                                         _%hd230925231012%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g230918230951%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g230918230951%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl230926231014%_))
                                            (let ((_%e230944230972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl230926231014%_))))
                                              (let ((_%tl230946230977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230944230972%_)))
                                                    (_%hd230945230975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230944230972%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl230946230977%_))
                                                    (_%__kont234161234162%_
                                                     _%hd230945230975%_
                                                     _%hd230925231012%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g230918230951%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g230918230951%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl230926231014%_))
                                    (let ((_%e230944230972%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl230926231014%_))))
                                      (let ((_%tl230946230977%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230944230972%_)))
                                            (_%hd230945230975%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230944230972%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl230946230977%_))
                                            (_%__kont234161234162%_
                                             _%hd230945230975%_
                                             _%hd230925231012%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g230918230951%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g230918230951%_))))))
                        (let () (declare (not safe)) (_%g230918230951%_)))))
                (let () (declare (not safe)) (_%g230918230951%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self230830%_ _%stx230831%_)
        (let* ((_%g230833230854%_
                (lambda (_%g230834230851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230834230851%_))))
               (_%g230832230911%_
                (lambda (_%g230834230857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230834230857%_))
                      (let ((_%e230838230859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g230834230857%_))))
                        (let ((_%hd230839230862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230838230859%_)))
                              (_%tl230840230864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230838230859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230840230864%_))
                              (let ((_%e230841230867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230840230864%_))))
                                (let ((_%hd230842230870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230841230867%_)))
                                      (_%tl230843230872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230841230867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230843230872%_))
                                      (let ((_%e230844230875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl230843230872%_))))
                                        (let ((_%hd230845230878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230844230875%_)))
                                              (_%tl230846230880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230844230875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230846230880%_))
                                              (let ((_%e230847230883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230846230880%_))))
                                                (let ((_%hd230848230886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230847230883%_)))
                                                      (_%tl230849230888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230847230883%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230849230888%_))
                                                      ((lambda (_%g230835230891%_
                                                                _%g230836230892%_
                                                                _%g230837230893%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self230830%_
                                                            _%g230836230892%_)))
                                                       _%hd230848230886%_
                                                       _%hd230845230878%_
                                                       _%hd230842230870%_)
                                                      (_%g230833230854%_
                                                       _%g230834230857%_))))
                                              (_%g230833230854%_
                                               _%g230834230857%_))))
                                      (_%g230833230854%_ _%g230834230857%_))))
                              (_%g230833230854%_ _%g230834230857%_))))
                      (_%g230833230854%_ _%g230834230857%_)))))
          (_%g230832230911%_ _%stx230831%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self229795%_ _%stx229796%_)
        (let* ((_%__stx234223234224%_ _%stx229796%_)
               (_%g229804230026%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234223234224%_)))))
          (let ((_%__kont234225234226%_
                 (lambda (_%g229806230779%_
                          _%g229807230780%_
                          _%g229808230781%_
                          _%g229809230782%_)
                   (let ((__tmp235361
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229795%_ 'methods)))
                         (__tmp235360
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229807230780%_))))
                     (declare (not safe))
                     (hash-put! __tmp235361 __tmp235360 '#t))
                   (for-each
                    (lambda (_%g230815230817%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self229795%_ _%g230815230817%_)))
                    (let ((__tmp235362
                           (lambda (_%g230819230822%_ _%g230820230824%_)
                             (cons _%g230819230822%_ _%g230820230824%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235362 '() _%g229806230779%_)))))
                (_%__kont234229234230%_
                 (lambda (_%g229849230616%_
                          _%g229850230617%_
                          _%g229851230618%_
                          _%g229852230619%_
                          _%g229853230620%_)
                   (let ((__tmp235364
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229795%_ 'methods)))
                         (__tmp235363
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229850230617%_))))
                     (declare (not safe))
                     (hash-put! __tmp235364 __tmp235363 '#t))
                   (for-each
                    (lambda (_%g230660230662%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self229795%_ _%g230660230662%_)))
                    (let ((__tmp235365
                           (lambda (_%g230664230667%_ _%g230665230669%_)
                             (cons _%g230664230667%_ _%g230665230669%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235365 '() _%g229849230616%_)))))
                (_%__kont234233234234%_
                 (lambda (_%g229902230451%_
                          _%g229903230452%_
                          _%g229904230453%_)
                   (let ((__tmp235367
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229795%_ 'slots)))
                         (__tmp235366
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229902230451%_))))
                     (declare (not safe))
                     (hash-put! __tmp235367 __tmp235366 '#t))))
                (_%__kont234235234236%_
                 (lambda (_%g229935230328%_
                          _%g229936230329%_
                          _%g229937230330%_
                          _%g229938230331%_)
                   (let ((__tmp235369
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229795%_ 'slots)))
                         (__tmp235368
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229936230329%_))))
                     (declare (not safe))
                     (hash-put! __tmp235369 __tmp235368 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self229795%_ _%g229935230328%_))))
                (_%__kont234237234238%_
                 (lambda (_%g229972230202%_ _%g229973230203%_)
                   (let* ((_%accessor230225%_
                           (let ((__tmp235370
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g229973230203%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235370)))
                          (_%klass230227%_
                           (let ((__tmp235371
                                  (##structure-ref
                                   _%accessor230225%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx229796%_
                              __tmp235371)))
                          (_%slot230229%_
                           (##structure-ref
                            _%accessor230225%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor230225%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230227%_
                                    _%slot230229%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230227%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235373
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self229795%_ 'slots)))
                               (__tmp235372
                                (##structure-ref
                                 _%accessor230225%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp235373 __tmp235372 '#t))))))
                (_%__kont234239234240%_
                 (lambda (_%g229995230102%_
                          _%g229996230103%_
                          _%g229997230104%_)
                   (let* ((_%mutator230131%_
                           (let ((__tmp235374
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g229997230104%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235374)))
                          (_%klass230133%_
                           (let ((__tmp235375
                                  (##structure-ref
                                   _%mutator230131%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx229796%_
                              __tmp235375)))
                          (_%slot230135%_
                           (##structure-ref
                            _%mutator230131%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator230131%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230133%_
                                    _%slot230135%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230133%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235376
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self229795%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp235376 _%slot230135%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self229795%_ _%g229995230102%_)))))
                (_%__kont234241234242%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self229795%_ _%stx229796%_)))))
            (let* ((_%__match234722234723%_
                    (lambda (_%e229998230038%_
                             _%hd229999230041%_
                             _%tl230000230043%_
                             _%e230001230046%_
                             _%hd230002230049%_
                             _%tl230003230051%_
                             _%e230004230054%_
                             _%hd230005230057%_
                             _%tl230006230059%_
                             _%e230007230062%_
                             _%hd230008230065%_
                             _%tl230009230067%_
                             _%e230010230070%_
                             _%hd230011230073%_
                             _%tl230012230075%_
                             _%e230013230078%_
                             _%hd230014230081%_
                             _%tl230015230083%_
                             _%e230016230086%_
                             _%hd230017230089%_
                             _%tl230018230091%_
                             _%e230019230094%_
                             _%hd230020230097%_
                             _%tl230021230099%_)
                      (let ((_%g229995230102%_ _%hd230020230097%_)
                            (_%g229996230103%_ _%hd230017230089%_)
                            (_%g229997230104%_ _%hd230008230065%_))
                        (if (and (let ((__tmp235377
                                        (let ((__tmp235378
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g229997230104%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235378))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235377
                                    'gxc#!mutator::t))
                                 (let ((__tmp235379
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229795%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229996230103%_
                                    __tmp235379)))
                            (_%__kont234239234240%_
                             _%g229995230102%_
                             _%g229996230103%_
                             _%g229997230104%_)
                            (_%__kont234241234242%_)))))
                   (_%__match234720234721%_
                    (lambda (_%e229998230038%_
                             _%hd229999230041%_
                             _%tl230000230043%_
                             _%e230001230046%_
                             _%hd230002230049%_
                             _%tl230003230051%_
                             _%e230004230054%_
                             _%hd230005230057%_
                             _%tl230006230059%_
                             _%e230007230062%_
                             _%hd230008230065%_
                             _%tl230009230067%_
                             _%e230010230070%_
                             _%hd230011230073%_
                             _%tl230012230075%_
                             _%e230013230078%_
                             _%hd230014230081%_
                             _%tl230015230083%_
                             _%e230016230086%_
                             _%hd230017230089%_
                             _%tl230018230091%_
                             _%e230019230094%_
                             _%hd230020230097%_
                             _%tl230021230099%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230021230099%_))
                          (_%__match234722234723%_
                           _%e229998230038%_
                           _%hd229999230041%_
                           _%tl230000230043%_
                           _%e230001230046%_
                           _%hd230002230049%_
                           _%tl230003230051%_
                           _%e230004230054%_
                           _%hd230005230057%_
                           _%tl230006230059%_
                           _%e230007230062%_
                           _%hd230008230065%_
                           _%tl230009230067%_
                           _%e230010230070%_
                           _%hd230011230073%_
                           _%tl230012230075%_
                           _%e230013230078%_
                           _%hd230014230081%_
                           _%tl230015230083%_
                           _%e230016230086%_
                           _%hd230017230089%_
                           _%tl230018230091%_
                           _%e230019230094%_
                           _%hd230020230097%_
                           _%tl230021230099%_)
                          (_%__kont234241234242%_))))
                   (_%__match234714234715%_
                    (lambda (_%e229998230038%_
                             _%hd229999230041%_
                             _%tl230000230043%_
                             _%e230001230046%_
                             _%hd230002230049%_
                             _%tl230003230051%_
                             _%e230004230054%_
                             _%hd230005230057%_
                             _%tl230006230059%_
                             _%e230007230062%_
                             _%hd230008230065%_
                             _%tl230009230067%_
                             _%e230010230070%_
                             _%hd230011230073%_
                             _%tl230012230075%_
                             _%e230013230078%_
                             _%hd230014230081%_
                             _%tl230015230083%_
                             _%e230016230086%_
                             _%hd230017230089%_
                             _%tl230018230091%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230012230075%_))
                          (let ((_%e230019230094%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230012230075%_))))
                            (let ((_%tl230021230099%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230019230094%_)))
                                  (_%hd230020230097%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230019230094%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230021230099%_))
                                  (_%__match234722234723%_
                                   _%e229998230038%_
                                   _%hd229999230041%_
                                   _%tl230000230043%_
                                   _%e230001230046%_
                                   _%hd230002230049%_
                                   _%tl230003230051%_
                                   _%e230004230054%_
                                   _%hd230005230057%_
                                   _%tl230006230059%_
                                   _%e230007230062%_
                                   _%hd230008230065%_
                                   _%tl230009230067%_
                                   _%e230010230070%_
                                   _%hd230011230073%_
                                   _%tl230012230075%_
                                   _%e230013230078%_
                                   _%hd230014230081%_
                                   _%tl230015230083%_
                                   _%e230016230086%_
                                   _%hd230017230089%_
                                   _%tl230018230091%_
                                   _%e230019230094%_
                                   _%hd230020230097%_
                                   _%tl230021230099%_)
                                  (_%__kont234241234242%_))))
                          (_%__kont234241234242%_))))
                   (_%__match234660234661%_
                    (lambda (_%e229974230146%_
                             _%hd229975230149%_
                             _%tl229976230151%_
                             _%e229977230154%_
                             _%hd229978230157%_
                             _%tl229979230159%_
                             _%e229980230162%_
                             _%hd229981230165%_
                             _%tl229982230167%_
                             _%e229983230170%_
                             _%hd229984230173%_
                             _%tl229985230175%_
                             _%e229986230178%_
                             _%hd229987230181%_
                             _%tl229988230183%_
                             _%e229989230186%_
                             _%hd229990230189%_
                             _%tl229991230191%_
                             _%e229992230194%_
                             _%hd229993230197%_
                             _%tl229994230199%_)
                      (let ((_%g229972230202%_ _%hd229993230197%_)
                            (_%g229973230203%_ _%hd229984230173%_))
                        (if (and (let ((__tmp235380
                                        (let ((__tmp235381
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g229973230203%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235381))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235380
                                    'gxc#!accessor::t))
                                 (let ((__tmp235382
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229795%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229972230202%_
                                    __tmp235382)))
                            (_%__kont234237234238%_
                             _%g229972230202%_
                             _%g229973230203%_)
                            (_%__kont234241234242%_)))))
                   (_%__match234658234659%_
                    (lambda (_%e229974230146%_
                             _%hd229975230149%_
                             _%tl229976230151%_
                             _%e229977230154%_
                             _%hd229978230157%_
                             _%tl229979230159%_
                             _%e229980230162%_
                             _%hd229981230165%_
                             _%tl229982230167%_
                             _%e229983230170%_
                             _%hd229984230173%_
                             _%tl229985230175%_
                             _%e229986230178%_
                             _%hd229987230181%_
                             _%tl229988230183%_
                             _%e229989230186%_
                             _%hd229990230189%_
                             _%tl229991230191%_
                             _%e229992230194%_
                             _%hd229993230197%_
                             _%tl229994230199%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229988230183%_))
                          (_%__match234660234661%_
                           _%e229974230146%_
                           _%hd229975230149%_
                           _%tl229976230151%_
                           _%e229977230154%_
                           _%hd229978230157%_
                           _%tl229979230159%_
                           _%e229980230162%_
                           _%hd229981230165%_
                           _%tl229982230167%_
                           _%e229983230170%_
                           _%hd229984230173%_
                           _%tl229985230175%_
                           _%e229986230178%_
                           _%hd229987230181%_
                           _%tl229988230183%_
                           _%e229989230186%_
                           _%hd229990230189%_
                           _%tl229991230191%_
                           _%e229992230194%_
                           _%hd229993230197%_
                           _%tl229994230199%_)
                          (_%__match234714234715%_
                           _%e229974230146%_
                           _%hd229975230149%_
                           _%tl229976230151%_
                           _%e229977230154%_
                           _%hd229978230157%_
                           _%tl229979230159%_
                           _%e229980230162%_
                           _%hd229981230165%_
                           _%tl229982230167%_
                           _%e229983230170%_
                           _%hd229984230173%_
                           _%tl229985230175%_
                           _%e229986230178%_
                           _%hd229987230181%_
                           _%tl229988230183%_
                           _%e229989230186%_
                           _%hd229990230189%_
                           _%tl229991230191%_
                           _%e229992230194%_
                           _%hd229993230197%_
                           _%tl229994230199%_))))
                   (_%__match234604234605%_
                    (lambda (_%e229939230240%_
                             _%hd229940230243%_
                             _%tl229941230245%_
                             _%e229942230248%_
                             _%hd229943230251%_
                             _%tl229944230253%_
                             _%e229945230256%_
                             _%hd229946230259%_
                             _%tl229947230261%_
                             _%e229948230264%_
                             _%hd229949230267%_
                             _%tl229950230269%_
                             _%e229951230272%_
                             _%hd229952230275%_
                             _%tl229953230277%_
                             _%e229954230280%_
                             _%hd229955230283%_
                             _%tl229956230285%_
                             _%e229957230288%_
                             _%hd229958230291%_
                             _%tl229959230293%_
                             _%e229960230296%_
                             _%hd229961230299%_
                             _%tl229962230301%_
                             _%e229963230304%_
                             _%hd229964230307%_
                             _%tl229965230309%_
                             _%e229966230312%_
                             _%hd229967230315%_
                             _%tl229968230317%_
                             _%e229969230320%_
                             _%hd229970230323%_
                             _%tl229971230325%_)
                      (let ((_%g229935230328%_ _%hd229970230323%_)
                            (_%g229936230329%_ _%hd229967230315%_)
                            (_%g229937230330%_ _%hd229958230291%_)
                            (_%g229938230331%_ _%hd229949230267%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229938230331%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229938230331%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp235383
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229795%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229937230330%_
                                    __tmp235383)))
                            (_%__kont234235234236%_
                             _%g229935230328%_
                             _%g229936230329%_
                             _%g229937230330%_
                             _%g229938230331%_)
                            (_%__kont234241234242%_)))))
                   (_%__match234596234597%_
                    (lambda (_%e229939230240%_
                             _%hd229940230243%_
                             _%tl229941230245%_
                             _%e229942230248%_
                             _%hd229943230251%_
                             _%tl229944230253%_
                             _%e229945230256%_
                             _%hd229946230259%_
                             _%tl229947230261%_
                             _%e229948230264%_
                             _%hd229949230267%_
                             _%tl229950230269%_
                             _%e229951230272%_
                             _%hd229952230275%_
                             _%tl229953230277%_
                             _%e229954230280%_
                             _%hd229955230283%_
                             _%tl229956230285%_
                             _%e229957230288%_
                             _%hd229958230291%_
                             _%tl229959230293%_
                             _%e229960230296%_
                             _%hd229961230299%_
                             _%tl229962230301%_
                             _%e229963230304%_
                             _%hd229964230307%_
                             _%tl229965230309%_
                             _%e229966230312%_
                             _%hd229967230315%_
                             _%tl229968230317%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229962230301%_))
                          (let ((_%e229969230320%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229962230301%_))))
                            (let ((_%tl229971230325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229969230320%_)))
                                  (_%hd229970230323%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229969230320%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229971230325%_))
                                  (_%__match234604234605%_
                                   _%e229939230240%_
                                   _%hd229940230243%_
                                   _%tl229941230245%_
                                   _%e229942230248%_
                                   _%hd229943230251%_
                                   _%tl229944230253%_
                                   _%e229945230256%_
                                   _%hd229946230259%_
                                   _%tl229947230261%_
                                   _%e229948230264%_
                                   _%hd229949230267%_
                                   _%tl229950230269%_
                                   _%e229951230272%_
                                   _%hd229952230275%_
                                   _%tl229953230277%_
                                   _%e229954230280%_
                                   _%hd229955230283%_
                                   _%tl229956230285%_
                                   _%e229957230288%_
                                   _%hd229958230291%_
                                   _%tl229959230293%_
                                   _%e229960230296%_
                                   _%hd229961230299%_
                                   _%tl229962230301%_
                                   _%e229963230304%_
                                   _%hd229964230307%_
                                   _%tl229965230309%_
                                   _%e229966230312%_
                                   _%hd229967230315%_
                                   _%tl229968230317%_
                                   _%e229969230320%_
                                   _%hd229970230323%_
                                   _%tl229971230325%_)
                                  (_%__kont234241234242%_))))
                          (_%__match234720234721%_
                           _%e229939230240%_
                           _%hd229940230243%_
                           _%tl229941230245%_
                           _%e229942230248%_
                           _%hd229943230251%_
                           _%tl229944230253%_
                           _%e229945230256%_
                           _%hd229946230259%_
                           _%tl229947230261%_
                           _%e229948230264%_
                           _%hd229949230267%_
                           _%tl229950230269%_
                           _%e229951230272%_
                           _%hd229952230275%_
                           _%tl229953230277%_
                           _%e229954230280%_
                           _%hd229955230283%_
                           _%tl229956230285%_
                           _%e229957230288%_
                           _%hd229958230291%_
                           _%tl229959230293%_
                           _%e229960230296%_
                           _%hd229961230299%_
                           _%tl229962230301%_))))
                   (_%__match234518234519%_
                    (lambda (_%e229905230371%_
                             _%hd229906230374%_
                             _%tl229907230376%_
                             _%e229908230379%_
                             _%hd229909230382%_
                             _%tl229910230384%_
                             _%e229911230387%_
                             _%hd229912230390%_
                             _%tl229913230392%_
                             _%e229914230395%_
                             _%hd229915230398%_
                             _%tl229916230400%_
                             _%e229917230403%_
                             _%hd229918230406%_
                             _%tl229919230408%_
                             _%e229920230411%_
                             _%hd229921230414%_
                             _%tl229922230416%_
                             _%e229923230419%_
                             _%hd229924230422%_
                             _%tl229925230424%_
                             _%e229926230427%_
                             _%hd229927230430%_
                             _%tl229928230432%_
                             _%e229929230435%_
                             _%hd229930230438%_
                             _%tl229931230440%_
                             _%e229932230443%_
                             _%hd229933230446%_
                             _%tl229934230448%_)
                      (let ((_%g229902230451%_ _%hd229933230446%_)
                            (_%g229903230452%_ _%hd229924230422%_)
                            (_%g229904230453%_ _%hd229915230398%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229904230453%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229904230453%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp235384
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229795%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229903230452%_
                                    __tmp235384)))
                            (_%__kont234233234234%_
                             _%g229902230451%_
                             _%g229903230452%_
                             _%g229904230453%_)
                            (_%__match234722234723%_
                             _%e229905230371%_
                             _%hd229906230374%_
                             _%tl229907230376%_
                             _%e229908230379%_
                             _%hd229909230382%_
                             _%tl229910230384%_
                             _%e229911230387%_
                             _%hd229912230390%_
                             _%tl229913230392%_
                             _%e229914230395%_
                             _%hd229915230398%_
                             _%tl229916230400%_
                             _%e229917230403%_
                             _%hd229918230406%_
                             _%tl229919230408%_
                             _%e229920230411%_
                             _%hd229921230414%_
                             _%tl229922230416%_
                             _%e229923230419%_
                             _%hd229924230422%_
                             _%tl229925230424%_
                             _%e229926230427%_
                             _%hd229927230430%_
                             _%tl229928230432%_)))))
                   (_%__match234516234517%_
                    (lambda (_%e229905230371%_
                             _%hd229906230374%_
                             _%tl229907230376%_
                             _%e229908230379%_
                             _%hd229909230382%_
                             _%tl229910230384%_
                             _%e229911230387%_
                             _%hd229912230390%_
                             _%tl229913230392%_
                             _%e229914230395%_
                             _%hd229915230398%_
                             _%tl229916230400%_
                             _%e229917230403%_
                             _%hd229918230406%_
                             _%tl229919230408%_
                             _%e229920230411%_
                             _%hd229921230414%_
                             _%tl229922230416%_
                             _%e229923230419%_
                             _%hd229924230422%_
                             _%tl229925230424%_
                             _%e229926230427%_
                             _%hd229927230430%_
                             _%tl229928230432%_
                             _%e229929230435%_
                             _%hd229930230438%_
                             _%tl229931230440%_
                             _%e229932230443%_
                             _%hd229933230446%_
                             _%tl229934230448%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229928230432%_))
                          (_%__match234518234519%_
                           _%e229905230371%_
                           _%hd229906230374%_
                           _%tl229907230376%_
                           _%e229908230379%_
                           _%hd229909230382%_
                           _%tl229910230384%_
                           _%e229911230387%_
                           _%hd229912230390%_
                           _%tl229913230392%_
                           _%e229914230395%_
                           _%hd229915230398%_
                           _%tl229916230400%_
                           _%e229917230403%_
                           _%hd229918230406%_
                           _%tl229919230408%_
                           _%e229920230411%_
                           _%hd229921230414%_
                           _%tl229922230416%_
                           _%e229923230419%_
                           _%hd229924230422%_
                           _%tl229925230424%_
                           _%e229926230427%_
                           _%hd229927230430%_
                           _%tl229928230432%_
                           _%e229929230435%_
                           _%hd229930230438%_
                           _%tl229931230440%_
                           _%e229932230443%_
                           _%hd229933230446%_
                           _%tl229934230448%_)
                          (_%__match234596234597%_
                           _%e229905230371%_
                           _%hd229906230374%_
                           _%tl229907230376%_
                           _%e229908230379%_
                           _%hd229909230382%_
                           _%tl229910230384%_
                           _%e229911230387%_
                           _%hd229912230390%_
                           _%tl229913230392%_
                           _%e229914230395%_
                           _%hd229915230398%_
                           _%tl229916230400%_
                           _%e229917230403%_
                           _%hd229918230406%_
                           _%tl229919230408%_
                           _%e229920230411%_
                           _%hd229921230414%_
                           _%tl229922230416%_
                           _%e229923230419%_
                           _%hd229924230422%_
                           _%tl229925230424%_
                           _%e229926230427%_
                           _%hd229927230430%_
                           _%tl229928230432%_
                           _%e229929230435%_
                           _%hd229930230438%_
                           _%tl229931230440%_
                           _%e229932230443%_
                           _%hd229933230446%_
                           _%tl229934230448%_))))
                   (_%__match234506234507%_
                    (lambda (_%e229905230371%_
                             _%hd229906230374%_
                             _%tl229907230376%_
                             _%e229908230379%_
                             _%hd229909230382%_
                             _%tl229910230384%_
                             _%e229911230387%_
                             _%hd229912230390%_
                             _%tl229913230392%_
                             _%e229914230395%_
                             _%hd229915230398%_
                             _%tl229916230400%_
                             _%e229917230403%_
                             _%hd229918230406%_
                             _%tl229919230408%_
                             _%e229920230411%_
                             _%hd229921230414%_
                             _%tl229922230416%_
                             _%e229923230419%_
                             _%hd229924230422%_
                             _%tl229925230424%_
                             _%e229926230427%_
                             _%hd229927230430%_
                             _%tl229928230432%_
                             _%e229929230435%_
                             _%hd229930230438%_
                             _%tl229931230440%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd229930230438%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229931230440%_))
                              (let ((_%e229932230443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl229931230440%_))))
                                (let ((_%tl229934230448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229932230443%_)))
                                      (_%hd229933230446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229932230443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229934230448%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229928230432%_))
                                          (_%__match234518234519%_
                                           _%e229905230371%_
                                           _%hd229906230374%_
                                           _%tl229907230376%_
                                           _%e229908230379%_
                                           _%hd229909230382%_
                                           _%tl229910230384%_
                                           _%e229911230387%_
                                           _%hd229912230390%_
                                           _%tl229913230392%_
                                           _%e229914230395%_
                                           _%hd229915230398%_
                                           _%tl229916230400%_
                                           _%e229917230403%_
                                           _%hd229918230406%_
                                           _%tl229919230408%_
                                           _%e229920230411%_
                                           _%hd229921230414%_
                                           _%tl229922230416%_
                                           _%e229923230419%_
                                           _%hd229924230422%_
                                           _%tl229925230424%_
                                           _%e229926230427%_
                                           _%hd229927230430%_
                                           _%tl229928230432%_
                                           _%e229929230435%_
                                           _%hd229930230438%_
                                           _%tl229931230440%_
                                           _%e229932230443%_
                                           _%hd229933230446%_
                                           _%tl229934230448%_)
                                          (_%__match234596234597%_
                                           _%e229905230371%_
                                           _%hd229906230374%_
                                           _%tl229907230376%_
                                           _%e229908230379%_
                                           _%hd229909230382%_
                                           _%tl229910230384%_
                                           _%e229911230387%_
                                           _%hd229912230390%_
                                           _%tl229913230392%_
                                           _%e229914230395%_
                                           _%hd229915230398%_
                                           _%tl229916230400%_
                                           _%e229917230403%_
                                           _%hd229918230406%_
                                           _%tl229919230408%_
                                           _%e229920230411%_
                                           _%hd229921230414%_
                                           _%tl229922230416%_
                                           _%e229923230419%_
                                           _%hd229924230422%_
                                           _%tl229925230424%_
                                           _%e229926230427%_
                                           _%hd229927230430%_
                                           _%tl229928230432%_
                                           _%e229929230435%_
                                           _%hd229930230438%_
                                           _%tl229931230440%_
                                           _%e229932230443%_
                                           _%hd229933230446%_
                                           _%tl229934230448%_))
                                      (_%__match234720234721%_
                                       _%e229905230371%_
                                       _%hd229906230374%_
                                       _%tl229907230376%_
                                       _%e229908230379%_
                                       _%hd229909230382%_
                                       _%tl229910230384%_
                                       _%e229911230387%_
                                       _%hd229912230390%_
                                       _%tl229913230392%_
                                       _%e229914230395%_
                                       _%hd229915230398%_
                                       _%tl229916230400%_
                                       _%e229917230403%_
                                       _%hd229918230406%_
                                       _%tl229919230408%_
                                       _%e229920230411%_
                                       _%hd229921230414%_
                                       _%tl229922230416%_
                                       _%e229923230419%_
                                       _%hd229924230422%_
                                       _%tl229925230424%_
                                       _%e229926230427%_
                                       _%hd229927230430%_
                                       _%tl229928230432%_))))
                              (_%__match234720234721%_
                               _%e229905230371%_
                               _%hd229906230374%_
                               _%tl229907230376%_
                               _%e229908230379%_
                               _%hd229909230382%_
                               _%tl229910230384%_
                               _%e229911230387%_
                               _%hd229912230390%_
                               _%tl229913230392%_
                               _%e229914230395%_
                               _%hd229915230398%_
                               _%tl229916230400%_
                               _%e229917230403%_
                               _%hd229918230406%_
                               _%tl229919230408%_
                               _%e229920230411%_
                               _%hd229921230414%_
                               _%tl229922230416%_
                               _%e229923230419%_
                               _%hd229924230422%_
                               _%tl229925230424%_
                               _%e229926230427%_
                               _%hd229927230430%_
                               _%tl229928230432%_))
                          (_%__match234720234721%_
                           _%e229905230371%_
                           _%hd229906230374%_
                           _%tl229907230376%_
                           _%e229908230379%_
                           _%hd229909230382%_
                           _%tl229910230384%_
                           _%e229911230387%_
                           _%hd229912230390%_
                           _%tl229913230392%_
                           _%e229914230395%_
                           _%hd229915230398%_
                           _%tl229916230400%_
                           _%e229917230403%_
                           _%hd229918230406%_
                           _%tl229919230408%_
                           _%e229920230411%_
                           _%hd229921230414%_
                           _%tl229922230416%_
                           _%e229923230419%_
                           _%hd229924230422%_
                           _%tl229925230424%_
                           _%e229926230427%_
                           _%hd229927230430%_
                           _%tl229928230432%_))))
                   (_%__match234438234439%_
                    (lambda (_%e229854230490%_
                             _%hd229855230493%_
                             _%tl229856230495%_
                             _%e229857230498%_
                             _%hd229858230501%_
                             _%tl229859230503%_
                             _%e229860230506%_
                             _%hd229861230509%_
                             _%tl229862230511%_
                             _%e229863230514%_
                             _%hd229864230517%_
                             _%tl229865230519%_
                             _%e229866230522%_
                             _%hd229867230525%_
                             _%tl229868230527%_
                             _%e229869230530%_
                             _%hd229870230533%_
                             _%tl229871230535%_
                             _%e229872230538%_
                             _%hd229873230541%_
                             _%tl229874230543%_
                             _%e229875230546%_
                             _%hd229876230549%_
                             _%tl229877230551%_
                             _%e229878230554%_
                             _%hd229879230557%_
                             _%tl229880230559%_
                             _%e229881230562%_
                             _%hd229882230565%_
                             _%tl229883230567%_
                             _%e229884230570%_
                             _%hd229885230573%_
                             _%tl229886230575%_
                             _%e229887230578%_
                             _%hd229888230581%_
                             _%tl229889230583%_
                             _%e229890230586%_
                             _%hd229891230589%_
                             _%tl229892230591%_
                             _%__splice234231234232%_
                             _%target229893230594%_
                             _%tl229895230596%_)
                      (letrec ((_%loop229896230599%_
                                (lambda (_%hd229894230602%_
                                         _%args229900230604%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229894230602%_))
                                      (let ((_%e229897230606%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229894230602%_))))
                                        (let ((_%lp-tl229899230611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229897230606%_)))
                                              (_%lp-hd229898230609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229897230606%_))))
                                          (_%loop229896230599%_
                                           _%lp-tl229899230611%_
                                           (cons _%lp-hd229898230609%_
                                                 _%args229900230604%_))))
                                      (let ((_%args229901230614%_
                                             (reverse _%args229900230604%_)))
                                        (let ((_%g229849230616%_
                                               _%args229901230614%_)
                                              (_%g229850230617%_
                                               _%hd229891230589%_)
                                              (_%g229851230618%_
                                               _%hd229882230565%_)
                                              (_%g229852230619%_
                                               _%hd229873230541%_)
                                              (_%g229853230620%_
                                               _%hd229864230517%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229853230620%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229852230619%_
                                                      'call-method))
                                                   (let ((__tmp235385
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self229795%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g229851230618%_
                                                      __tmp235385)))
                                              (_%__kont234229234230%_
                                               _%g229849230616%_
                                               _%g229850230617%_
                                               _%g229851230618%_
                                               _%g229852230619%_
                                               _%g229853230620%_)
                                              (_%__kont234241234242%_))))))))
                        (_%loop229896230599%_ _%target229893230594%_ '()))))
                   (_%__match234396234397%_
                    (lambda (_%e229854230490%_
                             _%hd229855230493%_
                             _%tl229856230495%_
                             _%e229857230498%_
                             _%hd229858230501%_
                             _%tl229859230503%_
                             _%e229860230506%_
                             _%hd229861230509%_
                             _%tl229862230511%_
                             _%e229863230514%_
                             _%hd229864230517%_
                             _%tl229865230519%_
                             _%e229866230522%_
                             _%hd229867230525%_
                             _%tl229868230527%_
                             _%e229869230530%_
                             _%hd229870230533%_
                             _%tl229871230535%_
                             _%e229872230538%_
                             _%hd229873230541%_
                             _%tl229874230543%_
                             _%e229875230546%_
                             _%hd229876230549%_
                             _%tl229877230551%_
                             _%e229878230554%_
                             _%hd229879230557%_
                             _%tl229880230559%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd229879230557%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229880230559%_))
                              (let ((_%e229881230562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl229880230559%_))))
                                (let ((_%tl229883230567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229881230562%_)))
                                      (_%hd229882230565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229881230562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229883230567%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl229877230551%_))
                                          (let ((_%e229884230570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl229877230551%_))))
                                            (let ((_%tl229886230575%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229884230570%_)))
                                                  (_%hd229885230573%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229884230570%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd229885230573%_))
                                                  (let ((_%e229887230578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd229885230573%_))))
                                                    (let ((_%tl229889230583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229887230578%_)))
                                                          (_%hd229888230581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229887230578%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd229888230581%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd229888230581%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229889230583%_))
                          (let ((_%e229890230586%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229889230583%_))))
                            (let ((_%tl229892230591%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229890230586%_)))
                                  (_%hd229891230589%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229890230586%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229892230591%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229886230575%_))
                                      (let ((_%__splice234231234232%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229886230575%_
                                                '0))))
                                        (let ((_%tl229895230596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234231234232%_
                                                  '1)))
                                              (_%target229893230594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234231234232%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229895230596%_))
                                              (_%__match234438234439%_
                                               _%e229854230490%_
                                               _%hd229855230493%_
                                               _%tl229856230495%_
                                               _%e229857230498%_
                                               _%hd229858230501%_
                                               _%tl229859230503%_
                                               _%e229860230506%_
                                               _%hd229861230509%_
                                               _%tl229862230511%_
                                               _%e229863230514%_
                                               _%hd229864230517%_
                                               _%tl229865230519%_
                                               _%e229866230522%_
                                               _%hd229867230525%_
                                               _%tl229868230527%_
                                               _%e229869230530%_
                                               _%hd229870230533%_
                                               _%tl229871230535%_
                                               _%e229872230538%_
                                               _%hd229873230541%_
                                               _%tl229874230543%_
                                               _%e229875230546%_
                                               _%hd229876230549%_
                                               _%tl229877230551%_
                                               _%e229878230554%_
                                               _%hd229879230557%_
                                               _%tl229880230559%_
                                               _%e229881230562%_
                                               _%hd229882230565%_
                                               _%tl229883230567%_
                                               _%e229884230570%_
                                               _%hd229885230573%_
                                               _%tl229886230575%_
                                               _%e229887230578%_
                                               _%hd229888230581%_
                                               _%tl229889230583%_
                                               _%e229890230586%_
                                               _%hd229891230589%_
                                               _%tl229892230591%_
                                               _%__splice234231234232%_
                                               _%target229893230594%_
                                               _%tl229895230596%_)
                                              (_%__kont234241234242%_))))
                                      (_%__kont234241234242%_))
                                  (_%__kont234241234242%_))))
                          (_%__kont234241234242%_))
                      (_%__kont234241234242%_))
                  (_%__kont234241234242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234241234242%_))))
                                          (_%__match234720234721%_
                                           _%e229854230490%_
                                           _%hd229855230493%_
                                           _%tl229856230495%_
                                           _%e229857230498%_
                                           _%hd229858230501%_
                                           _%tl229859230503%_
                                           _%e229860230506%_
                                           _%hd229861230509%_
                                           _%tl229862230511%_
                                           _%e229863230514%_
                                           _%hd229864230517%_
                                           _%tl229865230519%_
                                           _%e229866230522%_
                                           _%hd229867230525%_
                                           _%tl229868230527%_
                                           _%e229869230530%_
                                           _%hd229870230533%_
                                           _%tl229871230535%_
                                           _%e229872230538%_
                                           _%hd229873230541%_
                                           _%tl229874230543%_
                                           _%e229875230546%_
                                           _%hd229876230549%_
                                           _%tl229877230551%_))
                                      (_%__match234720234721%_
                                       _%e229854230490%_
                                       _%hd229855230493%_
                                       _%tl229856230495%_
                                       _%e229857230498%_
                                       _%hd229858230501%_
                                       _%tl229859230503%_
                                       _%e229860230506%_
                                       _%hd229861230509%_
                                       _%tl229862230511%_
                                       _%e229863230514%_
                                       _%hd229864230517%_
                                       _%tl229865230519%_
                                       _%e229866230522%_
                                       _%hd229867230525%_
                                       _%tl229868230527%_
                                       _%e229869230530%_
                                       _%hd229870230533%_
                                       _%tl229871230535%_
                                       _%e229872230538%_
                                       _%hd229873230541%_
                                       _%tl229874230543%_
                                       _%e229875230546%_
                                       _%hd229876230549%_
                                       _%tl229877230551%_))))
                              (_%__match234720234721%_
                               _%e229854230490%_
                               _%hd229855230493%_
                               _%tl229856230495%_
                               _%e229857230498%_
                               _%hd229858230501%_
                               _%tl229859230503%_
                               _%e229860230506%_
                               _%hd229861230509%_
                               _%tl229862230511%_
                               _%e229863230514%_
                               _%hd229864230517%_
                               _%tl229865230519%_
                               _%e229866230522%_
                               _%hd229867230525%_
                               _%tl229868230527%_
                               _%e229869230530%_
                               _%hd229870230533%_
                               _%tl229871230535%_
                               _%e229872230538%_
                               _%hd229873230541%_
                               _%tl229874230543%_
                               _%e229875230546%_
                               _%hd229876230549%_
                               _%tl229877230551%_))
                          (_%__match234506234507%_
                           _%e229854230490%_
                           _%hd229855230493%_
                           _%tl229856230495%_
                           _%e229857230498%_
                           _%hd229858230501%_
                           _%tl229859230503%_
                           _%e229860230506%_
                           _%hd229861230509%_
                           _%tl229862230511%_
                           _%e229863230514%_
                           _%hd229864230517%_
                           _%tl229865230519%_
                           _%e229866230522%_
                           _%hd229867230525%_
                           _%tl229868230527%_
                           _%e229869230530%_
                           _%hd229870230533%_
                           _%tl229871230535%_
                           _%e229872230538%_
                           _%hd229873230541%_
                           _%tl229874230543%_
                           _%e229875230546%_
                           _%hd229876230549%_
                           _%tl229877230551%_
                           _%e229878230554%_
                           _%hd229879230557%_
                           _%tl229880230559%_))))
                   (_%__match234328234329%_
                    (lambda (_%e229810230677%_
                             _%hd229811230680%_
                             _%tl229812230682%_
                             _%e229813230685%_
                             _%hd229814230688%_
                             _%tl229815230690%_
                             _%e229816230693%_
                             _%hd229817230696%_
                             _%tl229818230698%_
                             _%e229819230701%_
                             _%hd229820230704%_
                             _%tl229821230706%_
                             _%e229822230709%_
                             _%hd229823230712%_
                             _%tl229824230714%_
                             _%e229825230717%_
                             _%hd229826230720%_
                             _%tl229827230722%_
                             _%e229828230725%_
                             _%hd229829230728%_
                             _%tl229830230730%_
                             _%e229831230733%_
                             _%hd229832230736%_
                             _%tl229833230738%_
                             _%e229834230741%_
                             _%hd229835230744%_
                             _%tl229836230746%_
                             _%e229837230749%_
                             _%hd229838230752%_
                             _%tl229839230754%_
                             _%__splice234227234228%_
                             _%target229840230757%_
                             _%tl229842230759%_)
                      (letrec ((_%loop229843230762%_
                                (lambda (_%hd229841230765%_
                                         _%args229847230767%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229841230765%_))
                                      (let ((_%e229844230769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229841230765%_))))
                                        (let ((_%lp-tl229846230774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229844230769%_)))
                                              (_%lp-hd229845230772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229844230769%_))))
                                          (_%loop229843230762%_
                                           _%lp-tl229846230774%_
                                           (cons _%lp-hd229845230772%_
                                                 _%args229847230767%_))))
                                      (let ((_%args229848230777%_
                                             (reverse _%args229847230767%_)))
                                        (let ((_%g229806230779%_
                                               _%args229848230777%_)
                                              (_%g229807230780%_
                                               _%hd229838230752%_)
                                              (_%g229808230781%_
                                               _%hd229829230728%_)
                                              (_%g229809230782%_
                                               _%hd229820230704%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229809230782%_
                                                      'call-method))
                                                   (let ((__tmp235386
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self229795%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g229808230781%_
                                                      __tmp235386)))
                                              (_%__kont234225234226%_
                                               _%g229806230779%_
                                               _%g229807230780%_
                                               _%g229808230781%_
                                               _%g229809230782%_)
                                              (_%__match234516234517%_
                                               _%e229810230677%_
                                               _%hd229811230680%_
                                               _%tl229812230682%_
                                               _%e229813230685%_
                                               _%hd229814230688%_
                                               _%tl229815230690%_
                                               _%e229816230693%_
                                               _%hd229817230696%_
                                               _%tl229818230698%_
                                               _%e229819230701%_
                                               _%hd229820230704%_
                                               _%tl229821230706%_
                                               _%e229822230709%_
                                               _%hd229823230712%_
                                               _%tl229824230714%_
                                               _%e229825230717%_
                                               _%hd229826230720%_
                                               _%tl229827230722%_
                                               _%e229828230725%_
                                               _%hd229829230728%_
                                               _%tl229830230730%_
                                               _%e229831230733%_
                                               _%hd229832230736%_
                                               _%tl229833230738%_
                                               _%e229834230741%_
                                               _%hd229835230744%_
                                               _%tl229836230746%_
                                               _%e229837230749%_
                                               _%hd229838230752%_
                                               _%tl229839230754%_))))))))
                        (_%loop229843230762%_ _%target229840230757%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx234223234224%_))
                  (let ((_%e229810230677%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx234223234224%_))))
                    (let ((_%tl229812230682%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229810230677%_)))
                          (_%hd229811230680%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229810230677%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229812230682%_))
                          (let ((_%e229813230685%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229812230682%_))))
                            (let ((_%tl229815230690%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229813230685%_)))
                                  (_%hd229814230688%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229813230685%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd229814230688%_))
                                  (let ((_%e229816230693%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd229814230688%_))))
                                    (let ((_%tl229818230698%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229816230693%_)))
                                          (_%hd229817230696%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229816230693%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd229817230696%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd229817230696%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229818230698%_))
                                                  (let ((_%e229819230701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl229818230698%_))))
                                                    (let ((_%tl229821230706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229819230701%_)))
                                                          (_%hd229820230704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229819230701%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229821230706%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl229815230690%_))
                      (let ((_%e229822230709%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl229815230690%_))))
                        (let ((_%tl229824230714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229822230709%_)))
                              (_%hd229823230712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229822230709%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229823230712%_))
                              (let ((_%e229825230717%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd229823230712%_))))
                                (let ((_%tl229827230722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229825230717%_)))
                                      (_%hd229826230720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229825230717%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229826230720%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd229826230720%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229827230722%_))
                                              (let ((_%e229828230725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl229827230722%_))))
                                                (let ((_%tl229830230730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229828230725%_)))
                                                      (_%hd229829230728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229828230725%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229830230730%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229824230714%_))
                                                          (let ((_%e229831230733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl229824230714%_))))
                    (let ((_%tl229833230738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229831230733%_)))
                          (_%hd229832230736%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229831230733%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd229832230736%_))
                          (let ((_%e229834230741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229832230736%_))))
                            (let ((_%tl229836230746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229834230741%_)))
                                  (_%hd229835230744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229834230741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd229835230744%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd229835230744%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl229836230746%_))
                                          (let ((_%e229837230749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl229836230746%_))))
                                            (let ((_%tl229839230754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229837230749%_)))
                                                  (_%hd229838230752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229837230749%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl229839230754%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229833230738%_))
                                                      (let ((_%__splice234227234228%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229833230738%_
                        '0))))
                (let ((_%tl229842230759%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234227234228%_ '1)))
                      (_%target229840230757%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234227234228%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229842230759%_))
                      (_%__match234328234329%_
                       _%e229810230677%_
                       _%hd229811230680%_
                       _%tl229812230682%_
                       _%e229813230685%_
                       _%hd229814230688%_
                       _%tl229815230690%_
                       _%e229816230693%_
                       _%hd229817230696%_
                       _%tl229818230698%_
                       _%e229819230701%_
                       _%hd229820230704%_
                       _%tl229821230706%_
                       _%e229822230709%_
                       _%hd229823230712%_
                       _%tl229824230714%_
                       _%e229825230717%_
                       _%hd229826230720%_
                       _%tl229827230722%_
                       _%e229828230725%_
                       _%hd229829230728%_
                       _%tl229830230730%_
                       _%e229831230733%_
                       _%hd229832230736%_
                       _%tl229833230738%_
                       _%e229834230741%_
                       _%hd229835230744%_
                       _%tl229836230746%_
                       _%e229837230749%_
                       _%hd229838230752%_
                       _%tl229839230754%_
                       _%__splice234227234228%_
                       _%target229840230757%_
                       _%tl229842230759%_)
                      (_%__match234516234517%_
                       _%e229810230677%_
                       _%hd229811230680%_
                       _%tl229812230682%_
                       _%e229813230685%_
                       _%hd229814230688%_
                       _%tl229815230690%_
                       _%e229816230693%_
                       _%hd229817230696%_
                       _%tl229818230698%_
                       _%e229819230701%_
                       _%hd229820230704%_
                       _%tl229821230706%_
                       _%e229822230709%_
                       _%hd229823230712%_
                       _%tl229824230714%_
                       _%e229825230717%_
                       _%hd229826230720%_
                       _%tl229827230722%_
                       _%e229828230725%_
                       _%hd229829230728%_
                       _%tl229830230730%_
                       _%e229831230733%_
                       _%hd229832230736%_
                       _%tl229833230738%_
                       _%e229834230741%_
                       _%hd229835230744%_
                       _%tl229836230746%_
                       _%e229837230749%_
                       _%hd229838230752%_
                       _%tl229839230754%_))))
              (_%__match234516234517%_
               _%e229810230677%_
               _%hd229811230680%_
               _%tl229812230682%_
               _%e229813230685%_
               _%hd229814230688%_
               _%tl229815230690%_
               _%e229816230693%_
               _%hd229817230696%_
               _%tl229818230698%_
               _%e229819230701%_
               _%hd229820230704%_
               _%tl229821230706%_
               _%e229822230709%_
               _%hd229823230712%_
               _%tl229824230714%_
               _%e229825230717%_
               _%hd229826230720%_
               _%tl229827230722%_
               _%e229828230725%_
               _%hd229829230728%_
               _%tl229830230730%_
               _%e229831230733%_
               _%hd229832230736%_
               _%tl229833230738%_
               _%e229834230741%_
               _%hd229835230744%_
               _%tl229836230746%_
               _%e229837230749%_
               _%hd229838230752%_
               _%tl229839230754%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match234720234721%_
                                                   _%e229810230677%_
                                                   _%hd229811230680%_
                                                   _%tl229812230682%_
                                                   _%e229813230685%_
                                                   _%hd229814230688%_
                                                   _%tl229815230690%_
                                                   _%e229816230693%_
                                                   _%hd229817230696%_
                                                   _%tl229818230698%_
                                                   _%e229819230701%_
                                                   _%hd229820230704%_
                                                   _%tl229821230706%_
                                                   _%e229822230709%_
                                                   _%hd229823230712%_
                                                   _%tl229824230714%_
                                                   _%e229825230717%_
                                                   _%hd229826230720%_
                                                   _%tl229827230722%_
                                                   _%e229828230725%_
                                                   _%hd229829230728%_
                                                   _%tl229830230730%_
                                                   _%e229831230733%_
                                                   _%hd229832230736%_
                                                   _%tl229833230738%_))))
                                          (_%__match234720234721%_
                                           _%e229810230677%_
                                           _%hd229811230680%_
                                           _%tl229812230682%_
                                           _%e229813230685%_
                                           _%hd229814230688%_
                                           _%tl229815230690%_
                                           _%e229816230693%_
                                           _%hd229817230696%_
                                           _%tl229818230698%_
                                           _%e229819230701%_
                                           _%hd229820230704%_
                                           _%tl229821230706%_
                                           _%e229822230709%_
                                           _%hd229823230712%_
                                           _%tl229824230714%_
                                           _%e229825230717%_
                                           _%hd229826230720%_
                                           _%tl229827230722%_
                                           _%e229828230725%_
                                           _%hd229829230728%_
                                           _%tl229830230730%_
                                           _%e229831230733%_
                                           _%hd229832230736%_
                                           _%tl229833230738%_))
                                      (_%__match234396234397%_
                                       _%e229810230677%_
                                       _%hd229811230680%_
                                       _%tl229812230682%_
                                       _%e229813230685%_
                                       _%hd229814230688%_
                                       _%tl229815230690%_
                                       _%e229816230693%_
                                       _%hd229817230696%_
                                       _%tl229818230698%_
                                       _%e229819230701%_
                                       _%hd229820230704%_
                                       _%tl229821230706%_
                                       _%e229822230709%_
                                       _%hd229823230712%_
                                       _%tl229824230714%_
                                       _%e229825230717%_
                                       _%hd229826230720%_
                                       _%tl229827230722%_
                                       _%e229828230725%_
                                       _%hd229829230728%_
                                       _%tl229830230730%_
                                       _%e229831230733%_
                                       _%hd229832230736%_
                                       _%tl229833230738%_
                                       _%e229834230741%_
                                       _%hd229835230744%_
                                       _%tl229836230746%_))
                                  (_%__match234720234721%_
                                   _%e229810230677%_
                                   _%hd229811230680%_
                                   _%tl229812230682%_
                                   _%e229813230685%_
                                   _%hd229814230688%_
                                   _%tl229815230690%_
                                   _%e229816230693%_
                                   _%hd229817230696%_
                                   _%tl229818230698%_
                                   _%e229819230701%_
                                   _%hd229820230704%_
                                   _%tl229821230706%_
                                   _%e229822230709%_
                                   _%hd229823230712%_
                                   _%tl229824230714%_
                                   _%e229825230717%_
                                   _%hd229826230720%_
                                   _%tl229827230722%_
                                   _%e229828230725%_
                                   _%hd229829230728%_
                                   _%tl229830230730%_
                                   _%e229831230733%_
                                   _%hd229832230736%_
                                   _%tl229833230738%_))))
                          (_%__match234720234721%_
                           _%e229810230677%_
                           _%hd229811230680%_
                           _%tl229812230682%_
                           _%e229813230685%_
                           _%hd229814230688%_
                           _%tl229815230690%_
                           _%e229816230693%_
                           _%hd229817230696%_
                           _%tl229818230698%_
                           _%e229819230701%_
                           _%hd229820230704%_
                           _%tl229821230706%_
                           _%e229822230709%_
                           _%hd229823230712%_
                           _%tl229824230714%_
                           _%e229825230717%_
                           _%hd229826230720%_
                           _%tl229827230722%_
                           _%e229828230725%_
                           _%hd229829230728%_
                           _%tl229830230730%_
                           _%e229831230733%_
                           _%hd229832230736%_
                           _%tl229833230738%_))))
                  (_%__match234658234659%_
                   _%e229810230677%_
                   _%hd229811230680%_
                   _%tl229812230682%_
                   _%e229813230685%_
                   _%hd229814230688%_
                   _%tl229815230690%_
                   _%e229816230693%_
                   _%hd229817230696%_
                   _%tl229818230698%_
                   _%e229819230701%_
                   _%hd229820230704%_
                   _%tl229821230706%_
                   _%e229822230709%_
                   _%hd229823230712%_
                   _%tl229824230714%_
                   _%e229825230717%_
                   _%hd229826230720%_
                   _%tl229827230722%_
                   _%e229828230725%_
                   _%hd229829230728%_
                   _%tl229830230730%_))
              (_%__kont234241234242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont234241234242%_))
                                          (_%__kont234241234242%_))
                                      (_%__kont234241234242%_))))
                              (_%__kont234241234242%_))))
                      (_%__kont234241234242%_))
                  (_%__kont234241234242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234241234242%_))
                                              (_%__kont234241234242%_))
                                          (_%__kont234241234242%_))))
                                  (_%__kont234241234242%_))))
                          (_%__kont234241234242%_))))
                  (_%__kont234241234242%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self228738%_ _%stx228739%_)
        (letrec ((_%force-e228741%_
                  (lambda (_%target229793%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target229793%_ '()))
                                      '()))))))
          (let* ((_%__stx234725234726%_ _%stx228739%_)
                 (_%g228749228971%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234725234726%_)))))
            (let ((_%__kont234727234728%_
                   (lambda (_%g228751229739%_
                            _%g228752229740%_
                            _%g228753229741%_
                            _%g228754229742%_)
                     (let ((_%$method229787%_
                            (let ((__tmp235388
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228738%_ 'methods)))
                                  (__tmp235387
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228752229740%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235388 __tmp235387)))
                           (_%args229788%_
                            (map (lambda (_%g229775229777%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self228738%_
                                      _%g229775229777%_)))
                                 (let ((__tmp235389
                                        (lambda (_%g229779229782%_
                                                 _%g229780229784%_)
                                          (cons _%g229779229782%_
                                                _%g229780229784%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235389
                                    '()
                                    _%g228751229739%_)))))
                       (let ((__tmp235390
                              (cons '%#call
                                    (cons (_%force-e228741%_ _%$method229787%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228738%_
                                                               'receiver))
                                                            '()))
                                                _%args229788%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235390 _%stx228739%_)))))
                  (_%__kont234731234732%_
                   (lambda (_%g228794229573%_
                            _%g228795229574%_
                            _%g228796229575%_
                            _%g228797229576%_
                            _%g228798229577%_)
                     (let ((_%$method229629%_
                            (let ((__tmp235392
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228738%_ 'methods)))
                                  (__tmp235391
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228795229574%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235392 __tmp235391)))
                           (_%args229630%_
                            (map (lambda (_%g229617229619%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self228738%_
                                      _%g229617229619%_)))
                                 (let ((__tmp235393
                                        (lambda (_%g229621229624%_
                                                 _%g229622229626%_)
                                          (cons _%g229621229624%_
                                                _%g229622229626%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235393
                                    '()
                                    _%g228794229573%_)))))
                       (let ((__tmp235394
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e228741%_
                                                 _%$method229629%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self228738%_ 'receiver))
                          '()))
              _%args229630%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235394 _%stx228739%_)))))
                  (_%__kont234735234736%_
                   (lambda (_%g228847229406%_
                            _%g228848229407%_
                            _%g228849229408%_)
                     (let* ((_%$field229440%_
                             (let ((__tmp235396
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self228738%_ 'slots)))
                                   (__tmp235395
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g228847229406%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp235396 __tmp235395)))
                            (__tmp235397
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self228738%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field229440%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self228738%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp235397 _%stx228739%_))))
                  (_%__kont234737234738%_
                   (lambda (_%g228880229280%_
                            _%g228881229281%_
                            _%g228882229282%_
                            _%g228883229283%_)
                     (let ((_%$field229318%_
                            (let ((__tmp235399
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228738%_ 'slots)))
                                  (__tmp235398
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228881229281%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235399 __tmp235398)))
                           (_%expr229319%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self228738%_
                               _%g228880229280%_))))
                       (let ((__tmp235400
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self228738%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field229318%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self228738%_ 'receiver))
                          '()))
              (cons _%expr229319%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235400 _%stx228739%_)))))
                  (_%__kont234739234740%_
                   (lambda (_%g228917229152%_ _%g228918229153%_)
                     (let* ((_%accessor229175%_
                             (let ((__tmp235401
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228918229153%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235401)))
                            (_%klass229177%_
                             (let ((__tmp235402
                                    (##structure-ref
                                     _%accessor229175%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx228739%_
                                __tmp235402)))
                            (_%slot229179%_
                             (##structure-ref
                              _%accessor229175%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor229175%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229177%_
                                      _%slot229179%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229177%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx228739%_
                           (let* ((_%$field229185%_
                                   (let ((__tmp235403
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228738%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235403 _%slot229179%_)))
                                  (__tmp235404
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self228738%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self228738%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235404
                              _%stx228739%_))))))
                  (_%__kont234741234742%_
                   (lambda (_%g228940229047%_
                            _%g228941229048%_
                            _%g228942229049%_)
                     (let* ((_%mutator229077%_
                             (let ((__tmp235405
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228942229049%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235405)))
                            (_%klass229079%_
                             (let ((__tmp235406
                                    (##structure-ref
                                     _%mutator229077%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx228739%_
                                __tmp235406)))
                            (_%slot229081%_
                             (##structure-ref
                              _%mutator229077%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr229083%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self228738%_
                                _%g228940229047%_))))
                       (if (if (##structure-ref
                                _%mutator229077%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229079%_
                                      _%slot229081%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229079%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp235407
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g228942229049%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g228941229048%_
                                                                '()))
                                                    (cons _%expr229083%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp235407 _%stx228739%_))
                           (let* ((_%$field229089%_
                                   (let ((__tmp235408
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228738%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235408 _%slot229081%_)))
                                  (__tmp235409
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self228738%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self228738%_ 'receiver))
                               '()))
                   (cons _%expr229083%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235409
                              _%stx228739%_))))))
                  (_%__kont234743234744%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self228738%_ _%stx228739%_)))))
              (let* ((_%__match235224235225%_
                      (lambda (_%e228943228983%_
                               _%hd228944228986%_
                               _%tl228945228988%_
                               _%e228946228991%_
                               _%hd228947228994%_
                               _%tl228948228996%_
                               _%e228949228999%_
                               _%hd228950229002%_
                               _%tl228951229004%_
                               _%e228952229007%_
                               _%hd228953229010%_
                               _%tl228954229012%_
                               _%e228955229015%_
                               _%hd228956229018%_
                               _%tl228957229020%_
                               _%e228958229023%_
                               _%hd228959229026%_
                               _%tl228960229028%_
                               _%e228961229031%_
                               _%hd228962229034%_
                               _%tl228963229036%_
                               _%e228964229039%_
                               _%hd228965229042%_
                               _%tl228966229044%_)
                        (let ((_%g228940229047%_ _%hd228965229042%_)
                              (_%g228941229048%_ _%hd228962229034%_)
                              (_%g228942229049%_ _%hd228953229010%_))
                          (if (and (let ((__tmp235410
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228738%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228941229048%_
                                      __tmp235410))
                                   (let ((__tmp235411
                                          (let ((__tmp235412
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g228942229049%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235412))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235411
                                      'gxc#!mutator::t)))
                              (_%__kont234741234742%_
                               _%g228940229047%_
                               _%g228941229048%_
                               _%g228942229049%_)
                              (_%__kont234743234744%_)))))
                     (_%__match235222235223%_
                      (lambda (_%e228943228983%_
                               _%hd228944228986%_
                               _%tl228945228988%_
                               _%e228946228991%_
                               _%hd228947228994%_
                               _%tl228948228996%_
                               _%e228949228999%_
                               _%hd228950229002%_
                               _%tl228951229004%_
                               _%e228952229007%_
                               _%hd228953229010%_
                               _%tl228954229012%_
                               _%e228955229015%_
                               _%hd228956229018%_
                               _%tl228957229020%_
                               _%e228958229023%_
                               _%hd228959229026%_
                               _%tl228960229028%_
                               _%e228961229031%_
                               _%hd228962229034%_
                               _%tl228963229036%_
                               _%e228964229039%_
                               _%hd228965229042%_
                               _%tl228966229044%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228966229044%_))
                            (_%__match235224235225%_
                             _%e228943228983%_
                             _%hd228944228986%_
                             _%tl228945228988%_
                             _%e228946228991%_
                             _%hd228947228994%_
                             _%tl228948228996%_
                             _%e228949228999%_
                             _%hd228950229002%_
                             _%tl228951229004%_
                             _%e228952229007%_
                             _%hd228953229010%_
                             _%tl228954229012%_
                             _%e228955229015%_
                             _%hd228956229018%_
                             _%tl228957229020%_
                             _%e228958229023%_
                             _%hd228959229026%_
                             _%tl228960229028%_
                             _%e228961229031%_
                             _%hd228962229034%_
                             _%tl228963229036%_
                             _%e228964229039%_
                             _%hd228965229042%_
                             _%tl228966229044%_)
                            (_%__kont234743234744%_))))
                     (_%__match235216235217%_
                      (lambda (_%e228943228983%_
                               _%hd228944228986%_
                               _%tl228945228988%_
                               _%e228946228991%_
                               _%hd228947228994%_
                               _%tl228948228996%_
                               _%e228949228999%_
                               _%hd228950229002%_
                               _%tl228951229004%_
                               _%e228952229007%_
                               _%hd228953229010%_
                               _%tl228954229012%_
                               _%e228955229015%_
                               _%hd228956229018%_
                               _%tl228957229020%_
                               _%e228958229023%_
                               _%hd228959229026%_
                               _%tl228960229028%_
                               _%e228961229031%_
                               _%hd228962229034%_
                               _%tl228963229036%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228957229020%_))
                            (let ((_%e228964229039%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228957229020%_))))
                              (let ((_%tl228966229044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228964229039%_)))
                                    (_%hd228965229042%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228964229039%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228966229044%_))
                                    (_%__match235224235225%_
                                     _%e228943228983%_
                                     _%hd228944228986%_
                                     _%tl228945228988%_
                                     _%e228946228991%_
                                     _%hd228947228994%_
                                     _%tl228948228996%_
                                     _%e228949228999%_
                                     _%hd228950229002%_
                                     _%tl228951229004%_
                                     _%e228952229007%_
                                     _%hd228953229010%_
                                     _%tl228954229012%_
                                     _%e228955229015%_
                                     _%hd228956229018%_
                                     _%tl228957229020%_
                                     _%e228958229023%_
                                     _%hd228959229026%_
                                     _%tl228960229028%_
                                     _%e228961229031%_
                                     _%hd228962229034%_
                                     _%tl228963229036%_
                                     _%e228964229039%_
                                     _%hd228965229042%_
                                     _%tl228966229044%_)
                                    (_%__kont234743234744%_))))
                            (_%__kont234743234744%_))))
                     (_%__match235162235163%_
                      (lambda (_%e228919229096%_
                               _%hd228920229099%_
                               _%tl228921229101%_
                               _%e228922229104%_
                               _%hd228923229107%_
                               _%tl228924229109%_
                               _%e228925229112%_
                               _%hd228926229115%_
                               _%tl228927229117%_
                               _%e228928229120%_
                               _%hd228929229123%_
                               _%tl228930229125%_
                               _%e228931229128%_
                               _%hd228932229131%_
                               _%tl228933229133%_
                               _%e228934229136%_
                               _%hd228935229139%_
                               _%tl228936229141%_
                               _%e228937229144%_
                               _%hd228938229147%_
                               _%tl228939229149%_)
                        (let ((_%g228917229152%_ _%hd228938229147%_)
                              (_%g228918229153%_ _%hd228929229123%_))
                          (if (and (let ((__tmp235413
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228738%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228917229152%_
                                      __tmp235413))
                                   (let ((__tmp235414
                                          (let ((__tmp235415
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g228918229153%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235415))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235414
                                      'gxc#!accessor::t)))
                              (_%__kont234739234740%_
                               _%g228917229152%_
                               _%g228918229153%_)
                              (_%__kont234743234744%_)))))
                     (_%__match235160235161%_
                      (lambda (_%e228919229096%_
                               _%hd228920229099%_
                               _%tl228921229101%_
                               _%e228922229104%_
                               _%hd228923229107%_
                               _%tl228924229109%_
                               _%e228925229112%_
                               _%hd228926229115%_
                               _%tl228927229117%_
                               _%e228928229120%_
                               _%hd228929229123%_
                               _%tl228930229125%_
                               _%e228931229128%_
                               _%hd228932229131%_
                               _%tl228933229133%_
                               _%e228934229136%_
                               _%hd228935229139%_
                               _%tl228936229141%_
                               _%e228937229144%_
                               _%hd228938229147%_
                               _%tl228939229149%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228933229133%_))
                            (_%__match235162235163%_
                             _%e228919229096%_
                             _%hd228920229099%_
                             _%tl228921229101%_
                             _%e228922229104%_
                             _%hd228923229107%_
                             _%tl228924229109%_
                             _%e228925229112%_
                             _%hd228926229115%_
                             _%tl228927229117%_
                             _%e228928229120%_
                             _%hd228929229123%_
                             _%tl228930229125%_
                             _%e228931229128%_
                             _%hd228932229131%_
                             _%tl228933229133%_
                             _%e228934229136%_
                             _%hd228935229139%_
                             _%tl228936229141%_
                             _%e228937229144%_
                             _%hd228938229147%_
                             _%tl228939229149%_)
                            (_%__match235216235217%_
                             _%e228919229096%_
                             _%hd228920229099%_
                             _%tl228921229101%_
                             _%e228922229104%_
                             _%hd228923229107%_
                             _%tl228924229109%_
                             _%e228925229112%_
                             _%hd228926229115%_
                             _%tl228927229117%_
                             _%e228928229120%_
                             _%hd228929229123%_
                             _%tl228930229125%_
                             _%e228931229128%_
                             _%hd228932229131%_
                             _%tl228933229133%_
                             _%e228934229136%_
                             _%hd228935229139%_
                             _%tl228936229141%_
                             _%e228937229144%_
                             _%hd228938229147%_
                             _%tl228939229149%_))))
                     (_%__match235106235107%_
                      (lambda (_%e228884229192%_
                               _%hd228885229195%_
                               _%tl228886229197%_
                               _%e228887229200%_
                               _%hd228888229203%_
                               _%tl228889229205%_
                               _%e228890229208%_
                               _%hd228891229211%_
                               _%tl228892229213%_
                               _%e228893229216%_
                               _%hd228894229219%_
                               _%tl228895229221%_
                               _%e228896229224%_
                               _%hd228897229227%_
                               _%tl228898229229%_
                               _%e228899229232%_
                               _%hd228900229235%_
                               _%tl228901229237%_
                               _%e228902229240%_
                               _%hd228903229243%_
                               _%tl228904229245%_
                               _%e228905229248%_
                               _%hd228906229251%_
                               _%tl228907229253%_
                               _%e228908229256%_
                               _%hd228909229259%_
                               _%tl228910229261%_
                               _%e228911229264%_
                               _%hd228912229267%_
                               _%tl228913229269%_
                               _%e228914229272%_
                               _%hd228915229275%_
                               _%tl228916229277%_)
                        (let ((_%g228880229280%_ _%hd228915229275%_)
                              (_%g228881229281%_ _%hd228912229267%_)
                              (_%g228882229282%_ _%hd228903229243%_)
                              (_%g228883229283%_ _%hd228894229219%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228883229283%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228883229283%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp235416
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228738%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228882229282%_
                                      __tmp235416)))
                              (_%__kont234737234738%_
                               _%g228880229280%_
                               _%g228881229281%_
                               _%g228882229282%_
                               _%g228883229283%_)
                              (_%__kont234743234744%_)))))
                     (_%__match235098235099%_
                      (lambda (_%e228884229192%_
                               _%hd228885229195%_
                               _%tl228886229197%_
                               _%e228887229200%_
                               _%hd228888229203%_
                               _%tl228889229205%_
                               _%e228890229208%_
                               _%hd228891229211%_
                               _%tl228892229213%_
                               _%e228893229216%_
                               _%hd228894229219%_
                               _%tl228895229221%_
                               _%e228896229224%_
                               _%hd228897229227%_
                               _%tl228898229229%_
                               _%e228899229232%_
                               _%hd228900229235%_
                               _%tl228901229237%_
                               _%e228902229240%_
                               _%hd228903229243%_
                               _%tl228904229245%_
                               _%e228905229248%_
                               _%hd228906229251%_
                               _%tl228907229253%_
                               _%e228908229256%_
                               _%hd228909229259%_
                               _%tl228910229261%_
                               _%e228911229264%_
                               _%hd228912229267%_
                               _%tl228913229269%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228907229253%_))
                            (let ((_%e228914229272%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228907229253%_))))
                              (let ((_%tl228916229277%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228914229272%_)))
                                    (_%hd228915229275%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228914229272%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228916229277%_))
                                    (_%__match235106235107%_
                                     _%e228884229192%_
                                     _%hd228885229195%_
                                     _%tl228886229197%_
                                     _%e228887229200%_
                                     _%hd228888229203%_
                                     _%tl228889229205%_
                                     _%e228890229208%_
                                     _%hd228891229211%_
                                     _%tl228892229213%_
                                     _%e228893229216%_
                                     _%hd228894229219%_
                                     _%tl228895229221%_
                                     _%e228896229224%_
                                     _%hd228897229227%_
                                     _%tl228898229229%_
                                     _%e228899229232%_
                                     _%hd228900229235%_
                                     _%tl228901229237%_
                                     _%e228902229240%_
                                     _%hd228903229243%_
                                     _%tl228904229245%_
                                     _%e228905229248%_
                                     _%hd228906229251%_
                                     _%tl228907229253%_
                                     _%e228908229256%_
                                     _%hd228909229259%_
                                     _%tl228910229261%_
                                     _%e228911229264%_
                                     _%hd228912229267%_
                                     _%tl228913229269%_
                                     _%e228914229272%_
                                     _%hd228915229275%_
                                     _%tl228916229277%_)
                                    (_%__kont234743234744%_))))
                            (_%__match235222235223%_
                             _%e228884229192%_
                             _%hd228885229195%_
                             _%tl228886229197%_
                             _%e228887229200%_
                             _%hd228888229203%_
                             _%tl228889229205%_
                             _%e228890229208%_
                             _%hd228891229211%_
                             _%tl228892229213%_
                             _%e228893229216%_
                             _%hd228894229219%_
                             _%tl228895229221%_
                             _%e228896229224%_
                             _%hd228897229227%_
                             _%tl228898229229%_
                             _%e228899229232%_
                             _%hd228900229235%_
                             _%tl228901229237%_
                             _%e228902229240%_
                             _%hd228903229243%_
                             _%tl228904229245%_
                             _%e228905229248%_
                             _%hd228906229251%_
                             _%tl228907229253%_))))
                     (_%__match235020235021%_
                      (lambda (_%e228850229326%_
                               _%hd228851229329%_
                               _%tl228852229331%_
                               _%e228853229334%_
                               _%hd228854229337%_
                               _%tl228855229339%_
                               _%e228856229342%_
                               _%hd228857229345%_
                               _%tl228858229347%_
                               _%e228859229350%_
                               _%hd228860229353%_
                               _%tl228861229355%_
                               _%e228862229358%_
                               _%hd228863229361%_
                               _%tl228864229363%_
                               _%e228865229366%_
                               _%hd228866229369%_
                               _%tl228867229371%_
                               _%e228868229374%_
                               _%hd228869229377%_
                               _%tl228870229379%_
                               _%e228871229382%_
                               _%hd228872229385%_
                               _%tl228873229387%_
                               _%e228874229390%_
                               _%hd228875229393%_
                               _%tl228876229395%_
                               _%e228877229398%_
                               _%hd228878229401%_
                               _%tl228879229403%_)
                        (let ((_%g228847229406%_ _%hd228878229401%_)
                              (_%g228848229407%_ _%hd228869229377%_)
                              (_%g228849229408%_ _%hd228860229353%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228849229408%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228849229408%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp235417
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228738%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228848229407%_
                                      __tmp235417)))
                              (_%__kont234735234736%_
                               _%g228847229406%_
                               _%g228848229407%_
                               _%g228849229408%_)
                              (_%__match235224235225%_
                               _%e228850229326%_
                               _%hd228851229329%_
                               _%tl228852229331%_
                               _%e228853229334%_
                               _%hd228854229337%_
                               _%tl228855229339%_
                               _%e228856229342%_
                               _%hd228857229345%_
                               _%tl228858229347%_
                               _%e228859229350%_
                               _%hd228860229353%_
                               _%tl228861229355%_
                               _%e228862229358%_
                               _%hd228863229361%_
                               _%tl228864229363%_
                               _%e228865229366%_
                               _%hd228866229369%_
                               _%tl228867229371%_
                               _%e228868229374%_
                               _%hd228869229377%_
                               _%tl228870229379%_
                               _%e228871229382%_
                               _%hd228872229385%_
                               _%tl228873229387%_)))))
                     (_%__match235018235019%_
                      (lambda (_%e228850229326%_
                               _%hd228851229329%_
                               _%tl228852229331%_
                               _%e228853229334%_
                               _%hd228854229337%_
                               _%tl228855229339%_
                               _%e228856229342%_
                               _%hd228857229345%_
                               _%tl228858229347%_
                               _%e228859229350%_
                               _%hd228860229353%_
                               _%tl228861229355%_
                               _%e228862229358%_
                               _%hd228863229361%_
                               _%tl228864229363%_
                               _%e228865229366%_
                               _%hd228866229369%_
                               _%tl228867229371%_
                               _%e228868229374%_
                               _%hd228869229377%_
                               _%tl228870229379%_
                               _%e228871229382%_
                               _%hd228872229385%_
                               _%tl228873229387%_
                               _%e228874229390%_
                               _%hd228875229393%_
                               _%tl228876229395%_
                               _%e228877229398%_
                               _%hd228878229401%_
                               _%tl228879229403%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228873229387%_))
                            (_%__match235020235021%_
                             _%e228850229326%_
                             _%hd228851229329%_
                             _%tl228852229331%_
                             _%e228853229334%_
                             _%hd228854229337%_
                             _%tl228855229339%_
                             _%e228856229342%_
                             _%hd228857229345%_
                             _%tl228858229347%_
                             _%e228859229350%_
                             _%hd228860229353%_
                             _%tl228861229355%_
                             _%e228862229358%_
                             _%hd228863229361%_
                             _%tl228864229363%_
                             _%e228865229366%_
                             _%hd228866229369%_
                             _%tl228867229371%_
                             _%e228868229374%_
                             _%hd228869229377%_
                             _%tl228870229379%_
                             _%e228871229382%_
                             _%hd228872229385%_
                             _%tl228873229387%_
                             _%e228874229390%_
                             _%hd228875229393%_
                             _%tl228876229395%_
                             _%e228877229398%_
                             _%hd228878229401%_
                             _%tl228879229403%_)
                            (_%__match235098235099%_
                             _%e228850229326%_
                             _%hd228851229329%_
                             _%tl228852229331%_
                             _%e228853229334%_
                             _%hd228854229337%_
                             _%tl228855229339%_
                             _%e228856229342%_
                             _%hd228857229345%_
                             _%tl228858229347%_
                             _%e228859229350%_
                             _%hd228860229353%_
                             _%tl228861229355%_
                             _%e228862229358%_
                             _%hd228863229361%_
                             _%tl228864229363%_
                             _%e228865229366%_
                             _%hd228866229369%_
                             _%tl228867229371%_
                             _%e228868229374%_
                             _%hd228869229377%_
                             _%tl228870229379%_
                             _%e228871229382%_
                             _%hd228872229385%_
                             _%tl228873229387%_
                             _%e228874229390%_
                             _%hd228875229393%_
                             _%tl228876229395%_
                             _%e228877229398%_
                             _%hd228878229401%_
                             _%tl228879229403%_))))
                     (_%__match235008235009%_
                      (lambda (_%e228850229326%_
                               _%hd228851229329%_
                               _%tl228852229331%_
                               _%e228853229334%_
                               _%hd228854229337%_
                               _%tl228855229339%_
                               _%e228856229342%_
                               _%hd228857229345%_
                               _%tl228858229347%_
                               _%e228859229350%_
                               _%hd228860229353%_
                               _%tl228861229355%_
                               _%e228862229358%_
                               _%hd228863229361%_
                               _%tl228864229363%_
                               _%e228865229366%_
                               _%hd228866229369%_
                               _%tl228867229371%_
                               _%e228868229374%_
                               _%hd228869229377%_
                               _%tl228870229379%_
                               _%e228871229382%_
                               _%hd228872229385%_
                               _%tl228873229387%_
                               _%e228874229390%_
                               _%hd228875229393%_
                               _%tl228876229395%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd228875229393%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228876229395%_))
                                (let ((_%e228877229398%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl228876229395%_))))
                                  (let ((_%tl228879229403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228877229398%_)))
                                        (_%hd228878229401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228877229398%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228879229403%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228873229387%_))
                                            (_%__match235020235021%_
                                             _%e228850229326%_
                                             _%hd228851229329%_
                                             _%tl228852229331%_
                                             _%e228853229334%_
                                             _%hd228854229337%_
                                             _%tl228855229339%_
                                             _%e228856229342%_
                                             _%hd228857229345%_
                                             _%tl228858229347%_
                                             _%e228859229350%_
                                             _%hd228860229353%_
                                             _%tl228861229355%_
                                             _%e228862229358%_
                                             _%hd228863229361%_
                                             _%tl228864229363%_
                                             _%e228865229366%_
                                             _%hd228866229369%_
                                             _%tl228867229371%_
                                             _%e228868229374%_
                                             _%hd228869229377%_
                                             _%tl228870229379%_
                                             _%e228871229382%_
                                             _%hd228872229385%_
                                             _%tl228873229387%_
                                             _%e228874229390%_
                                             _%hd228875229393%_
                                             _%tl228876229395%_
                                             _%e228877229398%_
                                             _%hd228878229401%_
                                             _%tl228879229403%_)
                                            (_%__match235098235099%_
                                             _%e228850229326%_
                                             _%hd228851229329%_
                                             _%tl228852229331%_
                                             _%e228853229334%_
                                             _%hd228854229337%_
                                             _%tl228855229339%_
                                             _%e228856229342%_
                                             _%hd228857229345%_
                                             _%tl228858229347%_
                                             _%e228859229350%_
                                             _%hd228860229353%_
                                             _%tl228861229355%_
                                             _%e228862229358%_
                                             _%hd228863229361%_
                                             _%tl228864229363%_
                                             _%e228865229366%_
                                             _%hd228866229369%_
                                             _%tl228867229371%_
                                             _%e228868229374%_
                                             _%hd228869229377%_
                                             _%tl228870229379%_
                                             _%e228871229382%_
                                             _%hd228872229385%_
                                             _%tl228873229387%_
                                             _%e228874229390%_
                                             _%hd228875229393%_
                                             _%tl228876229395%_
                                             _%e228877229398%_
                                             _%hd228878229401%_
                                             _%tl228879229403%_))
                                        (_%__match235222235223%_
                                         _%e228850229326%_
                                         _%hd228851229329%_
                                         _%tl228852229331%_
                                         _%e228853229334%_
                                         _%hd228854229337%_
                                         _%tl228855229339%_
                                         _%e228856229342%_
                                         _%hd228857229345%_
                                         _%tl228858229347%_
                                         _%e228859229350%_
                                         _%hd228860229353%_
                                         _%tl228861229355%_
                                         _%e228862229358%_
                                         _%hd228863229361%_
                                         _%tl228864229363%_
                                         _%e228865229366%_
                                         _%hd228866229369%_
                                         _%tl228867229371%_
                                         _%e228868229374%_
                                         _%hd228869229377%_
                                         _%tl228870229379%_
                                         _%e228871229382%_
                                         _%hd228872229385%_
                                         _%tl228873229387%_))))
                                (_%__match235222235223%_
                                 _%e228850229326%_
                                 _%hd228851229329%_
                                 _%tl228852229331%_
                                 _%e228853229334%_
                                 _%hd228854229337%_
                                 _%tl228855229339%_
                                 _%e228856229342%_
                                 _%hd228857229345%_
                                 _%tl228858229347%_
                                 _%e228859229350%_
                                 _%hd228860229353%_
                                 _%tl228861229355%_
                                 _%e228862229358%_
                                 _%hd228863229361%_
                                 _%tl228864229363%_
                                 _%e228865229366%_
                                 _%hd228866229369%_
                                 _%tl228867229371%_
                                 _%e228868229374%_
                                 _%hd228869229377%_
                                 _%tl228870229379%_
                                 _%e228871229382%_
                                 _%hd228872229385%_
                                 _%tl228873229387%_))
                            (_%__match235222235223%_
                             _%e228850229326%_
                             _%hd228851229329%_
                             _%tl228852229331%_
                             _%e228853229334%_
                             _%hd228854229337%_
                             _%tl228855229339%_
                             _%e228856229342%_
                             _%hd228857229345%_
                             _%tl228858229347%_
                             _%e228859229350%_
                             _%hd228860229353%_
                             _%tl228861229355%_
                             _%e228862229358%_
                             _%hd228863229361%_
                             _%tl228864229363%_
                             _%e228865229366%_
                             _%hd228866229369%_
                             _%tl228867229371%_
                             _%e228868229374%_
                             _%hd228869229377%_
                             _%tl228870229379%_
                             _%e228871229382%_
                             _%hd228872229385%_
                             _%tl228873229387%_))))
                     (_%__match234940234941%_
                      (lambda (_%e228799229447%_
                               _%hd228800229450%_
                               _%tl228801229452%_
                               _%e228802229455%_
                               _%hd228803229458%_
                               _%tl228804229460%_
                               _%e228805229463%_
                               _%hd228806229466%_
                               _%tl228807229468%_
                               _%e228808229471%_
                               _%hd228809229474%_
                               _%tl228810229476%_
                               _%e228811229479%_
                               _%hd228812229482%_
                               _%tl228813229484%_
                               _%e228814229487%_
                               _%hd228815229490%_
                               _%tl228816229492%_
                               _%e228817229495%_
                               _%hd228818229498%_
                               _%tl228819229500%_
                               _%e228820229503%_
                               _%hd228821229506%_
                               _%tl228822229508%_
                               _%e228823229511%_
                               _%hd228824229514%_
                               _%tl228825229516%_
                               _%e228826229519%_
                               _%hd228827229522%_
                               _%tl228828229524%_
                               _%e228829229527%_
                               _%hd228830229530%_
                               _%tl228831229532%_
                               _%e228832229535%_
                               _%hd228833229538%_
                               _%tl228834229540%_
                               _%e228835229543%_
                               _%hd228836229546%_
                               _%tl228837229548%_
                               _%__splice234733234734%_
                               _%target228838229551%_
                               _%tl228840229553%_)
                        (letrec ((_%loop228841229556%_
                                  (lambda (_%hd228839229559%_
                                           _%args228845229561%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd228839229559%_))
                                        (let ((_%e228842229563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd228839229559%_))))
                                          (let ((_%lp-tl228844229568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e228842229563%_)))
                                                (_%lp-hd228843229566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e228842229563%_))))
                                            (_%loop228841229556%_
                                             _%lp-tl228844229568%_
                                             (cons _%lp-hd228843229566%_
                                                   _%args228845229561%_))))
                                        (let ((_%args228846229571%_
                                               (reverse _%args228845229561%_)))
                                          (let ((_%g228794229573%_
                                                 _%args228846229571%_)
                                                (_%g228795229574%_
                                                 _%hd228836229546%_)
                                                (_%g228796229575%_
                                                 _%hd228827229522%_)
                                                (_%g228797229576%_
                                                 _%hd228818229498%_)
                                                (_%g228798229577%_
                                                 _%hd228809229474%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228798229577%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228797229576%_
                                                        'call-method))
                                                     (let ((__tmp235418
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228738%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g228796229575%_
                                                        __tmp235418)))
                                                (_%__kont234731234732%_
                                                 _%g228794229573%_
                                                 _%g228795229574%_
                                                 _%g228796229575%_
                                                 _%g228797229576%_
                                                 _%g228798229577%_)
                                                (_%__kont234743234744%_))))))))
                          (_%loop228841229556%_ _%target228838229551%_ '()))))
                     (_%__match234898234899%_
                      (lambda (_%e228799229447%_
                               _%hd228800229450%_
                               _%tl228801229452%_
                               _%e228802229455%_
                               _%hd228803229458%_
                               _%tl228804229460%_
                               _%e228805229463%_
                               _%hd228806229466%_
                               _%tl228807229468%_
                               _%e228808229471%_
                               _%hd228809229474%_
                               _%tl228810229476%_
                               _%e228811229479%_
                               _%hd228812229482%_
                               _%tl228813229484%_
                               _%e228814229487%_
                               _%hd228815229490%_
                               _%tl228816229492%_
                               _%e228817229495%_
                               _%hd228818229498%_
                               _%tl228819229500%_
                               _%e228820229503%_
                               _%hd228821229506%_
                               _%tl228822229508%_
                               _%e228823229511%_
                               _%hd228824229514%_
                               _%tl228825229516%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd228824229514%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228825229516%_))
                                (let ((_%e228826229519%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl228825229516%_))))
                                  (let ((_%tl228828229524%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228826229519%_)))
                                        (_%hd228827229522%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228826229519%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228828229524%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228822229508%_))
                                            (let ((_%e228829229527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl228822229508%_))))
                                              (let ((_%tl228831229532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228829229527%_)))
                                                    (_%hd228830229530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228829229527%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd228830229530%_))
                                                    (let ((_%e228832229535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd228830229530%_))))
                                                      (let ((_%tl228834229540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e228832229535%_)))
                    (_%hd228833229538%_
                     (let () (declare (not safe)) (##car _%e228832229535%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd228833229538%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd228833229538%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228834229540%_))
                            (let ((_%e228835229543%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228834229540%_))))
                              (let ((_%tl228837229548%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228835229543%_)))
                                    (_%hd228836229546%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228835229543%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228837229548%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl228831229532%_))
                                        (let ((_%__splice234733234734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl228831229532%_
                                                  '0))))
                                          (let ((_%tl228840229553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice234733234734%_
                                                    '1)))
                                                (_%target228838229551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice234733234734%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl228840229553%_))
                                                (_%__match234940234941%_
                                                 _%e228799229447%_
                                                 _%hd228800229450%_
                                                 _%tl228801229452%_
                                                 _%e228802229455%_
                                                 _%hd228803229458%_
                                                 _%tl228804229460%_
                                                 _%e228805229463%_
                                                 _%hd228806229466%_
                                                 _%tl228807229468%_
                                                 _%e228808229471%_
                                                 _%hd228809229474%_
                                                 _%tl228810229476%_
                                                 _%e228811229479%_
                                                 _%hd228812229482%_
                                                 _%tl228813229484%_
                                                 _%e228814229487%_
                                                 _%hd228815229490%_
                                                 _%tl228816229492%_
                                                 _%e228817229495%_
                                                 _%hd228818229498%_
                                                 _%tl228819229500%_
                                                 _%e228820229503%_
                                                 _%hd228821229506%_
                                                 _%tl228822229508%_
                                                 _%e228823229511%_
                                                 _%hd228824229514%_
                                                 _%tl228825229516%_
                                                 _%e228826229519%_
                                                 _%hd228827229522%_
                                                 _%tl228828229524%_
                                                 _%e228829229527%_
                                                 _%hd228830229530%_
                                                 _%tl228831229532%_
                                                 _%e228832229535%_
                                                 _%hd228833229538%_
                                                 _%tl228834229540%_
                                                 _%e228835229543%_
                                                 _%hd228836229546%_
                                                 _%tl228837229548%_
                                                 _%__splice234733234734%_
                                                 _%target228838229551%_
                                                 _%tl228840229553%_)
                                                (_%__kont234743234744%_))))
                                        (_%__kont234743234744%_))
                                    (_%__kont234743234744%_))))
                            (_%__kont234743234744%_))
                        (_%__kont234743234744%_))
                    (_%__kont234743234744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont234743234744%_))))
                                            (_%__match235222235223%_
                                             _%e228799229447%_
                                             _%hd228800229450%_
                                             _%tl228801229452%_
                                             _%e228802229455%_
                                             _%hd228803229458%_
                                             _%tl228804229460%_
                                             _%e228805229463%_
                                             _%hd228806229466%_
                                             _%tl228807229468%_
                                             _%e228808229471%_
                                             _%hd228809229474%_
                                             _%tl228810229476%_
                                             _%e228811229479%_
                                             _%hd228812229482%_
                                             _%tl228813229484%_
                                             _%e228814229487%_
                                             _%hd228815229490%_
                                             _%tl228816229492%_
                                             _%e228817229495%_
                                             _%hd228818229498%_
                                             _%tl228819229500%_
                                             _%e228820229503%_
                                             _%hd228821229506%_
                                             _%tl228822229508%_))
                                        (_%__match235222235223%_
                                         _%e228799229447%_
                                         _%hd228800229450%_
                                         _%tl228801229452%_
                                         _%e228802229455%_
                                         _%hd228803229458%_
                                         _%tl228804229460%_
                                         _%e228805229463%_
                                         _%hd228806229466%_
                                         _%tl228807229468%_
                                         _%e228808229471%_
                                         _%hd228809229474%_
                                         _%tl228810229476%_
                                         _%e228811229479%_
                                         _%hd228812229482%_
                                         _%tl228813229484%_
                                         _%e228814229487%_
                                         _%hd228815229490%_
                                         _%tl228816229492%_
                                         _%e228817229495%_
                                         _%hd228818229498%_
                                         _%tl228819229500%_
                                         _%e228820229503%_
                                         _%hd228821229506%_
                                         _%tl228822229508%_))))
                                (_%__match235222235223%_
                                 _%e228799229447%_
                                 _%hd228800229450%_
                                 _%tl228801229452%_
                                 _%e228802229455%_
                                 _%hd228803229458%_
                                 _%tl228804229460%_
                                 _%e228805229463%_
                                 _%hd228806229466%_
                                 _%tl228807229468%_
                                 _%e228808229471%_
                                 _%hd228809229474%_
                                 _%tl228810229476%_
                                 _%e228811229479%_
                                 _%hd228812229482%_
                                 _%tl228813229484%_
                                 _%e228814229487%_
                                 _%hd228815229490%_
                                 _%tl228816229492%_
                                 _%e228817229495%_
                                 _%hd228818229498%_
                                 _%tl228819229500%_
                                 _%e228820229503%_
                                 _%hd228821229506%_
                                 _%tl228822229508%_))
                            (_%__match235008235009%_
                             _%e228799229447%_
                             _%hd228800229450%_
                             _%tl228801229452%_
                             _%e228802229455%_
                             _%hd228803229458%_
                             _%tl228804229460%_
                             _%e228805229463%_
                             _%hd228806229466%_
                             _%tl228807229468%_
                             _%e228808229471%_
                             _%hd228809229474%_
                             _%tl228810229476%_
                             _%e228811229479%_
                             _%hd228812229482%_
                             _%tl228813229484%_
                             _%e228814229487%_
                             _%hd228815229490%_
                             _%tl228816229492%_
                             _%e228817229495%_
                             _%hd228818229498%_
                             _%tl228819229500%_
                             _%e228820229503%_
                             _%hd228821229506%_
                             _%tl228822229508%_
                             _%e228823229511%_
                             _%hd228824229514%_
                             _%tl228825229516%_))))
                     (_%__match234830234831%_
                      (lambda (_%e228755229637%_
                               _%hd228756229640%_
                               _%tl228757229642%_
                               _%e228758229645%_
                               _%hd228759229648%_
                               _%tl228760229650%_
                               _%e228761229653%_
                               _%hd228762229656%_
                               _%tl228763229658%_
                               _%e228764229661%_
                               _%hd228765229664%_
                               _%tl228766229666%_
                               _%e228767229669%_
                               _%hd228768229672%_
                               _%tl228769229674%_
                               _%e228770229677%_
                               _%hd228771229680%_
                               _%tl228772229682%_
                               _%e228773229685%_
                               _%hd228774229688%_
                               _%tl228775229690%_
                               _%e228776229693%_
                               _%hd228777229696%_
                               _%tl228778229698%_
                               _%e228779229701%_
                               _%hd228780229704%_
                               _%tl228781229706%_
                               _%e228782229709%_
                               _%hd228783229712%_
                               _%tl228784229714%_
                               _%__splice234729234730%_
                               _%target228785229717%_
                               _%tl228787229719%_)
                        (letrec ((_%loop228788229722%_
                                  (lambda (_%hd228786229725%_
                                           _%args228792229727%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd228786229725%_))
                                        (let ((_%e228789229729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd228786229725%_))))
                                          (let ((_%lp-tl228791229734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e228789229729%_)))
                                                (_%lp-hd228790229732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e228789229729%_))))
                                            (_%loop228788229722%_
                                             _%lp-tl228791229734%_
                                             (cons _%lp-hd228790229732%_
                                                   _%args228792229727%_))))
                                        (let ((_%args228793229737%_
                                               (reverse _%args228792229727%_)))
                                          (let ((_%g228751229739%_
                                                 _%args228793229737%_)
                                                (_%g228752229740%_
                                                 _%hd228783229712%_)
                                                (_%g228753229741%_
                                                 _%hd228774229688%_)
                                                (_%g228754229742%_
                                                 _%hd228765229664%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228754229742%_
                                                        'call-method))
                                                     (let ((__tmp235419
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228738%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g228753229741%_
                                                        __tmp235419)))
                                                (_%__kont234727234728%_
                                                 _%g228751229739%_
                                                 _%g228752229740%_
                                                 _%g228753229741%_
                                                 _%g228754229742%_)
                                                (_%__match235018235019%_
                                                 _%e228755229637%_
                                                 _%hd228756229640%_
                                                 _%tl228757229642%_
                                                 _%e228758229645%_
                                                 _%hd228759229648%_
                                                 _%tl228760229650%_
                                                 _%e228761229653%_
                                                 _%hd228762229656%_
                                                 _%tl228763229658%_
                                                 _%e228764229661%_
                                                 _%hd228765229664%_
                                                 _%tl228766229666%_
                                                 _%e228767229669%_
                                                 _%hd228768229672%_
                                                 _%tl228769229674%_
                                                 _%e228770229677%_
                                                 _%hd228771229680%_
                                                 _%tl228772229682%_
                                                 _%e228773229685%_
                                                 _%hd228774229688%_
                                                 _%tl228775229690%_
                                                 _%e228776229693%_
                                                 _%hd228777229696%_
                                                 _%tl228778229698%_
                                                 _%e228779229701%_
                                                 _%hd228780229704%_
                                                 _%tl228781229706%_
                                                 _%e228782229709%_
                                                 _%hd228783229712%_
                                                 _%tl228784229714%_))))))))
                          (_%loop228788229722%_ _%target228785229717%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234725234726%_))
                    (let ((_%e228755229637%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234725234726%_))))
                      (let ((_%tl228757229642%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228755229637%_)))
                            (_%hd228756229640%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228755229637%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228757229642%_))
                            (let ((_%e228758229645%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228757229642%_))))
                              (let ((_%tl228760229650%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228758229645%_)))
                                    (_%hd228759229648%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228758229645%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228759229648%_))
                                    (let ((_%e228761229653%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd228759229648%_))))
                                      (let ((_%tl228763229658%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228761229653%_)))
                                            (_%hd228762229656%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228761229653%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd228762229656%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd228762229656%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl228763229658%_))
                                                    (let ((_%e228764229661%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl228763229658%_))))
                                                      (let ((_%tl228766229666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e228764229661%_)))
                    (_%hd228765229664%_
                     (let () (declare (not safe)) (##car _%e228764229661%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl228766229666%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl228760229650%_))
                        (let ((_%e228767229669%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl228760229650%_))))
                          (let ((_%tl228769229674%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228767229669%_)))
                                (_%hd228768229672%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228767229669%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd228768229672%_))
                                (let ((_%e228770229677%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd228768229672%_))))
                                  (let ((_%tl228772229682%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228770229677%_)))
                                        (_%hd228771229680%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228770229677%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd228771229680%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd228771229680%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl228772229682%_))
                                                (let ((_%e228773229685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl228772229682%_))))
                                                  (let ((_%tl228775229690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e228773229685%_)))
                                                        (_%hd228774229688%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e228773229685%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl228775229690%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl228769229674%_))
                                                            (let ((_%e228776229693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl228769229674%_))))
                      (let ((_%tl228778229698%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228776229693%_)))
                            (_%hd228777229696%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228776229693%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd228777229696%_))
                            (let ((_%e228779229701%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd228777229696%_))))
                              (let ((_%tl228781229706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228779229701%_)))
                                    (_%hd228780229704%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228779229701%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd228780229704%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd228780229704%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228781229706%_))
                                            (let ((_%e228782229709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl228781229706%_))))
                                              (let ((_%tl228784229714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228782229709%_)))
                                                    (_%hd228783229712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228782229709%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228784229714%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl228778229698%_))
                                                        (let ((_%__splice234729234730%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl228778229698%_
                          '0))))
                  (let ((_%tl228787229719%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice234729234730%_ '1)))
                        (_%target228785229717%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice234729234730%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228787229719%_))
                        (_%__match234830234831%_
                         _%e228755229637%_
                         _%hd228756229640%_
                         _%tl228757229642%_
                         _%e228758229645%_
                         _%hd228759229648%_
                         _%tl228760229650%_
                         _%e228761229653%_
                         _%hd228762229656%_
                         _%tl228763229658%_
                         _%e228764229661%_
                         _%hd228765229664%_
                         _%tl228766229666%_
                         _%e228767229669%_
                         _%hd228768229672%_
                         _%tl228769229674%_
                         _%e228770229677%_
                         _%hd228771229680%_
                         _%tl228772229682%_
                         _%e228773229685%_
                         _%hd228774229688%_
                         _%tl228775229690%_
                         _%e228776229693%_
                         _%hd228777229696%_
                         _%tl228778229698%_
                         _%e228779229701%_
                         _%hd228780229704%_
                         _%tl228781229706%_
                         _%e228782229709%_
                         _%hd228783229712%_
                         _%tl228784229714%_
                         _%__splice234729234730%_
                         _%target228785229717%_
                         _%tl228787229719%_)
                        (_%__match235018235019%_
                         _%e228755229637%_
                         _%hd228756229640%_
                         _%tl228757229642%_
                         _%e228758229645%_
                         _%hd228759229648%_
                         _%tl228760229650%_
                         _%e228761229653%_
                         _%hd228762229656%_
                         _%tl228763229658%_
                         _%e228764229661%_
                         _%hd228765229664%_
                         _%tl228766229666%_
                         _%e228767229669%_
                         _%hd228768229672%_
                         _%tl228769229674%_
                         _%e228770229677%_
                         _%hd228771229680%_
                         _%tl228772229682%_
                         _%e228773229685%_
                         _%hd228774229688%_
                         _%tl228775229690%_
                         _%e228776229693%_
                         _%hd228777229696%_
                         _%tl228778229698%_
                         _%e228779229701%_
                         _%hd228780229704%_
                         _%tl228781229706%_
                         _%e228782229709%_
                         _%hd228783229712%_
                         _%tl228784229714%_))))
                (_%__match235018235019%_
                 _%e228755229637%_
                 _%hd228756229640%_
                 _%tl228757229642%_
                 _%e228758229645%_
                 _%hd228759229648%_
                 _%tl228760229650%_
                 _%e228761229653%_
                 _%hd228762229656%_
                 _%tl228763229658%_
                 _%e228764229661%_
                 _%hd228765229664%_
                 _%tl228766229666%_
                 _%e228767229669%_
                 _%hd228768229672%_
                 _%tl228769229674%_
                 _%e228770229677%_
                 _%hd228771229680%_
                 _%tl228772229682%_
                 _%e228773229685%_
                 _%hd228774229688%_
                 _%tl228775229690%_
                 _%e228776229693%_
                 _%hd228777229696%_
                 _%tl228778229698%_
                 _%e228779229701%_
                 _%hd228780229704%_
                 _%tl228781229706%_
                 _%e228782229709%_
                 _%hd228783229712%_
                 _%tl228784229714%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match235222235223%_
                                                     _%e228755229637%_
                                                     _%hd228756229640%_
                                                     _%tl228757229642%_
                                                     _%e228758229645%_
                                                     _%hd228759229648%_
                                                     _%tl228760229650%_
                                                     _%e228761229653%_
                                                     _%hd228762229656%_
                                                     _%tl228763229658%_
                                                     _%e228764229661%_
                                                     _%hd228765229664%_
                                                     _%tl228766229666%_
                                                     _%e228767229669%_
                                                     _%hd228768229672%_
                                                     _%tl228769229674%_
                                                     _%e228770229677%_
                                                     _%hd228771229680%_
                                                     _%tl228772229682%_
                                                     _%e228773229685%_
                                                     _%hd228774229688%_
                                                     _%tl228775229690%_
                                                     _%e228776229693%_
                                                     _%hd228777229696%_
                                                     _%tl228778229698%_))))
                                            (_%__match235222235223%_
                                             _%e228755229637%_
                                             _%hd228756229640%_
                                             _%tl228757229642%_
                                             _%e228758229645%_
                                             _%hd228759229648%_
                                             _%tl228760229650%_
                                             _%e228761229653%_
                                             _%hd228762229656%_
                                             _%tl228763229658%_
                                             _%e228764229661%_
                                             _%hd228765229664%_
                                             _%tl228766229666%_
                                             _%e228767229669%_
                                             _%hd228768229672%_
                                             _%tl228769229674%_
                                             _%e228770229677%_
                                             _%hd228771229680%_
                                             _%tl228772229682%_
                                             _%e228773229685%_
                                             _%hd228774229688%_
                                             _%tl228775229690%_
                                             _%e228776229693%_
                                             _%hd228777229696%_
                                             _%tl228778229698%_))
                                        (_%__match234898234899%_
                                         _%e228755229637%_
                                         _%hd228756229640%_
                                         _%tl228757229642%_
                                         _%e228758229645%_
                                         _%hd228759229648%_
                                         _%tl228760229650%_
                                         _%e228761229653%_
                                         _%hd228762229656%_
                                         _%tl228763229658%_
                                         _%e228764229661%_
                                         _%hd228765229664%_
                                         _%tl228766229666%_
                                         _%e228767229669%_
                                         _%hd228768229672%_
                                         _%tl228769229674%_
                                         _%e228770229677%_
                                         _%hd228771229680%_
                                         _%tl228772229682%_
                                         _%e228773229685%_
                                         _%hd228774229688%_
                                         _%tl228775229690%_
                                         _%e228776229693%_
                                         _%hd228777229696%_
                                         _%tl228778229698%_
                                         _%e228779229701%_
                                         _%hd228780229704%_
                                         _%tl228781229706%_))
                                    (_%__match235222235223%_
                                     _%e228755229637%_
                                     _%hd228756229640%_
                                     _%tl228757229642%_
                                     _%e228758229645%_
                                     _%hd228759229648%_
                                     _%tl228760229650%_
                                     _%e228761229653%_
                                     _%hd228762229656%_
                                     _%tl228763229658%_
                                     _%e228764229661%_
                                     _%hd228765229664%_
                                     _%tl228766229666%_
                                     _%e228767229669%_
                                     _%hd228768229672%_
                                     _%tl228769229674%_
                                     _%e228770229677%_
                                     _%hd228771229680%_
                                     _%tl228772229682%_
                                     _%e228773229685%_
                                     _%hd228774229688%_
                                     _%tl228775229690%_
                                     _%e228776229693%_
                                     _%hd228777229696%_
                                     _%tl228778229698%_))))
                            (_%__match235222235223%_
                             _%e228755229637%_
                             _%hd228756229640%_
                             _%tl228757229642%_
                             _%e228758229645%_
                             _%hd228759229648%_
                             _%tl228760229650%_
                             _%e228761229653%_
                             _%hd228762229656%_
                             _%tl228763229658%_
                             _%e228764229661%_
                             _%hd228765229664%_
                             _%tl228766229666%_
                             _%e228767229669%_
                             _%hd228768229672%_
                             _%tl228769229674%_
                             _%e228770229677%_
                             _%hd228771229680%_
                             _%tl228772229682%_
                             _%e228773229685%_
                             _%hd228774229688%_
                             _%tl228775229690%_
                             _%e228776229693%_
                             _%hd228777229696%_
                             _%tl228778229698%_))))
                    (_%__match235160235161%_
                     _%e228755229637%_
                     _%hd228756229640%_
                     _%tl228757229642%_
                     _%e228758229645%_
                     _%hd228759229648%_
                     _%tl228760229650%_
                     _%e228761229653%_
                     _%hd228762229656%_
                     _%tl228763229658%_
                     _%e228764229661%_
                     _%hd228765229664%_
                     _%tl228766229666%_
                     _%e228767229669%_
                     _%hd228768229672%_
                     _%tl228769229674%_
                     _%e228770229677%_
                     _%hd228771229680%_
                     _%tl228772229682%_
                     _%e228773229685%_
                     _%hd228774229688%_
                     _%tl228775229690%_))
                (_%__kont234743234744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont234743234744%_))
                                            (_%__kont234743234744%_))
                                        (_%__kont234743234744%_))))
                                (_%__kont234743234744%_))))
                        (_%__kont234743234744%_))
                    (_%__kont234743234744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont234743234744%_))
                                                (_%__kont234743234744%_))
                                            (_%__kont234743234744%_))))
                                    (_%__kont234743234744%_))))
                            (_%__kont234743234744%_))))
                    (_%__kont234743234744%_))))))))))
