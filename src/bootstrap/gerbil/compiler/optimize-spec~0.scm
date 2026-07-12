(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1783878481)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp241998 (list gxc#::identity::t))
            (__tmp241997 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp241998
         '()
         __tmp241997
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args240795%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args240795%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp241999
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
        (__make-atomic-promise __tmp241999)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx240787%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self240790%_
                (let ((__obj241990
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj241990))
               (__tmp242000
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self240790%_ _%stx240787%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp242000
           gxc#current-compile-method
           _%self240790%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp242002 (list gxc#::false::t))
            (__tmp242001 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp242002
         '()
         __tmp242001
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args240784%_
        (apply make-instance gxc#::extract-receiver::t _%$args240784%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp242003
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
        (__make-atomic-promise __tmp242003)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx240776%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self240779%_
                (let ((__obj241992
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj241992))
               (__tmp242004
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self240779%_ _%stx240776%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp242004
           gxc#current-compile-method
           _%self240779%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp242006 (list gxc#::void::t))
            (__tmp242005 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp242006
         '(receiver methods slots)
         __tmp242005
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args240773%_
        (apply make-instance gxc#::collect-object-refs::t _%$args240773%_)))
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
      (let ((__tmp242007
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
        (__make-atomic-promise __tmp242007)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords240742%_
               _%$%receiver240737240743%_
               _%$%methods240738240744%_
               _%$%slots240739240745%_
               _%stx240746%_)
        (let* ((_%receiver240749%_
                (if (eq? _%$%receiver240737240743%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver240737240743%_))
               (_%methods240751%_
                (if (eq? _%$%methods240738240744%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods240738240744%_))
               (_%slots240753%_
                (if (eq? _%$%slots240739240745%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots240739240745%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self240755%_
                  (let ((__obj241994
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
                       __obj241994
                       _%receiver240749%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj241994
                       _%methods240751%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj241994
                       _%slots240753%_
                       '3
                       '#f
                       '#f))
                    __obj241994))
                 (__tmp242008
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self240755%_ _%stx240746%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp242008
             gxc#current-compile-method
             _%self240755%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords240762%_ . _%args240763%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords240762%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240762%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240762%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240762%_
                  'slots:
                  absent-value))
               _%args240763%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args240740240769%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args240740240769%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp242010 (list gxc#::basic-xform-expression::t))
            (__tmp242009 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp242010
         '(receiver klass methods slots)
         __tmp242009
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args240733%_
        (apply make-instance gxc#::subst-object-refs::t _%$args240733%_)))
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
      (let ((__tmp242011
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
        (__make-atomic-promise __tmp242011)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords240699%_
               _%$%receiver240693240700%_
               _%$%klass240694240701%_
               _%$%methods240695240702%_
               _%$%slots240696240703%_
               _%stx240704%_)
        (let* ((_%receiver240707%_
                (if (eq? _%$%receiver240693240700%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver240693240700%_))
               (_%klass240709%_
                (if (eq? _%$%klass240694240701%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass240694240701%_))
               (_%methods240711%_
                (if (eq? _%$%methods240695240702%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods240695240702%_))
               (_%slots240713%_
                (if (eq? _%$%slots240696240703%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots240696240703%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self240715%_
                  (let ((__obj241996
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
                       __obj241996
                       _%receiver240707%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj241996
                       _%klass240709%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj241996
                       _%methods240711%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj241996
                       _%slots240713%_
                       '4
                       '#f
                       '#f))
                    __obj241996))
                 (__tmp242012
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self240715%_ _%stx240704%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp242012
             gxc#current-compile-method
             _%self240715%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords240722%_ . _%args240723%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords240722%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240722%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240722%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240722%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240722%_
                  'slots:
                  absent-value))
               _%args240723%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args240697240729%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args240697240729%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self237824%_ _%stx237825%_)
        (letrec ((_%generate-method-bind237827%_
                  (lambda (_%$klass240685%_
                           _%$method-table240686%_
                           _%id240687%_
                           _%$id240688%_)
                    (let ((_%$tmp240690%_
                           (let ((__tmp242013
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp242013))))
                      (cons (cons _%$id240688%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp240690%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table240686%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id240687%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp240690%_ '()))
                    (cons (cons '%#ref (cons _%$tmp240690%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id240687%_
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
                 (_%generate-slot-bind237828%_
                  (lambda (_%$klass240679%_ _%id240680%_ _%$id240681%_)
                    (let ((_%$tmp240683%_
                           (let ((__tmp242014
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp242014))))
                      (cons (cons _%$id240681%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp240683%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass240679%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id240680%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp240683%_ '()))
                        (cons (cons '%#ref (cons _%$tmp240683%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id240680%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl237829%_
                  (lambda (_%$klass240673%_
                           _%$method-table240674%_
                           _%methods-bind240675%_
                           _%slots-bind240676%_
                           _%specializer-impl240677%_)
                    (let ((__tmp242015
                           (cons '%#lambda
                                 (cons (cons _%$klass240673%_
                                             (cons _%$method-table240674%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind240676%_
                                                            _%methods-bind240675%_))
                                                         (cons _%specializer-impl240677%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp242015 _%stx237825%_))))
                 (_%generate-specializer-def237830%_
                  (lambda (_%id240669%_
                           _%specializer-id240670%_
                           _%specializer-impl240671%_)
                    (let ((__tmp242016
                           (cons '%#begin
                                 (cons _%stx237825%_
                                       (cons (let ((__tmp242017
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id240670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl240671%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp242017
                                                _%stx237825%_))
                                             (cons (let ((__tmp242018
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id240669%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id240670%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp242018
                                                      _%stx237825%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp242016 _%stx237825%_)))))
          (let* ((_%__stx240884240885%_ _%stx237825%_)
                 (_%$%g237833237853%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx240884240885%_)))))
            (let ((_%__kont240886240887%_
                   (lambda (_%$%g237835237897%_ _%$%g237836237898%_)
                     (let ((_%method-calls237917%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs237918%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty237919%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?237921%_
                                 (lambda ()
                                   (if (let ((__tmp242019
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls237917%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp242019))
                                       (let ((__tmp242020
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs237918%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp242020))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g237835237897%_))
                             (let* ((_%__stx240798240799%_ _%$%g237835237897%_)
                                    (_%$%g238305238323%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx240798240799%_)))))
                               (let ((_%__kont240800240801%_
                                      (lambda (_%$%g238307238359%_
                                               _%$%g238308238360%_
                                               _%$%g238309238361%_)
                                        (let ((_%receiver238381%_
                                               (let ((_%$e238378%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g238307238359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e238378%_
                                                     _%$e238378%_
                                                     _%$%g238309238361%_))))
                                          (for-each
                                           (lambda (_%$%g238382238384%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver238381%_
                                              _%method-calls237917%_
                                              _%slot-refs237918%_
                                              _%$%g238382238384%_))
                                           _%$%g238307238359%_)
                                          (if (_%no-specializer?237921%_)
                                              _%stx237825%_
                                              (let* ((_%specializer-id238393%_
                                                      (let* ((_%id238387%_
                                                              (let ((__tmp242021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g237836237898%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp242021 '"::specialize")))
                     (_%specializer-id238390%_
                      (let ((__tmp242022
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx237825%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id238387%_ __tmp242022))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id238390%_))
                _%specializer-id238390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass238395%_
                                                      (let ((__tmp242023
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp242023)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table238397%_
                                                      (let ((__tmp242024
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp242024)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods238399%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls237917%_)))
                                                     (_%$methods238403%_
                                                      (let ((__tmp242025
                                                             (lambda (_%id238401%_)
                                                               (let ((__tmp242026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id238401%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp242026)))))
                (declare (not safe))
                (##map __tmp242025 _%methods238399%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_238412%_
                                                      (let ((__tmp242027
                                                             (lambda (_%$%g238404238407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238405238409%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls237917%_
                          _%$%g238404238407%_
                          _%$%g238405238409%_)))))
                (declare (not safe))
                (##for-each __tmp242027 _%methods238399%_ _%$methods238403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind238422%_
                                                      (let ((__tmp242028
                                                             (lambda (_%$%g238414238417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238415238419%_)
                       (_%generate-method-bind237827%_
                        _%$klass238395%_
                        _%$method-table238397%_
                        _%$%g238414238417%_
                        _%$%g238415238419%_))))
                (declare (not safe))
                (##map __tmp242028 _%methods238399%_ _%$methods238403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots238424%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs237918%_)))
                                                     (_%$slots238428%_
                                                      (let ((__tmp242029
                                                             (lambda (_%id238426%_)
                                                               (let ((__tmp242030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id238426%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp242030)))))
                (declare (not safe))
                (##map __tmp242029 _%slots238424%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_238437%_
                                                      (let ((__tmp242031
                                                             (lambda (_%$%g238429238432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238430238434%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs237918%_
                          _%$%g238429238432%_
                          _%$%g238430238434%_)))))
                (declare (not safe))
                (##for-each __tmp242031 _%slots238424%_ _%$slots238428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind238446%_
                                                      (let ((__tmp242032
                                                             (lambda (_%$%g238438238441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238439238443%_)
                       (_%generate-slot-bind237828%_
                        _%$klass238395%_
                        _%$%g238438238441%_
                        _%$%g238439238443%_))))
                (declare (not safe))
                (##map __tmp242032 _%slots238424%_ _%$slots238428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body238452%_
                                                      (map (lambda (_%$%g238447238449%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver238381%_
                                                              _%$klass238395%_
                                                              _%method-calls237917%_
                                                              _%slot-refs237918%_
                                                              _%$%g238447238449%_))
                                                           _%$%g238307238359%_))
                                                     (_%specializer-impl238454%_
                                                      (let ((__tmp242033
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g238309238361%_ _%$%g238308238360%_)
                                 _%specializer-body238452%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp242033 _%stx237825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl238456%_
                                                      (_%generate-specializer-impl237829%_
                                                       _%$klass238395%_
                                                       _%$method-table238397%_
                                                       _%methods-bind238422%_
                                                       _%slots-bind238446%_
                                                       _%specializer-impl238454%_)))
                                                (let ((__tmp242035
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g237836237898%_)))
                                                      (__tmp242034
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id238393%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp242035
                                                   '" => "
                                                   __tmp242034))
                                                (_%generate-specializer-def237830%_
                                                 _%$%g237836237898%_
                                                 _%specializer-id238393%_
                                                 _%specializer-impl238456%_))))))
                                     (_%__kont240802240803%_
                                      (lambda () _%stx237825%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx240798240799%_))
                                     (let ((_%$%e238310238335%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx240798240799%_))))
                                       (let ((_%$%tl238312238340%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e238310238335%_)))
                                             (_%$%hd238311238338%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e238310238335%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl238312238340%_))
                                             (let ((_%$%e238313238343%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl238312238340%_))))
                                               (let ((_%$%tl238315238348%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e238313238343%_)))
                                                     (_%$%hd238314238346%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e238313238343%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd238314238346%_))
                                                     (let ((_%$%e238316238351%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd238314238346%_))))
                                                       (let ((_%$%tl238318238356%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e238316238351%_)))
                     (_%$%hd238317238354%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e238316238351%_))))
                 (_%__kont240800240801%_
                  _%$%tl238315238348%_
                  _%$%tl238318238356%_
                  _%$%hd238317238354%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont240802240803%_))))
                                             (_%__kont240802240803%_))))
                                     (_%__kont240802240803%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g237835237897%_))
                                 (let* ((_%$%g238463238482%_
                                         (lambda (_%$%g238464238479%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g238464238479%_))))
                                        (_%$%g238462238778%_
                                         (lambda (_%$%g238464238485%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g238464238485%_))
                                               (let ((_%$%e238466238487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g238464238485%_))))
                                                 (let ((_%$%hd238467238490%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e238466238487%_)))
                                                       (_%$%tl238468238492%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e238466238487%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl238468238492%_))
                                                       (let ((_g242036_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl238468238492%_ '0))))
                 (begin
                   (let ((_g242037_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g242036_)
                                (##values-length _g242036_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g242037_ 2)))
                         (error "Context expects 2 values" _g242037_)))
                   (let ((_%$%target238469238495%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g242036_ 0)))
                         (_%$%tl238471238497%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g242036_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl238471238497%_))
                         (letrec ((_%$%loop238472238500%_
                                   (lambda (_%$%hd238470238503%_
                                            _%$%clause238476238505%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd238470238503%_))
                                         (let ((_%$%e238473238507%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd238470238503%_))))
                                           (let ((_%$%lp-hd238474238510%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e238473238507%_)))
                                                 (_%$%lp-tl238475238512%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e238473238507%_))))
                                             (_%$%loop238472238500%_
                                              _%$%lp-tl238475238512%_
                                              (cons _%$%lp-hd238474238510%_
                                                    _%$%clause238476238505%_))))
                                         (let ((_%$%clause238477238515%_
                                                (reverse _%$%clause238476238505%_)))
                                           (for-each
                                            (lambda (_%clause238531%_)
                                              (let* ((_%__stx240824240825%_
                                                      _%clause238531%_)
                                                     (_%$%g238534238549%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx240824240825%_)))))
                                                (let ((_%__kont240826240827%_
                                                       (lambda (_%$%g238536238577%_
                                                                _%$%g238537238578%_
                                                                _%$%g238538238579%_)
                                                         (let ((_%receiver238598%_
                                                                (let ((_%$e238595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g238536238577%_))))
                          (if _%$e238595%_ _%$e238595%_ _%$%g238538238579%_))))
                   (for-each
                    (lambda (_%$%g238599238601%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver238598%_
                       _%method-calls237917%_
                       _%slot-refs237918%_
                       _%$%g238599238601%_))
                    _%$%g238536238577%_))))
              (_%__kont240828240829%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx240824240825%_))
                                                      (let ((_%$%e238539238561%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx240824240825%_))))
                (let ((_%$%tl238541238566%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e238539238561%_)))
                      (_%$%hd238540238564%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e238539238561%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd238540238564%_))
                      (let ((_%$%e238542238569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd238540238564%_))))
                        (let ((_%$%tl238544238574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e238542238569%_)))
                              (_%$%hd238543238572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e238542238569%_))))
                          (_%__kont240826240827%_
                           _%$%tl238541238566%_
                           _%$%tl238544238574%_
                           _%$%hd238543238572%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp242038
                                                   (lambda (_%$%g238606238609%_
                                                            _%$%g238607238611%_)
                                                     (cons _%$%g238606238609%_
                                                           _%$%g238607238611%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp242038
                                               '()
                                               _%$%clause238477238515%_)))
                                           (if (_%no-specializer?237921%_)
                                               _%stx237825%_
                                               (let* ((_%specializer-id238620%_
                                                       (let* ((_%id238614%_
                                                               (let ((__tmp242039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g237836237898%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp242039 '"::specialize")))
                      (_%specializer-id238617%_
                       (let ((__tmp242040
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx237825%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id238614%_ __tmp242040))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id238617%_))
                 _%specializer-id238617%_))
              (_%$klass238622%_
               (let ((__tmp242041
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp242041)))
              (_%$method-table238624%_
               (let ((__tmp242042
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp242042)))
              (_%methods238626%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls237917%_)))
              (_%$methods238630%_
               (let ((__tmp242043
                      (lambda (_%id238628%_)
                        (let ((__tmp242044 (gensym _%id238628%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp242044)))))
                 (declare (not safe))
                 (##map __tmp242043 _%methods238626%_)))
              (_%_238639%_
               (let ((__tmp242045
                      (lambda (_%$%g238631238634%_ _%$%g238632238636%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls237917%_
                           _%$%g238631238634%_
                           _%$%g238632238636%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp242045
                  _%methods238626%_
                  _%$methods238630%_)))
              (_%methods-bind238649%_
               (let ((__tmp242046
                      (lambda (_%$%g238641238644%_ _%$%g238642238646%_)
                        (_%generate-method-bind237827%_
                         _%$klass238622%_
                         _%$method-table238624%_
                         _%$%g238641238644%_
                         _%$%g238642238646%_))))
                 (declare (not safe))
                 (##map __tmp242046 _%methods238626%_ _%$methods238630%_)))
              (_%slots238651%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs237918%_)))
              (_%$slots238655%_
               (let ((__tmp242047
                      (lambda (_%id238653%_)
                        (let ((__tmp242048 (gensym _%id238653%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp242048)))))
                 (declare (not safe))
                 (##map __tmp242047 _%slots238651%_)))
              (_%_238664%_
               (let ((__tmp242049
                      (lambda (_%$%g238656238659%_ _%$%g238657238661%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs237918%_
                           _%$%g238656238659%_
                           _%$%g238657238661%_)))))
                 (declare (not safe))
                 (##for-each __tmp242049 _%slots238651%_ _%$slots238655%_)))
              (_%slots-bind238673%_
               (let ((__tmp242050
                      (lambda (_%$%g238665238668%_ _%$%g238666238670%_)
                        (_%generate-slot-bind237828%_
                         _%$klass238622%_
                         _%$%g238665238668%_
                         _%$%g238666238670%_))))
                 (declare (not safe))
                 (##map __tmp242050 _%slots238651%_ _%$slots238655%_)))
              (_%specializer-clauses238771%_
               (map (lambda (_%clause238675%_)
                      (let* ((_%__stx240844240845%_ _%clause238675%_)
                             (_%$%g238678238693%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx240844240845%_)))))
                        (let ((_%__kont240846240847%_
                               (lambda (_%$%g238680238721%_
                                        _%$%g238681238722%_
                                        _%$%g238682238723%_)
                                 (let* ((_%receiver238752%_
                                         (let ((_%$e238749%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g238680238721%_))))
                                           (if _%$e238749%_
                                               _%$e238749%_
                                               _%$%g238682238723%_)))
                                        (_%body238758%_
                                         (map (lambda (_%$%g238753238755%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver238752%_
                                                 _%$klass238622%_
                                                 _%method-calls237917%_
                                                 _%slot-refs237918%_
                                                 _%$%g238753238755%_))
                                              _%$%g238680238721%_)))
                                   (cons (cons _%$%g238682238723%_
                                               _%$%g238681238722%_)
                                         _%body238758%_))))
                              (_%__kont240848240849%_
                               (lambda () _%clause238675%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx240844240845%_))
                              (let ((_%$%e238683238705%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx240844240845%_))))
                                (let ((_%$%tl238685238710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e238683238705%_)))
                                      (_%$%hd238684238708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e238683238705%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd238684238708%_))
                                      (let ((_%$%e238686238713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd238684238708%_))))
                                        (let ((_%$%tl238688238718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e238686238713%_)))
                                              (_%$%hd238687238716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e238686238713%_))))
                                          (_%__kont240846240847%_
                                           _%$%tl238685238710%_
                                           _%$%tl238688238718%_
                                           _%$%hd238687238716%_)))
                                      (_%__kont240848240849%_))))
                              (_%__kont240848240849%_)))))
                    (let ((__tmp242051
                           (lambda (_%$%g238763238766%_ _%$%g238764238768%_)
                             (cons _%$%g238763238766%_ _%$%g238764238768%_))))
                      (declare (not safe))
                      (foldr__0 __tmp242051 '() _%$%clause238477238515%_))))
              (_%specializer-impl238773%_
               (let ((__tmp242052
                      (cons '%#case-lambda _%specializer-clauses238771%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp242052 _%stx237825%_)))
              (_%specializer-impl238775%_
               (_%generate-specializer-impl237829%_
                _%$klass238622%_
                _%$method-table238624%_
                _%methods-bind238649%_
                _%slots-bind238673%_
                _%specializer-impl238773%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp242054
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g237836237898%_)))
                                                       (__tmp242053
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id238620%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp242054
                                                    '" => "
                                                    __tmp242053))
                                                 (_%generate-specializer-def237830%_
                                                  _%$%g237836237898%_
                                                  _%specializer-id238620%_
                                                  _%specializer-impl238775%_))))))))
                           (_%$%loop238472238500%_
                            _%$%target238469238495%_
                            '()))
                         (_%$%g238463238482%_ _%$%g238464238485%_)))))
               (_%$%g238463238482%_ _%$%g238464238485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g238463238482%_
                                                _%$%g238464238485%_)))))
                                   (_%$%g238462238778%_ _%$%g237835237897%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g237835237897%_))
                                     (let* ((_%$%g238782238812%_
                                             (lambda (_%$%g238783238809%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g238783238809%_))))
                                            (_%$%g238781239439%_
                                             (lambda (_%$%g238783238815%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g238783238815%_))
                                                   (let ((_%$%e238787238817%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g238783238815%_))))
                                                     (let ((_%$%hd238788238820%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e238787238817%_)))
                                                           (_%$%tl238789238822%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e238787238817%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl238789238822%_))
                                                           (let ((_%$%e238790238825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl238789238822%_))))
                     (let ((_%$%hd238791238828%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e238790238825%_)))
                           (_%$%tl238792238830%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e238790238825%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd238791238828%_))
                           (let ((_%$%e238793238833%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd238791238828%_))))
                             (let ((_%$%hd238794238836%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e238793238833%_)))
                                   (_%$%tl238795238838%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e238793238833%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd238794238836%_))
                                   (let ((_%$%e238796238841%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd238794238836%_))))
                                     (let ((_%$%hd238797238844%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e238796238841%_)))
                                           (_%$%tl238798238846%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e238796238841%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd238797238844%_))
                                           (let ((_%$%e238799238849%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd238797238844%_))))
                                             (let ((_%$%hd238800238852%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e238799238849%_)))
                                                   (_%$%tl238801238854%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e238799238849%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl238801238854%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl238798238846%_))
                                                       (let ((_%$%e238802238857%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl238798238846%_))))
                 (let ((_%$%hd238803238860%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e238802238857%_)))
                       (_%$%tl238804238862%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e238802238857%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl238804238862%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl238795238838%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl238792238830%_))
                               (let ((_%$%e238805238865%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl238792238830%_))))
                                 (let ((_%$%hd238806238868%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e238805238865%_)))
                                       (_%$%tl238807238870%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e238805238865%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl238807238870%_))
                                       (let ()
                                         (let* ((_%$%g238899238917%_
                                                 (lambda (_%$%g238900238914%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g238900238914%_))))
                                                (_%$%g238898238973%_
                                                 (lambda (_%$%g238900238920%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g238900238920%_))
                                                       (let ((_%$%e238904238922%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g238900238920%_))))
                 (let ((_%$%hd238905238925%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e238904238922%_)))
                       (_%$%tl238906238927%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e238904238922%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl238906238927%_))
                       (let ((_%$%e238907238930%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl238906238927%_))))
                         (let ((_%$%hd238908238933%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e238907238930%_)))
                               (_%$%tl238909238935%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e238907238930%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd238908238933%_))
                               (let ((_%$%e238910238938%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd238908238933%_))))
                                 (let ((_%$%hd238911238941%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e238910238938%_)))
                                       (_%$%tl238912238943%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e238910238938%_))))
                                   (let ((_%receiver238967%_
                                          (let ((_%$e238964%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl238909238935%_))))
                                            (if _%$e238964%_
                                                _%$e238964%_
                                                _%$%hd238911238941%_))))
                                     (for-each
                                      (lambda (_%$%g238968238970%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver238967%_
                                         _%method-calls237917%_
                                         _%slot-refs237918%_
                                         _%$%g238968238970%_))
                                      _%$%tl238909238935%_))))
                               (_%$%g238899238917%_ _%$%g238900238920%_))))
                       (_%$%g238899238917%_ _%$%g238900238920%_))))
               (_%$%g238899238917%_ _%$%g238900238920%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g238898238973%_
                                            _%$%hd238803238860%_))
                                         (let* ((_%$%g238976238995%_
                                                 (lambda (_%$%g238977238992%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g238977238992%_))))
                                                (_%$%g238975239117%_
                                                 (lambda (_%$%g238977238998%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g238977238998%_))
                                                       (let ((_%$%e238979239000%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g238977238998%_))))
                 (let ((_%$%hd238980239003%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e238979239000%_)))
                       (_%$%tl238981239005%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e238979239000%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl238981239005%_))
                       (let ((_g242055_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl238981239005%_
                                 '0))))
                         (begin
                           (let ((_g242056_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g242055_)
                                        (##values-length _g242055_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g242056_ 2)))
                                 (error "Context expects 2 values" _g242056_)))
                           (let ((_%$%target238982239008%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g242055_ 0)))
                                 (_%$%tl238984239010%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g242055_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl238984239010%_))
                                 (letrec ((_%$%loop238985239013%_
                                           (lambda (_%$%hd238983239016%_
                                                    _%$%clause238989239018%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd238983239016%_))
                                                 (let ((_%$%e238986239020%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd238983239016%_))))
                                                   (let ((_%$%lp-hd238987239023%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e238986239020%_)))
                                                         (_%$%lp-tl238988239025%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e238986239020%_))))
                                                     (_%$%loop238985239013%_
                                                      _%$%lp-tl238988239025%_
                                                      (cons _%$%lp-hd238987239023%_
                                                            _%$%clause238989239018%_))))
                                                 (let ((_%$%clause238990239028%_
                                                        (reverse _%$%clause238989239018%_)))
                                                   (for-each
                                                    (lambda (_%clause239043%_)
                                                      (let* ((_%$%g239045239060%_
                                                              (lambda (_%$%g239046239057%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g239046239057%_))))
                     (_%$%g239044239107%_
                      (lambda (_%$%g239046239063%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g239046239063%_))
                            (let ((_%$%e239050239065%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g239046239063%_))))
                              (let ((_%$%hd239051239068%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e239050239065%_)))
                                    (_%$%tl239052239070%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e239050239065%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd239051239068%_))
                                    (let ((_%$%e239053239073%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd239051239068%_))))
                                      (let ((_%$%hd239054239076%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e239053239073%_)))
                                            (_%$%tl239055239078%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e239053239073%_))))
                                        (let ((_%receiver239101%_
                                               (let ((_%$e239098%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl239052239070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e239098%_
                                                     _%$e239098%_
                                                     _%$%hd239054239076%_))))
                                          (for-each
                                           (lambda (_%$%g239102239104%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver239101%_
                                              _%method-calls237917%_
                                              _%slot-refs237918%_
                                              _%$%g239102239104%_))
                                           _%$%tl239052239070%_))))
                                    (_%$%g239045239060%_
                                     _%$%g239046239063%_))))
                            (_%$%g239045239060%_ _%$%g239046239063%_)))))
                (_%$%g239044239107%_ _%clause239043%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp242057
                                                           (lambda (_%$%g239109239112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g239110239114%_)
                     (cons _%$%g239109239112%_ _%$%g239110239114%_))))
              (declare (not safe))
              (foldr__0 __tmp242057 '() _%$%clause238990239028%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop238985239013%_
                                    _%$%target238982239008%_
                                    '()))
                                 (_%$%g238976238995%_ _%$%g238977238998%_)))))
                       (_%$%g238976238995%_ _%$%g238977238998%_))))
               (_%$%g238976238995%_ _%$%g238977238998%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g238975239117%_
                                            _%$%hd238806238868%_))
                                         (if (_%no-specializer?237921%_)
                                             _%stx237825%_
                                             (let* ((_%specializer-id239126%_
                                                     (let* ((_%id239120%_
                                                             (let ((__tmp242058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g237836237898%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp242058 '"::specialize")))
                    (_%specializer-id239123%_
                     (let ((__tmp242059
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx237825%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id239120%_ __tmp242059))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id239123%_))
               _%specializer-id239123%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass239128%_
                                                     (let ((__tmp242060
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp242060)))
                                                    (_%$method-table239130%_
                                                     (let ((__tmp242061
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp242061)))
                                                    (_%methods239132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls237917%_)))
                                                    (_%$methods239136%_
                                                     (let ((__tmp242062
                                                            (lambda (_%id239134%_)
                                                              (let ((__tmp242063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id239134%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp242063)))))
               (declare (not safe))
               (##map __tmp242062 _%methods239132%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_239145%_
                                                     (let ((__tmp242064
                                                            (lambda (_%$%g239137239140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239138239142%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls237917%_
                         _%$%g239137239140%_
                         _%$%g239138239142%_)))))
               (declare (not safe))
               (##for-each __tmp242064 _%methods239132%_ _%$methods239136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind239155%_
                                                     (let ((__tmp242065
                                                            (lambda (_%$%g239147239150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239148239152%_)
                      (_%generate-method-bind237827%_
                       _%$klass239128%_
                       _%$method-table239130%_
                       _%$%g239147239150%_
                       _%$%g239148239152%_))))
               (declare (not safe))
               (##map __tmp242065 _%methods239132%_ _%$methods239136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots239157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs237918%_)))
                                                    (_%$slots239161%_
                                                     (let ((__tmp242066
                                                            (lambda (_%id239159%_)
                                                              (let ((__tmp242067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id239159%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp242067)))))
               (declare (not safe))
               (##map __tmp242066 _%slots239157%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_239170%_
                                                     (let ((__tmp242068
                                                            (lambda (_%$%g239162239165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239163239167%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs237918%_
                         _%$%g239162239165%_
                         _%$%g239163239167%_)))))
               (declare (not safe))
               (##for-each __tmp242068 _%slots239157%_ _%$slots239161%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind239179%_
                                                     (let ((__tmp242069
                                                            (lambda (_%$%g239171239174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239172239176%_)
                      (_%generate-slot-bind237828%_
                       _%$klass239128%_
                       _%$%g239171239174%_
                       _%$%g239172239176%_))))
               (declare (not safe))
               (##map __tmp242069 _%slots239157%_ _%$slots239161%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr239271%_
                                                     (let* ((_%$%g239181239199%_
                                                             (lambda (_%$%g239182239196%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g239182239196%_))))
                    (_%$%g239180239268%_
                     (lambda (_%$%g239182239202%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g239182239202%_))
                           (let ((_%$%e239186239204%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g239182239202%_))))
                             (let ((_%$%hd239187239207%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239186239204%_)))
                                   (_%$%tl239188239209%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239186239204%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl239188239209%_))
                                   (let ((_%$%e239189239212%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl239188239209%_))))
                                     (let ((_%$%hd239190239215%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239189239212%_)))
                                           (_%$%tl239191239217%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239189239212%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd239190239215%_))
                                           (let ((_%$%e239192239220%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd239190239215%_))))
                                             (let ((_%$%hd239193239223%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e239192239220%_)))
                                                   (_%$%tl239194239225%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e239192239220%_))))
                                               (let* ((_%receiver239259%_
                                                       (let ((_%$e239256%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl239191239217%_))))
                 (if _%$e239256%_ _%$e239256%_ _%$%hd239193239223%_)))
              (_%body239265%_
               (map (lambda (_%$%g239260239262%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver239259%_
                       _%$klass239128%_
                       _%method-calls237917%_
                       _%slot-refs237918%_
                       _%$%g239260239262%_))
                    _%$%tl239191239217%_))
              (__tmp242070
               (cons '%#lambda
                     (cons (cons _%$%hd239193239223%_ _%$%tl239194239225%_)
                           _%body239265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp242070
                                                  _%$%hd238803238860%_))))
                                           (_%$%g239181239199%_
                                            _%$%g239182239202%_))))
                                   (_%$%g239181239199%_ _%$%g239182239202%_))))
                           (_%$%g239181239199%_ _%$%g239182239202%_)))))
               (_%$%g239180239268%_ _%$%hd238803238860%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr239432%_
                                                     (let* ((_%$%g239273239292%_
                                                             (lambda (_%$%g239274239289%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g239274239289%_))))
                    (_%$%g239272239429%_
                     (lambda (_%$%g239274239295%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g239274239295%_))
                           (let ((_%$%e239276239297%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g239274239295%_))))
                             (let ((_%$%hd239277239300%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239276239297%_)))
                                   (_%$%tl239278239302%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239276239297%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl239278239302%_))
                                   (let ((_g242071_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl239278239302%_
                                             '0))))
                                     (begin
                                       (let ((_g242072_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g242071_)
                                                    (##values-length _g242071_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g242072_ 2)))
                                             (error "Context expects 2 values"
                                                    _g242072_)))
                                       (let ((_%$%target239279239305%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g242071_ 0)))
                                             (_%$%tl239281239307%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g242071_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl239281239307%_))
                                             (letrec ((_%$%loop239282239310%_
                                                       (lambda (_%$%hd239280239313%_
                                                                _%$%clause239286239315%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd239280239313%_))
                     (let ((_%$%e239283239317%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd239280239313%_))))
                       (let ((_%$%lp-hd239284239320%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e239283239317%_)))
                             (_%$%lp-tl239285239322%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e239283239317%_))))
                         (_%$%loop239282239310%_
                          _%$%lp-tl239285239322%_
                          (cons _%$%lp-hd239284239320%_
                                _%$%clause239286239315%_))))
                     (let* ((_%$%clause239287239325%_
                             (reverse _%$%clause239286239315%_))
                            (_%clauses239427%_
                             (map (lambda (_%clause239341%_)
                                    (let* ((_%__stx240864240865%_
                                            _%clause239341%_)
                                           (_%$%g239344239359%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx240864240865%_)))))
                                      (let ((_%__kont240866240867%_
                                             (lambda (_%$%g239346239387%_
                                                      _%$%g239347239388%_
                                                      _%$%g239348239389%_)
                                               (let* ((_%receiver239408%_
                                                       (let ((_%$e239405%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g239346239387%_))))
                 (if _%$e239405%_ _%$e239405%_ _%$%g239348239389%_)))
              (_%body239414%_
               (map (lambda (_%$%g239409239411%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver239408%_
                       _%$klass239128%_
                       _%method-calls237917%_
                       _%slot-refs237918%_
                       _%$%g239409239411%_))
                    _%$%g239346239387%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g239348239389%_
                                                             _%$%g239347239388%_)
                                                       _%body239414%_))))
                                            (_%__kont240868240869%_
                                             (lambda () _%clause239341%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx240864240865%_))
                                            (let ((_%$%e239349239371%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx240864240865%_))))
                                              (let ((_%$%tl239351239376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e239349239371%_)))
                                                    (_%$%hd239350239374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e239349239371%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd239350239374%_))
                                                    (let ((_%$%e239352239379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd239350239374%_))))
                                                      (let ((_%$%tl239354239384%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e239352239379%_)))
                    (_%$%hd239353239382%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e239352239379%_))))
                (_%__kont240866240867%_
                 _%$%tl239351239376%_
                 _%$%tl239354239384%_
                 _%$%hd239353239382%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont240868240869%_))))
                                            (_%__kont240868240869%_)))))
                                  (let ((__tmp242073
                                         (lambda (_%$%g239419239422%_
                                                  _%$%g239420239424%_)
                                           (cons _%$%g239419239422%_
                                                 _%$%g239420239424%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp242073
                                     '()
                                     _%$%clause239287239325%_))))
                            (__tmp242074
                             (cons '%#case-lambda _%clauses239427%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp242074
                        _%$%hd238806238868%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop239282239310%_
                                                _%$%target239279239305%_
                                                '()))
                                             (_%$%g239273239292%_
                                              _%$%g239274239295%_)))))
                                   (_%$%g239273239292%_ _%$%g239274239295%_))))
                           (_%$%g239273239292%_ _%$%g239274239295%_)))))
               (_%$%g239272239429%_ _%$%hd238806238868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl239434%_
                                                     (let ((__tmp242075
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd238800238852%_ '())
                                            (cons _%specializer-lambda-expr239271%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr239432%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp242075 _%stx237825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl239436%_
                                                     (_%generate-specializer-impl237829%_
                                                      _%$klass239128%_
                                                      _%$method-table239130%_
                                                      _%methods-bind239155%_
                                                      _%slots-bind239179%_
                                                      _%specializer-impl239434%_)))
                                               (let ((__tmp242077
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g237836237898%_)))
                                                     (__tmp242076
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id239126%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp242077
                                                  '" => "
                                                  __tmp242076))
                                               (_%generate-specializer-def237830%_
                                                _%$%g237836237898%_
                                                _%specializer-id239126%_
                                                _%specializer-impl239436%_))))
                                       (_%$%g238782238812%_
                                        _%$%g238783238815%_))))
                               (_%$%g238782238812%_ _%$%g238783238815%_))
                           (_%$%g238782238812%_ _%$%g238783238815%_))
                       (_%$%g238782238812%_ _%$%g238783238815%_))))
               (_%$%g238782238812%_ _%$%g238783238815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g238782238812%_
                                                    _%$%g238783238815%_))))
                                           (_%$%g238782238812%_
                                            _%$%g238783238815%_))))
                                   (_%$%g238782238812%_ _%$%g238783238815%_))))
                           (_%$%g238782238812%_ _%$%g238783238815%_))))
                   (_%$%g238782238812%_ _%$%g238783238815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g238782238812%_
                                                    _%$%g238783238815%_)))))
                                       (_%$%g238781239439%_
                                        _%$%g237835237897%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g237835237897%_))
                                         (let* ((_%$%g239443239496%_
                                                 (lambda (_%$%g239444239493%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g239444239493%_))))
                                                (_%$%g239442240661%_
                                                 (lambda (_%$%g239444239499%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g239444239499%_))
                                                       (let ((_%$%e239450239501%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g239444239499%_))))
                 (let ((_%$%hd239451239504%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e239450239501%_)))
                       (_%$%tl239452239506%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e239450239501%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd239451239504%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd239451239504%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl239452239506%_))
                               (let ((_%$%e239453239509%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl239452239506%_))))
                                 (let ((_%$%hd239454239512%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e239453239509%_)))
                                       (_%$%tl239455239514%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e239453239509%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd239454239512%_))
                                       (let ((_%$%e239456239517%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd239454239512%_))))
                                         (let ((_%$%hd239457239520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e239456239517%_)))
                                               (_%$%tl239458239522%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e239456239517%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd239457239520%_))
                                               (let ((_%$%e239459239525%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd239457239520%_))))
                                                 (let ((_%$%hd239460239528%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e239459239525%_)))
                                                       (_%$%tl239461239530%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e239459239525%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd239460239528%_))
                                                       (let ((_%$%e239462239533%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd239460239528%_))))
                 (let ((_%$%hd239463239536%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e239462239533%_)))
                       (_%$%tl239464239538%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e239462239533%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl239464239538%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl239461239530%_))
                           (let ((_%$%e239465239541%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl239461239530%_))))
                             (let ((_%$%hd239466239544%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239465239541%_)))
                                   (_%$%tl239467239546%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239465239541%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd239466239544%_))
                                   (let ((_%$%e239468239549%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd239466239544%_))))
                                     (let ((_%$%hd239469239552%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239468239549%_)))
                                           (_%$%tl239470239554%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239468239549%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd239469239552%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd239469239552%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl239470239554%_))
                                                   (let ((_%$%e239471239557%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl239470239554%_))))
                                                     (let ((_%$%hd239472239560%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e239471239557%_)))
                                                           (_%$%tl239473239562%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e239471239557%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd239472239560%_))
                                                           (let ((_%$%e239474239565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd239472239560%_))))
                     (let ((_%$%hd239475239568%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e239474239565%_)))
                           (_%$%tl239476239570%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e239474239565%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd239475239568%_))
                           (let ((_%$%e239477239573%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd239475239568%_))))
                             (let ((_%$%hd239478239576%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239477239573%_)))
                                   (_%$%tl239479239578%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239477239573%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd239478239576%_))
                                   (let ((_%$%e239480239581%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd239478239576%_))))
                                     (let ((_%$%hd239481239584%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239480239581%_)))
                                           (_%$%tl239482239586%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239480239581%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl239482239586%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl239479239578%_))
                                               (let ((_%$%e239483239589%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl239479239578%_))))
                                                 (let ((_%$%hd239484239592%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e239483239589%_)))
                                                       (_%$%tl239485239594%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e239483239589%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl239485239594%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl239476239570%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl239473239562%_))
                       (let ((_%$%e239486239597%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl239473239562%_))))
                         (let ((_%$%hd239487239600%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e239486239597%_)))
                               (_%$%tl239488239602%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e239486239597%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl239488239602%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl239467239546%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl239458239522%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl239455239514%_))
                                           (let ((_%$%e239489239605%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl239455239514%_))))
                                             (let ((_%$%hd239490239608%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e239489239605%_)))
                                                   (_%$%tl239491239610%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e239489239605%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl239491239610%_))
                                                   (let* ((_%$%g239657239719%_
                                                           (lambda (_%$%g239658239716%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g239658239716%_))))
                  (_%$%g239656240658%_
                   (lambda (_%$%g239658239722%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g239658239722%_))
                         (let ((_%$%e239664239724%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g239658239722%_))))
                           (let ((_%$%hd239665239727%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e239664239724%_)))
                                 (_%$%tl239666239729%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e239664239724%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd239665239727%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd239665239727%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl239666239729%_))
                                         (let ((_%$%e239667239732%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl239666239729%_))))
                                           (let ((_%$%hd239668239735%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e239667239732%_)))
                                                 (_%$%tl239669239737%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e239667239732%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl239669239737%_))
                                                 (let ((_%$%e239670239740%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl239669239737%_))))
                                                   (let ((_%$%hd239671239743%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e239670239740%_)))
                                                         (_%$%tl239672239745%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e239670239740%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd239671239743%_))
                                                         (let ((_%$%e239673239748%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd239671239743%_))))
                   (let ((_%$%hd239674239751%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e239673239748%_)))
                         (_%$%tl239675239753%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e239673239748%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd239674239751%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd239674239751%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl239675239753%_))
                                 (let ((_%$%e239676239756%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl239675239753%_))))
                                   (let ((_%$%hd239677239759%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e239676239756%_)))
                                         (_%$%tl239678239761%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e239676239756%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd239677239759%_))
                                         (let ((_%$%e239679239764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd239677239759%_))))
                                           (let ((_%$%hd239680239767%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e239679239764%_)))
                                                 (_%$%tl239681239769%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e239679239764%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd239680239767%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd239680239767%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl239681239769%_))
                                                         (let ((_%$%e239682239772%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl239681239769%_))))
                   (let ((_%$%hd239683239775%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e239682239772%_)))
                         (_%$%tl239684239777%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e239682239772%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl239684239777%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl239678239761%_))
                             (let ((_%$%e239685239780%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl239678239761%_))))
                               (let ((_%$%hd239686239783%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e239685239780%_)))
                                     (_%$%tl239687239785%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e239685239780%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd239686239783%_))
                                     (let ((_%$%e239688239788%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd239686239783%_))))
                                       (let ((_%$%hd239689239791%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e239688239788%_)))
                                             (_%$%tl239690239793%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e239688239788%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd239689239791%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd239689239791%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl239690239793%_))
                                                     (let ((_%$%e239691239796%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl239690239793%_))))
                                                       (let ((_%$%hd239692239799%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e239691239796%_)))
                     (_%$%tl239693239801%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e239691239796%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl239693239801%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl239687239785%_))
                         (let ((_%$%e239694239804%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl239687239785%_))))
                           (let ((_%$%hd239695239807%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e239694239804%_)))
                                 (_%$%tl239696239809%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e239694239804%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd239695239807%_))
                                 (let ((_%$%e239697239812%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd239695239807%_))))
                                   (let ((_%$%hd239698239815%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e239697239812%_)))
                                         (_%$%tl239699239817%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e239697239812%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd239698239815%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd239698239815%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl239699239817%_))
                                                 (let ((_%$%e239700239820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl239699239817%_))))
                                                   (let ((_%$%hd239701239823%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e239700239820%_)))
                                                         (_%$%tl239702239825%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e239700239820%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl239702239825%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl239696239809%_))
                     (if (let ((__tmp242078
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl239696239809%_))))
                           (declare (not safe))
                           (##fx>= __tmp242078 '1))
                         (let ((_g242079_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl239696239809%_
                                   '1))))
                           (begin
                             (let ((_g242080_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g242079_)
                                          (##values-length _g242079_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g242080_ 2)))
                                   (error "Context expects 2 values"
                                          _g242080_)))
                             (let ((_%$%target239703239828%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g242079_ 0)))
                                   (_%$%tl239705239830%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g242079_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl239705239830%_))
                                   (let ((_%$%e239712239833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl239705239830%_))))
                                     (let ((_%$%hd239713239836%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239712239833%_)))
                                           (_%$%tl239714239838%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239712239833%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl239714239838%_))
                                           (letrec ((_%$%loop239706239841%_
                                                     (lambda (_%$%hd239704239844%_
                                                              _%$%kw-ref239710239846%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd239704239844%_))
                                                           (let ((_%$%e239707239848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd239704239844%_))))
                     (let ((_%$%lp-hd239708239851%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e239707239848%_)))
                           (_%$%lp-tl239709239853%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e239707239848%_))))
                       (_%$%loop239706239841%_
                        _%$%lp-tl239709239853%_
                        (cons _%$%lp-hd239708239851%_
                              _%$%kw-ref239710239846%_))))
                   (let ((_%$%kw-ref239711239856%_
                          (reverse _%$%kw-ref239710239846%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl239672239745%_))
                         (let* ((_%kw-count239913%_
                                 (length (let ((__tmp242081
                                                (lambda (_%$%g239905239908%_
                                                         _%$%g239906239910%_)
                                                  (cons _%$%g239905239908%_
                                                        _%$%g239906239910%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp242081
                                            '()
                                            _%$%kw-ref239711239856%_))))
                                (_%self-index239915%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count239913%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd239484239592%_))
                               (let* ((_%$%g239919239933%_
                                       (lambda (_%$%g239920239930%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g239920239930%_))))
                                      (_%$%g239918240056%_
                                       (lambda (_%$%g239920239936%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g239920239936%_))
                                             (let ((_%$%e239923239938%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g239920239936%_))))
                                               (let ((_%$%hd239924239941%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e239923239938%_)))
                                                     (_%$%tl239925239943%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e239923239938%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl239925239943%_))
                                                     (let ((_%$%e239926239946%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl239925239943%_))))
                                                       (let ((_%$%hd239927239949%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e239926239946%_)))
                     (_%$%tl239928239951%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e239926239946%_))))
                 (let* ((_%self239972%_
                         (list-ref _%$%hd239927239949%_ _%self-index239915%_))
                        (_%receiver239977%_
                         (let ((_%$e239974%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl239928239951%_))))
                           (if _%$e239974%_ _%$e239974%_ _%self239972%_))))
                   (for-each
                    (lambda (_%$%g239979239981%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver239977%_
                       _%method-calls237917%_
                       _%slot-refs237918%_
                       _%$%g239979239981%_))
                    _%$%tl239928239951%_)
                   (if (_%no-specializer?237921%_)
                       _%stx237825%_
                       (let* ((_%specializer-id239990%_
                               (let* ((_%id239984%_
                                       (let ((__tmp242082
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g237836237898%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp242082
                                          '"::specialize")))
                                      (_%specializer-id239987%_
                                       (let ((__tmp242083
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx237825%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id239984%_
                                          __tmp242083))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id239987%_))
                                 _%specializer-id239987%_))
                              (_%$klass239992%_
                               (let ((__tmp242084
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp242084)))
                              (_%$method-table239994%_
                               (let ((__tmp242085
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp242085)))
                              (_%methods239996%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls237917%_)))
                              (_%$methods240000%_
                               (let ((__tmp242086
                                      (lambda (_%id239998%_)
                                        (let ((__tmp242087
                                               (gensym _%id239998%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp242087)))))
                                 (declare (not safe))
                                 (##map __tmp242086 _%methods239996%_)))
                              (_%_240009%_
                               (let ((__tmp242088
                                      (lambda (_%$%g240001240004%_
                                               _%$%g240002240006%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls237917%_
                                           _%$%g240001240004%_
                                           _%$%g240002240006%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp242088
                                  _%methods239996%_
                                  _%$methods240000%_)))
                              (_%methods-bind240019%_
                               (let ((__tmp242089
                                      (lambda (_%$%g240011240014%_
                                               _%$%g240012240016%_)
                                        (_%generate-method-bind237827%_
                                         _%$klass239992%_
                                         _%$method-table239994%_
                                         _%$%g240011240014%_
                                         _%$%g240012240016%_))))
                                 (declare (not safe))
                                 (##map __tmp242089
                                        _%methods239996%_
                                        _%$methods240000%_)))
                              (_%slots240021%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs237918%_)))
                              (_%$slots240025%_
                               (let ((__tmp242090
                                      (lambda (_%id240023%_)
                                        (let ((__tmp242091
                                               (gensym _%id240023%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp242091)))))
                                 (declare (not safe))
                                 (##map __tmp242090 _%slots240021%_)))
                              (_%_240034%_
                               (let ((__tmp242092
                                      (lambda (_%$%g240026240029%_
                                               _%$%g240027240031%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs237918%_
                                           _%$%g240026240029%_
                                           _%$%g240027240031%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp242092
                                  _%slots240021%_
                                  _%$slots240025%_)))
                              (_%slots-bind240043%_
                               (let ((__tmp242093
                                      (lambda (_%$%g240035240038%_
                                               _%$%g240036240040%_)
                                        (_%generate-slot-bind237828%_
                                         _%$klass239992%_
                                         _%$%g240035240038%_
                                         _%$%g240036240040%_))))
                                 (declare (not safe))
                                 (##map __tmp242093
                                        _%slots240021%_
                                        _%$slots240025%_)))
                              (_%specializer-impl240051%_
                               (let* ((_%specializer-body240049%_
                                       (map (lambda (_%$%g240044240046%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver239977%_
                                               _%$klass239992%_
                                               _%method-calls237917%_
                                               _%slot-refs237918%_
                                               _%$%g240044240046%_))
                                            _%$%tl239928239951%_))
                                      (__tmp242094
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd239463239536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd239481239584%_
                                                           '())
                                                     (cons (let ((__tmp242095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd239927239949%_
                                      _%specializer-body240049%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp242095 _%$%hd239484239592%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd239487239600%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd239490239608%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp242094
                                  _%stx237825%_)))
                              (_%specializer-impl240053%_
                               (_%generate-specializer-impl237829%_
                                _%$klass239992%_
                                _%$method-table239994%_
                                _%methods-bind240019%_
                                _%slots-bind240043%_
                                _%specializer-impl240051%_)))
                         (let ((__tmp242097
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g237836237898%_)))
                               (__tmp242096
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id239990%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp242097
                            '" => "
                            __tmp242096))
                         (_%generate-specializer-def237830%_
                          _%$%g237836237898%_
                          _%specializer-id239990%_
                          _%specializer-impl240053%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239919239933%_
                                                      _%$%g239920239936%_))))
                                             (_%$%g239919239933%_
                                              _%$%g239920239936%_)))))
                                 (_%$%g239918240056%_ _%$%hd239484239592%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd239484239592%_))
                                   (let* ((_%$%g240060240090%_
                                           (lambda (_%$%g240061240087%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g240061240087%_))))
                                          (_%$%g240059240654%_
                                           (lambda (_%$%g240061240093%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g240061240093%_))
                                                 (let ((_%$%e240065240095%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g240061240093%_))))
                                                   (let ((_%$%hd240066240098%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e240065240095%_)))
                                                         (_%$%tl240067240100%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e240065240095%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl240067240100%_))
                                                         (let ((_%$%e240068240103%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl240067240100%_))))
                   (let ((_%$%hd240069240106%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e240068240103%_)))
                         (_%$%tl240070240108%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e240068240103%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd240069240106%_))
                         (let ((_%$%e240071240111%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd240069240106%_))))
                           (let ((_%$%hd240072240114%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e240071240111%_)))
                                 (_%$%tl240073240116%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e240071240111%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd240072240114%_))
                                 (let ((_%$%e240074240119%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd240072240114%_))))
                                   (let ((_%$%hd240075240122%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e240074240119%_)))
                                         (_%$%tl240076240124%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e240074240119%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd240075240122%_))
                                         (let ((_%$%e240077240127%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd240075240122%_))))
                                           (let ((_%$%hd240078240130%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e240077240127%_)))
                                                 (_%$%tl240079240132%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e240077240127%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl240079240132%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl240076240124%_))
                                                     (let ((_%$%e240080240135%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl240076240124%_))))
                                                       (let ((_%$%hd240081240138%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e240080240135%_)))
                     (_%$%tl240082240140%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e240080240135%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl240082240140%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl240073240116%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl240070240108%_))
                             (let ((_%$%e240083240143%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl240070240108%_))))
                               (let ((_%$%hd240084240146%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e240083240143%_)))
                                     (_%$%tl240085240148%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e240083240143%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl240085240148%_))
                                     (let ()
                                       (let* ((_%$%g240177240191%_
                                               (lambda (_%$%g240178240188%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g240178240188%_))))
                                              (_%$%g240176240238%_
                                               (lambda (_%$%g240178240194%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g240178240194%_))
                                                     (let ((_%$%e240181240196%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g240178240194%_))))
                                                       (let ((_%$%hd240182240199%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e240181240196%_)))
                     (_%$%tl240183240201%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e240181240196%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl240183240201%_))
                     (let ((_%$%e240184240204%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl240183240201%_))))
                       (let ((_%$%hd240185240207%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e240184240204%_)))
                             (_%$%tl240186240209%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e240184240204%_))))
                         (let* ((_%self240226%_
                                 (list-ref
                                  _%$%hd240185240207%_
                                  _%self-index239915%_))
                                (_%receiver240231%_
                                 (let ((_%$e240228%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl240186240209%_))))
                                   (if _%$e240228%_
                                       _%$e240228%_
                                       _%self240226%_))))
                           (for-each
                            (lambda (_%$%g240233240235%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver240231%_
                               _%method-calls237917%_
                               _%slot-refs237918%_
                               _%$%g240233240235%_))
                            _%$%tl240186240209%_))))
                     (_%$%g240177240191%_ _%$%g240178240194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240177240191%_
                                                      _%$%g240178240194%_)))))
                                         (_%$%g240176240238%_
                                          _%$%hd240081240138%_))
                                       (let* ((_%$%g240241240260%_
                                               (lambda (_%$%g240242240257%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g240242240257%_))))
                                              (_%$%g240240240369%_
                                               (lambda (_%$%g240242240263%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g240242240263%_))
                                                     (let ((_%$%e240244240265%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g240242240263%_))))
                                                       (let ((_%$%hd240245240268%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e240244240265%_)))
                     (_%$%tl240246240270%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e240244240265%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl240246240270%_))
                     (let ((_g242098_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl240246240270%_
                               '0))))
                       (begin
                         (let ((_g242099_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g242098_)
                                      (##values-length _g242098_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g242099_ 2)))
                               (error "Context expects 2 values" _g242099_)))
                         (let ((_%$%target240247240273%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g242098_ 0)))
                               (_%$%tl240249240275%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g242098_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl240249240275%_))
                               (letrec ((_%$%loop240250240278%_
                                         (lambda (_%$%hd240248240281%_
                                                  _%$%clause240254240283%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd240248240281%_))
                                               (let ((_%$%e240251240285%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd240248240281%_))))
                                                 (let ((_%$%lp-hd240252240288%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e240251240285%_)))
                                                       (_%$%lp-tl240253240290%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e240251240285%_))))
                                                   (_%$%loop240250240278%_
                                                    _%$%lp-tl240253240290%_
                                                    (cons _%$%lp-hd240252240288%_
                                                          _%$%clause240254240283%_))))
                                               (let ((_%$%clause240255240293%_
                                                      (reverse _%$%clause240254240283%_)))
                                                 (for-each
                                                  (lambda (_%clause240308%_)
                                                    (let* ((_%$%g240310240321%_
                                                            (lambda (_%$%g240311240318%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g240311240318%_))))
                   (_%$%g240309240359%_
                    (lambda (_%$%g240311240324%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g240311240324%_))
                          (let ((_%$%e240314240326%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g240311240324%_))))
                            (let ((_%$%hd240315240329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e240314240326%_)))
                                  (_%$%tl240316240331%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e240314240326%_))))
                              (let* ((_%self240347%_
                                      (list-ref
                                       _%$%hd240315240329%_
                                       _%self-index239915%_))
                                     (_%receiver240352%_
                                      (let ((_%$e240349%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl240316240331%_))))
                                        (if _%$e240349%_
                                            _%$e240349%_
                                            _%self240347%_))))
                                (for-each
                                 (lambda (_%$%g240354240356%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver240352%_
                                    _%method-calls237917%_
                                    _%slot-refs237918%_
                                    _%$%g240354240356%_))
                                 _%$%tl240316240331%_))))
                          (_%$%g240310240321%_ _%$%g240311240324%_)))))
              (_%$%g240309240359%_ _%clause240308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp242100
                                                         (lambda (_%$%g240361240364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g240362240366%_)
                   (cons _%$%g240361240364%_ _%$%g240362240366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp242100
                                                     '()
                                                     _%$%clause240255240293%_))))))))
                                 (_%$%loop240250240278%_
                                  _%$%target240247240273%_
                                  '()))
                               (_%$%g240241240260%_ _%$%g240242240263%_)))))
                     (_%$%g240241240260%_ _%$%g240242240263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240241240260%_
                                                      _%$%g240242240263%_)))))
                                         (_%$%g240240240369%_
                                          _%$%hd240084240146%_))
                                       (if (_%no-specializer?237921%_)
                                           _%stx237825%_
                                           (let* ((_%specializer-id240378%_
                                                   (let* ((_%id240372%_
                                                           (let ((__tmp242101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g237836237898%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp242101 '"::specialize")))
                  (_%specializer-id240375%_
                   (let ((__tmp242102
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx237825%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id240372%_ __tmp242102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id240375%_))
                                                     _%specializer-id240375%_))
                                                  (_%$klass240380%_
                                                   (let ((__tmp242103
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp242103)))
                                                  (_%$method-table240382%_
                                                   (let ((__tmp242104
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp242104)))
                                                  (_%methods240384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls237917%_)))
                                                  (_%$methods240388%_
                                                   (let ((__tmp242105
                                                          (lambda (_%id240386%_)
                                                            (let ((__tmp242106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id240386%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp242106)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242105
                                                            _%methods240384%_)))
                                                  (_%_240397%_
                                                   (let ((__tmp242107
                                                          (lambda (_%$%g240389240392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240390240394%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls237917%_
                       _%$%g240389240392%_
                       _%$%g240390240394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp242107
                                                      _%methods240384%_
                                                      _%$methods240388%_)))
                                                  (_%methods-bind240407%_
                                                   (let ((__tmp242108
                                                          (lambda (_%$%g240399240402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240400240404%_)
                    (_%generate-method-bind237827%_
                     _%$klass240380%_
                     _%$method-table240382%_
                     _%$%g240399240402%_
                     _%$%g240400240404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242108
                                                            _%methods240384%_
                                                            _%$methods240388%_)))
                                                  (_%slots240409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs237918%_)))
                                                  (_%$slots240413%_
                                                   (let ((__tmp242109
                                                          (lambda (_%id240411%_)
                                                            (let ((__tmp242110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id240411%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp242110)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242109
                                                            _%slots240409%_)))
                                                  (_%_240422%_
                                                   (let ((__tmp242111
                                                          (lambda (_%$%g240414240417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240415240419%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs237918%_
                       _%$%g240414240417%_
                       _%$%g240415240419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp242111
                                                      _%slots240409%_
                                                      _%$slots240413%_)))
                                                  (_%slots-bind240431%_
                                                   (let ((__tmp242112
                                                          (lambda (_%$%g240423240426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240424240428%_)
                    (_%generate-slot-bind237828%_
                     _%$klass240380%_
                     _%$%g240423240426%_
                     _%$%g240424240428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242112
                                                            _%slots240409%_
                                                            _%$slots240413%_)))
                                                  (_%specializer-lambda-expr240509%_
                                                   (let* ((_%$%g240433240447%_
                                                           (lambda (_%$%g240434240444%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g240434240444%_))))
                  (_%$%g240432240506%_
                   (lambda (_%$%g240434240450%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g240434240450%_))
                         (let ((_%$%e240437240452%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g240434240450%_))))
                           (let ((_%$%hd240438240455%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e240437240452%_)))
                                 (_%$%tl240439240457%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e240437240452%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl240439240457%_))
                                 (let ((_%$%e240440240460%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl240439240457%_))))
                                   (let ((_%$%hd240441240463%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e240440240460%_)))
                                         (_%$%tl240442240465%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e240440240460%_))))
                                     (let* ((_%self240492%_
                                             (list-ref
                                              _%$%hd240441240463%_
                                              _%self-index239915%_))
                                            (_%receiver240497%_
                                             (let ((_%$e240494%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl240442240465%_))))
                                               (if _%$e240494%_
                                                   _%$e240494%_
                                                   _%self240492%_)))
                                            (_%body240503%_
                                             (map (lambda (_%$%g240498240500%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver240497%_
                                                     _%$klass240380%_
                                                     _%method-calls237917%_
                                                     _%slot-refs237918%_
                                                     _%$%g240498240500%_))
                                                  _%$%tl240442240465%_))
                                            (__tmp242113
                                             (cons '%#lambda
                                                   (cons _%$%hd240441240463%_
                                                         _%body240503%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp242113
                                        _%$%hd240081240138%_))))
                                 (_%$%g240433240447%_ _%$%g240434240450%_))))
                         (_%$%g240433240447%_ _%$%g240434240450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240432240506%_
                                                      _%$%hd240081240138%_)))
                                                  (_%specializer-case-lambda-expr240647%_
                                                   (let* ((_%$%g240511240530%_
                                                           (lambda (_%$%g240512240527%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g240512240527%_))))
                  (_%$%g240510240644%_
                   (lambda (_%$%g240512240533%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g240512240533%_))
                         (let ((_%$%e240514240535%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g240512240533%_))))
                           (let ((_%$%hd240515240538%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e240514240535%_)))
                                 (_%$%tl240516240540%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e240514240535%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl240516240540%_))
                                 (let ((_g242114_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl240516240540%_
                                           '0))))
                                   (begin
                                     (let ((_g242115_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g242114_)
                                                  (##values-length _g242114_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g242115_ 2)))
                                           (error "Context expects 2 values"
                                                  _g242115_)))
                                     (let ((_%$%target240517240543%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g242114_ 0)))
                                           (_%$%tl240519240545%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g242114_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl240519240545%_))
                                           (letrec ((_%$%loop240520240548%_
                                                     (lambda (_%$%hd240518240551%_
                                                              _%$%clause240524240553%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd240518240551%_))
                                                           (let ((_%$%e240521240555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd240518240551%_))))
                     (let ((_%$%lp-hd240522240558%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e240521240555%_)))
                           (_%$%lp-tl240523240560%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e240521240555%_))))
                       (_%$%loop240520240548%_
                        _%$%lp-tl240523240560%_
                        (cons _%$%lp-hd240522240558%_
                              _%$%clause240524240553%_))))
                   (let* ((_%$%clause240525240563%_
                           (reverse _%$%clause240524240553%_))
                          (_%clauses240642%_
                           (map (lambda (_%clause240579%_)
                                  (let* ((_%$%g240581240592%_
                                          (lambda (_%$%g240582240589%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g240582240589%_))))
                                         (_%$%g240580240632%_
                                          (lambda (_%$%g240582240595%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g240582240595%_))
                                                (let ((_%$%e240585240597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g240582240595%_))))
                                                  (let ((_%$%hd240586240600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240585240597%_)))
                                                        (_%$%tl240587240602%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240585240597%_))))
                                                    (let* ((_%self240618%_
                                                            (list-ref
                                                             _%$%hd240586240600%_
                                                             _%self-index239915%_))
                                                           (_%receiver240623%_
                                                            (let ((_%$e240620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl240587240602%_))))
                      (if _%$e240620%_ _%$e240620%_ _%self240618%_)))
                   (_%body240629%_
                    (map (lambda (_%$%g240624240626%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver240623%_
                            _%$klass240380%_
                            _%method-calls237917%_
                            _%slot-refs237918%_
                            _%$%g240624240626%_))
                         _%$%tl240587240602%_)))
              (cons _%$%hd240586240600%_ _%body240629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g240581240592%_
                                                 _%$%g240582240595%_)))))
                                    (_%$%g240580240632%_ _%clause240579%_)))
                                (let ((__tmp242116
                                       (lambda (_%$%g240634240637%_
                                                _%$%g240635240639%_)
                                         (cons _%$%g240634240637%_
                                               _%$%g240635240639%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp242116
                                   '()
                                   _%$%clause240525240563%_))))
                          (__tmp242117
                           (cons '%#case-lambda _%clauses240642%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp242117
                      _%$%hd240084240146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop240520240548%_
                                              _%$%target240517240543%_
                                              '()))
                                           (_%$%g240511240530%_
                                            _%$%g240512240533%_)))))
                                 (_%$%g240511240530%_ _%$%g240512240533%_))))
                         (_%$%g240511240530%_ _%$%g240512240533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240510240644%_
                                                      _%$%hd240084240146%_)))
                                                  (_%specializer-impl240649%_
                                                   (let ((__tmp242118
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd239463239536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd239481239584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp242119
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd240078240130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr240509%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr240647%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp242119
                                         _%stx237825%_))
                                      '()))
                          '())
                    (cons _%$%hd239487239600%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd239490239608%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp242118
                                                      _%stx237825%_)))
                                                  (_%specializer-impl240651%_
                                                   (_%generate-specializer-impl237829%_
                                                    _%$klass240380%_
                                                    _%$method-table240382%_
                                                    _%methods-bind240407%_
                                                    _%slots-bind240431%_
                                                    _%specializer-impl240649%_)))
                                             (let ((__tmp242121
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g237836237898%_)))
                                                   (__tmp242120
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id240378%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp242121
                                                '" => "
                                                __tmp242120))
                                             (_%generate-specializer-def237830%_
                                              _%$%g237836237898%_
                                              _%specializer-id240378%_
                                              _%specializer-impl240651%_))))
                                     (_%$%g240060240090%_
                                      _%$%g240061240093%_))))
                             (_%$%g240060240090%_ _%$%g240061240093%_))
                         (_%$%g240060240090%_ _%$%g240061240093%_))
                     (_%$%g240060240090%_ _%$%g240061240093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240060240090%_
                                                      _%$%g240061240093%_))
                                                 (_%$%g240060240090%_
                                                  _%$%g240061240093%_))))
                                         (_%$%g240060240090%_
                                          _%$%g240061240093%_))))
                                 (_%$%g240060240090%_ _%$%g240061240093%_))))
                         (_%$%g240060240090%_ _%$%g240061240093%_))))
                 (_%$%g240060240090%_ _%$%g240061240093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g240060240090%_
                                                  _%$%g240061240093%_)))))
                                     (_%$%g240059240654%_
                                      _%$%hd239484239592%_))
                                   _%stx237825%_)))
                         (_%$%g239657239719%_ _%$%g239658239722%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop239706239841%_
                                              _%$%target239703239828%_
                                              '()))
                                           (_%$%g239657239719%_
                                            _%$%g239658239722%_))))
                                   (_%$%g239657239719%_
                                    _%$%g239658239722%_)))))
                         (_%$%g239657239719%_ _%$%g239658239722%_))
                     (_%$%g239657239719%_ _%$%g239658239722%_))
                 (_%$%g239657239719%_ _%$%g239658239722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g239657239719%_
                                                  _%$%g239658239722%_))
                                             (_%$%g239657239719%_
                                              _%$%g239658239722%_))
                                         (_%$%g239657239719%_
                                          _%$%g239658239722%_))))
                                 (_%$%g239657239719%_ _%$%g239658239722%_))))
                         (_%$%g239657239719%_ _%$%g239658239722%_))
                     (_%$%g239657239719%_ _%$%g239658239722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239657239719%_
                                                      _%$%g239658239722%_))
                                                 (_%$%g239657239719%_
                                                  _%$%g239658239722%_))
                                             (_%$%g239657239719%_
                                              _%$%g239658239722%_))))
                                     (_%$%g239657239719%_
                                      _%$%g239658239722%_))))
                             (_%$%g239657239719%_ _%$%g239658239722%_))
                         (_%$%g239657239719%_ _%$%g239658239722%_))))
                 (_%$%g239657239719%_ _%$%g239658239722%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239657239719%_
                                                      _%$%g239658239722%_))
                                                 (_%$%g239657239719%_
                                                  _%$%g239658239722%_))))
                                         (_%$%g239657239719%_
                                          _%$%g239658239722%_))))
                                 (_%$%g239657239719%_ _%$%g239658239722%_))
                             (_%$%g239657239719%_ _%$%g239658239722%_))
                         (_%$%g239657239719%_ _%$%g239658239722%_))))
                 (_%$%g239657239719%_ _%$%g239658239722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g239657239719%_
                                                  _%$%g239658239722%_))))
                                         (_%$%g239657239719%_
                                          _%$%g239658239722%_))
                                     (_%$%g239657239719%_ _%$%g239658239722%_))
                                 (_%$%g239657239719%_ _%$%g239658239722%_))))
                         (_%$%g239657239719%_ _%$%g239658239722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239656240658%_
                                                      _%$%hd239487239600%_))
                                                   (_%$%g239443239496%_
                                                    _%$%g239444239499%_))))
                                           (_%$%g239443239496%_
                                            _%$%g239444239499%_))
                                       (_%$%g239443239496%_
                                        _%$%g239444239499%_))
                                   (_%$%g239443239496%_ _%$%g239444239499%_))
                               (_%$%g239443239496%_ _%$%g239444239499%_))))
                       (_%$%g239443239496%_ _%$%g239444239499%_))
                   (_%$%g239443239496%_ _%$%g239444239499%_))
               (_%$%g239443239496%_ _%$%g239444239499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g239443239496%_
                                                _%$%g239444239499%_))
                                           (_%$%g239443239496%_
                                            _%$%g239444239499%_))))
                                   (_%$%g239443239496%_ _%$%g239444239499%_))))
                           (_%$%g239443239496%_ _%$%g239444239499%_))))
                   (_%$%g239443239496%_ _%$%g239444239499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g239443239496%_
                                                    _%$%g239444239499%_))
                                               (_%$%g239443239496%_
                                                _%$%g239444239499%_))
                                           (_%$%g239443239496%_
                                            _%$%g239444239499%_))))
                                   (_%$%g239443239496%_ _%$%g239444239499%_))))
                           (_%$%g239443239496%_ _%$%g239444239499%_))
                       (_%$%g239443239496%_ _%$%g239444239499%_))))
               (_%$%g239443239496%_ _%$%g239444239499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g239443239496%_
                                                _%$%g239444239499%_))))
                                       (_%$%g239443239496%_
                                        _%$%g239444239499%_))))
                               (_%$%g239443239496%_ _%$%g239444239499%_))
                           (_%$%g239443239496%_ _%$%g239444239499%_))
                       (_%$%g239443239496%_ _%$%g239444239499%_))))
               (_%$%g239443239496%_ _%$%g239444239499%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g239442240661%_
                                            _%$%g237835237897%_))
                                         _%stx237825%_))))))))
                  (_%__kont240888240889%_ (lambda () _%stx237825%_)))
              (let ((_%__match240917240918%_
                     (lambda (_%$%e237837237865%_
                              _%$%hd237838237868%_
                              _%$%tl237839237870%_
                              _%$%e237840237873%_
                              _%$%hd237841237876%_
                              _%$%tl237842237878%_
                              _%$%e237843237881%_
                              _%$%hd237844237884%_
                              _%$%tl237845237886%_
                              _%$%e237846237889%_
                              _%$%hd237847237892%_
                              _%$%tl237848237894%_)
                       (let ((_%$%g237835237897%_ _%$%hd237847237892%_)
                             (_%$%g237836237898%_ _%$%hd237844237884%_))
                         (if (let ((__tmp242122
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g237836237898%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp242122))
                             (_%__kont240886240887%_
                              _%$%g237835237897%_
                              _%$%g237836237898%_)
                             (_%__kont240888240889%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx240884240885%_))
                    (let ((_%$%e237837237865%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx240884240885%_))))
                      (let ((_%$%tl237839237870%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e237837237865%_)))
                            (_%$%hd237838237868%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e237837237865%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl237839237870%_))
                            (let ((_%$%e237840237873%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl237839237870%_))))
                              (let ((_%$%tl237842237878%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e237840237873%_)))
                                    (_%$%hd237841237876%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e237840237873%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd237841237876%_))
                                    (let ((_%$%e237843237881%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd237841237876%_))))
                                      (let ((_%$%tl237845237886%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e237843237881%_)))
                                            (_%$%hd237844237884%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e237843237881%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl237845237886%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl237842237878%_))
                                                (let ((_%$%e237846237889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl237842237878%_))))
                                                  (let ((_%$%tl237848237894%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e237846237889%_)))
                                                        (_%$%hd237847237892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e237846237889%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl237848237894%_))
                                                        (_%__match240917240918%_
                                                         _%$%e237837237865%_
                                                         _%$%hd237838237868%_
                                                         _%$%tl237839237870%_
                                                         _%$%e237840237873%_
                                                         _%$%hd237841237876%_
                                                         _%$%tl237842237878%_
                                                         _%$%e237843237881%_
                                                         _%$%hd237844237884%_
                                                         _%$%tl237845237886%_
                                                         _%$%e237846237889%_
                                                         _%$%hd237847237892%_
                                                         _%$%tl237848237894%_)
                                                        (_%__kont240888240889%_))))
                                                (_%__kont240888240889%_))
                                            (_%__kont240888240889%_))))
                                    (_%__kont240888240889%_))))
                            (_%__kont240888240889%_))))
                    (_%__kont240888240889%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self237677%_ _%stx237678%_)
        (let* ((_%__stx240920240921%_ _%stx237678%_)
               (_%$%g237681237714%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx240920240921%_)))))
          (let ((_%__kont240922240923%_
                 (lambda (_%$%g237683237804%_) _%$%g237683237804%_))
                (_%__kont240924240925%_
                 (lambda (_%$%g237699237743%_ _%$%g237700237744%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self237677%_ _%$%g237699237743%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx240920240921%_))
                (let ((_%$%e237684237764%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx240920240921%_))))
                  (let ((_%$%tl237686237769%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e237684237764%_)))
                        (_%$%hd237685237767%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e237684237764%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl237686237769%_))
                        (let ((_%$%e237687237772%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl237686237769%_))))
                          (let ((_%$%tl237689237777%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e237687237772%_)))
                                (_%$%hd237688237775%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e237687237772%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd237688237775%_))
                                (let ((_%$%e237690237780%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd237688237775%_))))
                                  (let ((_%$%tl237692237785%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e237690237780%_)))
                                        (_%$%hd237691237783%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e237690237780%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd237691237783%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd237691237783%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl237692237785%_))
                                                (let ((_%$%e237693237788%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl237692237785%_))))
                                                  (let ((_%$%tl237695237793%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e237693237788%_)))
                                                        (_%$%hd237694237791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e237693237788%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl237695237793%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl237689237777%_))
                                                            (let ((_%$%e237696237796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl237689237777%_))))
                      (let ((_%$%tl237698237801%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e237696237796%_)))
                            (_%$%hd237697237799%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e237696237796%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl237698237801%_))
                            (_%__kont240922240923%_ _%$%hd237694237791%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g237681237714%_)))))
                    (let () (declare (not safe)) (_%$%g237681237714%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl237689237777%_))
                    (let ((_%$%e237707237735%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl237689237777%_))))
                      (let ((_%$%tl237709237740%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e237707237735%_)))
                            (_%$%hd237708237738%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e237707237735%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl237709237740%_))
                            (_%__kont240924240925%_
                             _%$%hd237708237738%_
                             _%$%hd237688237775%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g237681237714%_)))))
                    (let () (declare (not safe)) (_%$%g237681237714%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl237689237777%_))
                                                    (let ((_%$%e237707237735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl237689237777%_))))
                                                      (let ((_%$%tl237709237740%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e237707237735%_)))
                    (_%$%hd237708237738%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e237707237735%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl237709237740%_))
                    (_%__kont240924240925%_
                     _%$%hd237708237738%_
                     _%$%hd237688237775%_)
                    (let () (declare (not safe)) (_%$%g237681237714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g237681237714%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl237689237777%_))
                                                (let ((_%$%e237707237735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl237689237777%_))))
                                                  (let ((_%$%tl237709237740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e237707237735%_)))
                                                        (_%$%hd237708237738%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e237707237735%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl237709237740%_))
                                                        (_%__kont240924240925%_
                                                         _%$%hd237708237738%_
                                                         _%$%hd237688237775%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g237681237714%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g237681237714%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl237689237777%_))
                                            (let ((_%$%e237707237735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl237689237777%_))))
                                              (let ((_%$%tl237709237740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e237707237735%_)))
                                                    (_%$%hd237708237738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e237707237735%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl237709237740%_))
                                                    (_%__kont240924240925%_
                                                     _%$%hd237708237738%_
                                                     _%$%hd237688237775%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g237681237714%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g237681237714%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl237689237777%_))
                                    (let ((_%$%e237707237735%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl237689237777%_))))
                                      (let ((_%$%tl237709237740%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e237707237735%_)))
                                            (_%$%hd237708237738%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e237707237735%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl237709237740%_))
                                            (_%__kont240924240925%_
                                             _%$%hd237708237738%_
                                             _%$%hd237688237775%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g237681237714%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g237681237714%_))))))
                        (let () (declare (not safe)) (_%$%g237681237714%_)))))
                (let () (declare (not safe)) (_%$%g237681237714%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self237593%_ _%stx237594%_)
        (let* ((_%$%g237596237617%_
                (lambda (_%$%g237597237614%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g237597237614%_))))
               (_%$%g237595237674%_
                (lambda (_%$%g237597237620%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g237597237620%_))
                      (let ((_%$%e237601237622%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g237597237620%_))))
                        (let ((_%$%hd237602237625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e237601237622%_)))
                              (_%$%tl237603237627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e237601237622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl237603237627%_))
                              (let ((_%$%e237604237630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl237603237627%_))))
                                (let ((_%$%hd237605237633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e237604237630%_)))
                                      (_%$%tl237606237635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e237604237630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl237606237635%_))
                                      (let ((_%$%e237607237638%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl237606237635%_))))
                                        (let ((_%$%hd237608237641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e237607237638%_)))
                                              (_%$%tl237609237643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e237607237638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl237609237643%_))
                                              (let ((_%$%e237610237646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl237609237643%_))))
                                                (let ((_%$%hd237611237649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e237610237646%_)))
                                                      (_%$%tl237612237651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e237610237646%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl237612237651%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self237593%_
                                                         _%$%hd237608237641%_))
                                                      (_%$%g237596237617%_
                                                       _%$%g237597237620%_))))
                                              (_%$%g237596237617%_
                                               _%$%g237597237620%_))))
                                      (_%$%g237596237617%_
                                       _%$%g237597237620%_))))
                              (_%$%g237596237617%_ _%$%g237597237620%_))))
                      (_%$%g237596237617%_ _%$%g237597237620%_)))))
          (_%$%g237595237674%_ _%stx237594%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self236558%_ _%stx236559%_)
        (let* ((_%__stx240986240987%_ _%stx236559%_)
               (_%$%g236567236789%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx240986240987%_)))))
          (let ((_%__kont240988240989%_
                 (lambda (_%$%g236569237542%_
                          _%$%g236570237543%_
                          _%$%g236571237544%_
                          _%$%g236572237545%_)
                   (let ((__tmp242124
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236558%_ 'methods)))
                         (__tmp242123
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236570237543%_))))
                     (declare (not safe))
                     (hash-put! __tmp242124 __tmp242123 '#t))
                   (for-each
                    (lambda (_%$%g237578237580%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self236558%_ _%$%g237578237580%_)))
                    (let ((__tmp242125
                           (lambda (_%$%g237582237585%_ _%$%g237583237587%_)
                             (cons _%$%g237582237585%_ _%$%g237583237587%_))))
                      (declare (not safe))
                      (foldr__0 __tmp242125 '() _%$%g236569237542%_)))))
                (_%__kont240992240993%_
                 (lambda (_%$%g236612237379%_
                          _%$%g236613237380%_
                          _%$%g236614237381%_
                          _%$%g236615237382%_
                          _%$%g236616237383%_)
                   (let ((__tmp242127
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236558%_ 'methods)))
                         (__tmp242126
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236613237380%_))))
                     (declare (not safe))
                     (hash-put! __tmp242127 __tmp242126 '#t))
                   (for-each
                    (lambda (_%$%g237423237425%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self236558%_ _%$%g237423237425%_)))
                    (let ((__tmp242128
                           (lambda (_%$%g237427237430%_ _%$%g237428237432%_)
                             (cons _%$%g237427237430%_ _%$%g237428237432%_))))
                      (declare (not safe))
                      (foldr__0 __tmp242128 '() _%$%g236612237379%_)))))
                (_%__kont240996240997%_
                 (lambda (_%$%g236665237214%_
                          _%$%g236666237215%_
                          _%$%g236667237216%_)
                   (let ((__tmp242130
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236558%_ 'slots)))
                         (__tmp242129
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236665237214%_))))
                     (declare (not safe))
                     (hash-put! __tmp242130 __tmp242129 '#t))))
                (_%__kont240998240999%_
                 (lambda (_%$%g236698237091%_
                          _%$%g236699237092%_
                          _%$%g236700237093%_
                          _%$%g236701237094%_)
                   (let ((__tmp242132
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236558%_ 'slots)))
                         (__tmp242131
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236699237092%_))))
                     (declare (not safe))
                     (hash-put! __tmp242132 __tmp242131 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self236558%_ _%$%g236698237091%_))))
                (_%__kont241000241001%_
                 (lambda (_%$%g236735236965%_ _%$%g236736236966%_)
                   (let* ((_%accessor236988%_
                           (let ((__tmp242133
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g236736236966%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp242133)))
                          (_%klass236990%_
                           (let ((__tmp242134
                                  (##structure-ref
                                   _%accessor236988%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx236559%_
                              __tmp242134)))
                          (_%slot236992%_
                           (##structure-ref
                            _%accessor236988%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor236988%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass236990%_
                                    _%slot236992%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass236990%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp242136
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self236558%_ 'slots)))
                               (__tmp242135
                                (##structure-ref
                                 _%accessor236988%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp242136 __tmp242135 '#t))))))
                (_%__kont241002241003%_
                 (lambda (_%$%g236758236865%_
                          _%$%g236759236866%_
                          _%$%g236760236867%_)
                   (let* ((_%mutator236894%_
                           (let ((__tmp242137
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g236760236867%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp242137)))
                          (_%klass236896%_
                           (let ((__tmp242138
                                  (##structure-ref
                                   _%mutator236894%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx236559%_
                              __tmp242138)))
                          (_%slot236898%_
                           (##structure-ref
                            _%mutator236894%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator236894%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass236896%_
                                    _%slot236898%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass236896%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp242139
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self236558%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp242139 _%slot236898%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self236558%_
                        _%$%g236758236865%_)))))
                (_%__kont241004241005%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self236558%_ _%stx236559%_)))))
            (let* ((_%__match241485241486%_
                    (lambda (_%$%e236761236801%_
                             _%$%hd236762236804%_
                             _%$%tl236763236806%_
                             _%$%e236764236809%_
                             _%$%hd236765236812%_
                             _%$%tl236766236814%_
                             _%$%e236767236817%_
                             _%$%hd236768236820%_
                             _%$%tl236769236822%_
                             _%$%e236770236825%_
                             _%$%hd236771236828%_
                             _%$%tl236772236830%_
                             _%$%e236773236833%_
                             _%$%hd236774236836%_
                             _%$%tl236775236838%_
                             _%$%e236776236841%_
                             _%$%hd236777236844%_
                             _%$%tl236778236846%_
                             _%$%e236779236849%_
                             _%$%hd236780236852%_
                             _%$%tl236781236854%_
                             _%$%e236782236857%_
                             _%$%hd236783236860%_
                             _%$%tl236784236862%_)
                      (let ((_%$%g236758236865%_ _%$%hd236783236860%_)
                            (_%$%g236759236866%_ _%$%hd236780236852%_)
                            (_%$%g236760236867%_ _%$%hd236771236828%_))
                        (if (and (let ((__tmp242140
                                        (let ((__tmp242141
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g236760236867%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp242141))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp242140
                                    'gxc#!mutator::t))
                                 (let ((__tmp242142
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236558%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g236759236866%_
                                    __tmp242142)))
                            (_%__kont241002241003%_
                             _%$%g236758236865%_
                             _%$%g236759236866%_
                             _%$%g236760236867%_)
                            (_%__kont241004241005%_)))))
                   (_%__match241483241484%_
                    (lambda (_%$%e236761236801%_
                             _%$%hd236762236804%_
                             _%$%tl236763236806%_
                             _%$%e236764236809%_
                             _%$%hd236765236812%_
                             _%$%tl236766236814%_
                             _%$%e236767236817%_
                             _%$%hd236768236820%_
                             _%$%tl236769236822%_
                             _%$%e236770236825%_
                             _%$%hd236771236828%_
                             _%$%tl236772236830%_
                             _%$%e236773236833%_
                             _%$%hd236774236836%_
                             _%$%tl236775236838%_
                             _%$%e236776236841%_
                             _%$%hd236777236844%_
                             _%$%tl236778236846%_
                             _%$%e236779236849%_
                             _%$%hd236780236852%_
                             _%$%tl236781236854%_
                             _%$%e236782236857%_
                             _%$%hd236783236860%_
                             _%$%tl236784236862%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl236784236862%_))
                          (_%__match241485241486%_
                           _%$%e236761236801%_
                           _%$%hd236762236804%_
                           _%$%tl236763236806%_
                           _%$%e236764236809%_
                           _%$%hd236765236812%_
                           _%$%tl236766236814%_
                           _%$%e236767236817%_
                           _%$%hd236768236820%_
                           _%$%tl236769236822%_
                           _%$%e236770236825%_
                           _%$%hd236771236828%_
                           _%$%tl236772236830%_
                           _%$%e236773236833%_
                           _%$%hd236774236836%_
                           _%$%tl236775236838%_
                           _%$%e236776236841%_
                           _%$%hd236777236844%_
                           _%$%tl236778236846%_
                           _%$%e236779236849%_
                           _%$%hd236780236852%_
                           _%$%tl236781236854%_
                           _%$%e236782236857%_
                           _%$%hd236783236860%_
                           _%$%tl236784236862%_)
                          (_%__kont241004241005%_))))
                   (_%__match241477241478%_
                    (lambda (_%$%e236761236801%_
                             _%$%hd236762236804%_
                             _%$%tl236763236806%_
                             _%$%e236764236809%_
                             _%$%hd236765236812%_
                             _%$%tl236766236814%_
                             _%$%e236767236817%_
                             _%$%hd236768236820%_
                             _%$%tl236769236822%_
                             _%$%e236770236825%_
                             _%$%hd236771236828%_
                             _%$%tl236772236830%_
                             _%$%e236773236833%_
                             _%$%hd236774236836%_
                             _%$%tl236775236838%_
                             _%$%e236776236841%_
                             _%$%hd236777236844%_
                             _%$%tl236778236846%_
                             _%$%e236779236849%_
                             _%$%hd236780236852%_
                             _%$%tl236781236854%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl236775236838%_))
                          (let ((_%$%e236782236857%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl236775236838%_))))
                            (let ((_%$%tl236784236862%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236782236857%_)))
                                  (_%$%hd236783236860%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236782236857%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl236784236862%_))
                                  (_%__match241485241486%_
                                   _%$%e236761236801%_
                                   _%$%hd236762236804%_
                                   _%$%tl236763236806%_
                                   _%$%e236764236809%_
                                   _%$%hd236765236812%_
                                   _%$%tl236766236814%_
                                   _%$%e236767236817%_
                                   _%$%hd236768236820%_
                                   _%$%tl236769236822%_
                                   _%$%e236770236825%_
                                   _%$%hd236771236828%_
                                   _%$%tl236772236830%_
                                   _%$%e236773236833%_
                                   _%$%hd236774236836%_
                                   _%$%tl236775236838%_
                                   _%$%e236776236841%_
                                   _%$%hd236777236844%_
                                   _%$%tl236778236846%_
                                   _%$%e236779236849%_
                                   _%$%hd236780236852%_
                                   _%$%tl236781236854%_
                                   _%$%e236782236857%_
                                   _%$%hd236783236860%_
                                   _%$%tl236784236862%_)
                                  (_%__kont241004241005%_))))
                          (_%__kont241004241005%_))))
                   (_%__match241423241424%_
                    (lambda (_%$%e236737236909%_
                             _%$%hd236738236912%_
                             _%$%tl236739236914%_
                             _%$%e236740236917%_
                             _%$%hd236741236920%_
                             _%$%tl236742236922%_
                             _%$%e236743236925%_
                             _%$%hd236744236928%_
                             _%$%tl236745236930%_
                             _%$%e236746236933%_
                             _%$%hd236747236936%_
                             _%$%tl236748236938%_
                             _%$%e236749236941%_
                             _%$%hd236750236944%_
                             _%$%tl236751236946%_
                             _%$%e236752236949%_
                             _%$%hd236753236952%_
                             _%$%tl236754236954%_
                             _%$%e236755236957%_
                             _%$%hd236756236960%_
                             _%$%tl236757236962%_)
                      (let ((_%$%g236735236965%_ _%$%hd236756236960%_)
                            (_%$%g236736236966%_ _%$%hd236747236936%_))
                        (if (and (let ((__tmp242143
                                        (let ((__tmp242144
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g236736236966%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp242144))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp242143
                                    'gxc#!accessor::t))
                                 (let ((__tmp242145
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236558%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g236735236965%_
                                    __tmp242145)))
                            (_%__kont241000241001%_
                             _%$%g236735236965%_
                             _%$%g236736236966%_)
                            (_%__kont241004241005%_)))))
                   (_%__match241421241422%_
                    (lambda (_%$%e236737236909%_
                             _%$%hd236738236912%_
                             _%$%tl236739236914%_
                             _%$%e236740236917%_
                             _%$%hd236741236920%_
                             _%$%tl236742236922%_
                             _%$%e236743236925%_
                             _%$%hd236744236928%_
                             _%$%tl236745236930%_
                             _%$%e236746236933%_
                             _%$%hd236747236936%_
                             _%$%tl236748236938%_
                             _%$%e236749236941%_
                             _%$%hd236750236944%_
                             _%$%tl236751236946%_
                             _%$%e236752236949%_
                             _%$%hd236753236952%_
                             _%$%tl236754236954%_
                             _%$%e236755236957%_
                             _%$%hd236756236960%_
                             _%$%tl236757236962%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl236751236946%_))
                          (_%__match241423241424%_
                           _%$%e236737236909%_
                           _%$%hd236738236912%_
                           _%$%tl236739236914%_
                           _%$%e236740236917%_
                           _%$%hd236741236920%_
                           _%$%tl236742236922%_
                           _%$%e236743236925%_
                           _%$%hd236744236928%_
                           _%$%tl236745236930%_
                           _%$%e236746236933%_
                           _%$%hd236747236936%_
                           _%$%tl236748236938%_
                           _%$%e236749236941%_
                           _%$%hd236750236944%_
                           _%$%tl236751236946%_
                           _%$%e236752236949%_
                           _%$%hd236753236952%_
                           _%$%tl236754236954%_
                           _%$%e236755236957%_
                           _%$%hd236756236960%_
                           _%$%tl236757236962%_)
                          (_%__match241477241478%_
                           _%$%e236737236909%_
                           _%$%hd236738236912%_
                           _%$%tl236739236914%_
                           _%$%e236740236917%_
                           _%$%hd236741236920%_
                           _%$%tl236742236922%_
                           _%$%e236743236925%_
                           _%$%hd236744236928%_
                           _%$%tl236745236930%_
                           _%$%e236746236933%_
                           _%$%hd236747236936%_
                           _%$%tl236748236938%_
                           _%$%e236749236941%_
                           _%$%hd236750236944%_
                           _%$%tl236751236946%_
                           _%$%e236752236949%_
                           _%$%hd236753236952%_
                           _%$%tl236754236954%_
                           _%$%e236755236957%_
                           _%$%hd236756236960%_
                           _%$%tl236757236962%_))))
                   (_%__match241367241368%_
                    (lambda (_%$%e236702237003%_
                             _%$%hd236703237006%_
                             _%$%tl236704237008%_
                             _%$%e236705237011%_
                             _%$%hd236706237014%_
                             _%$%tl236707237016%_
                             _%$%e236708237019%_
                             _%$%hd236709237022%_
                             _%$%tl236710237024%_
                             _%$%e236711237027%_
                             _%$%hd236712237030%_
                             _%$%tl236713237032%_
                             _%$%e236714237035%_
                             _%$%hd236715237038%_
                             _%$%tl236716237040%_
                             _%$%e236717237043%_
                             _%$%hd236718237046%_
                             _%$%tl236719237048%_
                             _%$%e236720237051%_
                             _%$%hd236721237054%_
                             _%$%tl236722237056%_
                             _%$%e236723237059%_
                             _%$%hd236724237062%_
                             _%$%tl236725237064%_
                             _%$%e236726237067%_
                             _%$%hd236727237070%_
                             _%$%tl236728237072%_
                             _%$%e236729237075%_
                             _%$%hd236730237078%_
                             _%$%tl236731237080%_
                             _%$%e236732237083%_
                             _%$%hd236733237086%_
                             _%$%tl236734237088%_)
                      (let ((_%$%g236698237091%_ _%$%hd236733237086%_)
                            (_%$%g236699237092%_ _%$%hd236730237078%_)
                            (_%$%g236700237093%_ _%$%hd236721237054%_)
                            (_%$%g236701237094%_ _%$%hd236712237030%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236701237094%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236701237094%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp242146
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236558%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g236700237093%_
                                    __tmp242146)))
                            (_%__kont240998240999%_
                             _%$%g236698237091%_
                             _%$%g236699237092%_
                             _%$%g236700237093%_
                             _%$%g236701237094%_)
                            (_%__kont241004241005%_)))))
                   (_%__match241359241360%_
                    (lambda (_%$%e236702237003%_
                             _%$%hd236703237006%_
                             _%$%tl236704237008%_
                             _%$%e236705237011%_
                             _%$%hd236706237014%_
                             _%$%tl236707237016%_
                             _%$%e236708237019%_
                             _%$%hd236709237022%_
                             _%$%tl236710237024%_
                             _%$%e236711237027%_
                             _%$%hd236712237030%_
                             _%$%tl236713237032%_
                             _%$%e236714237035%_
                             _%$%hd236715237038%_
                             _%$%tl236716237040%_
                             _%$%e236717237043%_
                             _%$%hd236718237046%_
                             _%$%tl236719237048%_
                             _%$%e236720237051%_
                             _%$%hd236721237054%_
                             _%$%tl236722237056%_
                             _%$%e236723237059%_
                             _%$%hd236724237062%_
                             _%$%tl236725237064%_
                             _%$%e236726237067%_
                             _%$%hd236727237070%_
                             _%$%tl236728237072%_
                             _%$%e236729237075%_
                             _%$%hd236730237078%_
                             _%$%tl236731237080%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl236725237064%_))
                          (let ((_%$%e236732237083%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl236725237064%_))))
                            (let ((_%$%tl236734237088%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236732237083%_)))
                                  (_%$%hd236733237086%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236732237083%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl236734237088%_))
                                  (_%__match241367241368%_
                                   _%$%e236702237003%_
                                   _%$%hd236703237006%_
                                   _%$%tl236704237008%_
                                   _%$%e236705237011%_
                                   _%$%hd236706237014%_
                                   _%$%tl236707237016%_
                                   _%$%e236708237019%_
                                   _%$%hd236709237022%_
                                   _%$%tl236710237024%_
                                   _%$%e236711237027%_
                                   _%$%hd236712237030%_
                                   _%$%tl236713237032%_
                                   _%$%e236714237035%_
                                   _%$%hd236715237038%_
                                   _%$%tl236716237040%_
                                   _%$%e236717237043%_
                                   _%$%hd236718237046%_
                                   _%$%tl236719237048%_
                                   _%$%e236720237051%_
                                   _%$%hd236721237054%_
                                   _%$%tl236722237056%_
                                   _%$%e236723237059%_
                                   _%$%hd236724237062%_
                                   _%$%tl236725237064%_
                                   _%$%e236726237067%_
                                   _%$%hd236727237070%_
                                   _%$%tl236728237072%_
                                   _%$%e236729237075%_
                                   _%$%hd236730237078%_
                                   _%$%tl236731237080%_
                                   _%$%e236732237083%_
                                   _%$%hd236733237086%_
                                   _%$%tl236734237088%_)
                                  (_%__kont241004241005%_))))
                          (_%__match241483241484%_
                           _%$%e236702237003%_
                           _%$%hd236703237006%_
                           _%$%tl236704237008%_
                           _%$%e236705237011%_
                           _%$%hd236706237014%_
                           _%$%tl236707237016%_
                           _%$%e236708237019%_
                           _%$%hd236709237022%_
                           _%$%tl236710237024%_
                           _%$%e236711237027%_
                           _%$%hd236712237030%_
                           _%$%tl236713237032%_
                           _%$%e236714237035%_
                           _%$%hd236715237038%_
                           _%$%tl236716237040%_
                           _%$%e236717237043%_
                           _%$%hd236718237046%_
                           _%$%tl236719237048%_
                           _%$%e236720237051%_
                           _%$%hd236721237054%_
                           _%$%tl236722237056%_
                           _%$%e236723237059%_
                           _%$%hd236724237062%_
                           _%$%tl236725237064%_))))
                   (_%__match241281241282%_
                    (lambda (_%$%e236668237134%_
                             _%$%hd236669237137%_
                             _%$%tl236670237139%_
                             _%$%e236671237142%_
                             _%$%hd236672237145%_
                             _%$%tl236673237147%_
                             _%$%e236674237150%_
                             _%$%hd236675237153%_
                             _%$%tl236676237155%_
                             _%$%e236677237158%_
                             _%$%hd236678237161%_
                             _%$%tl236679237163%_
                             _%$%e236680237166%_
                             _%$%hd236681237169%_
                             _%$%tl236682237171%_
                             _%$%e236683237174%_
                             _%$%hd236684237177%_
                             _%$%tl236685237179%_
                             _%$%e236686237182%_
                             _%$%hd236687237185%_
                             _%$%tl236688237187%_
                             _%$%e236689237190%_
                             _%$%hd236690237193%_
                             _%$%tl236691237195%_
                             _%$%e236692237198%_
                             _%$%hd236693237201%_
                             _%$%tl236694237203%_
                             _%$%e236695237206%_
                             _%$%hd236696237209%_
                             _%$%tl236697237211%_)
                      (let ((_%$%g236665237214%_ _%$%hd236696237209%_)
                            (_%$%g236666237215%_ _%$%hd236687237185%_)
                            (_%$%g236667237216%_ _%$%hd236678237161%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236667237216%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236667237216%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp242147
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236558%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g236666237215%_
                                    __tmp242147)))
                            (_%__kont240996240997%_
                             _%$%g236665237214%_
                             _%$%g236666237215%_
                             _%$%g236667237216%_)
                            (_%__match241485241486%_
                             _%$%e236668237134%_
                             _%$%hd236669237137%_
                             _%$%tl236670237139%_
                             _%$%e236671237142%_
                             _%$%hd236672237145%_
                             _%$%tl236673237147%_
                             _%$%e236674237150%_
                             _%$%hd236675237153%_
                             _%$%tl236676237155%_
                             _%$%e236677237158%_
                             _%$%hd236678237161%_
                             _%$%tl236679237163%_
                             _%$%e236680237166%_
                             _%$%hd236681237169%_
                             _%$%tl236682237171%_
                             _%$%e236683237174%_
                             _%$%hd236684237177%_
                             _%$%tl236685237179%_
                             _%$%e236686237182%_
                             _%$%hd236687237185%_
                             _%$%tl236688237187%_
                             _%$%e236689237190%_
                             _%$%hd236690237193%_
                             _%$%tl236691237195%_)))))
                   (_%__match241279241280%_
                    (lambda (_%$%e236668237134%_
                             _%$%hd236669237137%_
                             _%$%tl236670237139%_
                             _%$%e236671237142%_
                             _%$%hd236672237145%_
                             _%$%tl236673237147%_
                             _%$%e236674237150%_
                             _%$%hd236675237153%_
                             _%$%tl236676237155%_
                             _%$%e236677237158%_
                             _%$%hd236678237161%_
                             _%$%tl236679237163%_
                             _%$%e236680237166%_
                             _%$%hd236681237169%_
                             _%$%tl236682237171%_
                             _%$%e236683237174%_
                             _%$%hd236684237177%_
                             _%$%tl236685237179%_
                             _%$%e236686237182%_
                             _%$%hd236687237185%_
                             _%$%tl236688237187%_
                             _%$%e236689237190%_
                             _%$%hd236690237193%_
                             _%$%tl236691237195%_
                             _%$%e236692237198%_
                             _%$%hd236693237201%_
                             _%$%tl236694237203%_
                             _%$%e236695237206%_
                             _%$%hd236696237209%_
                             _%$%tl236697237211%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl236691237195%_))
                          (_%__match241281241282%_
                           _%$%e236668237134%_
                           _%$%hd236669237137%_
                           _%$%tl236670237139%_
                           _%$%e236671237142%_
                           _%$%hd236672237145%_
                           _%$%tl236673237147%_
                           _%$%e236674237150%_
                           _%$%hd236675237153%_
                           _%$%tl236676237155%_
                           _%$%e236677237158%_
                           _%$%hd236678237161%_
                           _%$%tl236679237163%_
                           _%$%e236680237166%_
                           _%$%hd236681237169%_
                           _%$%tl236682237171%_
                           _%$%e236683237174%_
                           _%$%hd236684237177%_
                           _%$%tl236685237179%_
                           _%$%e236686237182%_
                           _%$%hd236687237185%_
                           _%$%tl236688237187%_
                           _%$%e236689237190%_
                           _%$%hd236690237193%_
                           _%$%tl236691237195%_
                           _%$%e236692237198%_
                           _%$%hd236693237201%_
                           _%$%tl236694237203%_
                           _%$%e236695237206%_
                           _%$%hd236696237209%_
                           _%$%tl236697237211%_)
                          (_%__match241359241360%_
                           _%$%e236668237134%_
                           _%$%hd236669237137%_
                           _%$%tl236670237139%_
                           _%$%e236671237142%_
                           _%$%hd236672237145%_
                           _%$%tl236673237147%_
                           _%$%e236674237150%_
                           _%$%hd236675237153%_
                           _%$%tl236676237155%_
                           _%$%e236677237158%_
                           _%$%hd236678237161%_
                           _%$%tl236679237163%_
                           _%$%e236680237166%_
                           _%$%hd236681237169%_
                           _%$%tl236682237171%_
                           _%$%e236683237174%_
                           _%$%hd236684237177%_
                           _%$%tl236685237179%_
                           _%$%e236686237182%_
                           _%$%hd236687237185%_
                           _%$%tl236688237187%_
                           _%$%e236689237190%_
                           _%$%hd236690237193%_
                           _%$%tl236691237195%_
                           _%$%e236692237198%_
                           _%$%hd236693237201%_
                           _%$%tl236694237203%_
                           _%$%e236695237206%_
                           _%$%hd236696237209%_
                           _%$%tl236697237211%_))))
                   (_%__match241269241270%_
                    (lambda (_%$%e236668237134%_
                             _%$%hd236669237137%_
                             _%$%tl236670237139%_
                             _%$%e236671237142%_
                             _%$%hd236672237145%_
                             _%$%tl236673237147%_
                             _%$%e236674237150%_
                             _%$%hd236675237153%_
                             _%$%tl236676237155%_
                             _%$%e236677237158%_
                             _%$%hd236678237161%_
                             _%$%tl236679237163%_
                             _%$%e236680237166%_
                             _%$%hd236681237169%_
                             _%$%tl236682237171%_
                             _%$%e236683237174%_
                             _%$%hd236684237177%_
                             _%$%tl236685237179%_
                             _%$%e236686237182%_
                             _%$%hd236687237185%_
                             _%$%tl236688237187%_
                             _%$%e236689237190%_
                             _%$%hd236690237193%_
                             _%$%tl236691237195%_
                             _%$%e236692237198%_
                             _%$%hd236693237201%_
                             _%$%tl236694237203%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd236693237201%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl236694237203%_))
                              (let ((_%$%e236695237206%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl236694237203%_))))
                                (let ((_%$%tl236697237211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e236695237206%_)))
                                      (_%$%hd236696237209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e236695237206%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl236697237211%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl236691237195%_))
                                          (_%__match241281241282%_
                                           _%$%e236668237134%_
                                           _%$%hd236669237137%_
                                           _%$%tl236670237139%_
                                           _%$%e236671237142%_
                                           _%$%hd236672237145%_
                                           _%$%tl236673237147%_
                                           _%$%e236674237150%_
                                           _%$%hd236675237153%_
                                           _%$%tl236676237155%_
                                           _%$%e236677237158%_
                                           _%$%hd236678237161%_
                                           _%$%tl236679237163%_
                                           _%$%e236680237166%_
                                           _%$%hd236681237169%_
                                           _%$%tl236682237171%_
                                           _%$%e236683237174%_
                                           _%$%hd236684237177%_
                                           _%$%tl236685237179%_
                                           _%$%e236686237182%_
                                           _%$%hd236687237185%_
                                           _%$%tl236688237187%_
                                           _%$%e236689237190%_
                                           _%$%hd236690237193%_
                                           _%$%tl236691237195%_
                                           _%$%e236692237198%_
                                           _%$%hd236693237201%_
                                           _%$%tl236694237203%_
                                           _%$%e236695237206%_
                                           _%$%hd236696237209%_
                                           _%$%tl236697237211%_)
                                          (_%__match241359241360%_
                                           _%$%e236668237134%_
                                           _%$%hd236669237137%_
                                           _%$%tl236670237139%_
                                           _%$%e236671237142%_
                                           _%$%hd236672237145%_
                                           _%$%tl236673237147%_
                                           _%$%e236674237150%_
                                           _%$%hd236675237153%_
                                           _%$%tl236676237155%_
                                           _%$%e236677237158%_
                                           _%$%hd236678237161%_
                                           _%$%tl236679237163%_
                                           _%$%e236680237166%_
                                           _%$%hd236681237169%_
                                           _%$%tl236682237171%_
                                           _%$%e236683237174%_
                                           _%$%hd236684237177%_
                                           _%$%tl236685237179%_
                                           _%$%e236686237182%_
                                           _%$%hd236687237185%_
                                           _%$%tl236688237187%_
                                           _%$%e236689237190%_
                                           _%$%hd236690237193%_
                                           _%$%tl236691237195%_
                                           _%$%e236692237198%_
                                           _%$%hd236693237201%_
                                           _%$%tl236694237203%_
                                           _%$%e236695237206%_
                                           _%$%hd236696237209%_
                                           _%$%tl236697237211%_))
                                      (_%__match241483241484%_
                                       _%$%e236668237134%_
                                       _%$%hd236669237137%_
                                       _%$%tl236670237139%_
                                       _%$%e236671237142%_
                                       _%$%hd236672237145%_
                                       _%$%tl236673237147%_
                                       _%$%e236674237150%_
                                       _%$%hd236675237153%_
                                       _%$%tl236676237155%_
                                       _%$%e236677237158%_
                                       _%$%hd236678237161%_
                                       _%$%tl236679237163%_
                                       _%$%e236680237166%_
                                       _%$%hd236681237169%_
                                       _%$%tl236682237171%_
                                       _%$%e236683237174%_
                                       _%$%hd236684237177%_
                                       _%$%tl236685237179%_
                                       _%$%e236686237182%_
                                       _%$%hd236687237185%_
                                       _%$%tl236688237187%_
                                       _%$%e236689237190%_
                                       _%$%hd236690237193%_
                                       _%$%tl236691237195%_))))
                              (_%__match241483241484%_
                               _%$%e236668237134%_
                               _%$%hd236669237137%_
                               _%$%tl236670237139%_
                               _%$%e236671237142%_
                               _%$%hd236672237145%_
                               _%$%tl236673237147%_
                               _%$%e236674237150%_
                               _%$%hd236675237153%_
                               _%$%tl236676237155%_
                               _%$%e236677237158%_
                               _%$%hd236678237161%_
                               _%$%tl236679237163%_
                               _%$%e236680237166%_
                               _%$%hd236681237169%_
                               _%$%tl236682237171%_
                               _%$%e236683237174%_
                               _%$%hd236684237177%_
                               _%$%tl236685237179%_
                               _%$%e236686237182%_
                               _%$%hd236687237185%_
                               _%$%tl236688237187%_
                               _%$%e236689237190%_
                               _%$%hd236690237193%_
                               _%$%tl236691237195%_))
                          (_%__match241483241484%_
                           _%$%e236668237134%_
                           _%$%hd236669237137%_
                           _%$%tl236670237139%_
                           _%$%e236671237142%_
                           _%$%hd236672237145%_
                           _%$%tl236673237147%_
                           _%$%e236674237150%_
                           _%$%hd236675237153%_
                           _%$%tl236676237155%_
                           _%$%e236677237158%_
                           _%$%hd236678237161%_
                           _%$%tl236679237163%_
                           _%$%e236680237166%_
                           _%$%hd236681237169%_
                           _%$%tl236682237171%_
                           _%$%e236683237174%_
                           _%$%hd236684237177%_
                           _%$%tl236685237179%_
                           _%$%e236686237182%_
                           _%$%hd236687237185%_
                           _%$%tl236688237187%_
                           _%$%e236689237190%_
                           _%$%hd236690237193%_
                           _%$%tl236691237195%_))))
                   (_%__match241201241202%_
                    (lambda (_%$%e236617237253%_
                             _%$%hd236618237256%_
                             _%$%tl236619237258%_
                             _%$%e236620237261%_
                             _%$%hd236621237264%_
                             _%$%tl236622237266%_
                             _%$%e236623237269%_
                             _%$%hd236624237272%_
                             _%$%tl236625237274%_
                             _%$%e236626237277%_
                             _%$%hd236627237280%_
                             _%$%tl236628237282%_
                             _%$%e236629237285%_
                             _%$%hd236630237288%_
                             _%$%tl236631237290%_
                             _%$%e236632237293%_
                             _%$%hd236633237296%_
                             _%$%tl236634237298%_
                             _%$%e236635237301%_
                             _%$%hd236636237304%_
                             _%$%tl236637237306%_
                             _%$%e236638237309%_
                             _%$%hd236639237312%_
                             _%$%tl236640237314%_
                             _%$%e236641237317%_
                             _%$%hd236642237320%_
                             _%$%tl236643237322%_
                             _%$%e236644237325%_
                             _%$%hd236645237328%_
                             _%$%tl236646237330%_
                             _%$%e236647237333%_
                             _%$%hd236648237336%_
                             _%$%tl236649237338%_
                             _%$%e236650237341%_
                             _%$%hd236651237344%_
                             _%$%tl236652237346%_
                             _%$%e236653237349%_
                             _%$%hd236654237352%_
                             _%$%tl236655237354%_
                             _%__splice240994240995%_
                             _%$%target236656237357%_
                             _%$%tl236658237359%_)
                      (letrec ((_%$%loop236659237362%_
                                (lambda (_%$%hd236657237365%_
                                         _%$%args236663237367%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd236657237365%_))
                                      (let ((_%$%e236660237369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd236657237365%_))))
                                        (let ((_%$%lp-tl236662237374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e236660237369%_)))
                                              (_%$%lp-hd236661237372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e236660237369%_))))
                                          (_%$%loop236659237362%_
                                           _%$%lp-tl236662237374%_
                                           (cons _%$%lp-hd236661237372%_
                                                 _%$%args236663237367%_))))
                                      (let ((_%$%args236664237377%_
                                             (reverse _%$%args236663237367%_)))
                                        (let ((_%$%g236612237379%_
                                               _%$%args236664237377%_)
                                              (_%$%g236613237380%_
                                               _%$%hd236654237352%_)
                                              (_%$%g236614237381%_
                                               _%$%hd236645237328%_)
                                              (_%$%g236615237382%_
                                               _%$%hd236636237304%_)
                                              (_%$%g236616237383%_
                                               _%$%hd236627237280%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g236616237383%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g236615237382%_
                                                      'call-method))
                                                   (let ((__tmp242148
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self236558%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g236614237381%_
                                                      __tmp242148)))
                                              (_%__kont240992240993%_
                                               _%$%g236612237379%_
                                               _%$%g236613237380%_
                                               _%$%g236614237381%_
                                               _%$%g236615237382%_
                                               _%$%g236616237383%_)
                                              (_%__kont241004241005%_))))))))
                        (_%$%loop236659237362%_
                         _%$%target236656237357%_
                         '()))))
                   (_%__match241159241160%_
                    (lambda (_%$%e236617237253%_
                             _%$%hd236618237256%_
                             _%$%tl236619237258%_
                             _%$%e236620237261%_
                             _%$%hd236621237264%_
                             _%$%tl236622237266%_
                             _%$%e236623237269%_
                             _%$%hd236624237272%_
                             _%$%tl236625237274%_
                             _%$%e236626237277%_
                             _%$%hd236627237280%_
                             _%$%tl236628237282%_
                             _%$%e236629237285%_
                             _%$%hd236630237288%_
                             _%$%tl236631237290%_
                             _%$%e236632237293%_
                             _%$%hd236633237296%_
                             _%$%tl236634237298%_
                             _%$%e236635237301%_
                             _%$%hd236636237304%_
                             _%$%tl236637237306%_
                             _%$%e236638237309%_
                             _%$%hd236639237312%_
                             _%$%tl236640237314%_
                             _%$%e236641237317%_
                             _%$%hd236642237320%_
                             _%$%tl236643237322%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd236642237320%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl236643237322%_))
                              (let ((_%$%e236644237325%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl236643237322%_))))
                                (let ((_%$%tl236646237330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e236644237325%_)))
                                      (_%$%hd236645237328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e236644237325%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl236646237330%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl236640237314%_))
                                          (let ((_%$%e236647237333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl236640237314%_))))
                                            (let ((_%$%tl236649237338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e236647237333%_)))
                                                  (_%$%hd236648237336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e236647237333%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd236648237336%_))
                                                  (let ((_%$%e236650237341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd236648237336%_))))
                                                    (let ((_%$%tl236652237346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e236650237341%_)))
                                                          (_%$%hd236651237344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e236650237341%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd236651237344%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd236651237344%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl236652237346%_))
                          (let ((_%$%e236653237349%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl236652237346%_))))
                            (let ((_%$%tl236655237354%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236653237349%_)))
                                  (_%$%hd236654237352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236653237349%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl236655237354%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl236649237338%_))
                                      (let ((_%__splice240994240995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl236649237338%_
                                                '0))))
                                        (let ((_%$%tl236658237359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice240994240995%_
                                                  '1)))
                                              (_%$%target236656237357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice240994240995%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl236658237359%_))
                                              (_%__match241201241202%_
                                               _%$%e236617237253%_
                                               _%$%hd236618237256%_
                                               _%$%tl236619237258%_
                                               _%$%e236620237261%_
                                               _%$%hd236621237264%_
                                               _%$%tl236622237266%_
                                               _%$%e236623237269%_
                                               _%$%hd236624237272%_
                                               _%$%tl236625237274%_
                                               _%$%e236626237277%_
                                               _%$%hd236627237280%_
                                               _%$%tl236628237282%_
                                               _%$%e236629237285%_
                                               _%$%hd236630237288%_
                                               _%$%tl236631237290%_
                                               _%$%e236632237293%_
                                               _%$%hd236633237296%_
                                               _%$%tl236634237298%_
                                               _%$%e236635237301%_
                                               _%$%hd236636237304%_
                                               _%$%tl236637237306%_
                                               _%$%e236638237309%_
                                               _%$%hd236639237312%_
                                               _%$%tl236640237314%_
                                               _%$%e236641237317%_
                                               _%$%hd236642237320%_
                                               _%$%tl236643237322%_
                                               _%$%e236644237325%_
                                               _%$%hd236645237328%_
                                               _%$%tl236646237330%_
                                               _%$%e236647237333%_
                                               _%$%hd236648237336%_
                                               _%$%tl236649237338%_
                                               _%$%e236650237341%_
                                               _%$%hd236651237344%_
                                               _%$%tl236652237346%_
                                               _%$%e236653237349%_
                                               _%$%hd236654237352%_
                                               _%$%tl236655237354%_
                                               _%__splice240994240995%_
                                               _%$%target236656237357%_
                                               _%$%tl236658237359%_)
                                              (_%__kont241004241005%_))))
                                      (_%__kont241004241005%_))
                                  (_%__kont241004241005%_))))
                          (_%__kont241004241005%_))
                      (_%__kont241004241005%_))
                  (_%__kont241004241005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont241004241005%_))))
                                          (_%__match241483241484%_
                                           _%$%e236617237253%_
                                           _%$%hd236618237256%_
                                           _%$%tl236619237258%_
                                           _%$%e236620237261%_
                                           _%$%hd236621237264%_
                                           _%$%tl236622237266%_
                                           _%$%e236623237269%_
                                           _%$%hd236624237272%_
                                           _%$%tl236625237274%_
                                           _%$%e236626237277%_
                                           _%$%hd236627237280%_
                                           _%$%tl236628237282%_
                                           _%$%e236629237285%_
                                           _%$%hd236630237288%_
                                           _%$%tl236631237290%_
                                           _%$%e236632237293%_
                                           _%$%hd236633237296%_
                                           _%$%tl236634237298%_
                                           _%$%e236635237301%_
                                           _%$%hd236636237304%_
                                           _%$%tl236637237306%_
                                           _%$%e236638237309%_
                                           _%$%hd236639237312%_
                                           _%$%tl236640237314%_))
                                      (_%__match241483241484%_
                                       _%$%e236617237253%_
                                       _%$%hd236618237256%_
                                       _%$%tl236619237258%_
                                       _%$%e236620237261%_
                                       _%$%hd236621237264%_
                                       _%$%tl236622237266%_
                                       _%$%e236623237269%_
                                       _%$%hd236624237272%_
                                       _%$%tl236625237274%_
                                       _%$%e236626237277%_
                                       _%$%hd236627237280%_
                                       _%$%tl236628237282%_
                                       _%$%e236629237285%_
                                       _%$%hd236630237288%_
                                       _%$%tl236631237290%_
                                       _%$%e236632237293%_
                                       _%$%hd236633237296%_
                                       _%$%tl236634237298%_
                                       _%$%e236635237301%_
                                       _%$%hd236636237304%_
                                       _%$%tl236637237306%_
                                       _%$%e236638237309%_
                                       _%$%hd236639237312%_
                                       _%$%tl236640237314%_))))
                              (_%__match241483241484%_
                               _%$%e236617237253%_
                               _%$%hd236618237256%_
                               _%$%tl236619237258%_
                               _%$%e236620237261%_
                               _%$%hd236621237264%_
                               _%$%tl236622237266%_
                               _%$%e236623237269%_
                               _%$%hd236624237272%_
                               _%$%tl236625237274%_
                               _%$%e236626237277%_
                               _%$%hd236627237280%_
                               _%$%tl236628237282%_
                               _%$%e236629237285%_
                               _%$%hd236630237288%_
                               _%$%tl236631237290%_
                               _%$%e236632237293%_
                               _%$%hd236633237296%_
                               _%$%tl236634237298%_
                               _%$%e236635237301%_
                               _%$%hd236636237304%_
                               _%$%tl236637237306%_
                               _%$%e236638237309%_
                               _%$%hd236639237312%_
                               _%$%tl236640237314%_))
                          (_%__match241269241270%_
                           _%$%e236617237253%_
                           _%$%hd236618237256%_
                           _%$%tl236619237258%_
                           _%$%e236620237261%_
                           _%$%hd236621237264%_
                           _%$%tl236622237266%_
                           _%$%e236623237269%_
                           _%$%hd236624237272%_
                           _%$%tl236625237274%_
                           _%$%e236626237277%_
                           _%$%hd236627237280%_
                           _%$%tl236628237282%_
                           _%$%e236629237285%_
                           _%$%hd236630237288%_
                           _%$%tl236631237290%_
                           _%$%e236632237293%_
                           _%$%hd236633237296%_
                           _%$%tl236634237298%_
                           _%$%e236635237301%_
                           _%$%hd236636237304%_
                           _%$%tl236637237306%_
                           _%$%e236638237309%_
                           _%$%hd236639237312%_
                           _%$%tl236640237314%_
                           _%$%e236641237317%_
                           _%$%hd236642237320%_
                           _%$%tl236643237322%_))))
                   (_%__match241091241092%_
                    (lambda (_%$%e236573237440%_
                             _%$%hd236574237443%_
                             _%$%tl236575237445%_
                             _%$%e236576237448%_
                             _%$%hd236577237451%_
                             _%$%tl236578237453%_
                             _%$%e236579237456%_
                             _%$%hd236580237459%_
                             _%$%tl236581237461%_
                             _%$%e236582237464%_
                             _%$%hd236583237467%_
                             _%$%tl236584237469%_
                             _%$%e236585237472%_
                             _%$%hd236586237475%_
                             _%$%tl236587237477%_
                             _%$%e236588237480%_
                             _%$%hd236589237483%_
                             _%$%tl236590237485%_
                             _%$%e236591237488%_
                             _%$%hd236592237491%_
                             _%$%tl236593237493%_
                             _%$%e236594237496%_
                             _%$%hd236595237499%_
                             _%$%tl236596237501%_
                             _%$%e236597237504%_
                             _%$%hd236598237507%_
                             _%$%tl236599237509%_
                             _%$%e236600237512%_
                             _%$%hd236601237515%_
                             _%$%tl236602237517%_
                             _%__splice240990240991%_
                             _%$%target236603237520%_
                             _%$%tl236605237522%_)
                      (letrec ((_%$%loop236606237525%_
                                (lambda (_%$%hd236604237528%_
                                         _%$%args236610237530%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd236604237528%_))
                                      (let ((_%$%e236607237532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd236604237528%_))))
                                        (let ((_%$%lp-tl236609237537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e236607237532%_)))
                                              (_%$%lp-hd236608237535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e236607237532%_))))
                                          (_%$%loop236606237525%_
                                           _%$%lp-tl236609237537%_
                                           (cons _%$%lp-hd236608237535%_
                                                 _%$%args236610237530%_))))
                                      (let ((_%$%args236611237540%_
                                             (reverse _%$%args236610237530%_)))
                                        (let ((_%$%g236569237542%_
                                               _%$%args236611237540%_)
                                              (_%$%g236570237543%_
                                               _%$%hd236601237515%_)
                                              (_%$%g236571237544%_
                                               _%$%hd236592237491%_)
                                              (_%$%g236572237545%_
                                               _%$%hd236583237467%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g236572237545%_
                                                      'call-method))
                                                   (let ((__tmp242149
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self236558%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g236571237544%_
                                                      __tmp242149)))
                                              (_%__kont240988240989%_
                                               _%$%g236569237542%_
                                               _%$%g236570237543%_
                                               _%$%g236571237544%_
                                               _%$%g236572237545%_)
                                              (_%__match241279241280%_
                                               _%$%e236573237440%_
                                               _%$%hd236574237443%_
                                               _%$%tl236575237445%_
                                               _%$%e236576237448%_
                                               _%$%hd236577237451%_
                                               _%$%tl236578237453%_
                                               _%$%e236579237456%_
                                               _%$%hd236580237459%_
                                               _%$%tl236581237461%_
                                               _%$%e236582237464%_
                                               _%$%hd236583237467%_
                                               _%$%tl236584237469%_
                                               _%$%e236585237472%_
                                               _%$%hd236586237475%_
                                               _%$%tl236587237477%_
                                               _%$%e236588237480%_
                                               _%$%hd236589237483%_
                                               _%$%tl236590237485%_
                                               _%$%e236591237488%_
                                               _%$%hd236592237491%_
                                               _%$%tl236593237493%_
                                               _%$%e236594237496%_
                                               _%$%hd236595237499%_
                                               _%$%tl236596237501%_
                                               _%$%e236597237504%_
                                               _%$%hd236598237507%_
                                               _%$%tl236599237509%_
                                               _%$%e236600237512%_
                                               _%$%hd236601237515%_
                                               _%$%tl236602237517%_))))))))
                        (_%$%loop236606237525%_
                         _%$%target236603237520%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx240986240987%_))
                  (let ((_%$%e236573237440%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx240986240987%_))))
                    (let ((_%$%tl236575237445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e236573237440%_)))
                          (_%$%hd236574237443%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e236573237440%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl236575237445%_))
                          (let ((_%$%e236576237448%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl236575237445%_))))
                            (let ((_%$%tl236578237453%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236576237448%_)))
                                  (_%$%hd236577237451%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236576237448%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd236577237451%_))
                                  (let ((_%$%e236579237456%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd236577237451%_))))
                                    (let ((_%$%tl236581237461%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e236579237456%_)))
                                          (_%$%hd236580237459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e236579237456%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd236580237459%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd236580237459%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl236581237461%_))
                                                  (let ((_%$%e236582237464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl236581237461%_))))
                                                    (let ((_%$%tl236584237469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e236582237464%_)))
                                                          (_%$%hd236583237467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e236582237464%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl236584237469%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl236578237453%_))
                      (let ((_%$%e236585237472%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl236578237453%_))))
                        (let ((_%$%tl236587237477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e236585237472%_)))
                              (_%$%hd236586237475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e236585237472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd236586237475%_))
                              (let ((_%$%e236588237480%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd236586237475%_))))
                                (let ((_%$%tl236590237485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e236588237480%_)))
                                      (_%$%hd236589237483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e236588237480%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd236589237483%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd236589237483%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl236590237485%_))
                                              (let ((_%$%e236591237488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl236590237485%_))))
                                                (let ((_%$%tl236593237493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e236591237488%_)))
                                                      (_%$%hd236592237491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e236591237488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl236593237493%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl236587237477%_))
                                                          (let ((_%$%e236594237496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl236587237477%_))))
                    (let ((_%$%tl236596237501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e236594237496%_)))
                          (_%$%hd236595237499%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e236594237496%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd236595237499%_))
                          (let ((_%$%e236597237504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd236595237499%_))))
                            (let ((_%$%tl236599237509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236597237504%_)))
                                  (_%$%hd236598237507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236597237504%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd236598237507%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd236598237507%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl236599237509%_))
                                          (let ((_%$%e236600237512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl236599237509%_))))
                                            (let ((_%$%tl236602237517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e236600237512%_)))
                                                  (_%$%hd236601237515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e236600237512%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl236602237517%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl236596237501%_))
                                                      (let ((_%__splice240990240991%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl236596237501%_
                        '0))))
                (let ((_%$%tl236605237522%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice240990240991%_ '1)))
                      (_%$%target236603237520%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice240990240991%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl236605237522%_))
                      (_%__match241091241092%_
                       _%$%e236573237440%_
                       _%$%hd236574237443%_
                       _%$%tl236575237445%_
                       _%$%e236576237448%_
                       _%$%hd236577237451%_
                       _%$%tl236578237453%_
                       _%$%e236579237456%_
                       _%$%hd236580237459%_
                       _%$%tl236581237461%_
                       _%$%e236582237464%_
                       _%$%hd236583237467%_
                       _%$%tl236584237469%_
                       _%$%e236585237472%_
                       _%$%hd236586237475%_
                       _%$%tl236587237477%_
                       _%$%e236588237480%_
                       _%$%hd236589237483%_
                       _%$%tl236590237485%_
                       _%$%e236591237488%_
                       _%$%hd236592237491%_
                       _%$%tl236593237493%_
                       _%$%e236594237496%_
                       _%$%hd236595237499%_
                       _%$%tl236596237501%_
                       _%$%e236597237504%_
                       _%$%hd236598237507%_
                       _%$%tl236599237509%_
                       _%$%e236600237512%_
                       _%$%hd236601237515%_
                       _%$%tl236602237517%_
                       _%__splice240990240991%_
                       _%$%target236603237520%_
                       _%$%tl236605237522%_)
                      (_%__match241279241280%_
                       _%$%e236573237440%_
                       _%$%hd236574237443%_
                       _%$%tl236575237445%_
                       _%$%e236576237448%_
                       _%$%hd236577237451%_
                       _%$%tl236578237453%_
                       _%$%e236579237456%_
                       _%$%hd236580237459%_
                       _%$%tl236581237461%_
                       _%$%e236582237464%_
                       _%$%hd236583237467%_
                       _%$%tl236584237469%_
                       _%$%e236585237472%_
                       _%$%hd236586237475%_
                       _%$%tl236587237477%_
                       _%$%e236588237480%_
                       _%$%hd236589237483%_
                       _%$%tl236590237485%_
                       _%$%e236591237488%_
                       _%$%hd236592237491%_
                       _%$%tl236593237493%_
                       _%$%e236594237496%_
                       _%$%hd236595237499%_
                       _%$%tl236596237501%_
                       _%$%e236597237504%_
                       _%$%hd236598237507%_
                       _%$%tl236599237509%_
                       _%$%e236600237512%_
                       _%$%hd236601237515%_
                       _%$%tl236602237517%_))))
              (_%__match241279241280%_
               _%$%e236573237440%_
               _%$%hd236574237443%_
               _%$%tl236575237445%_
               _%$%e236576237448%_
               _%$%hd236577237451%_
               _%$%tl236578237453%_
               _%$%e236579237456%_
               _%$%hd236580237459%_
               _%$%tl236581237461%_
               _%$%e236582237464%_
               _%$%hd236583237467%_
               _%$%tl236584237469%_
               _%$%e236585237472%_
               _%$%hd236586237475%_
               _%$%tl236587237477%_
               _%$%e236588237480%_
               _%$%hd236589237483%_
               _%$%tl236590237485%_
               _%$%e236591237488%_
               _%$%hd236592237491%_
               _%$%tl236593237493%_
               _%$%e236594237496%_
               _%$%hd236595237499%_
               _%$%tl236596237501%_
               _%$%e236597237504%_
               _%$%hd236598237507%_
               _%$%tl236599237509%_
               _%$%e236600237512%_
               _%$%hd236601237515%_
               _%$%tl236602237517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match241483241484%_
                                                   _%$%e236573237440%_
                                                   _%$%hd236574237443%_
                                                   _%$%tl236575237445%_
                                                   _%$%e236576237448%_
                                                   _%$%hd236577237451%_
                                                   _%$%tl236578237453%_
                                                   _%$%e236579237456%_
                                                   _%$%hd236580237459%_
                                                   _%$%tl236581237461%_
                                                   _%$%e236582237464%_
                                                   _%$%hd236583237467%_
                                                   _%$%tl236584237469%_
                                                   _%$%e236585237472%_
                                                   _%$%hd236586237475%_
                                                   _%$%tl236587237477%_
                                                   _%$%e236588237480%_
                                                   _%$%hd236589237483%_
                                                   _%$%tl236590237485%_
                                                   _%$%e236591237488%_
                                                   _%$%hd236592237491%_
                                                   _%$%tl236593237493%_
                                                   _%$%e236594237496%_
                                                   _%$%hd236595237499%_
                                                   _%$%tl236596237501%_))))
                                          (_%__match241483241484%_
                                           _%$%e236573237440%_
                                           _%$%hd236574237443%_
                                           _%$%tl236575237445%_
                                           _%$%e236576237448%_
                                           _%$%hd236577237451%_
                                           _%$%tl236578237453%_
                                           _%$%e236579237456%_
                                           _%$%hd236580237459%_
                                           _%$%tl236581237461%_
                                           _%$%e236582237464%_
                                           _%$%hd236583237467%_
                                           _%$%tl236584237469%_
                                           _%$%e236585237472%_
                                           _%$%hd236586237475%_
                                           _%$%tl236587237477%_
                                           _%$%e236588237480%_
                                           _%$%hd236589237483%_
                                           _%$%tl236590237485%_
                                           _%$%e236591237488%_
                                           _%$%hd236592237491%_
                                           _%$%tl236593237493%_
                                           _%$%e236594237496%_
                                           _%$%hd236595237499%_
                                           _%$%tl236596237501%_))
                                      (_%__match241159241160%_
                                       _%$%e236573237440%_
                                       _%$%hd236574237443%_
                                       _%$%tl236575237445%_
                                       _%$%e236576237448%_
                                       _%$%hd236577237451%_
                                       _%$%tl236578237453%_
                                       _%$%e236579237456%_
                                       _%$%hd236580237459%_
                                       _%$%tl236581237461%_
                                       _%$%e236582237464%_
                                       _%$%hd236583237467%_
                                       _%$%tl236584237469%_
                                       _%$%e236585237472%_
                                       _%$%hd236586237475%_
                                       _%$%tl236587237477%_
                                       _%$%e236588237480%_
                                       _%$%hd236589237483%_
                                       _%$%tl236590237485%_
                                       _%$%e236591237488%_
                                       _%$%hd236592237491%_
                                       _%$%tl236593237493%_
                                       _%$%e236594237496%_
                                       _%$%hd236595237499%_
                                       _%$%tl236596237501%_
                                       _%$%e236597237504%_
                                       _%$%hd236598237507%_
                                       _%$%tl236599237509%_))
                                  (_%__match241483241484%_
                                   _%$%e236573237440%_
                                   _%$%hd236574237443%_
                                   _%$%tl236575237445%_
                                   _%$%e236576237448%_
                                   _%$%hd236577237451%_
                                   _%$%tl236578237453%_
                                   _%$%e236579237456%_
                                   _%$%hd236580237459%_
                                   _%$%tl236581237461%_
                                   _%$%e236582237464%_
                                   _%$%hd236583237467%_
                                   _%$%tl236584237469%_
                                   _%$%e236585237472%_
                                   _%$%hd236586237475%_
                                   _%$%tl236587237477%_
                                   _%$%e236588237480%_
                                   _%$%hd236589237483%_
                                   _%$%tl236590237485%_
                                   _%$%e236591237488%_
                                   _%$%hd236592237491%_
                                   _%$%tl236593237493%_
                                   _%$%e236594237496%_
                                   _%$%hd236595237499%_
                                   _%$%tl236596237501%_))))
                          (_%__match241483241484%_
                           _%$%e236573237440%_
                           _%$%hd236574237443%_
                           _%$%tl236575237445%_
                           _%$%e236576237448%_
                           _%$%hd236577237451%_
                           _%$%tl236578237453%_
                           _%$%e236579237456%_
                           _%$%hd236580237459%_
                           _%$%tl236581237461%_
                           _%$%e236582237464%_
                           _%$%hd236583237467%_
                           _%$%tl236584237469%_
                           _%$%e236585237472%_
                           _%$%hd236586237475%_
                           _%$%tl236587237477%_
                           _%$%e236588237480%_
                           _%$%hd236589237483%_
                           _%$%tl236590237485%_
                           _%$%e236591237488%_
                           _%$%hd236592237491%_
                           _%$%tl236593237493%_
                           _%$%e236594237496%_
                           _%$%hd236595237499%_
                           _%$%tl236596237501%_))))
                  (_%__match241421241422%_
                   _%$%e236573237440%_
                   _%$%hd236574237443%_
                   _%$%tl236575237445%_
                   _%$%e236576237448%_
                   _%$%hd236577237451%_
                   _%$%tl236578237453%_
                   _%$%e236579237456%_
                   _%$%hd236580237459%_
                   _%$%tl236581237461%_
                   _%$%e236582237464%_
                   _%$%hd236583237467%_
                   _%$%tl236584237469%_
                   _%$%e236585237472%_
                   _%$%hd236586237475%_
                   _%$%tl236587237477%_
                   _%$%e236588237480%_
                   _%$%hd236589237483%_
                   _%$%tl236590237485%_
                   _%$%e236591237488%_
                   _%$%hd236592237491%_
                   _%$%tl236593237493%_))
              (_%__kont241004241005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont241004241005%_))
                                          (_%__kont241004241005%_))
                                      (_%__kont241004241005%_))))
                              (_%__kont241004241005%_))))
                      (_%__kont241004241005%_))
                  (_%__kont241004241005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont241004241005%_))
                                              (_%__kont241004241005%_))
                                          (_%__kont241004241005%_))))
                                  (_%__kont241004241005%_))))
                          (_%__kont241004241005%_))))
                  (_%__kont241004241005%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self235501%_ _%stx235502%_)
        (letrec ((_%force-e235504%_
                  (lambda (_%target236556%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target236556%_ '()))
                                      '()))))))
          (let* ((_%__stx241488241489%_ _%stx235502%_)
                 (_%$%g235512235734%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx241488241489%_)))))
            (let ((_%__kont241490241491%_
                   (lambda (_%$%g235514236502%_
                            _%$%g235515236503%_
                            _%$%g235516236504%_
                            _%$%g235517236505%_)
                     (let ((_%$method236550%_
                            (let ((__tmp242151
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self235501%_ 'methods)))
                                  (__tmp242150
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g235515236503%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp242151 __tmp242150)))
                           (_%args236551%_
                            (map (lambda (_%$%g236538236540%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self235501%_
                                      _%$%g236538236540%_)))
                                 (let ((__tmp242152
                                        (lambda (_%$%g236542236545%_
                                                 _%$%g236543236547%_)
                                          (cons _%$%g236542236545%_
                                                _%$%g236543236547%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp242152
                                    '()
                                    _%$%g235514236502%_)))))
                       (let ((__tmp242153
                              (cons '%#call
                                    (cons (_%force-e235504%_ _%$method236550%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self235501%_
                                                               'receiver))
                                                            '()))
                                                _%args236551%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp242153 _%stx235502%_)))))
                  (_%__kont241494241495%_
                   (lambda (_%$%g235557236336%_
                            _%$%g235558236337%_
                            _%$%g235559236338%_
                            _%$%g235560236339%_
                            _%$%g235561236340%_)
                     (let ((_%$method236392%_
                            (let ((__tmp242155
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self235501%_ 'methods)))
                                  (__tmp242154
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g235558236337%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp242155 __tmp242154)))
                           (_%args236393%_
                            (map (lambda (_%$%g236380236382%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self235501%_
                                      _%$%g236380236382%_)))
                                 (let ((__tmp242156
                                        (lambda (_%$%g236384236387%_
                                                 _%$%g236385236389%_)
                                          (cons _%$%g236384236387%_
                                                _%$%g236385236389%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp242156
                                    '()
                                    _%$%g235557236336%_)))))
                       (let ((__tmp242157
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e235504%_
                                                 _%$method236392%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self235501%_ 'receiver))
                          '()))
              _%args236393%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp242157 _%stx235502%_)))))
                  (_%__kont241498241499%_
                   (lambda (_%$%g235610236169%_
                            _%$%g235611236170%_
                            _%$%g235612236171%_)
                     (let* ((_%$field236203%_
                             (let ((__tmp242159
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self235501%_ 'slots)))
                                   (__tmp242158
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g235610236169%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp242159 __tmp242158)))
                            (__tmp242160
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self235501%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field236203%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self235501%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp242160 _%stx235502%_))))
                  (_%__kont241500241501%_
                   (lambda (_%$%g235643236043%_
                            _%$%g235644236044%_
                            _%$%g235645236045%_
                            _%$%g235646236046%_)
                     (let ((_%$field236081%_
                            (let ((__tmp242162
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self235501%_ 'slots)))
                                  (__tmp242161
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g235644236044%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp242162 __tmp242161)))
                           (_%expr236082%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self235501%_
                               _%$%g235643236043%_))))
                       (let ((__tmp242163
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self235501%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field236081%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self235501%_ 'receiver))
                          '()))
              (cons _%expr236082%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp242163 _%stx235502%_)))))
                  (_%__kont241502241503%_
                   (lambda (_%$%g235680235915%_ _%$%g235681235916%_)
                     (let* ((_%accessor235938%_
                             (let ((__tmp242164
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g235681235916%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp242164)))
                            (_%klass235940%_
                             (let ((__tmp242165
                                    (##structure-ref
                                     _%accessor235938%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx235502%_
                                __tmp242165)))
                            (_%slot235942%_
                             (##structure-ref
                              _%accessor235938%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor235938%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass235940%_
                                      _%slot235942%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass235940%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx235502%_
                           (let* ((_%$field235948%_
                                   (let ((__tmp242166
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235501%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp242166 _%slot235942%_)))
                                  (__tmp242167
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self235501%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field235948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self235501%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp242167
                              _%stx235502%_))))))
                  (_%__kont241504241505%_
                   (lambda (_%$%g235703235810%_
                            _%$%g235704235811%_
                            _%$%g235705235812%_)
                     (let* ((_%mutator235840%_
                             (let ((__tmp242168
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g235705235812%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp242168)))
                            (_%klass235842%_
                             (let ((__tmp242169
                                    (##structure-ref
                                     _%mutator235840%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx235502%_
                                __tmp242169)))
                            (_%slot235844%_
                             (##structure-ref
                              _%mutator235840%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr235846%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self235501%_
                                _%$%g235703235810%_))))
                       (if (if (##structure-ref
                                _%mutator235840%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass235842%_
                                      _%slot235844%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass235842%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp242170
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g235705235812%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g235704235811%_
                                                                '()))
                                                    (cons _%expr235846%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp242170 _%stx235502%_))
                           (let* ((_%$field235852%_
                                   (let ((__tmp242171
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235501%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp242171 _%slot235844%_)))
                                  (__tmp242172
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self235501%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field235852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self235501%_ 'receiver))
                               '()))
                   (cons _%expr235846%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp242172
                              _%stx235502%_))))))
                  (_%__kont241506241507%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self235501%_ _%stx235502%_)))))
              (let* ((_%__match241987241988%_
                      (lambda (_%$%e235706235746%_
                               _%$%hd235707235749%_
                               _%$%tl235708235751%_
                               _%$%e235709235754%_
                               _%$%hd235710235757%_
                               _%$%tl235711235759%_
                               _%$%e235712235762%_
                               _%$%hd235713235765%_
                               _%$%tl235714235767%_
                               _%$%e235715235770%_
                               _%$%hd235716235773%_
                               _%$%tl235717235775%_
                               _%$%e235718235778%_
                               _%$%hd235719235781%_
                               _%$%tl235720235783%_
                               _%$%e235721235786%_
                               _%$%hd235722235789%_
                               _%$%tl235723235791%_
                               _%$%e235724235794%_
                               _%$%hd235725235797%_
                               _%$%tl235726235799%_
                               _%$%e235727235802%_
                               _%$%hd235728235805%_
                               _%$%tl235729235807%_)
                        (let ((_%$%g235703235810%_ _%$%hd235728235805%_)
                              (_%$%g235704235811%_ _%$%hd235725235797%_)
                              (_%$%g235705235812%_ _%$%hd235716235773%_))
                          (if (and (let ((__tmp242173
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235501%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235704235811%_
                                      __tmp242173))
                                   (let ((__tmp242174
                                          (let ((__tmp242175
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g235705235812%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp242175))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp242174
                                      'gxc#!mutator::t)))
                              (_%__kont241504241505%_
                               _%$%g235703235810%_
                               _%$%g235704235811%_
                               _%$%g235705235812%_)
                              (_%__kont241506241507%_)))))
                     (_%__match241985241986%_
                      (lambda (_%$%e235706235746%_
                               _%$%hd235707235749%_
                               _%$%tl235708235751%_
                               _%$%e235709235754%_
                               _%$%hd235710235757%_
                               _%$%tl235711235759%_
                               _%$%e235712235762%_
                               _%$%hd235713235765%_
                               _%$%tl235714235767%_
                               _%$%e235715235770%_
                               _%$%hd235716235773%_
                               _%$%tl235717235775%_
                               _%$%e235718235778%_
                               _%$%hd235719235781%_
                               _%$%tl235720235783%_
                               _%$%e235721235786%_
                               _%$%hd235722235789%_
                               _%$%tl235723235791%_
                               _%$%e235724235794%_
                               _%$%hd235725235797%_
                               _%$%tl235726235799%_
                               _%$%e235727235802%_
                               _%$%hd235728235805%_
                               _%$%tl235729235807%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl235729235807%_))
                            (_%__match241987241988%_
                             _%$%e235706235746%_
                             _%$%hd235707235749%_
                             _%$%tl235708235751%_
                             _%$%e235709235754%_
                             _%$%hd235710235757%_
                             _%$%tl235711235759%_
                             _%$%e235712235762%_
                             _%$%hd235713235765%_
                             _%$%tl235714235767%_
                             _%$%e235715235770%_
                             _%$%hd235716235773%_
                             _%$%tl235717235775%_
                             _%$%e235718235778%_
                             _%$%hd235719235781%_
                             _%$%tl235720235783%_
                             _%$%e235721235786%_
                             _%$%hd235722235789%_
                             _%$%tl235723235791%_
                             _%$%e235724235794%_
                             _%$%hd235725235797%_
                             _%$%tl235726235799%_
                             _%$%e235727235802%_
                             _%$%hd235728235805%_
                             _%$%tl235729235807%_)
                            (_%__kont241506241507%_))))
                     (_%__match241979241980%_
                      (lambda (_%$%e235706235746%_
                               _%$%hd235707235749%_
                               _%$%tl235708235751%_
                               _%$%e235709235754%_
                               _%$%hd235710235757%_
                               _%$%tl235711235759%_
                               _%$%e235712235762%_
                               _%$%hd235713235765%_
                               _%$%tl235714235767%_
                               _%$%e235715235770%_
                               _%$%hd235716235773%_
                               _%$%tl235717235775%_
                               _%$%e235718235778%_
                               _%$%hd235719235781%_
                               _%$%tl235720235783%_
                               _%$%e235721235786%_
                               _%$%hd235722235789%_
                               _%$%tl235723235791%_
                               _%$%e235724235794%_
                               _%$%hd235725235797%_
                               _%$%tl235726235799%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235720235783%_))
                            (let ((_%$%e235727235802%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235720235783%_))))
                              (let ((_%$%tl235729235807%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235727235802%_)))
                                    (_%$%hd235728235805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235727235802%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl235729235807%_))
                                    (_%__match241987241988%_
                                     _%$%e235706235746%_
                                     _%$%hd235707235749%_
                                     _%$%tl235708235751%_
                                     _%$%e235709235754%_
                                     _%$%hd235710235757%_
                                     _%$%tl235711235759%_
                                     _%$%e235712235762%_
                                     _%$%hd235713235765%_
                                     _%$%tl235714235767%_
                                     _%$%e235715235770%_
                                     _%$%hd235716235773%_
                                     _%$%tl235717235775%_
                                     _%$%e235718235778%_
                                     _%$%hd235719235781%_
                                     _%$%tl235720235783%_
                                     _%$%e235721235786%_
                                     _%$%hd235722235789%_
                                     _%$%tl235723235791%_
                                     _%$%e235724235794%_
                                     _%$%hd235725235797%_
                                     _%$%tl235726235799%_
                                     _%$%e235727235802%_
                                     _%$%hd235728235805%_
                                     _%$%tl235729235807%_)
                                    (_%__kont241506241507%_))))
                            (_%__kont241506241507%_))))
                     (_%__match241925241926%_
                      (lambda (_%$%e235682235859%_
                               _%$%hd235683235862%_
                               _%$%tl235684235864%_
                               _%$%e235685235867%_
                               _%$%hd235686235870%_
                               _%$%tl235687235872%_
                               _%$%e235688235875%_
                               _%$%hd235689235878%_
                               _%$%tl235690235880%_
                               _%$%e235691235883%_
                               _%$%hd235692235886%_
                               _%$%tl235693235888%_
                               _%$%e235694235891%_
                               _%$%hd235695235894%_
                               _%$%tl235696235896%_
                               _%$%e235697235899%_
                               _%$%hd235698235902%_
                               _%$%tl235699235904%_
                               _%$%e235700235907%_
                               _%$%hd235701235910%_
                               _%$%tl235702235912%_)
                        (let ((_%$%g235680235915%_ _%$%hd235701235910%_)
                              (_%$%g235681235916%_ _%$%hd235692235886%_))
                          (if (and (let ((__tmp242176
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235501%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235680235915%_
                                      __tmp242176))
                                   (let ((__tmp242177
                                          (let ((__tmp242178
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g235681235916%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp242178))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp242177
                                      'gxc#!accessor::t)))
                              (_%__kont241502241503%_
                               _%$%g235680235915%_
                               _%$%g235681235916%_)
                              (_%__kont241506241507%_)))))
                     (_%__match241923241924%_
                      (lambda (_%$%e235682235859%_
                               _%$%hd235683235862%_
                               _%$%tl235684235864%_
                               _%$%e235685235867%_
                               _%$%hd235686235870%_
                               _%$%tl235687235872%_
                               _%$%e235688235875%_
                               _%$%hd235689235878%_
                               _%$%tl235690235880%_
                               _%$%e235691235883%_
                               _%$%hd235692235886%_
                               _%$%tl235693235888%_
                               _%$%e235694235891%_
                               _%$%hd235695235894%_
                               _%$%tl235696235896%_
                               _%$%e235697235899%_
                               _%$%hd235698235902%_
                               _%$%tl235699235904%_
                               _%$%e235700235907%_
                               _%$%hd235701235910%_
                               _%$%tl235702235912%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl235696235896%_))
                            (_%__match241925241926%_
                             _%$%e235682235859%_
                             _%$%hd235683235862%_
                             _%$%tl235684235864%_
                             _%$%e235685235867%_
                             _%$%hd235686235870%_
                             _%$%tl235687235872%_
                             _%$%e235688235875%_
                             _%$%hd235689235878%_
                             _%$%tl235690235880%_
                             _%$%e235691235883%_
                             _%$%hd235692235886%_
                             _%$%tl235693235888%_
                             _%$%e235694235891%_
                             _%$%hd235695235894%_
                             _%$%tl235696235896%_
                             _%$%e235697235899%_
                             _%$%hd235698235902%_
                             _%$%tl235699235904%_
                             _%$%e235700235907%_
                             _%$%hd235701235910%_
                             _%$%tl235702235912%_)
                            (_%__match241979241980%_
                             _%$%e235682235859%_
                             _%$%hd235683235862%_
                             _%$%tl235684235864%_
                             _%$%e235685235867%_
                             _%$%hd235686235870%_
                             _%$%tl235687235872%_
                             _%$%e235688235875%_
                             _%$%hd235689235878%_
                             _%$%tl235690235880%_
                             _%$%e235691235883%_
                             _%$%hd235692235886%_
                             _%$%tl235693235888%_
                             _%$%e235694235891%_
                             _%$%hd235695235894%_
                             _%$%tl235696235896%_
                             _%$%e235697235899%_
                             _%$%hd235698235902%_
                             _%$%tl235699235904%_
                             _%$%e235700235907%_
                             _%$%hd235701235910%_
                             _%$%tl235702235912%_))))
                     (_%__match241869241870%_
                      (lambda (_%$%e235647235955%_
                               _%$%hd235648235958%_
                               _%$%tl235649235960%_
                               _%$%e235650235963%_
                               _%$%hd235651235966%_
                               _%$%tl235652235968%_
                               _%$%e235653235971%_
                               _%$%hd235654235974%_
                               _%$%tl235655235976%_
                               _%$%e235656235979%_
                               _%$%hd235657235982%_
                               _%$%tl235658235984%_
                               _%$%e235659235987%_
                               _%$%hd235660235990%_
                               _%$%tl235661235992%_
                               _%$%e235662235995%_
                               _%$%hd235663235998%_
                               _%$%tl235664236000%_
                               _%$%e235665236003%_
                               _%$%hd235666236006%_
                               _%$%tl235667236008%_
                               _%$%e235668236011%_
                               _%$%hd235669236014%_
                               _%$%tl235670236016%_
                               _%$%e235671236019%_
                               _%$%hd235672236022%_
                               _%$%tl235673236024%_
                               _%$%e235674236027%_
                               _%$%hd235675236030%_
                               _%$%tl235676236032%_
                               _%$%e235677236035%_
                               _%$%hd235678236038%_
                               _%$%tl235679236040%_)
                        (let ((_%$%g235643236043%_ _%$%hd235678236038%_)
                              (_%$%g235644236044%_ _%$%hd235675236030%_)
                              (_%$%g235645236045%_ _%$%hd235666236006%_)
                              (_%$%g235646236046%_ _%$%hd235657235982%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235646236046%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235646236046%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp242179
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235501%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235645236045%_
                                      __tmp242179)))
                              (_%__kont241500241501%_
                               _%$%g235643236043%_
                               _%$%g235644236044%_
                               _%$%g235645236045%_
                               _%$%g235646236046%_)
                              (_%__kont241506241507%_)))))
                     (_%__match241861241862%_
                      (lambda (_%$%e235647235955%_
                               _%$%hd235648235958%_
                               _%$%tl235649235960%_
                               _%$%e235650235963%_
                               _%$%hd235651235966%_
                               _%$%tl235652235968%_
                               _%$%e235653235971%_
                               _%$%hd235654235974%_
                               _%$%tl235655235976%_
                               _%$%e235656235979%_
                               _%$%hd235657235982%_
                               _%$%tl235658235984%_
                               _%$%e235659235987%_
                               _%$%hd235660235990%_
                               _%$%tl235661235992%_
                               _%$%e235662235995%_
                               _%$%hd235663235998%_
                               _%$%tl235664236000%_
                               _%$%e235665236003%_
                               _%$%hd235666236006%_
                               _%$%tl235667236008%_
                               _%$%e235668236011%_
                               _%$%hd235669236014%_
                               _%$%tl235670236016%_
                               _%$%e235671236019%_
                               _%$%hd235672236022%_
                               _%$%tl235673236024%_
                               _%$%e235674236027%_
                               _%$%hd235675236030%_
                               _%$%tl235676236032%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235670236016%_))
                            (let ((_%$%e235677236035%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235670236016%_))))
                              (let ((_%$%tl235679236040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235677236035%_)))
                                    (_%$%hd235678236038%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235677236035%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl235679236040%_))
                                    (_%__match241869241870%_
                                     _%$%e235647235955%_
                                     _%$%hd235648235958%_
                                     _%$%tl235649235960%_
                                     _%$%e235650235963%_
                                     _%$%hd235651235966%_
                                     _%$%tl235652235968%_
                                     _%$%e235653235971%_
                                     _%$%hd235654235974%_
                                     _%$%tl235655235976%_
                                     _%$%e235656235979%_
                                     _%$%hd235657235982%_
                                     _%$%tl235658235984%_
                                     _%$%e235659235987%_
                                     _%$%hd235660235990%_
                                     _%$%tl235661235992%_
                                     _%$%e235662235995%_
                                     _%$%hd235663235998%_
                                     _%$%tl235664236000%_
                                     _%$%e235665236003%_
                                     _%$%hd235666236006%_
                                     _%$%tl235667236008%_
                                     _%$%e235668236011%_
                                     _%$%hd235669236014%_
                                     _%$%tl235670236016%_
                                     _%$%e235671236019%_
                                     _%$%hd235672236022%_
                                     _%$%tl235673236024%_
                                     _%$%e235674236027%_
                                     _%$%hd235675236030%_
                                     _%$%tl235676236032%_
                                     _%$%e235677236035%_
                                     _%$%hd235678236038%_
                                     _%$%tl235679236040%_)
                                    (_%__kont241506241507%_))))
                            (_%__match241985241986%_
                             _%$%e235647235955%_
                             _%$%hd235648235958%_
                             _%$%tl235649235960%_
                             _%$%e235650235963%_
                             _%$%hd235651235966%_
                             _%$%tl235652235968%_
                             _%$%e235653235971%_
                             _%$%hd235654235974%_
                             _%$%tl235655235976%_
                             _%$%e235656235979%_
                             _%$%hd235657235982%_
                             _%$%tl235658235984%_
                             _%$%e235659235987%_
                             _%$%hd235660235990%_
                             _%$%tl235661235992%_
                             _%$%e235662235995%_
                             _%$%hd235663235998%_
                             _%$%tl235664236000%_
                             _%$%e235665236003%_
                             _%$%hd235666236006%_
                             _%$%tl235667236008%_
                             _%$%e235668236011%_
                             _%$%hd235669236014%_
                             _%$%tl235670236016%_))))
                     (_%__match241783241784%_
                      (lambda (_%$%e235613236089%_
                               _%$%hd235614236092%_
                               _%$%tl235615236094%_
                               _%$%e235616236097%_
                               _%$%hd235617236100%_
                               _%$%tl235618236102%_
                               _%$%e235619236105%_
                               _%$%hd235620236108%_
                               _%$%tl235621236110%_
                               _%$%e235622236113%_
                               _%$%hd235623236116%_
                               _%$%tl235624236118%_
                               _%$%e235625236121%_
                               _%$%hd235626236124%_
                               _%$%tl235627236126%_
                               _%$%e235628236129%_
                               _%$%hd235629236132%_
                               _%$%tl235630236134%_
                               _%$%e235631236137%_
                               _%$%hd235632236140%_
                               _%$%tl235633236142%_
                               _%$%e235634236145%_
                               _%$%hd235635236148%_
                               _%$%tl235636236150%_
                               _%$%e235637236153%_
                               _%$%hd235638236156%_
                               _%$%tl235639236158%_
                               _%$%e235640236161%_
                               _%$%hd235641236164%_
                               _%$%tl235642236166%_)
                        (let ((_%$%g235610236169%_ _%$%hd235641236164%_)
                              (_%$%g235611236170%_ _%$%hd235632236140%_)
                              (_%$%g235612236171%_ _%$%hd235623236116%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235612236171%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235612236171%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp242180
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235501%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235611236170%_
                                      __tmp242180)))
                              (_%__kont241498241499%_
                               _%$%g235610236169%_
                               _%$%g235611236170%_
                               _%$%g235612236171%_)
                              (_%__match241987241988%_
                               _%$%e235613236089%_
                               _%$%hd235614236092%_
                               _%$%tl235615236094%_
                               _%$%e235616236097%_
                               _%$%hd235617236100%_
                               _%$%tl235618236102%_
                               _%$%e235619236105%_
                               _%$%hd235620236108%_
                               _%$%tl235621236110%_
                               _%$%e235622236113%_
                               _%$%hd235623236116%_
                               _%$%tl235624236118%_
                               _%$%e235625236121%_
                               _%$%hd235626236124%_
                               _%$%tl235627236126%_
                               _%$%e235628236129%_
                               _%$%hd235629236132%_
                               _%$%tl235630236134%_
                               _%$%e235631236137%_
                               _%$%hd235632236140%_
                               _%$%tl235633236142%_
                               _%$%e235634236145%_
                               _%$%hd235635236148%_
                               _%$%tl235636236150%_)))))
                     (_%__match241781241782%_
                      (lambda (_%$%e235613236089%_
                               _%$%hd235614236092%_
                               _%$%tl235615236094%_
                               _%$%e235616236097%_
                               _%$%hd235617236100%_
                               _%$%tl235618236102%_
                               _%$%e235619236105%_
                               _%$%hd235620236108%_
                               _%$%tl235621236110%_
                               _%$%e235622236113%_
                               _%$%hd235623236116%_
                               _%$%tl235624236118%_
                               _%$%e235625236121%_
                               _%$%hd235626236124%_
                               _%$%tl235627236126%_
                               _%$%e235628236129%_
                               _%$%hd235629236132%_
                               _%$%tl235630236134%_
                               _%$%e235631236137%_
                               _%$%hd235632236140%_
                               _%$%tl235633236142%_
                               _%$%e235634236145%_
                               _%$%hd235635236148%_
                               _%$%tl235636236150%_
                               _%$%e235637236153%_
                               _%$%hd235638236156%_
                               _%$%tl235639236158%_
                               _%$%e235640236161%_
                               _%$%hd235641236164%_
                               _%$%tl235642236166%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl235636236150%_))
                            (_%__match241783241784%_
                             _%$%e235613236089%_
                             _%$%hd235614236092%_
                             _%$%tl235615236094%_
                             _%$%e235616236097%_
                             _%$%hd235617236100%_
                             _%$%tl235618236102%_
                             _%$%e235619236105%_
                             _%$%hd235620236108%_
                             _%$%tl235621236110%_
                             _%$%e235622236113%_
                             _%$%hd235623236116%_
                             _%$%tl235624236118%_
                             _%$%e235625236121%_
                             _%$%hd235626236124%_
                             _%$%tl235627236126%_
                             _%$%e235628236129%_
                             _%$%hd235629236132%_
                             _%$%tl235630236134%_
                             _%$%e235631236137%_
                             _%$%hd235632236140%_
                             _%$%tl235633236142%_
                             _%$%e235634236145%_
                             _%$%hd235635236148%_
                             _%$%tl235636236150%_
                             _%$%e235637236153%_
                             _%$%hd235638236156%_
                             _%$%tl235639236158%_
                             _%$%e235640236161%_
                             _%$%hd235641236164%_
                             _%$%tl235642236166%_)
                            (_%__match241861241862%_
                             _%$%e235613236089%_
                             _%$%hd235614236092%_
                             _%$%tl235615236094%_
                             _%$%e235616236097%_
                             _%$%hd235617236100%_
                             _%$%tl235618236102%_
                             _%$%e235619236105%_
                             _%$%hd235620236108%_
                             _%$%tl235621236110%_
                             _%$%e235622236113%_
                             _%$%hd235623236116%_
                             _%$%tl235624236118%_
                             _%$%e235625236121%_
                             _%$%hd235626236124%_
                             _%$%tl235627236126%_
                             _%$%e235628236129%_
                             _%$%hd235629236132%_
                             _%$%tl235630236134%_
                             _%$%e235631236137%_
                             _%$%hd235632236140%_
                             _%$%tl235633236142%_
                             _%$%e235634236145%_
                             _%$%hd235635236148%_
                             _%$%tl235636236150%_
                             _%$%e235637236153%_
                             _%$%hd235638236156%_
                             _%$%tl235639236158%_
                             _%$%e235640236161%_
                             _%$%hd235641236164%_
                             _%$%tl235642236166%_))))
                     (_%__match241771241772%_
                      (lambda (_%$%e235613236089%_
                               _%$%hd235614236092%_
                               _%$%tl235615236094%_
                               _%$%e235616236097%_
                               _%$%hd235617236100%_
                               _%$%tl235618236102%_
                               _%$%e235619236105%_
                               _%$%hd235620236108%_
                               _%$%tl235621236110%_
                               _%$%e235622236113%_
                               _%$%hd235623236116%_
                               _%$%tl235624236118%_
                               _%$%e235625236121%_
                               _%$%hd235626236124%_
                               _%$%tl235627236126%_
                               _%$%e235628236129%_
                               _%$%hd235629236132%_
                               _%$%tl235630236134%_
                               _%$%e235631236137%_
                               _%$%hd235632236140%_
                               _%$%tl235633236142%_
                               _%$%e235634236145%_
                               _%$%hd235635236148%_
                               _%$%tl235636236150%_
                               _%$%e235637236153%_
                               _%$%hd235638236156%_
                               _%$%tl235639236158%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd235638236156%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl235639236158%_))
                                (let ((_%$%e235640236161%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl235639236158%_))))
                                  (let ((_%$%tl235642236166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e235640236161%_)))
                                        (_%$%hd235641236164%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e235640236161%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl235642236166%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl235636236150%_))
                                            (_%__match241783241784%_
                                             _%$%e235613236089%_
                                             _%$%hd235614236092%_
                                             _%$%tl235615236094%_
                                             _%$%e235616236097%_
                                             _%$%hd235617236100%_
                                             _%$%tl235618236102%_
                                             _%$%e235619236105%_
                                             _%$%hd235620236108%_
                                             _%$%tl235621236110%_
                                             _%$%e235622236113%_
                                             _%$%hd235623236116%_
                                             _%$%tl235624236118%_
                                             _%$%e235625236121%_
                                             _%$%hd235626236124%_
                                             _%$%tl235627236126%_
                                             _%$%e235628236129%_
                                             _%$%hd235629236132%_
                                             _%$%tl235630236134%_
                                             _%$%e235631236137%_
                                             _%$%hd235632236140%_
                                             _%$%tl235633236142%_
                                             _%$%e235634236145%_
                                             _%$%hd235635236148%_
                                             _%$%tl235636236150%_
                                             _%$%e235637236153%_
                                             _%$%hd235638236156%_
                                             _%$%tl235639236158%_
                                             _%$%e235640236161%_
                                             _%$%hd235641236164%_
                                             _%$%tl235642236166%_)
                                            (_%__match241861241862%_
                                             _%$%e235613236089%_
                                             _%$%hd235614236092%_
                                             _%$%tl235615236094%_
                                             _%$%e235616236097%_
                                             _%$%hd235617236100%_
                                             _%$%tl235618236102%_
                                             _%$%e235619236105%_
                                             _%$%hd235620236108%_
                                             _%$%tl235621236110%_
                                             _%$%e235622236113%_
                                             _%$%hd235623236116%_
                                             _%$%tl235624236118%_
                                             _%$%e235625236121%_
                                             _%$%hd235626236124%_
                                             _%$%tl235627236126%_
                                             _%$%e235628236129%_
                                             _%$%hd235629236132%_
                                             _%$%tl235630236134%_
                                             _%$%e235631236137%_
                                             _%$%hd235632236140%_
                                             _%$%tl235633236142%_
                                             _%$%e235634236145%_
                                             _%$%hd235635236148%_
                                             _%$%tl235636236150%_
                                             _%$%e235637236153%_
                                             _%$%hd235638236156%_
                                             _%$%tl235639236158%_
                                             _%$%e235640236161%_
                                             _%$%hd235641236164%_
                                             _%$%tl235642236166%_))
                                        (_%__match241985241986%_
                                         _%$%e235613236089%_
                                         _%$%hd235614236092%_
                                         _%$%tl235615236094%_
                                         _%$%e235616236097%_
                                         _%$%hd235617236100%_
                                         _%$%tl235618236102%_
                                         _%$%e235619236105%_
                                         _%$%hd235620236108%_
                                         _%$%tl235621236110%_
                                         _%$%e235622236113%_
                                         _%$%hd235623236116%_
                                         _%$%tl235624236118%_
                                         _%$%e235625236121%_
                                         _%$%hd235626236124%_
                                         _%$%tl235627236126%_
                                         _%$%e235628236129%_
                                         _%$%hd235629236132%_
                                         _%$%tl235630236134%_
                                         _%$%e235631236137%_
                                         _%$%hd235632236140%_
                                         _%$%tl235633236142%_
                                         _%$%e235634236145%_
                                         _%$%hd235635236148%_
                                         _%$%tl235636236150%_))))
                                (_%__match241985241986%_
                                 _%$%e235613236089%_
                                 _%$%hd235614236092%_
                                 _%$%tl235615236094%_
                                 _%$%e235616236097%_
                                 _%$%hd235617236100%_
                                 _%$%tl235618236102%_
                                 _%$%e235619236105%_
                                 _%$%hd235620236108%_
                                 _%$%tl235621236110%_
                                 _%$%e235622236113%_
                                 _%$%hd235623236116%_
                                 _%$%tl235624236118%_
                                 _%$%e235625236121%_
                                 _%$%hd235626236124%_
                                 _%$%tl235627236126%_
                                 _%$%e235628236129%_
                                 _%$%hd235629236132%_
                                 _%$%tl235630236134%_
                                 _%$%e235631236137%_
                                 _%$%hd235632236140%_
                                 _%$%tl235633236142%_
                                 _%$%e235634236145%_
                                 _%$%hd235635236148%_
                                 _%$%tl235636236150%_))
                            (_%__match241985241986%_
                             _%$%e235613236089%_
                             _%$%hd235614236092%_
                             _%$%tl235615236094%_
                             _%$%e235616236097%_
                             _%$%hd235617236100%_
                             _%$%tl235618236102%_
                             _%$%e235619236105%_
                             _%$%hd235620236108%_
                             _%$%tl235621236110%_
                             _%$%e235622236113%_
                             _%$%hd235623236116%_
                             _%$%tl235624236118%_
                             _%$%e235625236121%_
                             _%$%hd235626236124%_
                             _%$%tl235627236126%_
                             _%$%e235628236129%_
                             _%$%hd235629236132%_
                             _%$%tl235630236134%_
                             _%$%e235631236137%_
                             _%$%hd235632236140%_
                             _%$%tl235633236142%_
                             _%$%e235634236145%_
                             _%$%hd235635236148%_
                             _%$%tl235636236150%_))))
                     (_%__match241703241704%_
                      (lambda (_%$%e235562236210%_
                               _%$%hd235563236213%_
                               _%$%tl235564236215%_
                               _%$%e235565236218%_
                               _%$%hd235566236221%_
                               _%$%tl235567236223%_
                               _%$%e235568236226%_
                               _%$%hd235569236229%_
                               _%$%tl235570236231%_
                               _%$%e235571236234%_
                               _%$%hd235572236237%_
                               _%$%tl235573236239%_
                               _%$%e235574236242%_
                               _%$%hd235575236245%_
                               _%$%tl235576236247%_
                               _%$%e235577236250%_
                               _%$%hd235578236253%_
                               _%$%tl235579236255%_
                               _%$%e235580236258%_
                               _%$%hd235581236261%_
                               _%$%tl235582236263%_
                               _%$%e235583236266%_
                               _%$%hd235584236269%_
                               _%$%tl235585236271%_
                               _%$%e235586236274%_
                               _%$%hd235587236277%_
                               _%$%tl235588236279%_
                               _%$%e235589236282%_
                               _%$%hd235590236285%_
                               _%$%tl235591236287%_
                               _%$%e235592236290%_
                               _%$%hd235593236293%_
                               _%$%tl235594236295%_
                               _%$%e235595236298%_
                               _%$%hd235596236301%_
                               _%$%tl235597236303%_
                               _%$%e235598236306%_
                               _%$%hd235599236309%_
                               _%$%tl235600236311%_
                               _%__splice241496241497%_
                               _%$%target235601236314%_
                               _%$%tl235603236316%_)
                        (letrec ((_%$%loop235604236319%_
                                  (lambda (_%$%hd235602236322%_
                                           _%$%args235608236324%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd235602236322%_))
                                        (let ((_%$%e235605236326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd235602236322%_))))
                                          (let ((_%$%lp-tl235607236331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e235605236326%_)))
                                                (_%$%lp-hd235606236329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e235605236326%_))))
                                            (_%$%loop235604236319%_
                                             _%$%lp-tl235607236331%_
                                             (cons _%$%lp-hd235606236329%_
                                                   _%$%args235608236324%_))))
                                        (let ((_%$%args235609236334%_
                                               (reverse _%$%args235608236324%_)))
                                          (let ((_%$%g235557236336%_
                                                 _%$%args235609236334%_)
                                                (_%$%g235558236337%_
                                                 _%$%hd235599236309%_)
                                                (_%$%g235559236338%_
                                                 _%$%hd235590236285%_)
                                                (_%$%g235560236339%_
                                                 _%$%hd235581236261%_)
                                                (_%$%g235561236340%_
                                                 _%$%hd235572236237%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g235561236340%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g235560236339%_
                                                        'call-method))
                                                     (let ((__tmp242181
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self235501%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g235559236338%_
                                                        __tmp242181)))
                                                (_%__kont241494241495%_
                                                 _%$%g235557236336%_
                                                 _%$%g235558236337%_
                                                 _%$%g235559236338%_
                                                 _%$%g235560236339%_
                                                 _%$%g235561236340%_)
                                                (_%__kont241506241507%_))))))))
                          (_%$%loop235604236319%_
                           _%$%target235601236314%_
                           '()))))
                     (_%__match241661241662%_
                      (lambda (_%$%e235562236210%_
                               _%$%hd235563236213%_
                               _%$%tl235564236215%_
                               _%$%e235565236218%_
                               _%$%hd235566236221%_
                               _%$%tl235567236223%_
                               _%$%e235568236226%_
                               _%$%hd235569236229%_
                               _%$%tl235570236231%_
                               _%$%e235571236234%_
                               _%$%hd235572236237%_
                               _%$%tl235573236239%_
                               _%$%e235574236242%_
                               _%$%hd235575236245%_
                               _%$%tl235576236247%_
                               _%$%e235577236250%_
                               _%$%hd235578236253%_
                               _%$%tl235579236255%_
                               _%$%e235580236258%_
                               _%$%hd235581236261%_
                               _%$%tl235582236263%_
                               _%$%e235583236266%_
                               _%$%hd235584236269%_
                               _%$%tl235585236271%_
                               _%$%e235586236274%_
                               _%$%hd235587236277%_
                               _%$%tl235588236279%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd235587236277%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl235588236279%_))
                                (let ((_%$%e235589236282%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl235588236279%_))))
                                  (let ((_%$%tl235591236287%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e235589236282%_)))
                                        (_%$%hd235590236285%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e235589236282%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl235591236287%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl235585236271%_))
                                            (let ((_%$%e235592236290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl235585236271%_))))
                                              (let ((_%$%tl235594236295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e235592236290%_)))
                                                    (_%$%hd235593236293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e235592236290%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd235593236293%_))
                                                    (let ((_%$%e235595236298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd235593236293%_))))
                                                      (let ((_%$%tl235597236303%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e235595236298%_)))
                    (_%$%hd235596236301%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e235595236298%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd235596236301%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd235596236301%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235597236303%_))
                            (let ((_%$%e235598236306%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235597236303%_))))
                              (let ((_%$%tl235600236311%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235598236306%_)))
                                    (_%$%hd235599236309%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235598236306%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl235600236311%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl235594236295%_))
                                        (let ((_%__splice241496241497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl235594236295%_
                                                  '0))))
                                          (let ((_%$%tl235603236316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice241496241497%_
                                                    '1)))
                                                (_%$%target235601236314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice241496241497%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl235603236316%_))
                                                (_%__match241703241704%_
                                                 _%$%e235562236210%_
                                                 _%$%hd235563236213%_
                                                 _%$%tl235564236215%_
                                                 _%$%e235565236218%_
                                                 _%$%hd235566236221%_
                                                 _%$%tl235567236223%_
                                                 _%$%e235568236226%_
                                                 _%$%hd235569236229%_
                                                 _%$%tl235570236231%_
                                                 _%$%e235571236234%_
                                                 _%$%hd235572236237%_
                                                 _%$%tl235573236239%_
                                                 _%$%e235574236242%_
                                                 _%$%hd235575236245%_
                                                 _%$%tl235576236247%_
                                                 _%$%e235577236250%_
                                                 _%$%hd235578236253%_
                                                 _%$%tl235579236255%_
                                                 _%$%e235580236258%_
                                                 _%$%hd235581236261%_
                                                 _%$%tl235582236263%_
                                                 _%$%e235583236266%_
                                                 _%$%hd235584236269%_
                                                 _%$%tl235585236271%_
                                                 _%$%e235586236274%_
                                                 _%$%hd235587236277%_
                                                 _%$%tl235588236279%_
                                                 _%$%e235589236282%_
                                                 _%$%hd235590236285%_
                                                 _%$%tl235591236287%_
                                                 _%$%e235592236290%_
                                                 _%$%hd235593236293%_
                                                 _%$%tl235594236295%_
                                                 _%$%e235595236298%_
                                                 _%$%hd235596236301%_
                                                 _%$%tl235597236303%_
                                                 _%$%e235598236306%_
                                                 _%$%hd235599236309%_
                                                 _%$%tl235600236311%_
                                                 _%__splice241496241497%_
                                                 _%$%target235601236314%_
                                                 _%$%tl235603236316%_)
                                                (_%__kont241506241507%_))))
                                        (_%__kont241506241507%_))
                                    (_%__kont241506241507%_))))
                            (_%__kont241506241507%_))
                        (_%__kont241506241507%_))
                    (_%__kont241506241507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont241506241507%_))))
                                            (_%__match241985241986%_
                                             _%$%e235562236210%_
                                             _%$%hd235563236213%_
                                             _%$%tl235564236215%_
                                             _%$%e235565236218%_
                                             _%$%hd235566236221%_
                                             _%$%tl235567236223%_
                                             _%$%e235568236226%_
                                             _%$%hd235569236229%_
                                             _%$%tl235570236231%_
                                             _%$%e235571236234%_
                                             _%$%hd235572236237%_
                                             _%$%tl235573236239%_
                                             _%$%e235574236242%_
                                             _%$%hd235575236245%_
                                             _%$%tl235576236247%_
                                             _%$%e235577236250%_
                                             _%$%hd235578236253%_
                                             _%$%tl235579236255%_
                                             _%$%e235580236258%_
                                             _%$%hd235581236261%_
                                             _%$%tl235582236263%_
                                             _%$%e235583236266%_
                                             _%$%hd235584236269%_
                                             _%$%tl235585236271%_))
                                        (_%__match241985241986%_
                                         _%$%e235562236210%_
                                         _%$%hd235563236213%_
                                         _%$%tl235564236215%_
                                         _%$%e235565236218%_
                                         _%$%hd235566236221%_
                                         _%$%tl235567236223%_
                                         _%$%e235568236226%_
                                         _%$%hd235569236229%_
                                         _%$%tl235570236231%_
                                         _%$%e235571236234%_
                                         _%$%hd235572236237%_
                                         _%$%tl235573236239%_
                                         _%$%e235574236242%_
                                         _%$%hd235575236245%_
                                         _%$%tl235576236247%_
                                         _%$%e235577236250%_
                                         _%$%hd235578236253%_
                                         _%$%tl235579236255%_
                                         _%$%e235580236258%_
                                         _%$%hd235581236261%_
                                         _%$%tl235582236263%_
                                         _%$%e235583236266%_
                                         _%$%hd235584236269%_
                                         _%$%tl235585236271%_))))
                                (_%__match241985241986%_
                                 _%$%e235562236210%_
                                 _%$%hd235563236213%_
                                 _%$%tl235564236215%_
                                 _%$%e235565236218%_
                                 _%$%hd235566236221%_
                                 _%$%tl235567236223%_
                                 _%$%e235568236226%_
                                 _%$%hd235569236229%_
                                 _%$%tl235570236231%_
                                 _%$%e235571236234%_
                                 _%$%hd235572236237%_
                                 _%$%tl235573236239%_
                                 _%$%e235574236242%_
                                 _%$%hd235575236245%_
                                 _%$%tl235576236247%_
                                 _%$%e235577236250%_
                                 _%$%hd235578236253%_
                                 _%$%tl235579236255%_
                                 _%$%e235580236258%_
                                 _%$%hd235581236261%_
                                 _%$%tl235582236263%_
                                 _%$%e235583236266%_
                                 _%$%hd235584236269%_
                                 _%$%tl235585236271%_))
                            (_%__match241771241772%_
                             _%$%e235562236210%_
                             _%$%hd235563236213%_
                             _%$%tl235564236215%_
                             _%$%e235565236218%_
                             _%$%hd235566236221%_
                             _%$%tl235567236223%_
                             _%$%e235568236226%_
                             _%$%hd235569236229%_
                             _%$%tl235570236231%_
                             _%$%e235571236234%_
                             _%$%hd235572236237%_
                             _%$%tl235573236239%_
                             _%$%e235574236242%_
                             _%$%hd235575236245%_
                             _%$%tl235576236247%_
                             _%$%e235577236250%_
                             _%$%hd235578236253%_
                             _%$%tl235579236255%_
                             _%$%e235580236258%_
                             _%$%hd235581236261%_
                             _%$%tl235582236263%_
                             _%$%e235583236266%_
                             _%$%hd235584236269%_
                             _%$%tl235585236271%_
                             _%$%e235586236274%_
                             _%$%hd235587236277%_
                             _%$%tl235588236279%_))))
                     (_%__match241593241594%_
                      (lambda (_%$%e235518236400%_
                               _%$%hd235519236403%_
                               _%$%tl235520236405%_
                               _%$%e235521236408%_
                               _%$%hd235522236411%_
                               _%$%tl235523236413%_
                               _%$%e235524236416%_
                               _%$%hd235525236419%_
                               _%$%tl235526236421%_
                               _%$%e235527236424%_
                               _%$%hd235528236427%_
                               _%$%tl235529236429%_
                               _%$%e235530236432%_
                               _%$%hd235531236435%_
                               _%$%tl235532236437%_
                               _%$%e235533236440%_
                               _%$%hd235534236443%_
                               _%$%tl235535236445%_
                               _%$%e235536236448%_
                               _%$%hd235537236451%_
                               _%$%tl235538236453%_
                               _%$%e235539236456%_
                               _%$%hd235540236459%_
                               _%$%tl235541236461%_
                               _%$%e235542236464%_
                               _%$%hd235543236467%_
                               _%$%tl235544236469%_
                               _%$%e235545236472%_
                               _%$%hd235546236475%_
                               _%$%tl235547236477%_
                               _%__splice241492241493%_
                               _%$%target235548236480%_
                               _%$%tl235550236482%_)
                        (letrec ((_%$%loop235551236485%_
                                  (lambda (_%$%hd235549236488%_
                                           _%$%args235555236490%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd235549236488%_))
                                        (let ((_%$%e235552236492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd235549236488%_))))
                                          (let ((_%$%lp-tl235554236497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e235552236492%_)))
                                                (_%$%lp-hd235553236495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e235552236492%_))))
                                            (_%$%loop235551236485%_
                                             _%$%lp-tl235554236497%_
                                             (cons _%$%lp-hd235553236495%_
                                                   _%$%args235555236490%_))))
                                        (let ((_%$%args235556236500%_
                                               (reverse _%$%args235555236490%_)))
                                          (let ((_%$%g235514236502%_
                                                 _%$%args235556236500%_)
                                                (_%$%g235515236503%_
                                                 _%$%hd235546236475%_)
                                                (_%$%g235516236504%_
                                                 _%$%hd235537236451%_)
                                                (_%$%g235517236505%_
                                                 _%$%hd235528236427%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g235517236505%_
                                                        'call-method))
                                                     (let ((__tmp242182
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self235501%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g235516236504%_
                                                        __tmp242182)))
                                                (_%__kont241490241491%_
                                                 _%$%g235514236502%_
                                                 _%$%g235515236503%_
                                                 _%$%g235516236504%_
                                                 _%$%g235517236505%_)
                                                (_%__match241781241782%_
                                                 _%$%e235518236400%_
                                                 _%$%hd235519236403%_
                                                 _%$%tl235520236405%_
                                                 _%$%e235521236408%_
                                                 _%$%hd235522236411%_
                                                 _%$%tl235523236413%_
                                                 _%$%e235524236416%_
                                                 _%$%hd235525236419%_
                                                 _%$%tl235526236421%_
                                                 _%$%e235527236424%_
                                                 _%$%hd235528236427%_
                                                 _%$%tl235529236429%_
                                                 _%$%e235530236432%_
                                                 _%$%hd235531236435%_
                                                 _%$%tl235532236437%_
                                                 _%$%e235533236440%_
                                                 _%$%hd235534236443%_
                                                 _%$%tl235535236445%_
                                                 _%$%e235536236448%_
                                                 _%$%hd235537236451%_
                                                 _%$%tl235538236453%_
                                                 _%$%e235539236456%_
                                                 _%$%hd235540236459%_
                                                 _%$%tl235541236461%_
                                                 _%$%e235542236464%_
                                                 _%$%hd235543236467%_
                                                 _%$%tl235544236469%_
                                                 _%$%e235545236472%_
                                                 _%$%hd235546236475%_
                                                 _%$%tl235547236477%_))))))))
                          (_%$%loop235551236485%_
                           _%$%target235548236480%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx241488241489%_))
                    (let ((_%$%e235518236400%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx241488241489%_))))
                      (let ((_%$%tl235520236405%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e235518236400%_)))
                            (_%$%hd235519236403%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e235518236400%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235520236405%_))
                            (let ((_%$%e235521236408%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235520236405%_))))
                              (let ((_%$%tl235523236413%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235521236408%_)))
                                    (_%$%hd235522236411%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235521236408%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd235522236411%_))
                                    (let ((_%$%e235524236416%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd235522236411%_))))
                                      (let ((_%$%tl235526236421%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e235524236416%_)))
                                            (_%$%hd235525236419%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e235524236416%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd235525236419%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd235525236419%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl235526236421%_))
                                                    (let ((_%$%e235527236424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl235526236421%_))))
                                                      (let ((_%$%tl235529236429%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e235527236424%_)))
                    (_%$%hd235528236427%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e235527236424%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl235529236429%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl235523236413%_))
                        (let ((_%$%e235530236432%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl235523236413%_))))
                          (let ((_%$%tl235532236437%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e235530236432%_)))
                                (_%$%hd235531236435%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e235530236432%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd235531236435%_))
                                (let ((_%$%e235533236440%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd235531236435%_))))
                                  (let ((_%$%tl235535236445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e235533236440%_)))
                                        (_%$%hd235534236443%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e235533236440%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd235534236443%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd235534236443%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl235535236445%_))
                                                (let ((_%$%e235536236448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl235535236445%_))))
                                                  (let ((_%$%tl235538236453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e235536236448%_)))
                                                        (_%$%hd235537236451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e235536236448%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl235538236453%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl235532236437%_))
                                                            (let ((_%$%e235539236456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl235532236437%_))))
                      (let ((_%$%tl235541236461%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e235539236456%_)))
                            (_%$%hd235540236459%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e235539236456%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd235540236459%_))
                            (let ((_%$%e235542236464%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd235540236459%_))))
                              (let ((_%$%tl235544236469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235542236464%_)))
                                    (_%$%hd235543236467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235542236464%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd235543236467%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd235543236467%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl235544236469%_))
                                            (let ((_%$%e235545236472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl235544236469%_))))
                                              (let ((_%$%tl235547236477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e235545236472%_)))
                                                    (_%$%hd235546236475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e235545236472%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl235547236477%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl235541236461%_))
                                                        (let ((_%__splice241492241493%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl235541236461%_
                          '0))))
                  (let ((_%$%tl235550236482%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice241492241493%_ '1)))
                        (_%$%target235548236480%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice241492241493%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl235550236482%_))
                        (_%__match241593241594%_
                         _%$%e235518236400%_
                         _%$%hd235519236403%_
                         _%$%tl235520236405%_
                         _%$%e235521236408%_
                         _%$%hd235522236411%_
                         _%$%tl235523236413%_
                         _%$%e235524236416%_
                         _%$%hd235525236419%_
                         _%$%tl235526236421%_
                         _%$%e235527236424%_
                         _%$%hd235528236427%_
                         _%$%tl235529236429%_
                         _%$%e235530236432%_
                         _%$%hd235531236435%_
                         _%$%tl235532236437%_
                         _%$%e235533236440%_
                         _%$%hd235534236443%_
                         _%$%tl235535236445%_
                         _%$%e235536236448%_
                         _%$%hd235537236451%_
                         _%$%tl235538236453%_
                         _%$%e235539236456%_
                         _%$%hd235540236459%_
                         _%$%tl235541236461%_
                         _%$%e235542236464%_
                         _%$%hd235543236467%_
                         _%$%tl235544236469%_
                         _%$%e235545236472%_
                         _%$%hd235546236475%_
                         _%$%tl235547236477%_
                         _%__splice241492241493%_
                         _%$%target235548236480%_
                         _%$%tl235550236482%_)
                        (_%__match241781241782%_
                         _%$%e235518236400%_
                         _%$%hd235519236403%_
                         _%$%tl235520236405%_
                         _%$%e235521236408%_
                         _%$%hd235522236411%_
                         _%$%tl235523236413%_
                         _%$%e235524236416%_
                         _%$%hd235525236419%_
                         _%$%tl235526236421%_
                         _%$%e235527236424%_
                         _%$%hd235528236427%_
                         _%$%tl235529236429%_
                         _%$%e235530236432%_
                         _%$%hd235531236435%_
                         _%$%tl235532236437%_
                         _%$%e235533236440%_
                         _%$%hd235534236443%_
                         _%$%tl235535236445%_
                         _%$%e235536236448%_
                         _%$%hd235537236451%_
                         _%$%tl235538236453%_
                         _%$%e235539236456%_
                         _%$%hd235540236459%_
                         _%$%tl235541236461%_
                         _%$%e235542236464%_
                         _%$%hd235543236467%_
                         _%$%tl235544236469%_
                         _%$%e235545236472%_
                         _%$%hd235546236475%_
                         _%$%tl235547236477%_))))
                (_%__match241781241782%_
                 _%$%e235518236400%_
                 _%$%hd235519236403%_
                 _%$%tl235520236405%_
                 _%$%e235521236408%_
                 _%$%hd235522236411%_
                 _%$%tl235523236413%_
                 _%$%e235524236416%_
                 _%$%hd235525236419%_
                 _%$%tl235526236421%_
                 _%$%e235527236424%_
                 _%$%hd235528236427%_
                 _%$%tl235529236429%_
                 _%$%e235530236432%_
                 _%$%hd235531236435%_
                 _%$%tl235532236437%_
                 _%$%e235533236440%_
                 _%$%hd235534236443%_
                 _%$%tl235535236445%_
                 _%$%e235536236448%_
                 _%$%hd235537236451%_
                 _%$%tl235538236453%_
                 _%$%e235539236456%_
                 _%$%hd235540236459%_
                 _%$%tl235541236461%_
                 _%$%e235542236464%_
                 _%$%hd235543236467%_
                 _%$%tl235544236469%_
                 _%$%e235545236472%_
                 _%$%hd235546236475%_
                 _%$%tl235547236477%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match241985241986%_
                                                     _%$%e235518236400%_
                                                     _%$%hd235519236403%_
                                                     _%$%tl235520236405%_
                                                     _%$%e235521236408%_
                                                     _%$%hd235522236411%_
                                                     _%$%tl235523236413%_
                                                     _%$%e235524236416%_
                                                     _%$%hd235525236419%_
                                                     _%$%tl235526236421%_
                                                     _%$%e235527236424%_
                                                     _%$%hd235528236427%_
                                                     _%$%tl235529236429%_
                                                     _%$%e235530236432%_
                                                     _%$%hd235531236435%_
                                                     _%$%tl235532236437%_
                                                     _%$%e235533236440%_
                                                     _%$%hd235534236443%_
                                                     _%$%tl235535236445%_
                                                     _%$%e235536236448%_
                                                     _%$%hd235537236451%_
                                                     _%$%tl235538236453%_
                                                     _%$%e235539236456%_
                                                     _%$%hd235540236459%_
                                                     _%$%tl235541236461%_))))
                                            (_%__match241985241986%_
                                             _%$%e235518236400%_
                                             _%$%hd235519236403%_
                                             _%$%tl235520236405%_
                                             _%$%e235521236408%_
                                             _%$%hd235522236411%_
                                             _%$%tl235523236413%_
                                             _%$%e235524236416%_
                                             _%$%hd235525236419%_
                                             _%$%tl235526236421%_
                                             _%$%e235527236424%_
                                             _%$%hd235528236427%_
                                             _%$%tl235529236429%_
                                             _%$%e235530236432%_
                                             _%$%hd235531236435%_
                                             _%$%tl235532236437%_
                                             _%$%e235533236440%_
                                             _%$%hd235534236443%_
                                             _%$%tl235535236445%_
                                             _%$%e235536236448%_
                                             _%$%hd235537236451%_
                                             _%$%tl235538236453%_
                                             _%$%e235539236456%_
                                             _%$%hd235540236459%_
                                             _%$%tl235541236461%_))
                                        (_%__match241661241662%_
                                         _%$%e235518236400%_
                                         _%$%hd235519236403%_
                                         _%$%tl235520236405%_
                                         _%$%e235521236408%_
                                         _%$%hd235522236411%_
                                         _%$%tl235523236413%_
                                         _%$%e235524236416%_
                                         _%$%hd235525236419%_
                                         _%$%tl235526236421%_
                                         _%$%e235527236424%_
                                         _%$%hd235528236427%_
                                         _%$%tl235529236429%_
                                         _%$%e235530236432%_
                                         _%$%hd235531236435%_
                                         _%$%tl235532236437%_
                                         _%$%e235533236440%_
                                         _%$%hd235534236443%_
                                         _%$%tl235535236445%_
                                         _%$%e235536236448%_
                                         _%$%hd235537236451%_
                                         _%$%tl235538236453%_
                                         _%$%e235539236456%_
                                         _%$%hd235540236459%_
                                         _%$%tl235541236461%_
                                         _%$%e235542236464%_
                                         _%$%hd235543236467%_
                                         _%$%tl235544236469%_))
                                    (_%__match241985241986%_
                                     _%$%e235518236400%_
                                     _%$%hd235519236403%_
                                     _%$%tl235520236405%_
                                     _%$%e235521236408%_
                                     _%$%hd235522236411%_
                                     _%$%tl235523236413%_
                                     _%$%e235524236416%_
                                     _%$%hd235525236419%_
                                     _%$%tl235526236421%_
                                     _%$%e235527236424%_
                                     _%$%hd235528236427%_
                                     _%$%tl235529236429%_
                                     _%$%e235530236432%_
                                     _%$%hd235531236435%_
                                     _%$%tl235532236437%_
                                     _%$%e235533236440%_
                                     _%$%hd235534236443%_
                                     _%$%tl235535236445%_
                                     _%$%e235536236448%_
                                     _%$%hd235537236451%_
                                     _%$%tl235538236453%_
                                     _%$%e235539236456%_
                                     _%$%hd235540236459%_
                                     _%$%tl235541236461%_))))
                            (_%__match241985241986%_
                             _%$%e235518236400%_
                             _%$%hd235519236403%_
                             _%$%tl235520236405%_
                             _%$%e235521236408%_
                             _%$%hd235522236411%_
                             _%$%tl235523236413%_
                             _%$%e235524236416%_
                             _%$%hd235525236419%_
                             _%$%tl235526236421%_
                             _%$%e235527236424%_
                             _%$%hd235528236427%_
                             _%$%tl235529236429%_
                             _%$%e235530236432%_
                             _%$%hd235531236435%_
                             _%$%tl235532236437%_
                             _%$%e235533236440%_
                             _%$%hd235534236443%_
                             _%$%tl235535236445%_
                             _%$%e235536236448%_
                             _%$%hd235537236451%_
                             _%$%tl235538236453%_
                             _%$%e235539236456%_
                             _%$%hd235540236459%_
                             _%$%tl235541236461%_))))
                    (_%__match241923241924%_
                     _%$%e235518236400%_
                     _%$%hd235519236403%_
                     _%$%tl235520236405%_
                     _%$%e235521236408%_
                     _%$%hd235522236411%_
                     _%$%tl235523236413%_
                     _%$%e235524236416%_
                     _%$%hd235525236419%_
                     _%$%tl235526236421%_
                     _%$%e235527236424%_
                     _%$%hd235528236427%_
                     _%$%tl235529236429%_
                     _%$%e235530236432%_
                     _%$%hd235531236435%_
                     _%$%tl235532236437%_
                     _%$%e235533236440%_
                     _%$%hd235534236443%_
                     _%$%tl235535236445%_
                     _%$%e235536236448%_
                     _%$%hd235537236451%_
                     _%$%tl235538236453%_))
                (_%__kont241506241507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont241506241507%_))
                                            (_%__kont241506241507%_))
                                        (_%__kont241506241507%_))))
                                (_%__kont241506241507%_))))
                        (_%__kont241506241507%_))
                    (_%__kont241506241507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont241506241507%_))
                                                (_%__kont241506241507%_))
                                            (_%__kont241506241507%_))))
                                    (_%__kont241506241507%_))))
                            (_%__kont241506241507%_))))
                    (_%__kont241506241507%_))))))))))
