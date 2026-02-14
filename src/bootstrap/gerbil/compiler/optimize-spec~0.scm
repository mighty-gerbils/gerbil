(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771036684)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp418057 (list gxc#::identity::t))
            (__tmp418056 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp418057
         '()
         __tmp418056
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args416854%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args416854%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp418058
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
        (__make-atomic-promise __tmp418058)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx416846%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self416849%_
                (let ((__obj418049
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj418049))
               (__tmp418059
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self416849%_ _%stx416846%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp418059
           gxc#current-compile-method
           _%self416849%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp418061 (list gxc#::false::t))
            (__tmp418060 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp418061
         '()
         __tmp418060
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args416843%_
        (apply make-instance gxc#::extract-receiver::t _%$args416843%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp418062
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
        (__make-atomic-promise __tmp418062)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx416835%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self416838%_
                (let ((__obj418051
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj418051))
               (__tmp418063
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self416838%_ _%stx416835%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp418063
           gxc#current-compile-method
           _%self416838%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp418065 (list gxc#::void::t))
            (__tmp418064 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp418065
         '(receiver methods slots)
         __tmp418064
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args416832%_
        (apply make-instance gxc#::collect-object-refs::t _%$args416832%_)))
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
      (let ((__tmp418066
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
        (__make-atomic-promise __tmp418066)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords416801%_
               _%receiver416796416802%_
               _%methods416797416803%_
               _%slots416798416804%_
               _%stx416805%_)
        (let* ((_%receiver416808%_
                (if (eq? _%receiver416796416802%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver416796416802%_))
               (_%methods416810%_
                (if (eq? _%methods416797416803%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods416797416803%_))
               (_%slots416812%_
                (if (eq? _%slots416798416804%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots416798416804%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self416814%_
                  (let ((__obj418053
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
                       __obj418053
                       _%receiver416808%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj418053
                       _%methods416810%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj418053
                       _%slots416812%_
                       '3
                       '#f
                       '#f))
                    __obj418053))
                 (__tmp418067
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self416814%_ _%stx416805%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp418067
             gxc#current-compile-method
             _%self416814%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords416821%_ . _%args416822%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords416821%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords416821%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords416821%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords416821%_
                  'slots:
                  absent-value))
               _%args416822%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args416799416828%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args416799416828%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp418069 (list gxc#::basic-xform-expression::t))
            (__tmp418068 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp418069
         '(receiver klass methods slots)
         __tmp418068
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args416792%_
        (apply make-instance gxc#::subst-object-refs::t _%$args416792%_)))
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
      (let ((__tmp418070
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
        (__make-atomic-promise __tmp418070)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords416758%_
               _%receiver416752416759%_
               _%klass416753416760%_
               _%methods416754416761%_
               _%slots416755416762%_
               _%stx416763%_)
        (let* ((_%receiver416766%_
                (if (eq? _%receiver416752416759%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver416752416759%_))
               (_%klass416768%_
                (if (eq? _%klass416753416760%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass416753416760%_))
               (_%methods416770%_
                (if (eq? _%methods416754416761%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods416754416761%_))
               (_%slots416772%_
                (if (eq? _%slots416755416762%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots416755416762%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self416774%_
                  (let ((__obj418055
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
                       __obj418055
                       _%receiver416766%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj418055
                       _%klass416768%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj418055
                       _%methods416770%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj418055
                       _%slots416772%_
                       '4
                       '#f
                       '#f))
                    __obj418055))
                 (__tmp418071
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self416774%_ _%stx416763%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp418071
             gxc#current-compile-method
             _%self416774%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords416781%_ . _%args416782%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords416781%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords416781%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords416781%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords416781%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords416781%_
                  'slots:
                  absent-value))
               _%args416782%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args416756416788%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args416756416788%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self413883%_ _%stx413884%_)
        (letrec ((_%generate-method-bind413886%_
                  (lambda (_%$klass416744%_
                           _%$method-table416745%_
                           _%id416746%_
                           _%$id416747%_)
                    (let ((_%$tmp416749%_
                           (let ((__tmp418072
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp418072))))
                      (cons (cons _%$id416747%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp416749%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table416745%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id416746%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp416749%_ '()))
                    (cons (cons '%#ref (cons _%$tmp416749%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id416746%_
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
                 (_%generate-slot-bind413887%_
                  (lambda (_%$klass416738%_ _%id416739%_ _%$id416740%_)
                    (let ((_%$tmp416742%_
                           (let ((__tmp418073
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp418073))))
                      (cons (cons _%$id416740%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp416742%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass416738%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id416739%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp416742%_ '()))
                        (cons (cons '%#ref (cons _%$tmp416742%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id416739%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl413888%_
                  (lambda (_%$klass416732%_
                           _%$method-table416733%_
                           _%methods-bind416734%_
                           _%slots-bind416735%_
                           _%specializer-impl416736%_)
                    (let ((__tmp418074
                           (cons '%#lambda
                                 (cons (cons _%$klass416732%_
                                             (cons _%$method-table416733%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind416735%_
                                                            _%methods-bind416734%_))
                                                         (cons _%specializer-impl416736%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp418074 _%stx413884%_))))
                 (_%generate-specializer-def413889%_
                  (lambda (_%id416728%_
                           _%specializer-id416729%_
                           _%specializer-impl416730%_)
                    (let ((__tmp418075
                           (cons '%#begin
                                 (cons _%stx413884%_
                                       (cons (let ((__tmp418076
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id416729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl416730%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp418076
                                                _%stx413884%_))
                                             (cons (let ((__tmp418077
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id416728%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id416729%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp418077
                                                      _%stx413884%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp418075 _%stx413884%_)))))
          (let* ((_%__stx416943416944%_ _%stx413884%_)
                 (_%g413892413912%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx416943416944%_)))))
            (let ((_%__kont416945416946%_
                   (lambda (_%g413894413956%_ _%g413895413957%_)
                     (let ((_%method-calls413976%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs413977%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty413978%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?413980%_
                                 (lambda ()
                                   (if (let ((__tmp418078
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls413976%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp418078))
                                       (let ((__tmp418079
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs413977%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp418079))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g413894413956%_))
                             (let* ((_%__stx416857416858%_ _%g413894413956%_)
                                    (_%g414364414382%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx416857416858%_)))))
                               (let ((_%__kont416859416860%_
                                      (lambda (_%g414366414418%_
                                               _%g414367414419%_
                                               _%g414368414420%_)
                                        (let ((_%receiver414440%_
                                               (let ((_%$e414437%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g414366414418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e414437%_
                                                     _%$e414437%_
                                                     _%g414368414420%_))))
                                          (for-each
                                           (lambda (_%g414441414443%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver414440%_
                                              _%method-calls413976%_
                                              _%slot-refs413977%_
                                              _%g414441414443%_))
                                           _%g414366414418%_)
                                          (if (_%no-specializer?413980%_)
                                              _%stx413884%_
                                              (let* ((_%specializer-id414452%_
                                                      (let* ((_%id414446%_
                                                              (let ((__tmp418080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g413895413957%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp418080 '"::specialize")))
                     (_%specializer-id414449%_
                      (let ((__tmp418081
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx413884%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id414446%_ __tmp418081))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id414449%_))
                _%specializer-id414449%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass414454%_
                                                      (let ((__tmp418082
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp418082)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table414456%_
                                                      (let ((__tmp418083
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp418083)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods414458%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls413976%_)))
                                                     (_%$methods414462%_
                                                      (let ((__tmp418084
                                                             (lambda (_%id414460%_)
                                                               (let ((__tmp418085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id414460%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp418085)))))
                (declare (not safe))
                (##map __tmp418084 _%methods414458%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_414471%_
                                                      (let ((__tmp418086
                                                             (lambda (_%g414463414466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g414464414468%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls413976%_
                          _%g414463414466%_
                          _%g414464414468%_)))))
                (declare (not safe))
                (##for-each __tmp418086 _%methods414458%_ _%$methods414462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind414481%_
                                                      (let ((__tmp418087
                                                             (lambda (_%g414473414476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g414474414478%_)
                       (_%generate-method-bind413886%_
                        _%$klass414454%_
                        _%$method-table414456%_
                        _%g414473414476%_
                        _%g414474414478%_))))
                (declare (not safe))
                (##map __tmp418087 _%methods414458%_ _%$methods414462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots414483%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs413977%_)))
                                                     (_%$slots414487%_
                                                      (let ((__tmp418088
                                                             (lambda (_%id414485%_)
                                                               (let ((__tmp418089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id414485%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp418089)))))
                (declare (not safe))
                (##map __tmp418088 _%slots414483%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_414496%_
                                                      (let ((__tmp418090
                                                             (lambda (_%g414488414491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g414489414493%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs413977%_
                          _%g414488414491%_
                          _%g414489414493%_)))))
                (declare (not safe))
                (##for-each __tmp418090 _%slots414483%_ _%$slots414487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind414505%_
                                                      (let ((__tmp418091
                                                             (lambda (_%g414497414500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g414498414502%_)
                       (_%generate-slot-bind413887%_
                        _%$klass414454%_
                        _%g414497414500%_
                        _%g414498414502%_))))
                (declare (not safe))
                (##map __tmp418091 _%slots414483%_ _%$slots414487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body414511%_
                                                      (map (lambda (_%g414506414508%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver414440%_
                                                              _%$klass414454%_
                                                              _%method-calls413976%_
                                                              _%slot-refs413977%_
                                                              _%g414506414508%_))
                                                           _%g414366414418%_))
                                                     (_%specializer-impl414513%_
                                                      (let ((__tmp418092
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g414368414420%_ _%g414367414419%_)
                                 _%specializer-body414511%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp418092 _%stx413884%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl414515%_
                                                      (_%generate-specializer-impl413888%_
                                                       _%$klass414454%_
                                                       _%$method-table414456%_
                                                       _%methods-bind414481%_
                                                       _%slots-bind414505%_
                                                       _%specializer-impl414513%_)))
                                                (let ((__tmp418094
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g413895413957%_)))
                                                      (__tmp418093
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id414452%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp418094
                                                   '" => "
                                                   __tmp418093))
                                                (_%generate-specializer-def413889%_
                                                 _%g413895413957%_
                                                 _%specializer-id414452%_
                                                 _%specializer-impl414515%_))))))
                                     (_%__kont416861416862%_
                                      (lambda () _%stx413884%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx416857416858%_))
                                     (let ((_%e414369414394%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx416857416858%_))))
                                       (let ((_%tl414371414399%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e414369414394%_)))
                                             (_%hd414370414397%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e414369414394%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl414371414399%_))
                                             (let ((_%e414372414402%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl414371414399%_))))
                                               (let ((_%tl414374414407%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e414372414402%_)))
                                                     (_%hd414373414405%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e414372414402%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd414373414405%_))
                                                     (let ((_%e414375414410%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd414373414405%_))))
                                                       (let ((_%tl414377414415%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e414375414410%_)))
                     (_%hd414376414413%_
                      (let () (declare (not safe)) (##car _%e414375414410%_))))
                 (_%__kont416859416860%_
                  _%tl414374414407%_
                  _%tl414377414415%_
                  _%hd414376414413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont416861416862%_))))
                                             (_%__kont416861416862%_))))
                                     (_%__kont416861416862%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g413894413956%_))
                                 (let* ((_%g414522414541%_
                                         (lambda (_%g414523414538%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g414523414538%_))))
                                        (_%g414521414837%_
                                         (lambda (_%g414523414544%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g414523414544%_))
                                               (let ((_%e414525414546%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g414523414544%_))))
                                                 (let ((_%hd414526414549%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e414525414546%_)))
                                                       (_%tl414527414551%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e414525414546%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl414527414551%_))
                                                       (let ((_g418095_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl414527414551%_ '0))))
                 (begin
                   (let ((_g418096_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g418095_)
                                (##values-length _g418095_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g418096_ 2)))
                         (error "Context expects 2 values" _g418096_)))
                   (let ((_%target414528414554%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g418095_ 0)))
                         (_%tl414530414556%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g418095_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl414530414556%_))
                         (letrec ((_%loop414531414559%_
                                   (lambda (_%hd414529414562%_
                                            _%clause414535414564%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd414529414562%_))
                                         (let ((_%e414532414566%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd414529414562%_))))
                                           (let ((_%lp-hd414533414569%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e414532414566%_)))
                                                 (_%lp-tl414534414571%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e414532414566%_))))
                                             (_%loop414531414559%_
                                              _%lp-tl414534414571%_
                                              (cons _%lp-hd414533414569%_
                                                    _%clause414535414564%_))))
                                         (let ((_%clause414536414574%_
                                                (reverse _%clause414535414564%_)))
                                           ((lambda (_%g414524414576%_)
                                              (for-each
                                               (lambda (_%clause414590%_)
                                                 (let* ((_%__stx416883416884%_
                                                         _%clause414590%_)
                                                        (_%g414593414608%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx416883416884%_)))))
                                                   (let ((_%__kont416885416886%_
                                                          (lambda (_%g414595414636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g414596414637%_
                           _%g414597414638%_)
                    (let ((_%receiver414657%_
                           (let ((_%$e414654%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g414595414636%_))))
                             (if _%$e414654%_
                                 _%$e414654%_
                                 _%g414597414638%_))))
                      (for-each
                       (lambda (_%g414658414660%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver414657%_
                          _%method-calls413976%_
                          _%slot-refs413977%_
                          _%g414658414660%_))
                       _%g414595414636%_))))
                 (_%__kont416887416888%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx416883416884%_))
                                                         (let ((_%e414598414620%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx416883416884%_))))
                   (let ((_%tl414600414625%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e414598414620%_)))
                         (_%hd414599414623%_
                          (let ()
                            (declare (not safe))
                            (##car _%e414598414620%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd414599414623%_))
                         (let ((_%e414601414628%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd414599414623%_))))
                           (let ((_%tl414603414633%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e414601414628%_)))
                                 (_%hd414602414631%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e414601414628%_))))
                             (_%__kont416885416886%_
                              _%tl414600414625%_
                              _%tl414603414633%_
                              _%hd414602414631%_)))
                         (_%__kont416887416888%_))))
                 (_%__kont416887416888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp418097
                                                      (lambda (_%g414665414668%_
                                                               _%g414666414670%_)
                                                        (cons _%g414665414668%_
                                                              _%g414666414670%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp418097
                                                  '()
                                                  _%g414524414576%_)))
                                              (if (_%no-specializer?413980%_)
                                                  _%stx413884%_
                                                  (let* ((_%specializer-id414679%_
                                                          (let* ((_%id414673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp418098
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g413895413957%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp418098 '"::specialize")))
                         (_%specializer-id414676%_
                          (let ((__tmp418099
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx413884%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id414673%_
                             __tmp418099))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id414676%_))
                    _%specializer-id414676%_))
                 (_%$klass414681%_
                  (let ((__tmp418100
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp418100)))
                 (_%$method-table414683%_
                  (let ((__tmp418101
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp418101)))
                 (_%methods414685%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls413976%_)))
                 (_%$methods414689%_
                  (let ((__tmp418102
                         (lambda (_%id414687%_)
                           (let ((__tmp418103 (gensym _%id414687%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp418103)))))
                    (declare (not safe))
                    (##map __tmp418102 _%methods414685%_)))
                 (_%_414698%_
                  (let ((__tmp418104
                         (lambda (_%g414690414693%_ _%g414691414695%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls413976%_
                              _%g414690414693%_
                              _%g414691414695%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp418104
                     _%methods414685%_
                     _%$methods414689%_)))
                 (_%methods-bind414708%_
                  (let ((__tmp418105
                         (lambda (_%g414700414703%_ _%g414701414705%_)
                           (_%generate-method-bind413886%_
                            _%$klass414681%_
                            _%$method-table414683%_
                            _%g414700414703%_
                            _%g414701414705%_))))
                    (declare (not safe))
                    (##map __tmp418105 _%methods414685%_ _%$methods414689%_)))
                 (_%slots414710%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs413977%_)))
                 (_%$slots414714%_
                  (let ((__tmp418106
                         (lambda (_%id414712%_)
                           (let ((__tmp418107 (gensym _%id414712%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp418107)))))
                    (declare (not safe))
                    (##map __tmp418106 _%slots414710%_)))
                 (_%_414723%_
                  (let ((__tmp418108
                         (lambda (_%g414715414718%_ _%g414716414720%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs413977%_
                              _%g414715414718%_
                              _%g414716414720%_)))))
                    (declare (not safe))
                    (##for-each __tmp418108 _%slots414710%_ _%$slots414714%_)))
                 (_%slots-bind414732%_
                  (let ((__tmp418109
                         (lambda (_%g414724414727%_ _%g414725414729%_)
                           (_%generate-slot-bind413887%_
                            _%$klass414681%_
                            _%g414724414727%_
                            _%g414725414729%_))))
                    (declare (not safe))
                    (##map __tmp418109 _%slots414710%_ _%$slots414714%_)))
                 (_%specializer-clauses414830%_
                  (map (lambda (_%clause414734%_)
                         (let* ((_%__stx416903416904%_ _%clause414734%_)
                                (_%g414737414752%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx416903416904%_)))))
                           (let ((_%__kont416905416906%_
                                  (lambda (_%g414739414780%_
                                           _%g414740414781%_
                                           _%g414741414782%_)
                                    (let* ((_%receiver414811%_
                                            (let ((_%$e414808%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g414739414780%_))))
                                              (if _%$e414808%_
                                                  _%$e414808%_
                                                  _%g414741414782%_)))
                                           (_%body414817%_
                                            (map (lambda (_%g414812414814%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver414811%_
                                                    _%$klass414681%_
                                                    _%method-calls413976%_
                                                    _%slot-refs413977%_
                                                    _%g414812414814%_))
                                                 _%g414739414780%_)))
                                      (cons (cons _%g414741414782%_
                                                  _%g414740414781%_)
                                            _%body414817%_))))
                                 (_%__kont416907416908%_
                                  (lambda () _%clause414734%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx416903416904%_))
                                 (let ((_%e414742414764%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx416903416904%_))))
                                   (let ((_%tl414744414769%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e414742414764%_)))
                                         (_%hd414743414767%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e414742414764%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd414743414767%_))
                                         (let ((_%e414745414772%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd414743414767%_))))
                                           (let ((_%tl414747414777%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e414745414772%_)))
                                                 (_%hd414746414775%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e414745414772%_))))
                                             (_%__kont416905416906%_
                                              _%tl414744414769%_
                                              _%tl414747414777%_
                                              _%hd414746414775%_)))
                                         (_%__kont416907416908%_))))
                                 (_%__kont416907416908%_)))))
                       (let ((__tmp418110
                              (lambda (_%g414822414825%_ _%g414823414827%_)
                                (cons _%g414822414825%_ _%g414823414827%_))))
                         (declare (not safe))
                         (foldr__0 __tmp418110 '() _%g414524414576%_))))
                 (_%specializer-impl414832%_
                  (let ((__tmp418111
                         (cons '%#case-lambda _%specializer-clauses414830%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp418111 _%stx413884%_)))
                 (_%specializer-impl414834%_
                  (_%generate-specializer-impl413888%_
                   _%$klass414681%_
                   _%$method-table414683%_
                   _%methods-bind414708%_
                   _%slots-bind414732%_
                   _%specializer-impl414832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp418113
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g413895413957%_)))
                                                          (__tmp418112
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id414679%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp418113
                                                       '" => "
                                                       __tmp418112))
                                                    (_%generate-specializer-def413889%_
                                                     _%g413895413957%_
                                                     _%specializer-id414679%_
                                                     _%specializer-impl414834%_))))
                                            _%clause414536414574%_))))))
                           (_%loop414531414559%_ _%target414528414554%_ '()))
                         (_%g414522414541%_ _%g414523414544%_)))))
               (_%g414522414541%_ _%g414523414544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g414522414541%_
                                                _%g414523414544%_)))))
                                   (_%g414521414837%_ _%g413894413956%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g413894413956%_))
                                     (let* ((_%g414841414871%_
                                             (lambda (_%g414842414868%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g414842414868%_))))
                                            (_%g414840415498%_
                                             (lambda (_%g414842414874%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g414842414874%_))
                                                   (let ((_%e414846414876%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g414842414874%_))))
                                                     (let ((_%hd414847414879%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e414846414876%_)))
                                                           (_%tl414848414881%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e414846414876%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl414848414881%_))
                                                           (let ((_%e414849414884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl414848414881%_))))
                     (let ((_%hd414850414887%_
                            (let ()
                              (declare (not safe))
                              (##car _%e414849414884%_)))
                           (_%tl414851414889%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e414849414884%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd414850414887%_))
                           (let ((_%e414852414892%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd414850414887%_))))
                             (let ((_%hd414853414895%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e414852414892%_)))
                                   (_%tl414854414897%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e414852414892%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd414853414895%_))
                                   (let ((_%e414855414900%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd414853414895%_))))
                                     (let ((_%hd414856414903%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e414855414900%_)))
                                           (_%tl414857414905%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e414855414900%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd414856414903%_))
                                           (let ((_%e414858414908%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd414856414903%_))))
                                             (let ((_%hd414859414911%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e414858414908%_)))
                                                   (_%tl414860414913%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e414858414908%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl414860414913%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl414857414905%_))
                                                       (let ((_%e414861414916%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl414857414905%_))))
                 (let ((_%hd414862414919%_
                        (let ()
                          (declare (not safe))
                          (##car _%e414861414916%_)))
                       (_%tl414863414921%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e414861414916%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl414863414921%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl414854414897%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl414851414889%_))
                               (let ((_%e414864414924%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl414851414889%_))))
                                 (let ((_%hd414865414927%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e414864414924%_)))
                                       (_%tl414866414929%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e414864414924%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl414866414929%_))
                                       ((lambda (_%g414843414932%_
                                                 _%g414844414933%_
                                                 _%g414845414934%_)
                                          (let* ((_%g414958414976%_
                                                  (lambda (_%g414959414973%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g414959414973%_))))
                                                 (_%g414957415032%_
                                                  (lambda (_%g414959414979%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g414959414979%_))
                                                        (let ((_%e414963414981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g414959414979%_))))
                  (let ((_%hd414964414984%_
                         (let ()
                           (declare (not safe))
                           (##car _%e414963414981%_)))
                        (_%tl414965414986%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e414963414981%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl414965414986%_))
                        (let ((_%e414966414989%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl414965414986%_))))
                          (let ((_%hd414967414992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e414966414989%_)))
                                (_%tl414968414994%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e414966414989%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd414967414992%_))
                                (let ((_%e414969414997%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd414967414992%_))))
                                  (let ((_%hd414970415000%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e414969414997%_)))
                                        (_%tl414971415002%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e414969414997%_))))
                                    ((lambda (_%g414960415005%_
                                              _%g414961415006%_
                                              _%g414962415007%_)
                                       (let ((_%receiver415026%_
                                              (let ((_%$e415023%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g414960415005%_))))
                                                (if _%$e415023%_
                                                    _%$e415023%_
                                                    _%g414962415007%_))))
                                         (for-each
                                          (lambda (_%g415027415029%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver415026%_
                                             _%method-calls413976%_
                                             _%slot-refs413977%_
                                             _%g415027415029%_))
                                          _%g414960415005%_)))
                                     _%tl414968414994%_
                                     _%tl414971415002%_
                                     _%hd414970415000%_)))
                                (_%g414958414976%_ _%g414959414979%_))))
                        (_%g414958414976%_ _%g414959414979%_))))
                (_%g414958414976%_ _%g414959414979%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g414957415032%_
                                             _%g414844414933%_))
                                          (let* ((_%g415035415054%_
                                                  (lambda (_%g415036415051%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g415036415051%_))))
                                                 (_%g415034415176%_
                                                  (lambda (_%g415036415057%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g415036415057%_))
                                                        (let ((_%e415038415059%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g415036415057%_))))
                  (let ((_%hd415039415062%_
                         (let ()
                           (declare (not safe))
                           (##car _%e415038415059%_)))
                        (_%tl415040415064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e415038415059%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl415040415064%_))
                        (let ((_g418114_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl415040415064%_
                                  '0))))
                          (begin
                            (let ((_g418115_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g418114_)
                                         (##values-length _g418114_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g418115_ 2)))
                                  (error "Context expects 2 values"
                                         _g418115_)))
                            (let ((_%target415041415067%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g418114_ 0)))
                                  (_%tl415043415069%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g418114_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl415043415069%_))
                                  (letrec ((_%loop415044415072%_
                                            (lambda (_%hd415042415075%_
                                                     _%clause415048415077%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd415042415075%_))
                                                  (let ((_%e415045415079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd415042415075%_))))
                                                    (let ((_%lp-hd415046415082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e415045415079%_)))
                                                          (_%lp-tl415047415084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e415045415079%_))))
                                                      (_%loop415044415072%_
                                                       _%lp-tl415047415084%_
                                                       (cons _%lp-hd415046415082%_
                                                             _%clause415048415077%_))))
                                                  (let ((_%clause415049415087%_
                                                         (reverse _%clause415048415077%_)))
                                                    ((lambda (_%g415037415089%_)
                                                       (for-each
                                                        (lambda (_%clause415102%_)
                                                          (let* ((_%g415104415119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g415105415116%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g415105415116%_))))
                         (_%g415103415166%_
                          (lambda (_%g415105415122%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g415105415122%_))
                                (let ((_%e415109415124%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g415105415122%_))))
                                  (let ((_%hd415110415127%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e415109415124%_)))
                                        (_%tl415111415129%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e415109415124%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd415110415127%_))
                                        (let ((_%e415112415132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd415110415127%_))))
                                          (let ((_%hd415113415135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e415112415132%_)))
                                                (_%tl415114415137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e415112415132%_))))
                                            ((lambda (_%g415106415140%_
                                                      _%g415107415141%_
                                                      _%g415108415142%_)
                                               (let ((_%receiver415160%_
                                                      (let ((_%$e415157%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g415106415140%_))))
                (if _%$e415157%_ _%$e415157%_ _%g415108415142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g415161415163%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver415160%_
                                                     _%method-calls413976%_
                                                     _%slot-refs413977%_
                                                     _%g415161415163%_))
                                                  _%g415106415140%_)))
                                             _%tl415111415129%_
                                             _%tl415114415137%_
                                             _%hd415113415135%_)))
                                        (_%g415104415119%_
                                         _%g415105415122%_))))
                                (_%g415104415119%_ _%g415105415122%_)))))
                    (_%g415103415166%_ _%clause415102%_)))
                (let ((__tmp418116
                       (lambda (_%g415168415171%_ _%g415169415173%_)
                         (cons _%g415168415171%_ _%g415169415173%_))))
                  (declare (not safe))
                  (foldr__0 __tmp418116 '() _%g415037415089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause415049415087%_))))))
                                    (_%loop415044415072%_
                                     _%target415041415067%_
                                     '()))
                                  (_%g415035415054%_ _%g415036415057%_)))))
                        (_%g415035415054%_ _%g415036415057%_))))
                (_%g415035415054%_ _%g415036415057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g415034415176%_
                                             _%g414843414932%_))
                                          (if (_%no-specializer?413980%_)
                                              _%stx413884%_
                                              (let* ((_%specializer-id415185%_
                                                      (let* ((_%id415179%_
                                                              (let ((__tmp418117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g413895413957%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp418117 '"::specialize")))
                     (_%specializer-id415182%_
                      (let ((__tmp418118
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx413884%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id415179%_ __tmp418118))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id415182%_))
                _%specializer-id415182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass415187%_
                                                      (let ((__tmp418119
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp418119)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table415189%_
                                                      (let ((__tmp418120
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp418120)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods415191%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls413976%_)))
                                                     (_%$methods415195%_
                                                      (let ((__tmp418121
                                                             (lambda (_%id415193%_)
                                                               (let ((__tmp418122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id415193%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp418122)))))
                (declare (not safe))
                (##map __tmp418121 _%methods415191%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_415204%_
                                                      (let ((__tmp418123
                                                             (lambda (_%g415196415199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g415197415201%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls413976%_
                          _%g415196415199%_
                          _%g415197415201%_)))))
                (declare (not safe))
                (##for-each __tmp418123 _%methods415191%_ _%$methods415195%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind415214%_
                                                      (let ((__tmp418124
                                                             (lambda (_%g415206415209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g415207415211%_)
                       (_%generate-method-bind413886%_
                        _%$klass415187%_
                        _%$method-table415189%_
                        _%g415206415209%_
                        _%g415207415211%_))))
                (declare (not safe))
                (##map __tmp418124 _%methods415191%_ _%$methods415195%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots415216%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs413977%_)))
                                                     (_%$slots415220%_
                                                      (let ((__tmp418125
                                                             (lambda (_%id415218%_)
                                                               (let ((__tmp418126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id415218%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp418126)))))
                (declare (not safe))
                (##map __tmp418125 _%slots415216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_415229%_
                                                      (let ((__tmp418127
                                                             (lambda (_%g415221415224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g415222415226%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs413977%_
                          _%g415221415224%_
                          _%g415222415226%_)))))
                (declare (not safe))
                (##for-each __tmp418127 _%slots415216%_ _%$slots415220%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind415238%_
                                                      (let ((__tmp418128
                                                             (lambda (_%g415230415233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g415231415235%_)
                       (_%generate-slot-bind413887%_
                        _%$klass415187%_
                        _%g415230415233%_
                        _%g415231415235%_))))
                (declare (not safe))
                (##map __tmp418128 _%slots415216%_ _%$slots415220%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr415330%_
                                                      (let* ((_%g415240415258%_
                                                              (lambda (_%g415241415255%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g415241415255%_))))
                     (_%g415239415327%_
                      (lambda (_%g415241415261%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g415241415261%_))
                            (let ((_%e415245415263%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g415241415261%_))))
                              (let ((_%hd415246415266%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e415245415263%_)))
                                    (_%tl415247415268%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e415245415263%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl415247415268%_))
                                    (let ((_%e415248415271%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl415247415268%_))))
                                      (let ((_%hd415249415274%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e415248415271%_)))
                                            (_%tl415250415276%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e415248415271%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd415249415274%_))
                                            (let ((_%e415251415279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd415249415274%_))))
                                              (let ((_%hd415252415282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e415251415279%_)))
                                                    (_%tl415253415284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e415251415279%_))))
                                                ((lambda (_%g415242415287%_
                                                          _%g415243415288%_
                                                          _%g415244415289%_)
                                                   (let* ((_%receiver415318%_
                                                           (let ((_%$e415315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g415242415287%_))))
                     (if _%$e415315%_ _%$e415315%_ _%g415244415289%_)))
                  (_%body415324%_
                   (map (lambda (_%g415319415321%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver415318%_
                           _%$klass415187%_
                           _%method-calls413976%_
                           _%slot-refs413977%_
                           _%g415319415321%_))
                        _%g415242415287%_))
                  (__tmp418129
                   (cons '%#lambda
                         (cons (cons _%g415244415289%_ _%g415243415288%_)
                               _%body415324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp418129
                                                      _%g414844414933%_)))
                                                 _%tl415250415276%_
                                                 _%tl415253415284%_
                                                 _%hd415252415282%_)))
                                            (_%g415240415258%_
                                             _%g415241415261%_))))
                                    (_%g415240415258%_ _%g415241415261%_))))
                            (_%g415240415258%_ _%g415241415261%_)))))
                (_%g415239415327%_ _%g414844414933%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr415491%_
                                                      (let* ((_%g415332415351%_
                                                              (lambda (_%g415333415348%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g415333415348%_))))
                     (_%g415331415488%_
                      (lambda (_%g415333415354%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g415333415354%_))
                            (let ((_%e415335415356%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g415333415354%_))))
                              (let ((_%hd415336415359%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e415335415356%_)))
                                    (_%tl415337415361%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e415335415356%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl415337415361%_))
                                    (let ((_g418130_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl415337415361%_
                                              '0))))
                                      (begin
                                        (let ((_g418131_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g418130_)
                                                     (##values-length
                                                      _g418130_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g418131_ 2)))
                                              (error "Context expects 2 values"
                                                     _g418131_)))
                                        (let ((_%target415338415364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g418130_ 0)))
                                              (_%tl415340415366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g418130_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl415340415366%_))
                                              (letrec ((_%loop415341415369%_
                                                        (lambda (_%hd415339415372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause415345415374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd415339415372%_))
                      (let ((_%e415342415376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd415339415372%_))))
                        (let ((_%lp-hd415343415379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e415342415376%_)))
                              (_%lp-tl415344415381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e415342415376%_))))
                          (_%loop415341415369%_
                           _%lp-tl415344415381%_
                           (cons _%lp-hd415343415379%_
                                 _%clause415345415374%_))))
                      (let ((_%clause415346415384%_
                             (reverse _%clause415345415374%_)))
                        ((lambda (_%g415334415386%_)
                           (let* ((_%clauses415486%_
                                   (map (lambda (_%clause415400%_)
                                          (let* ((_%__stx416923416924%_
                                                  _%clause415400%_)
                                                 (_%g415403415418%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx416923416924%_)))))
                                            (let ((_%__kont416925416926%_
                                                   (lambda (_%g415405415446%_
                                                            _%g415406415447%_
                                                            _%g415407415448%_)
                                                     (let* ((_%receiver415467%_
                                                             (let ((_%$e415464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g415405415446%_))))
                       (if _%$e415464%_ _%$e415464%_ _%g415407415448%_)))
                    (_%body415473%_
                     (map (lambda (_%g415468415470%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver415467%_
                             _%$klass415187%_
                             _%method-calls413976%_
                             _%slot-refs413977%_
                             _%g415468415470%_))
                          _%g415405415446%_)))
               (cons (cons _%g415407415448%_ _%g415406415447%_)
                     _%body415473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont416927416928%_
                                                   (lambda ()
                                                     _%clause415400%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx416923416924%_))
                                                  (let ((_%e415408415430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx416923416924%_))))
                                                    (let ((_%tl415410415435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e415408415430%_)))
                                                          (_%hd415409415433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e415408415430%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd415409415433%_))
                                                          (let ((_%e415411415438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd415409415433%_))))
                    (let ((_%tl415413415443%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e415411415438%_)))
                          (_%hd415412415441%_
                           (let ()
                             (declare (not safe))
                             (##car _%e415411415438%_))))
                      (_%__kont416925416926%_
                       _%tl415410415435%_
                       _%tl415413415443%_
                       _%hd415412415441%_)))
                  (_%__kont416927416928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont416927416928%_)))))
                                        (let ((__tmp418132
                                               (lambda (_%g415478415481%_
                                                        _%g415479415483%_)
                                                 (cons _%g415478415481%_
                                                       _%g415479415483%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp418132
                                           '()
                                           _%g415334415386%_))))
                                  (__tmp418133
                                   (cons '%#case-lambda _%clauses415486%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp418133
                              _%g414843414932%_)))
                         _%clause415346415384%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop415341415369%_
                                                 _%target415338415364%_
                                                 '()))
                                              (_%g415332415351%_
                                               _%g415333415354%_)))))
                                    (_%g415332415351%_ _%g415333415354%_))))
                            (_%g415332415351%_ _%g415333415354%_)))))
                (_%g415331415488%_ _%g414843414932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl415493%_
                                                      (let ((__tmp418134
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g414845414934%_ '())
                                             (cons _%specializer-lambda-expr415330%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr415491%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp418134 _%stx413884%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl415495%_
                                                      (_%generate-specializer-impl413888%_
                                                       _%$klass415187%_
                                                       _%$method-table415189%_
                                                       _%methods-bind415214%_
                                                       _%slots-bind415238%_
                                                       _%specializer-impl415493%_)))
                                                (let ((__tmp418136
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g413895413957%_)))
                                                      (__tmp418135
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id415185%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp418136
                                                   '" => "
                                                   __tmp418135))
                                                (_%generate-specializer-def413889%_
                                                 _%g413895413957%_
                                                 _%specializer-id415185%_
                                                 _%specializer-impl415495%_))))
                                        _%hd414865414927%_
                                        _%hd414862414919%_
                                        _%hd414859414911%_)
                                       (_%g414841414871%_ _%g414842414874%_))))
                               (_%g414841414871%_ _%g414842414874%_))
                           (_%g414841414871%_ _%g414842414874%_))
                       (_%g414841414871%_ _%g414842414874%_))))
               (_%g414841414871%_ _%g414842414874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g414841414871%_
                                                    _%g414842414874%_))))
                                           (_%g414841414871%_
                                            _%g414842414874%_))))
                                   (_%g414841414871%_ _%g414842414874%_))))
                           (_%g414841414871%_ _%g414842414874%_))))
                   (_%g414841414871%_ _%g414842414874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g414841414871%_
                                                    _%g414842414874%_)))))
                                       (_%g414840415498%_ _%g413894413956%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g413894413956%_))
                                         (let* ((_%g415502415555%_
                                                 (lambda (_%g415503415552%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g415503415552%_))))
                                                (_%g415501416720%_
                                                 (lambda (_%g415503415558%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g415503415558%_))
                                                       (let ((_%e415509415560%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g415503415558%_))))
                 (let ((_%hd415510415563%_
                        (let ()
                          (declare (not safe))
                          (##car _%e415509415560%_)))
                       (_%tl415511415565%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e415509415560%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd415510415563%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd415510415563%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl415511415565%_))
                               (let ((_%e415512415568%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl415511415565%_))))
                                 (let ((_%hd415513415571%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e415512415568%_)))
                                       (_%tl415514415573%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e415512415568%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd415513415571%_))
                                       (let ((_%e415515415576%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd415513415571%_))))
                                         (let ((_%hd415516415579%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e415515415576%_)))
                                               (_%tl415517415581%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e415515415576%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd415516415579%_))
                                               (let ((_%e415518415584%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd415516415579%_))))
                                                 (let ((_%hd415519415587%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e415518415584%_)))
                                                       (_%tl415520415589%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e415518415584%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd415519415587%_))
                                                       (let ((_%e415521415592%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd415519415587%_))))
                 (let ((_%hd415522415595%_
                        (let ()
                          (declare (not safe))
                          (##car _%e415521415592%_)))
                       (_%tl415523415597%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e415521415592%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl415523415597%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl415520415589%_))
                           (let ((_%e415524415600%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl415520415589%_))))
                             (let ((_%hd415525415603%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e415524415600%_)))
                                   (_%tl415526415605%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e415524415600%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd415525415603%_))
                                   (let ((_%e415527415608%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd415525415603%_))))
                                     (let ((_%hd415528415611%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e415527415608%_)))
                                           (_%tl415529415613%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e415527415608%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd415528415611%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd415528415611%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl415529415613%_))
                                                   (let ((_%e415530415616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl415529415613%_))))
                                                     (let ((_%hd415531415619%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e415530415616%_)))
                                                           (_%tl415532415621%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e415530415616%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd415531415619%_))
                                                           (let ((_%e415533415624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd415531415619%_))))
                     (let ((_%hd415534415627%_
                            (let ()
                              (declare (not safe))
                              (##car _%e415533415624%_)))
                           (_%tl415535415629%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e415533415624%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd415534415627%_))
                           (let ((_%e415536415632%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd415534415627%_))))
                             (let ((_%hd415537415635%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e415536415632%_)))
                                   (_%tl415538415637%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e415536415632%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd415537415635%_))
                                   (let ((_%e415539415640%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd415537415635%_))))
                                     (let ((_%hd415540415643%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e415539415640%_)))
                                           (_%tl415541415645%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e415539415640%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl415541415645%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl415538415637%_))
                                               (let ((_%e415542415648%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl415538415637%_))))
                                                 (let ((_%hd415543415651%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e415542415648%_)))
                                                       (_%tl415544415653%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e415542415648%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl415544415653%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl415535415629%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl415532415621%_))
                       (let ((_%e415545415656%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl415532415621%_))))
                         (let ((_%hd415546415659%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e415545415656%_)))
                               (_%tl415547415661%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e415545415656%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl415547415661%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl415526415605%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl415517415581%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl415514415573%_))
                                           (let ((_%e415548415664%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl415514415573%_))))
                                             (let ((_%hd415549415667%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e415548415664%_)))
                                                   (_%tl415550415669%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e415548415664%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl415550415669%_))
                                                   ((lambda (_%g415504415672%_
                                                             _%g415505415673%_
                                                             _%g415506415674%_
                                                             _%g415507415675%_
                                                             _%g415508415676%_)
                                                      (let* ((_%g415716415778%_
                                                              (lambda (_%g415717415775%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g415717415775%_))))
                     (_%g415715416717%_
                      (lambda (_%g415717415781%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g415717415781%_))
                            (let ((_%e415723415783%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g415717415781%_))))
                              (let ((_%hd415724415786%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e415723415783%_)))
                                    (_%tl415725415788%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e415723415783%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd415724415786%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd415724415786%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl415725415788%_))
                                            (let ((_%e415726415791%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl415725415788%_))))
                                              (let ((_%hd415727415794%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e415726415791%_)))
                                                    (_%tl415728415796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e415726415791%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl415728415796%_))
                                                    (let ((_%e415729415799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl415728415796%_))))
                                                      (let ((_%hd415730415802%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e415729415799%_)))
                    (_%tl415731415804%_
                     (let () (declare (not safe)) (##cdr _%e415729415799%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd415730415802%_))
                    (let ((_%e415732415807%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd415730415802%_))))
                      (let ((_%hd415733415810%_
                             (let ()
                               (declare (not safe))
                               (##car _%e415732415807%_)))
                            (_%tl415734415812%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e415732415807%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd415733415810%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd415733415810%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl415734415812%_))
                                    (let ((_%e415735415815%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl415734415812%_))))
                                      (let ((_%hd415736415818%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e415735415815%_)))
                                            (_%tl415737415820%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e415735415815%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd415736415818%_))
                                            (let ((_%e415738415823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd415736415818%_))))
                                              (let ((_%hd415739415826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e415738415823%_)))
                                                    (_%tl415740415828%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e415738415823%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd415739415826%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd415739415826%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl415740415828%_))
                                                            (let ((_%e415741415831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl415740415828%_))))
                      (let ((_%hd415742415834%_
                             (let ()
                               (declare (not safe))
                               (##car _%e415741415831%_)))
                            (_%tl415743415836%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e415741415831%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl415743415836%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl415737415820%_))
                                (let ((_%e415744415839%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl415737415820%_))))
                                  (let ((_%hd415745415842%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e415744415839%_)))
                                        (_%tl415746415844%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e415744415839%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd415745415842%_))
                                        (let ((_%e415747415847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd415745415842%_))))
                                          (let ((_%hd415748415850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e415747415847%_)))
                                                (_%tl415749415852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e415747415847%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd415748415850%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd415748415850%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl415749415852%_))
                                                        (let ((_%e415750415855%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl415749415852%_))))
                  (let ((_%hd415751415858%_
                         (let ()
                           (declare (not safe))
                           (##car _%e415750415855%_)))
                        (_%tl415752415860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e415750415855%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl415752415860%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl415746415844%_))
                            (let ((_%e415753415863%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl415746415844%_))))
                              (let ((_%hd415754415866%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e415753415863%_)))
                                    (_%tl415755415868%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e415753415863%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd415754415866%_))
                                    (let ((_%e415756415871%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd415754415866%_))))
                                      (let ((_%hd415757415874%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e415756415871%_)))
                                            (_%tl415758415876%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e415756415871%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd415757415874%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd415757415874%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl415758415876%_))
                                                    (let ((_%e415759415879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl415758415876%_))))
                                                      (let ((_%hd415760415882%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e415759415879%_)))
                    (_%tl415761415884%_
                     (let () (declare (not safe)) (##cdr _%e415759415879%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl415761415884%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl415755415868%_))
                        (if (let ((__tmp418137
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl415755415868%_))))
                              (declare (not safe))
                              (##fx>= __tmp418137 '1))
                            (let ((_g418138_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl415755415868%_
                                      '1))))
                              (begin
                                (let ((_g418139_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g418138_)
                                             (##values-length _g418138_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g418139_ 2)))
                                      (error "Context expects 2 values"
                                             _g418139_)))
                                (let ((_%target415762415887%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g418138_ 0)))
                                      (_%tl415764415889%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g418138_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl415764415889%_))
                                      (let ((_%e415771415892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl415764415889%_))))
                                        (let ((_%hd415772415895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e415771415892%_)))
                                              (_%tl415773415897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e415771415892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl415773415897%_))
                                              (letrec ((_%loop415765415900%_
                                                        (lambda (_%hd415763415903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref415769415905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd415763415903%_))
                      (let ((_%e415766415907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd415763415903%_))))
                        (let ((_%lp-hd415767415910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e415766415907%_)))
                              (_%lp-tl415768415912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e415766415907%_))))
                          (_%loop415765415900%_
                           _%lp-tl415768415912%_
                           (cons _%lp-hd415767415910%_
                                 _%kw-ref415769415905%_))))
                      (let ((_%kw-ref415770415915%_
                             (reverse _%kw-ref415769415905%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl415731415804%_))
                            ((lambda (_%g415718415917%_
                                      _%g415719415918%_
                                      _%g415720415919%_
                                      _%g415721415920%_
                                      _%g415722415921%_)
                               (let* ((_%kw-count415972%_
                                       (length (let ((__tmp418140
                                                      (lambda (_%g415964415967%_
                                                               _%g415965415969%_)
                                                        (cons _%g415964415967%_
                                                              _%g415965415969%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp418140
                                                  '()
                                                  _%g415719415918%_))))
                                      (_%self-index415974%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count415972%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g415506415674%_))
                                     (let* ((_%g415978415992%_
                                             (lambda (_%g415979415989%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g415979415989%_))))
                                            (_%g415977416115%_
                                             (lambda (_%g415979415995%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g415979415995%_))
                                                   (let ((_%e415982415997%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g415979415995%_))))
                                                     (let ((_%hd415983416000%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e415982415997%_)))
                                                           (_%tl415984416002%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e415982415997%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl415984416002%_))
                                                           (let ((_%e415985416005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl415984416002%_))))
                     (let ((_%hd415986416008%_
                            (let ()
                              (declare (not safe))
                              (##car _%e415985416005%_)))
                           (_%tl415987416010%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e415985416005%_))))
                       ((lambda (_%g415980416013%_ _%g415981416014%_)
                          (let* ((_%self416031%_
                                  (list-ref
                                   _%g415981416014%_
                                   _%self-index415974%_))
                                 (_%receiver416036%_
                                  (let ((_%$e416033%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g415980416013%_))))
                                    (if _%$e416033%_
                                        _%$e416033%_
                                        _%self416031%_))))
                            (for-each
                             (lambda (_%g416038416040%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver416036%_
                                _%method-calls413976%_
                                _%slot-refs413977%_
                                _%g416038416040%_))
                             _%g415980416013%_)
                            (if (_%no-specializer?413980%_)
                                _%stx413884%_
                                (let* ((_%specializer-id416049%_
                                        (let* ((_%id416043%_
                                                (let ((__tmp418141
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g413895413957%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp418141
                                                   '"::specialize")))
                                               (_%specializer-id416046%_
                                                (let ((__tmp418142
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx413884%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id416043%_
                                                   __tmp418142))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id416046%_))
                                          _%specializer-id416046%_))
                                       (_%$klass416051%_
                                        (let ((__tmp418143
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp418143)))
                                       (_%$method-table416053%_
                                        (let ((__tmp418144
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp418144)))
                                       (_%methods416055%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls413976%_)))
                                       (_%$methods416059%_
                                        (let ((__tmp418145
                                               (lambda (_%id416057%_)
                                                 (let ((__tmp418146
                                                        (gensym _%id416057%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp418146)))))
                                          (declare (not safe))
                                          (##map __tmp418145
                                                 _%methods416055%_)))
                                       (_%_416068%_
                                        (let ((__tmp418147
                                               (lambda (_%g416060416063%_
                                                        _%g416061416065%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls413976%_
                                                    _%g416060416063%_
                                                    _%g416061416065%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp418147
                                           _%methods416055%_
                                           _%$methods416059%_)))
                                       (_%methods-bind416078%_
                                        (let ((__tmp418148
                                               (lambda (_%g416070416073%_
                                                        _%g416071416075%_)
                                                 (_%generate-method-bind413886%_
                                                  _%$klass416051%_
                                                  _%$method-table416053%_
                                                  _%g416070416073%_
                                                  _%g416071416075%_))))
                                          (declare (not safe))
                                          (##map __tmp418148
                                                 _%methods416055%_
                                                 _%$methods416059%_)))
                                       (_%slots416080%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs413977%_)))
                                       (_%$slots416084%_
                                        (let ((__tmp418149
                                               (lambda (_%id416082%_)
                                                 (let ((__tmp418150
                                                        (gensym _%id416082%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp418150)))))
                                          (declare (not safe))
                                          (##map __tmp418149 _%slots416080%_)))
                                       (_%_416093%_
                                        (let ((__tmp418151
                                               (lambda (_%g416085416088%_
                                                        _%g416086416090%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs413977%_
                                                    _%g416085416088%_
                                                    _%g416086416090%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp418151
                                           _%slots416080%_
                                           _%$slots416084%_)))
                                       (_%slots-bind416102%_
                                        (let ((__tmp418152
                                               (lambda (_%g416094416097%_
                                                        _%g416095416099%_)
                                                 (_%generate-slot-bind413887%_
                                                  _%$klass416051%_
                                                  _%g416094416097%_
                                                  _%g416095416099%_))))
                                          (declare (not safe))
                                          (##map __tmp418152
                                                 _%slots416080%_
                                                 _%$slots416084%_)))
                                       (_%specializer-impl416110%_
                                        (let* ((_%specializer-body416108%_
                                                (map (lambda (_%g416103416105%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver416036%_
                                                        _%$klass416051%_
                                                        _%method-calls413976%_
                                                        _%slot-refs413977%_
                                                        _%g416103416105%_))
                                                     _%g415980416013%_))
                                               (__tmp418153
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g415508415676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g415507415675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp418154
                                   (cons '%#lambda
                                         (cons _%g415981416014%_
                                               _%specializer-body416108%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp418154
                               _%g415506415674%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g415505415673%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g415504415672%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp418153
                                           _%stx413884%_)))
                                       (_%specializer-impl416112%_
                                        (_%generate-specializer-impl413888%_
                                         _%$klass416051%_
                                         _%$method-table416053%_
                                         _%methods-bind416078%_
                                         _%slots-bind416102%_
                                         _%specializer-impl416110%_)))
                                  (let ((__tmp418156
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g413895413957%_)))
                                        (__tmp418155
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id416049%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp418156
                                     '" => "
                                     __tmp418155))
                                  (_%generate-specializer-def413889%_
                                   _%g413895413957%_
                                   _%specializer-id416049%_
                                   _%specializer-impl416112%_)))))
                        _%tl415987416010%_
                        _%hd415986416008%_)))
                   (_%g415978415992%_ _%g415979415995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g415978415992%_
                                                    _%g415979415995%_)))))
                                       (_%g415977416115%_ _%g415506415674%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g415506415674%_))
                                         (let* ((_%g416119416149%_
                                                 (lambda (_%g416120416146%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g416120416146%_))))
                                                (_%g416118416713%_
                                                 (lambda (_%g416120416152%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g416120416152%_))
                                                       (let ((_%e416124416154%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g416120416152%_))))
                 (let ((_%hd416125416157%_
                        (let ()
                          (declare (not safe))
                          (##car _%e416124416154%_)))
                       (_%tl416126416159%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e416124416154%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl416126416159%_))
                       (let ((_%e416127416162%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl416126416159%_))))
                         (let ((_%hd416128416165%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e416127416162%_)))
                               (_%tl416129416167%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e416127416162%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd416128416165%_))
                               (let ((_%e416130416170%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd416128416165%_))))
                                 (let ((_%hd416131416173%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e416130416170%_)))
                                       (_%tl416132416175%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e416130416170%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd416131416173%_))
                                       (let ((_%e416133416178%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd416131416173%_))))
                                         (let ((_%hd416134416181%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e416133416178%_)))
                                               (_%tl416135416183%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e416133416178%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd416134416181%_))
                                               (let ((_%e416136416186%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd416134416181%_))))
                                                 (let ((_%hd416137416189%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e416136416186%_)))
                                                       (_%tl416138416191%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e416136416186%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl416138416191%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl416135416183%_))
                                                           (let ((_%e416139416194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl416135416183%_))))
                     (let ((_%hd416140416197%_
                            (let ()
                              (declare (not safe))
                              (##car _%e416139416194%_)))
                           (_%tl416141416199%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e416139416194%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl416141416199%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl416132416175%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl416129416167%_))
                                   (let ((_%e416142416202%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl416129416167%_))))
                                     (let ((_%hd416143416205%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e416142416202%_)))
                                           (_%tl416144416207%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e416142416202%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl416144416207%_))
                                           ((lambda (_%g416121416210%_
                                                     _%g416122416211%_
                                                     _%g416123416212%_)
                                              (let* ((_%g416236416250%_
                                                      (lambda (_%g416237416247%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g416237416247%_))))
                                                     (_%g416235416297%_
                                                      (lambda (_%g416237416253%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g416237416253%_))
                                                            (let ((_%e416240416255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g416237416253%_))))
                      (let ((_%hd416241416258%_
                             (let ()
                               (declare (not safe))
                               (##car _%e416240416255%_)))
                            (_%tl416242416260%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e416240416255%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl416242416260%_))
                            (let ((_%e416243416263%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl416242416260%_))))
                              (let ((_%hd416244416266%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e416243416263%_)))
                                    (_%tl416245416268%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e416243416263%_))))
                                ((lambda (_%g416238416271%_ _%g416239416272%_)
                                   (let* ((_%self416285%_
                                           (list-ref
                                            _%g416239416272%_
                                            _%self-index415974%_))
                                          (_%receiver416290%_
                                           (let ((_%$e416287%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g416238416271%_))))
                                             (if _%$e416287%_
                                                 _%$e416287%_
                                                 _%self416285%_))))
                                     (for-each
                                      (lambda (_%g416292416294%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver416290%_
                                         _%method-calls413976%_
                                         _%slot-refs413977%_
                                         _%g416292416294%_))
                                      _%g416238416271%_)))
                                 _%tl416245416268%_
                                 _%hd416244416266%_)))
                            (_%g416236416250%_ _%g416237416253%_))))
                    (_%g416236416250%_ _%g416237416253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g416235416297%_
                                                 _%g416122416211%_))
                                              (let* ((_%g416300416319%_
                                                      (lambda (_%g416301416316%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g416301416316%_))))
                                                     (_%g416299416428%_
                                                      (lambda (_%g416301416322%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g416301416322%_))
                                                            (let ((_%e416303416324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g416301416322%_))))
                      (let ((_%hd416304416327%_
                             (let ()
                               (declare (not safe))
                               (##car _%e416303416324%_)))
                            (_%tl416305416329%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e416303416324%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl416305416329%_))
                            (let ((_g418157_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl416305416329%_
                                      '0))))
                              (begin
                                (let ((_g418158_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g418157_)
                                             (##values-length _g418157_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g418158_ 2)))
                                      (error "Context expects 2 values"
                                             _g418158_)))
                                (let ((_%target416306416332%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g418157_ 0)))
                                      (_%tl416308416334%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g418157_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl416308416334%_))
                                      (letrec ((_%loop416309416337%_
                                                (lambda (_%hd416307416340%_
                                                         _%clause416313416342%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd416307416340%_))
                                                      (let ((_%e416310416344%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd416307416340%_))))
                (let ((_%lp-hd416311416347%_
                       (let () (declare (not safe)) (##car _%e416310416344%_)))
                      (_%lp-tl416312416349%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e416310416344%_))))
                  (_%loop416309416337%_
                   _%lp-tl416312416349%_
                   (cons _%lp-hd416311416347%_ _%clause416313416342%_))))
              (let ((_%clause416314416352%_ (reverse _%clause416313416342%_)))
                ((lambda (_%g416302416354%_)
                   (for-each
                    (lambda (_%clause416367%_)
                      (let* ((_%g416369416380%_
                              (lambda (_%g416370416377%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g416370416377%_))))
                             (_%g416368416418%_
                              (lambda (_%g416370416383%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g416370416383%_))
                                    (let ((_%e416373416385%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g416370416383%_))))
                                      (let ((_%hd416374416388%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e416373416385%_)))
                                            (_%tl416375416390%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e416373416385%_))))
                                        ((lambda (_%g416371416393%_
                                                  _%g416372416394%_)
                                           (let* ((_%self416406%_
                                                   (list-ref
                                                    _%g416372416394%_
                                                    _%self-index415974%_))
                                                  (_%receiver416411%_
                                                   (let ((_%$e416408%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g416371416393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e416408%_
                                                         _%$e416408%_
                                                         _%self416406%_))))
                                             (for-each
                                              (lambda (_%g416413416415%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver416411%_
                                                 _%method-calls413976%_
                                                 _%slot-refs413977%_
                                                 _%g416413416415%_))
                                              _%g416371416393%_)))
                                         _%tl416375416390%_
                                         _%hd416374416388%_)))
                                    (_%g416369416380%_ _%g416370416383%_)))))
                        (_%g416368416418%_ _%clause416367%_)))
                    (let ((__tmp418159
                           (lambda (_%g416420416423%_ _%g416421416425%_)
                             (cons _%g416420416423%_ _%g416421416425%_))))
                      (declare (not safe))
                      (foldr__0 __tmp418159 '() _%g416302416354%_))))
                 _%clause416314416352%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop416309416337%_
                                         _%target416306416332%_
                                         '()))
                                      (_%g416300416319%_ _%g416301416322%_)))))
                            (_%g416300416319%_ _%g416301416322%_))))
                    (_%g416300416319%_ _%g416301416322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g416299416428%_
                                                 _%g416121416210%_))
                                              (if (_%no-specializer?413980%_)
                                                  _%stx413884%_
                                                  (let* ((_%specializer-id416437%_
                                                          (let* ((_%id416431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp418160
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g413895413957%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp418160 '"::specialize")))
                         (_%specializer-id416434%_
                          (let ((__tmp418161
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx413884%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id416431%_
                             __tmp418161))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id416434%_))
                    _%specializer-id416434%_))
                 (_%$klass416439%_
                  (let ((__tmp418162
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp418162)))
                 (_%$method-table416441%_
                  (let ((__tmp418163
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp418163)))
                 (_%methods416443%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls413976%_)))
                 (_%$methods416447%_
                  (let ((__tmp418164
                         (lambda (_%id416445%_)
                           (let ((__tmp418165 (gensym _%id416445%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp418165)))))
                    (declare (not safe))
                    (##map __tmp418164 _%methods416443%_)))
                 (_%_416456%_
                  (let ((__tmp418166
                         (lambda (_%g416448416451%_ _%g416449416453%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls413976%_
                              _%g416448416451%_
                              _%g416449416453%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp418166
                     _%methods416443%_
                     _%$methods416447%_)))
                 (_%methods-bind416466%_
                  (let ((__tmp418167
                         (lambda (_%g416458416461%_ _%g416459416463%_)
                           (_%generate-method-bind413886%_
                            _%$klass416439%_
                            _%$method-table416441%_
                            _%g416458416461%_
                            _%g416459416463%_))))
                    (declare (not safe))
                    (##map __tmp418167 _%methods416443%_ _%$methods416447%_)))
                 (_%slots416468%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs413977%_)))
                 (_%$slots416472%_
                  (let ((__tmp418168
                         (lambda (_%id416470%_)
                           (let ((__tmp418169 (gensym _%id416470%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp418169)))))
                    (declare (not safe))
                    (##map __tmp418168 _%slots416468%_)))
                 (_%_416481%_
                  (let ((__tmp418170
                         (lambda (_%g416473416476%_ _%g416474416478%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs413977%_
                              _%g416473416476%_
                              _%g416474416478%_)))))
                    (declare (not safe))
                    (##for-each __tmp418170 _%slots416468%_ _%$slots416472%_)))
                 (_%slots-bind416490%_
                  (let ((__tmp418171
                         (lambda (_%g416482416485%_ _%g416483416487%_)
                           (_%generate-slot-bind413887%_
                            _%$klass416439%_
                            _%g416482416485%_
                            _%g416483416487%_))))
                    (declare (not safe))
                    (##map __tmp418171 _%slots416468%_ _%$slots416472%_)))
                 (_%specializer-lambda-expr416568%_
                  (let* ((_%g416492416506%_
                          (lambda (_%g416493416503%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g416493416503%_))))
                         (_%g416491416565%_
                          (lambda (_%g416493416509%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g416493416509%_))
                                (let ((_%e416496416511%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g416493416509%_))))
                                  (let ((_%hd416497416514%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e416496416511%_)))
                                        (_%tl416498416516%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e416496416511%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl416498416516%_))
                                        (let ((_%e416499416519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl416498416516%_))))
                                          (let ((_%hd416500416522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e416499416519%_)))
                                                (_%tl416501416524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e416499416519%_))))
                                            ((lambda (_%g416494416527%_
                                                      _%g416495416528%_)
                                               (let* ((_%self416551%_
                                                       (list-ref
                                                        _%g416495416528%_
                                                        _%self-index415974%_))
                                                      (_%receiver416556%_
                                                       (let ((_%$e416553%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g416494416527%_))))
                 (if _%$e416553%_ _%$e416553%_ _%self416551%_)))
              (_%body416562%_
               (map (lambda (_%g416557416559%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver416556%_
                       _%$klass416439%_
                       _%method-calls413976%_
                       _%slot-refs413977%_
                       _%g416557416559%_))
                    _%g416494416527%_))
              (__tmp418172
               (cons '%#lambda (cons _%g416495416528%_ _%body416562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp418172
                                                  _%g416122416211%_)))
                                             _%tl416501416524%_
                                             _%hd416500416522%_)))
                                        (_%g416492416506%_
                                         _%g416493416509%_))))
                                (_%g416492416506%_ _%g416493416509%_)))))
                    (_%g416491416565%_ _%g416122416211%_)))
                 (_%specializer-case-lambda-expr416706%_
                  (let* ((_%g416570416589%_
                          (lambda (_%g416571416586%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g416571416586%_))))
                         (_%g416569416703%_
                          (lambda (_%g416571416592%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g416571416592%_))
                                (let ((_%e416573416594%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g416571416592%_))))
                                  (let ((_%hd416574416597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e416573416594%_)))
                                        (_%tl416575416599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e416573416594%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl416575416599%_))
                                        (let ((_g418173_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl416575416599%_
                                                  '0))))
                                          (begin
                                            (let ((_g418174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g418173_)
                                                         (##values-length
                                                          _g418173_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g418174_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g418174_)))
                                            (let ((_%target416576416602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g418173_
                                                      0)))
                                                  (_%tl416578416604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g418173_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl416578416604%_))
                                                  (letrec ((_%loop416579416607%_
                                                            (lambda (_%hd416577416610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause416583416612%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd416577416610%_))
                          (let ((_%e416580416614%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd416577416610%_))))
                            (let ((_%lp-hd416581416617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e416580416614%_)))
                                  (_%lp-tl416582416619%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e416580416614%_))))
                              (_%loop416579416607%_
                               _%lp-tl416582416619%_
                               (cons _%lp-hd416581416617%_
                                     _%clause416583416612%_))))
                          (let ((_%clause416584416622%_
                                 (reverse _%clause416583416612%_)))
                            ((lambda (_%g416572416624%_)
                               (let* ((_%clauses416701%_
                                       (map (lambda (_%clause416638%_)
                                              (let* ((_%g416640416651%_
                                                      (lambda (_%g416641416648%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g416641416648%_))))
                                                     (_%g416639416691%_
                                                      (lambda (_%g416641416654%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g416641416654%_))
                                                            (let ((_%e416644416656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g416641416654%_))))
                      (let ((_%hd416645416659%_
                             (let ()
                               (declare (not safe))
                               (##car _%e416644416656%_)))
                            (_%tl416646416661%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e416644416656%_))))
                        ((lambda (_%g416642416664%_ _%g416643416665%_)
                           (let* ((_%self416677%_
                                   (list-ref
                                    _%g416643416665%_
                                    _%self-index415974%_))
                                  (_%receiver416682%_
                                   (let ((_%$e416679%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g416642416664%_))))
                                     (if _%$e416679%_
                                         _%$e416679%_
                                         _%self416677%_)))
                                  (_%body416688%_
                                   (map (lambda (_%g416683416685%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver416682%_
                                           _%$klass416439%_
                                           _%method-calls413976%_
                                           _%slot-refs413977%_
                                           _%g416683416685%_))
                                        _%g416642416664%_)))
                             (cons _%g416643416665%_ _%body416688%_)))
                         _%tl416646416661%_
                         _%hd416645416659%_)))
                    (_%g416640416651%_ _%g416641416654%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g416639416691%_
                                                 _%clause416638%_)))
                                            (let ((__tmp418175
                                                   (lambda (_%g416693416696%_
                                                            _%g416694416698%_)
                                                     (cons _%g416693416696%_
                                                           _%g416694416698%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp418175
                                               '()
                                               _%g416572416624%_))))
                                      (__tmp418176
                                       (cons '%#case-lambda
                                             _%clauses416701%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp418176
                                  _%g416121416210%_)))
                             _%clause416584416622%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop416579416607%_
                                                     _%target416576416602%_
                                                     '()))
                                                  (_%g416570416589%_
                                                   _%g416571416592%_)))))
                                        (_%g416570416589%_
                                         _%g416571416592%_))))
                                (_%g416570416589%_ _%g416571416592%_)))))
                    (_%g416569416703%_ _%g416121416210%_)))
                 (_%specializer-impl416708%_
                  (let ((__tmp418177
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g415508415676%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g415507415675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp418178
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g416123416212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr416568%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr416706%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp418178
                                                _%stx413884%_))
                                             '()))
                                 '())
                           (cons _%g415505415673%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g415504415672%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp418177 _%stx413884%_)))
                 (_%specializer-impl416710%_
                  (_%generate-specializer-impl413888%_
                   _%$klass416439%_
                   _%$method-table416441%_
                   _%methods-bind416466%_
                   _%slots-bind416490%_
                   _%specializer-impl416708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp418180
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g413895413957%_)))
                                                          (__tmp418179
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id416437%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp418180
                                                       '" => "
                                                       __tmp418179))
                                                    (_%generate-specializer-def413889%_
                                                     _%g413895413957%_
                                                     _%specializer-id416437%_
                                                     _%specializer-impl416710%_))))
                                            _%hd416143416205%_
                                            _%hd416140416197%_
                                            _%hd416137416189%_)
                                           (_%g416119416149%_
                                            _%g416120416152%_))))
                                   (_%g416119416149%_ _%g416120416152%_))
                               (_%g416119416149%_ _%g416120416152%_))
                           (_%g416119416149%_ _%g416120416152%_))))
                   (_%g416119416149%_ _%g416120416152%_))
               (_%g416119416149%_ _%g416120416152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g416119416149%_
                                                _%g416120416152%_))))
                                       (_%g416119416149%_ _%g416120416152%_))))
                               (_%g416119416149%_ _%g416120416152%_))))
                       (_%g416119416149%_ _%g416120416152%_))))
               (_%g416119416149%_ _%g416120416152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g416118416713%_
                                            _%g415506415674%_))
                                         _%stx413884%_))))
                             _%hd415772415895%_
                             _%kw-ref415770415915%_
                             _%hd415760415882%_
                             _%hd415751415858%_
                             _%hd415742415834%_)
                            (_%g415716415778%_ _%g415717415781%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop415765415900%_
                                                 _%target415762415887%_
                                                 '()))
                                              (_%g415716415778%_
                                               _%g415717415781%_))))
                                      (_%g415716415778%_ _%g415717415781%_)))))
                            (_%g415716415778%_ _%g415717415781%_))
                        (_%g415716415778%_ _%g415717415781%_))
                    (_%g415716415778%_ _%g415717415781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g415716415778%_
                                                     _%g415717415781%_))
                                                (_%g415716415778%_
                                                 _%g415717415781%_))
                                            (_%g415716415778%_
                                             _%g415717415781%_))))
                                    (_%g415716415778%_ _%g415717415781%_))))
                            (_%g415716415778%_ _%g415717415781%_))
                        (_%g415716415778%_ _%g415717415781%_))))
                (_%g415716415778%_ _%g415717415781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g415716415778%_
                                                     _%g415717415781%_))
                                                (_%g415716415778%_
                                                 _%g415717415781%_))))
                                        (_%g415716415778%_
                                         _%g415717415781%_))))
                                (_%g415716415778%_ _%g415717415781%_))
                            (_%g415716415778%_ _%g415717415781%_))))
                    (_%g415716415778%_ _%g415717415781%_))
                (_%g415716415778%_ _%g415717415781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g415716415778%_
                                                     _%g415717415781%_))))
                                            (_%g415716415778%_
                                             _%g415717415781%_))))
                                    (_%g415716415778%_ _%g415717415781%_))
                                (_%g415716415778%_ _%g415717415781%_))
                            (_%g415716415778%_ _%g415717415781%_))))
                    (_%g415716415778%_ _%g415717415781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g415716415778%_
                                                     _%g415717415781%_))))
                                            (_%g415716415778%_
                                             _%g415717415781%_))
                                        (_%g415716415778%_ _%g415717415781%_))
                                    (_%g415716415778%_ _%g415717415781%_))))
                            (_%g415716415778%_ _%g415717415781%_)))))
                (_%g415715416717%_ _%g415505415673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd415549415667%_
                                                    _%hd415546415659%_
                                                    _%hd415543415651%_
                                                    _%hd415540415643%_
                                                    _%hd415522415595%_)
                                                   (_%g415502415555%_
                                                    _%g415503415558%_))))
                                           (_%g415502415555%_
                                            _%g415503415558%_))
                                       (_%g415502415555%_ _%g415503415558%_))
                                   (_%g415502415555%_ _%g415503415558%_))
                               (_%g415502415555%_ _%g415503415558%_))))
                       (_%g415502415555%_ _%g415503415558%_))
                   (_%g415502415555%_ _%g415503415558%_))
               (_%g415502415555%_ _%g415503415558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g415502415555%_
                                                _%g415503415558%_))
                                           (_%g415502415555%_
                                            _%g415503415558%_))))
                                   (_%g415502415555%_ _%g415503415558%_))))
                           (_%g415502415555%_ _%g415503415558%_))))
                   (_%g415502415555%_ _%g415503415558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g415502415555%_
                                                    _%g415503415558%_))
                                               (_%g415502415555%_
                                                _%g415503415558%_))
                                           (_%g415502415555%_
                                            _%g415503415558%_))))
                                   (_%g415502415555%_ _%g415503415558%_))))
                           (_%g415502415555%_ _%g415503415558%_))
                       (_%g415502415555%_ _%g415503415558%_))))
               (_%g415502415555%_ _%g415503415558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g415502415555%_
                                                _%g415503415558%_))))
                                       (_%g415502415555%_ _%g415503415558%_))))
                               (_%g415502415555%_ _%g415503415558%_))
                           (_%g415502415555%_ _%g415503415558%_))
                       (_%g415502415555%_ _%g415503415558%_))))
               (_%g415502415555%_ _%g415503415558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g415501416720%_
                                            _%g413894413956%_))
                                         _%stx413884%_))))))))
                  (_%__kont416947416948%_ (lambda () _%stx413884%_)))
              (let ((_%__match416976416977%_
                     (lambda (_%e413896413924%_
                              _%hd413897413927%_
                              _%tl413898413929%_
                              _%e413899413932%_
                              _%hd413900413935%_
                              _%tl413901413937%_
                              _%e413902413940%_
                              _%hd413903413943%_
                              _%tl413904413945%_
                              _%e413905413948%_
                              _%hd413906413951%_
                              _%tl413907413953%_)
                       (let ((_%g413894413956%_ _%hd413906413951%_)
                             (_%g413895413957%_ _%hd413903413943%_))
                         (if (let ((__tmp418181
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g413895413957%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp418181))
                             (_%__kont416945416946%_
                              _%g413894413956%_
                              _%g413895413957%_)
                             (_%__kont416947416948%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx416943416944%_))
                    (let ((_%e413896413924%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx416943416944%_))))
                      (let ((_%tl413898413929%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e413896413924%_)))
                            (_%hd413897413927%_
                             (let ()
                               (declare (not safe))
                               (##car _%e413896413924%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl413898413929%_))
                            (let ((_%e413899413932%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl413898413929%_))))
                              (let ((_%tl413901413937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e413899413932%_)))
                                    (_%hd413900413935%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e413899413932%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd413900413935%_))
                                    (let ((_%e413902413940%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd413900413935%_))))
                                      (let ((_%tl413904413945%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e413902413940%_)))
                                            (_%hd413903413943%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e413902413940%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl413904413945%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl413901413937%_))
                                                (let ((_%e413905413948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl413901413937%_))))
                                                  (let ((_%tl413907413953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e413905413948%_)))
                                                        (_%hd413906413951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e413905413948%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl413907413953%_))
                                                        (_%__match416976416977%_
                                                         _%e413896413924%_
                                                         _%hd413897413927%_
                                                         _%tl413898413929%_
                                                         _%e413899413932%_
                                                         _%hd413900413935%_
                                                         _%tl413901413937%_
                                                         _%e413902413940%_
                                                         _%hd413903413943%_
                                                         _%tl413904413945%_
                                                         _%e413905413948%_
                                                         _%hd413906413951%_
                                                         _%tl413907413953%_)
                                                        (_%__kont416947416948%_))))
                                                (_%__kont416947416948%_))
                                            (_%__kont416947416948%_))))
                                    (_%__kont416947416948%_))))
                            (_%__kont416947416948%_))))
                    (_%__kont416947416948%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self413736%_ _%stx413737%_)
        (let* ((_%__stx416979416980%_ _%stx413737%_)
               (_%g413740413773%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx416979416980%_)))))
          (let ((_%__kont416981416982%_
                 (lambda (_%g413742413863%_) _%g413742413863%_))
                (_%__kont416983416984%_
                 (lambda (_%g413758413802%_ _%g413759413803%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self413736%_ _%g413758413802%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx416979416980%_))
                (let ((_%e413743413823%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx416979416980%_))))
                  (let ((_%tl413745413828%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e413743413823%_)))
                        (_%hd413744413826%_
                         (let ()
                           (declare (not safe))
                           (##car _%e413743413823%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl413745413828%_))
                        (let ((_%e413746413831%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl413745413828%_))))
                          (let ((_%tl413748413836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e413746413831%_)))
                                (_%hd413747413834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e413746413831%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd413747413834%_))
                                (let ((_%e413749413839%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd413747413834%_))))
                                  (let ((_%tl413751413844%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e413749413839%_)))
                                        (_%hd413750413842%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e413749413839%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd413750413842%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd413750413842%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl413751413844%_))
                                                (let ((_%e413752413847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl413751413844%_))))
                                                  (let ((_%tl413754413852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e413752413847%_)))
                                                        (_%hd413753413850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e413752413847%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl413754413852%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl413748413836%_))
                                                            (let ((_%e413755413855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl413748413836%_))))
                      (let ((_%tl413757413860%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e413755413855%_)))
                            (_%hd413756413858%_
                             (let ()
                               (declare (not safe))
                               (##car _%e413755413855%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl413757413860%_))
                            (_%__kont416981416982%_ _%hd413753413850%_)
                            (let ()
                              (declare (not safe))
                              (_%g413740413773%_)))))
                    (let () (declare (not safe)) (_%g413740413773%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl413748413836%_))
                    (let ((_%e413766413794%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl413748413836%_))))
                      (let ((_%tl413768413799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e413766413794%_)))
                            (_%hd413767413797%_
                             (let ()
                               (declare (not safe))
                               (##car _%e413766413794%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl413768413799%_))
                            (_%__kont416983416984%_
                             _%hd413767413797%_
                             _%hd413747413834%_)
                            (let ()
                              (declare (not safe))
                              (_%g413740413773%_)))))
                    (let () (declare (not safe)) (_%g413740413773%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl413748413836%_))
                                                    (let ((_%e413766413794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl413748413836%_))))
                                                      (let ((_%tl413768413799%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e413766413794%_)))
                    (_%hd413767413797%_
                     (let () (declare (not safe)) (##car _%e413766413794%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl413768413799%_))
                    (_%__kont416983416984%_
                     _%hd413767413797%_
                     _%hd413747413834%_)
                    (let () (declare (not safe)) (_%g413740413773%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g413740413773%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl413748413836%_))
                                                (let ((_%e413766413794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl413748413836%_))))
                                                  (let ((_%tl413768413799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e413766413794%_)))
                                                        (_%hd413767413797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e413766413794%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl413768413799%_))
                                                        (_%__kont416983416984%_
                                                         _%hd413767413797%_
                                                         _%hd413747413834%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g413740413773%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g413740413773%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl413748413836%_))
                                            (let ((_%e413766413794%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl413748413836%_))))
                                              (let ((_%tl413768413799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e413766413794%_)))
                                                    (_%hd413767413797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e413766413794%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl413768413799%_))
                                                    (_%__kont416983416984%_
                                                     _%hd413767413797%_
                                                     _%hd413747413834%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g413740413773%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g413740413773%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl413748413836%_))
                                    (let ((_%e413766413794%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl413748413836%_))))
                                      (let ((_%tl413768413799%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e413766413794%_)))
                                            (_%hd413767413797%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e413766413794%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl413768413799%_))
                                            (_%__kont416983416984%_
                                             _%hd413767413797%_
                                             _%hd413747413834%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g413740413773%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g413740413773%_))))))
                        (let () (declare (not safe)) (_%g413740413773%_)))))
                (let () (declare (not safe)) (_%g413740413773%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self413652%_ _%stx413653%_)
        (let* ((_%g413655413676%_
                (lambda (_%g413656413673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g413656413673%_))))
               (_%g413654413733%_
                (lambda (_%g413656413679%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g413656413679%_))
                      (let ((_%e413660413681%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g413656413679%_))))
                        (let ((_%hd413661413684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e413660413681%_)))
                              (_%tl413662413686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e413660413681%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl413662413686%_))
                              (let ((_%e413663413689%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl413662413686%_))))
                                (let ((_%hd413664413692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e413663413689%_)))
                                      (_%tl413665413694%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e413663413689%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl413665413694%_))
                                      (let ((_%e413666413697%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl413665413694%_))))
                                        (let ((_%hd413667413700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e413666413697%_)))
                                              (_%tl413668413702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e413666413697%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl413668413702%_))
                                              (let ((_%e413669413705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl413668413702%_))))
                                                (let ((_%hd413670413708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e413669413705%_)))
                                                      (_%tl413671413710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e413669413705%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl413671413710%_))
                                                      ((lambda (_%g413657413713%_
                                                                _%g413658413714%_
                                                                _%g413659413715%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self413652%_
                                                            _%g413658413714%_)))
                                                       _%hd413670413708%_
                                                       _%hd413667413700%_
                                                       _%hd413664413692%_)
                                                      (_%g413655413676%_
                                                       _%g413656413679%_))))
                                              (_%g413655413676%_
                                               _%g413656413679%_))))
                                      (_%g413655413676%_ _%g413656413679%_))))
                              (_%g413655413676%_ _%g413656413679%_))))
                      (_%g413655413676%_ _%g413656413679%_)))))
          (_%g413654413733%_ _%stx413653%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self412617%_ _%stx412618%_)
        (let* ((_%__stx417045417046%_ _%stx412618%_)
               (_%g412626412848%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx417045417046%_)))))
          (let ((_%__kont417047417048%_
                 (lambda (_%g412628413601%_
                          _%g412629413602%_
                          _%g412630413603%_
                          _%g412631413604%_)
                   (let ((__tmp418183
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self412617%_ 'methods)))
                         (__tmp418182
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g412629413602%_))))
                     (declare (not safe))
                     (hash-put! __tmp418183 __tmp418182 '#t))
                   (for-each
                    (lambda (_%g413637413639%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self412617%_ _%g413637413639%_)))
                    (let ((__tmp418184
                           (lambda (_%g413641413644%_ _%g413642413646%_)
                             (cons _%g413641413644%_ _%g413642413646%_))))
                      (declare (not safe))
                      (foldr__0 __tmp418184 '() _%g412628413601%_)))))
                (_%__kont417051417052%_
                 (lambda (_%g412671413438%_
                          _%g412672413439%_
                          _%g412673413440%_
                          _%g412674413441%_
                          _%g412675413442%_)
                   (let ((__tmp418186
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self412617%_ 'methods)))
                         (__tmp418185
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g412672413439%_))))
                     (declare (not safe))
                     (hash-put! __tmp418186 __tmp418185 '#t))
                   (for-each
                    (lambda (_%g413482413484%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self412617%_ _%g413482413484%_)))
                    (let ((__tmp418187
                           (lambda (_%g413486413489%_ _%g413487413491%_)
                             (cons _%g413486413489%_ _%g413487413491%_))))
                      (declare (not safe))
                      (foldr__0 __tmp418187 '() _%g412671413438%_)))))
                (_%__kont417055417056%_
                 (lambda (_%g412724413273%_
                          _%g412725413274%_
                          _%g412726413275%_)
                   (let ((__tmp418189
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self412617%_ 'slots)))
                         (__tmp418188
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g412724413273%_))))
                     (declare (not safe))
                     (hash-put! __tmp418189 __tmp418188 '#t))))
                (_%__kont417057417058%_
                 (lambda (_%g412757413150%_
                          _%g412758413151%_
                          _%g412759413152%_
                          _%g412760413153%_)
                   (let ((__tmp418191
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self412617%_ 'slots)))
                         (__tmp418190
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g412758413151%_))))
                     (declare (not safe))
                     (hash-put! __tmp418191 __tmp418190 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self412617%_ _%g412757413150%_))))
                (_%__kont417059417060%_
                 (lambda (_%g412794413024%_ _%g412795413025%_)
                   (let* ((_%accessor413047%_
                           (let ((__tmp418192
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g412795413025%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp418192)))
                          (_%klass413049%_
                           (let ((__tmp418193
                                  (##structure-ref
                                   _%accessor413047%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx412618%_
                              __tmp418193)))
                          (_%slot413051%_
                           (##structure-ref
                            _%accessor413047%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor413047%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass413049%_
                                    _%slot413051%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass413049%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp418195
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self412617%_ 'slots)))
                               (__tmp418194
                                (##structure-ref
                                 _%accessor413047%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp418195 __tmp418194 '#t))))))
                (_%__kont417061417062%_
                 (lambda (_%g412817412924%_
                          _%g412818412925%_
                          _%g412819412926%_)
                   (let* ((_%mutator412953%_
                           (let ((__tmp418196
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g412819412926%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp418196)))
                          (_%klass412955%_
                           (let ((__tmp418197
                                  (##structure-ref
                                   _%mutator412953%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx412618%_
                              __tmp418197)))
                          (_%slot412957%_
                           (##structure-ref
                            _%mutator412953%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator412953%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass412955%_
                                    _%slot412957%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass412955%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp418198
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self412617%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp418198 _%slot412957%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self412617%_ _%g412817412924%_)))))
                (_%__kont417063417064%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self412617%_ _%stx412618%_)))))
            (let* ((_%__match417544417545%_
                    (lambda (_%e412820412860%_
                             _%hd412821412863%_
                             _%tl412822412865%_
                             _%e412823412868%_
                             _%hd412824412871%_
                             _%tl412825412873%_
                             _%e412826412876%_
                             _%hd412827412879%_
                             _%tl412828412881%_
                             _%e412829412884%_
                             _%hd412830412887%_
                             _%tl412831412889%_
                             _%e412832412892%_
                             _%hd412833412895%_
                             _%tl412834412897%_
                             _%e412835412900%_
                             _%hd412836412903%_
                             _%tl412837412905%_
                             _%e412838412908%_
                             _%hd412839412911%_
                             _%tl412840412913%_
                             _%e412841412916%_
                             _%hd412842412919%_
                             _%tl412843412921%_)
                      (let ((_%g412817412924%_ _%hd412842412919%_)
                            (_%g412818412925%_ _%hd412839412911%_)
                            (_%g412819412926%_ _%hd412830412887%_))
                        (if (and (let ((__tmp418199
                                        (let ((__tmp418200
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g412819412926%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp418200))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp418199
                                    'gxc#!mutator::t))
                                 (let ((__tmp418201
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self412617%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g412818412925%_
                                    __tmp418201)))
                            (_%__kont417061417062%_
                             _%g412817412924%_
                             _%g412818412925%_
                             _%g412819412926%_)
                            (_%__kont417063417064%_)))))
                   (_%__match417542417543%_
                    (lambda (_%e412820412860%_
                             _%hd412821412863%_
                             _%tl412822412865%_
                             _%e412823412868%_
                             _%hd412824412871%_
                             _%tl412825412873%_
                             _%e412826412876%_
                             _%hd412827412879%_
                             _%tl412828412881%_
                             _%e412829412884%_
                             _%hd412830412887%_
                             _%tl412831412889%_
                             _%e412832412892%_
                             _%hd412833412895%_
                             _%tl412834412897%_
                             _%e412835412900%_
                             _%hd412836412903%_
                             _%tl412837412905%_
                             _%e412838412908%_
                             _%hd412839412911%_
                             _%tl412840412913%_
                             _%e412841412916%_
                             _%hd412842412919%_
                             _%tl412843412921%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl412843412921%_))
                          (_%__match417544417545%_
                           _%e412820412860%_
                           _%hd412821412863%_
                           _%tl412822412865%_
                           _%e412823412868%_
                           _%hd412824412871%_
                           _%tl412825412873%_
                           _%e412826412876%_
                           _%hd412827412879%_
                           _%tl412828412881%_
                           _%e412829412884%_
                           _%hd412830412887%_
                           _%tl412831412889%_
                           _%e412832412892%_
                           _%hd412833412895%_
                           _%tl412834412897%_
                           _%e412835412900%_
                           _%hd412836412903%_
                           _%tl412837412905%_
                           _%e412838412908%_
                           _%hd412839412911%_
                           _%tl412840412913%_
                           _%e412841412916%_
                           _%hd412842412919%_
                           _%tl412843412921%_)
                          (_%__kont417063417064%_))))
                   (_%__match417536417537%_
                    (lambda (_%e412820412860%_
                             _%hd412821412863%_
                             _%tl412822412865%_
                             _%e412823412868%_
                             _%hd412824412871%_
                             _%tl412825412873%_
                             _%e412826412876%_
                             _%hd412827412879%_
                             _%tl412828412881%_
                             _%e412829412884%_
                             _%hd412830412887%_
                             _%tl412831412889%_
                             _%e412832412892%_
                             _%hd412833412895%_
                             _%tl412834412897%_
                             _%e412835412900%_
                             _%hd412836412903%_
                             _%tl412837412905%_
                             _%e412838412908%_
                             _%hd412839412911%_
                             _%tl412840412913%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl412834412897%_))
                          (let ((_%e412841412916%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl412834412897%_))))
                            (let ((_%tl412843412921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e412841412916%_)))
                                  (_%hd412842412919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e412841412916%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl412843412921%_))
                                  (_%__match417544417545%_
                                   _%e412820412860%_
                                   _%hd412821412863%_
                                   _%tl412822412865%_
                                   _%e412823412868%_
                                   _%hd412824412871%_
                                   _%tl412825412873%_
                                   _%e412826412876%_
                                   _%hd412827412879%_
                                   _%tl412828412881%_
                                   _%e412829412884%_
                                   _%hd412830412887%_
                                   _%tl412831412889%_
                                   _%e412832412892%_
                                   _%hd412833412895%_
                                   _%tl412834412897%_
                                   _%e412835412900%_
                                   _%hd412836412903%_
                                   _%tl412837412905%_
                                   _%e412838412908%_
                                   _%hd412839412911%_
                                   _%tl412840412913%_
                                   _%e412841412916%_
                                   _%hd412842412919%_
                                   _%tl412843412921%_)
                                  (_%__kont417063417064%_))))
                          (_%__kont417063417064%_))))
                   (_%__match417482417483%_
                    (lambda (_%e412796412968%_
                             _%hd412797412971%_
                             _%tl412798412973%_
                             _%e412799412976%_
                             _%hd412800412979%_
                             _%tl412801412981%_
                             _%e412802412984%_
                             _%hd412803412987%_
                             _%tl412804412989%_
                             _%e412805412992%_
                             _%hd412806412995%_
                             _%tl412807412997%_
                             _%e412808413000%_
                             _%hd412809413003%_
                             _%tl412810413005%_
                             _%e412811413008%_
                             _%hd412812413011%_
                             _%tl412813413013%_
                             _%e412814413016%_
                             _%hd412815413019%_
                             _%tl412816413021%_)
                      (let ((_%g412794413024%_ _%hd412815413019%_)
                            (_%g412795413025%_ _%hd412806412995%_))
                        (if (and (let ((__tmp418202
                                        (let ((__tmp418203
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g412795413025%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp418203))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp418202
                                    'gxc#!accessor::t))
                                 (let ((__tmp418204
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self412617%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g412794413024%_
                                    __tmp418204)))
                            (_%__kont417059417060%_
                             _%g412794413024%_
                             _%g412795413025%_)
                            (_%__kont417063417064%_)))))
                   (_%__match417480417481%_
                    (lambda (_%e412796412968%_
                             _%hd412797412971%_
                             _%tl412798412973%_
                             _%e412799412976%_
                             _%hd412800412979%_
                             _%tl412801412981%_
                             _%e412802412984%_
                             _%hd412803412987%_
                             _%tl412804412989%_
                             _%e412805412992%_
                             _%hd412806412995%_
                             _%tl412807412997%_
                             _%e412808413000%_
                             _%hd412809413003%_
                             _%tl412810413005%_
                             _%e412811413008%_
                             _%hd412812413011%_
                             _%tl412813413013%_
                             _%e412814413016%_
                             _%hd412815413019%_
                             _%tl412816413021%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl412810413005%_))
                          (_%__match417482417483%_
                           _%e412796412968%_
                           _%hd412797412971%_
                           _%tl412798412973%_
                           _%e412799412976%_
                           _%hd412800412979%_
                           _%tl412801412981%_
                           _%e412802412984%_
                           _%hd412803412987%_
                           _%tl412804412989%_
                           _%e412805412992%_
                           _%hd412806412995%_
                           _%tl412807412997%_
                           _%e412808413000%_
                           _%hd412809413003%_
                           _%tl412810413005%_
                           _%e412811413008%_
                           _%hd412812413011%_
                           _%tl412813413013%_
                           _%e412814413016%_
                           _%hd412815413019%_
                           _%tl412816413021%_)
                          (_%__match417536417537%_
                           _%e412796412968%_
                           _%hd412797412971%_
                           _%tl412798412973%_
                           _%e412799412976%_
                           _%hd412800412979%_
                           _%tl412801412981%_
                           _%e412802412984%_
                           _%hd412803412987%_
                           _%tl412804412989%_
                           _%e412805412992%_
                           _%hd412806412995%_
                           _%tl412807412997%_
                           _%e412808413000%_
                           _%hd412809413003%_
                           _%tl412810413005%_
                           _%e412811413008%_
                           _%hd412812413011%_
                           _%tl412813413013%_
                           _%e412814413016%_
                           _%hd412815413019%_
                           _%tl412816413021%_))))
                   (_%__match417426417427%_
                    (lambda (_%e412761413062%_
                             _%hd412762413065%_
                             _%tl412763413067%_
                             _%e412764413070%_
                             _%hd412765413073%_
                             _%tl412766413075%_
                             _%e412767413078%_
                             _%hd412768413081%_
                             _%tl412769413083%_
                             _%e412770413086%_
                             _%hd412771413089%_
                             _%tl412772413091%_
                             _%e412773413094%_
                             _%hd412774413097%_
                             _%tl412775413099%_
                             _%e412776413102%_
                             _%hd412777413105%_
                             _%tl412778413107%_
                             _%e412779413110%_
                             _%hd412780413113%_
                             _%tl412781413115%_
                             _%e412782413118%_
                             _%hd412783413121%_
                             _%tl412784413123%_
                             _%e412785413126%_
                             _%hd412786413129%_
                             _%tl412787413131%_
                             _%e412788413134%_
                             _%hd412789413137%_
                             _%tl412790413139%_
                             _%e412791413142%_
                             _%hd412792413145%_
                             _%tl412793413147%_)
                      (let ((_%g412757413150%_ _%hd412792413145%_)
                            (_%g412758413151%_ _%hd412789413137%_)
                            (_%g412759413152%_ _%hd412780413113%_)
                            (_%g412760413153%_ _%hd412771413089%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g412760413153%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g412760413153%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp418205
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self412617%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g412759413152%_
                                    __tmp418205)))
                            (_%__kont417057417058%_
                             _%g412757413150%_
                             _%g412758413151%_
                             _%g412759413152%_
                             _%g412760413153%_)
                            (_%__kont417063417064%_)))))
                   (_%__match417418417419%_
                    (lambda (_%e412761413062%_
                             _%hd412762413065%_
                             _%tl412763413067%_
                             _%e412764413070%_
                             _%hd412765413073%_
                             _%tl412766413075%_
                             _%e412767413078%_
                             _%hd412768413081%_
                             _%tl412769413083%_
                             _%e412770413086%_
                             _%hd412771413089%_
                             _%tl412772413091%_
                             _%e412773413094%_
                             _%hd412774413097%_
                             _%tl412775413099%_
                             _%e412776413102%_
                             _%hd412777413105%_
                             _%tl412778413107%_
                             _%e412779413110%_
                             _%hd412780413113%_
                             _%tl412781413115%_
                             _%e412782413118%_
                             _%hd412783413121%_
                             _%tl412784413123%_
                             _%e412785413126%_
                             _%hd412786413129%_
                             _%tl412787413131%_
                             _%e412788413134%_
                             _%hd412789413137%_
                             _%tl412790413139%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl412784413123%_))
                          (let ((_%e412791413142%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl412784413123%_))))
                            (let ((_%tl412793413147%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e412791413142%_)))
                                  (_%hd412792413145%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e412791413142%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl412793413147%_))
                                  (_%__match417426417427%_
                                   _%e412761413062%_
                                   _%hd412762413065%_
                                   _%tl412763413067%_
                                   _%e412764413070%_
                                   _%hd412765413073%_
                                   _%tl412766413075%_
                                   _%e412767413078%_
                                   _%hd412768413081%_
                                   _%tl412769413083%_
                                   _%e412770413086%_
                                   _%hd412771413089%_
                                   _%tl412772413091%_
                                   _%e412773413094%_
                                   _%hd412774413097%_
                                   _%tl412775413099%_
                                   _%e412776413102%_
                                   _%hd412777413105%_
                                   _%tl412778413107%_
                                   _%e412779413110%_
                                   _%hd412780413113%_
                                   _%tl412781413115%_
                                   _%e412782413118%_
                                   _%hd412783413121%_
                                   _%tl412784413123%_
                                   _%e412785413126%_
                                   _%hd412786413129%_
                                   _%tl412787413131%_
                                   _%e412788413134%_
                                   _%hd412789413137%_
                                   _%tl412790413139%_
                                   _%e412791413142%_
                                   _%hd412792413145%_
                                   _%tl412793413147%_)
                                  (_%__kont417063417064%_))))
                          (_%__match417542417543%_
                           _%e412761413062%_
                           _%hd412762413065%_
                           _%tl412763413067%_
                           _%e412764413070%_
                           _%hd412765413073%_
                           _%tl412766413075%_
                           _%e412767413078%_
                           _%hd412768413081%_
                           _%tl412769413083%_
                           _%e412770413086%_
                           _%hd412771413089%_
                           _%tl412772413091%_
                           _%e412773413094%_
                           _%hd412774413097%_
                           _%tl412775413099%_
                           _%e412776413102%_
                           _%hd412777413105%_
                           _%tl412778413107%_
                           _%e412779413110%_
                           _%hd412780413113%_
                           _%tl412781413115%_
                           _%e412782413118%_
                           _%hd412783413121%_
                           _%tl412784413123%_))))
                   (_%__match417340417341%_
                    (lambda (_%e412727413193%_
                             _%hd412728413196%_
                             _%tl412729413198%_
                             _%e412730413201%_
                             _%hd412731413204%_
                             _%tl412732413206%_
                             _%e412733413209%_
                             _%hd412734413212%_
                             _%tl412735413214%_
                             _%e412736413217%_
                             _%hd412737413220%_
                             _%tl412738413222%_
                             _%e412739413225%_
                             _%hd412740413228%_
                             _%tl412741413230%_
                             _%e412742413233%_
                             _%hd412743413236%_
                             _%tl412744413238%_
                             _%e412745413241%_
                             _%hd412746413244%_
                             _%tl412747413246%_
                             _%e412748413249%_
                             _%hd412749413252%_
                             _%tl412750413254%_
                             _%e412751413257%_
                             _%hd412752413260%_
                             _%tl412753413262%_
                             _%e412754413265%_
                             _%hd412755413268%_
                             _%tl412756413270%_)
                      (let ((_%g412724413273%_ _%hd412755413268%_)
                            (_%g412725413274%_ _%hd412746413244%_)
                            (_%g412726413275%_ _%hd412737413220%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g412726413275%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g412726413275%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp418206
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self412617%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g412725413274%_
                                    __tmp418206)))
                            (_%__kont417055417056%_
                             _%g412724413273%_
                             _%g412725413274%_
                             _%g412726413275%_)
                            (_%__match417544417545%_
                             _%e412727413193%_
                             _%hd412728413196%_
                             _%tl412729413198%_
                             _%e412730413201%_
                             _%hd412731413204%_
                             _%tl412732413206%_
                             _%e412733413209%_
                             _%hd412734413212%_
                             _%tl412735413214%_
                             _%e412736413217%_
                             _%hd412737413220%_
                             _%tl412738413222%_
                             _%e412739413225%_
                             _%hd412740413228%_
                             _%tl412741413230%_
                             _%e412742413233%_
                             _%hd412743413236%_
                             _%tl412744413238%_
                             _%e412745413241%_
                             _%hd412746413244%_
                             _%tl412747413246%_
                             _%e412748413249%_
                             _%hd412749413252%_
                             _%tl412750413254%_)))))
                   (_%__match417338417339%_
                    (lambda (_%e412727413193%_
                             _%hd412728413196%_
                             _%tl412729413198%_
                             _%e412730413201%_
                             _%hd412731413204%_
                             _%tl412732413206%_
                             _%e412733413209%_
                             _%hd412734413212%_
                             _%tl412735413214%_
                             _%e412736413217%_
                             _%hd412737413220%_
                             _%tl412738413222%_
                             _%e412739413225%_
                             _%hd412740413228%_
                             _%tl412741413230%_
                             _%e412742413233%_
                             _%hd412743413236%_
                             _%tl412744413238%_
                             _%e412745413241%_
                             _%hd412746413244%_
                             _%tl412747413246%_
                             _%e412748413249%_
                             _%hd412749413252%_
                             _%tl412750413254%_
                             _%e412751413257%_
                             _%hd412752413260%_
                             _%tl412753413262%_
                             _%e412754413265%_
                             _%hd412755413268%_
                             _%tl412756413270%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl412750413254%_))
                          (_%__match417340417341%_
                           _%e412727413193%_
                           _%hd412728413196%_
                           _%tl412729413198%_
                           _%e412730413201%_
                           _%hd412731413204%_
                           _%tl412732413206%_
                           _%e412733413209%_
                           _%hd412734413212%_
                           _%tl412735413214%_
                           _%e412736413217%_
                           _%hd412737413220%_
                           _%tl412738413222%_
                           _%e412739413225%_
                           _%hd412740413228%_
                           _%tl412741413230%_
                           _%e412742413233%_
                           _%hd412743413236%_
                           _%tl412744413238%_
                           _%e412745413241%_
                           _%hd412746413244%_
                           _%tl412747413246%_
                           _%e412748413249%_
                           _%hd412749413252%_
                           _%tl412750413254%_
                           _%e412751413257%_
                           _%hd412752413260%_
                           _%tl412753413262%_
                           _%e412754413265%_
                           _%hd412755413268%_
                           _%tl412756413270%_)
                          (_%__match417418417419%_
                           _%e412727413193%_
                           _%hd412728413196%_
                           _%tl412729413198%_
                           _%e412730413201%_
                           _%hd412731413204%_
                           _%tl412732413206%_
                           _%e412733413209%_
                           _%hd412734413212%_
                           _%tl412735413214%_
                           _%e412736413217%_
                           _%hd412737413220%_
                           _%tl412738413222%_
                           _%e412739413225%_
                           _%hd412740413228%_
                           _%tl412741413230%_
                           _%e412742413233%_
                           _%hd412743413236%_
                           _%tl412744413238%_
                           _%e412745413241%_
                           _%hd412746413244%_
                           _%tl412747413246%_
                           _%e412748413249%_
                           _%hd412749413252%_
                           _%tl412750413254%_
                           _%e412751413257%_
                           _%hd412752413260%_
                           _%tl412753413262%_
                           _%e412754413265%_
                           _%hd412755413268%_
                           _%tl412756413270%_))))
                   (_%__match417328417329%_
                    (lambda (_%e412727413193%_
                             _%hd412728413196%_
                             _%tl412729413198%_
                             _%e412730413201%_
                             _%hd412731413204%_
                             _%tl412732413206%_
                             _%e412733413209%_
                             _%hd412734413212%_
                             _%tl412735413214%_
                             _%e412736413217%_
                             _%hd412737413220%_
                             _%tl412738413222%_
                             _%e412739413225%_
                             _%hd412740413228%_
                             _%tl412741413230%_
                             _%e412742413233%_
                             _%hd412743413236%_
                             _%tl412744413238%_
                             _%e412745413241%_
                             _%hd412746413244%_
                             _%tl412747413246%_
                             _%e412748413249%_
                             _%hd412749413252%_
                             _%tl412750413254%_
                             _%e412751413257%_
                             _%hd412752413260%_
                             _%tl412753413262%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd412752413260%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl412753413262%_))
                              (let ((_%e412754413265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl412753413262%_))))
                                (let ((_%tl412756413270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e412754413265%_)))
                                      (_%hd412755413268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e412754413265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl412756413270%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl412750413254%_))
                                          (_%__match417340417341%_
                                           _%e412727413193%_
                                           _%hd412728413196%_
                                           _%tl412729413198%_
                                           _%e412730413201%_
                                           _%hd412731413204%_
                                           _%tl412732413206%_
                                           _%e412733413209%_
                                           _%hd412734413212%_
                                           _%tl412735413214%_
                                           _%e412736413217%_
                                           _%hd412737413220%_
                                           _%tl412738413222%_
                                           _%e412739413225%_
                                           _%hd412740413228%_
                                           _%tl412741413230%_
                                           _%e412742413233%_
                                           _%hd412743413236%_
                                           _%tl412744413238%_
                                           _%e412745413241%_
                                           _%hd412746413244%_
                                           _%tl412747413246%_
                                           _%e412748413249%_
                                           _%hd412749413252%_
                                           _%tl412750413254%_
                                           _%e412751413257%_
                                           _%hd412752413260%_
                                           _%tl412753413262%_
                                           _%e412754413265%_
                                           _%hd412755413268%_
                                           _%tl412756413270%_)
                                          (_%__match417418417419%_
                                           _%e412727413193%_
                                           _%hd412728413196%_
                                           _%tl412729413198%_
                                           _%e412730413201%_
                                           _%hd412731413204%_
                                           _%tl412732413206%_
                                           _%e412733413209%_
                                           _%hd412734413212%_
                                           _%tl412735413214%_
                                           _%e412736413217%_
                                           _%hd412737413220%_
                                           _%tl412738413222%_
                                           _%e412739413225%_
                                           _%hd412740413228%_
                                           _%tl412741413230%_
                                           _%e412742413233%_
                                           _%hd412743413236%_
                                           _%tl412744413238%_
                                           _%e412745413241%_
                                           _%hd412746413244%_
                                           _%tl412747413246%_
                                           _%e412748413249%_
                                           _%hd412749413252%_
                                           _%tl412750413254%_
                                           _%e412751413257%_
                                           _%hd412752413260%_
                                           _%tl412753413262%_
                                           _%e412754413265%_
                                           _%hd412755413268%_
                                           _%tl412756413270%_))
                                      (_%__match417542417543%_
                                       _%e412727413193%_
                                       _%hd412728413196%_
                                       _%tl412729413198%_
                                       _%e412730413201%_
                                       _%hd412731413204%_
                                       _%tl412732413206%_
                                       _%e412733413209%_
                                       _%hd412734413212%_
                                       _%tl412735413214%_
                                       _%e412736413217%_
                                       _%hd412737413220%_
                                       _%tl412738413222%_
                                       _%e412739413225%_
                                       _%hd412740413228%_
                                       _%tl412741413230%_
                                       _%e412742413233%_
                                       _%hd412743413236%_
                                       _%tl412744413238%_
                                       _%e412745413241%_
                                       _%hd412746413244%_
                                       _%tl412747413246%_
                                       _%e412748413249%_
                                       _%hd412749413252%_
                                       _%tl412750413254%_))))
                              (_%__match417542417543%_
                               _%e412727413193%_
                               _%hd412728413196%_
                               _%tl412729413198%_
                               _%e412730413201%_
                               _%hd412731413204%_
                               _%tl412732413206%_
                               _%e412733413209%_
                               _%hd412734413212%_
                               _%tl412735413214%_
                               _%e412736413217%_
                               _%hd412737413220%_
                               _%tl412738413222%_
                               _%e412739413225%_
                               _%hd412740413228%_
                               _%tl412741413230%_
                               _%e412742413233%_
                               _%hd412743413236%_
                               _%tl412744413238%_
                               _%e412745413241%_
                               _%hd412746413244%_
                               _%tl412747413246%_
                               _%e412748413249%_
                               _%hd412749413252%_
                               _%tl412750413254%_))
                          (_%__match417542417543%_
                           _%e412727413193%_
                           _%hd412728413196%_
                           _%tl412729413198%_
                           _%e412730413201%_
                           _%hd412731413204%_
                           _%tl412732413206%_
                           _%e412733413209%_
                           _%hd412734413212%_
                           _%tl412735413214%_
                           _%e412736413217%_
                           _%hd412737413220%_
                           _%tl412738413222%_
                           _%e412739413225%_
                           _%hd412740413228%_
                           _%tl412741413230%_
                           _%e412742413233%_
                           _%hd412743413236%_
                           _%tl412744413238%_
                           _%e412745413241%_
                           _%hd412746413244%_
                           _%tl412747413246%_
                           _%e412748413249%_
                           _%hd412749413252%_
                           _%tl412750413254%_))))
                   (_%__match417260417261%_
                    (lambda (_%e412676413312%_
                             _%hd412677413315%_
                             _%tl412678413317%_
                             _%e412679413320%_
                             _%hd412680413323%_
                             _%tl412681413325%_
                             _%e412682413328%_
                             _%hd412683413331%_
                             _%tl412684413333%_
                             _%e412685413336%_
                             _%hd412686413339%_
                             _%tl412687413341%_
                             _%e412688413344%_
                             _%hd412689413347%_
                             _%tl412690413349%_
                             _%e412691413352%_
                             _%hd412692413355%_
                             _%tl412693413357%_
                             _%e412694413360%_
                             _%hd412695413363%_
                             _%tl412696413365%_
                             _%e412697413368%_
                             _%hd412698413371%_
                             _%tl412699413373%_
                             _%e412700413376%_
                             _%hd412701413379%_
                             _%tl412702413381%_
                             _%e412703413384%_
                             _%hd412704413387%_
                             _%tl412705413389%_
                             _%e412706413392%_
                             _%hd412707413395%_
                             _%tl412708413397%_
                             _%e412709413400%_
                             _%hd412710413403%_
                             _%tl412711413405%_
                             _%e412712413408%_
                             _%hd412713413411%_
                             _%tl412714413413%_
                             _%__splice417053417054%_
                             _%target412715413416%_
                             _%tl412717413418%_)
                      (letrec ((_%loop412718413421%_
                                (lambda (_%hd412716413424%_
                                         _%args412722413426%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd412716413424%_))
                                      (let ((_%e412719413428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd412716413424%_))))
                                        (let ((_%lp-tl412721413433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e412719413428%_)))
                                              (_%lp-hd412720413431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e412719413428%_))))
                                          (_%loop412718413421%_
                                           _%lp-tl412721413433%_
                                           (cons _%lp-hd412720413431%_
                                                 _%args412722413426%_))))
                                      (let ((_%args412723413436%_
                                             (reverse _%args412722413426%_)))
                                        (let ((_%g412671413438%_
                                               _%args412723413436%_)
                                              (_%g412672413439%_
                                               _%hd412713413411%_)
                                              (_%g412673413440%_
                                               _%hd412704413387%_)
                                              (_%g412674413441%_
                                               _%hd412695413363%_)
                                              (_%g412675413442%_
                                               _%hd412686413339%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g412675413442%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g412674413441%_
                                                      'call-method))
                                                   (let ((__tmp418207
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self412617%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g412673413440%_
                                                      __tmp418207)))
                                              (_%__kont417051417052%_
                                               _%g412671413438%_
                                               _%g412672413439%_
                                               _%g412673413440%_
                                               _%g412674413441%_
                                               _%g412675413442%_)
                                              (_%__kont417063417064%_))))))))
                        (_%loop412718413421%_ _%target412715413416%_ '()))))
                   (_%__match417218417219%_
                    (lambda (_%e412676413312%_
                             _%hd412677413315%_
                             _%tl412678413317%_
                             _%e412679413320%_
                             _%hd412680413323%_
                             _%tl412681413325%_
                             _%e412682413328%_
                             _%hd412683413331%_
                             _%tl412684413333%_
                             _%e412685413336%_
                             _%hd412686413339%_
                             _%tl412687413341%_
                             _%e412688413344%_
                             _%hd412689413347%_
                             _%tl412690413349%_
                             _%e412691413352%_
                             _%hd412692413355%_
                             _%tl412693413357%_
                             _%e412694413360%_
                             _%hd412695413363%_
                             _%tl412696413365%_
                             _%e412697413368%_
                             _%hd412698413371%_
                             _%tl412699413373%_
                             _%e412700413376%_
                             _%hd412701413379%_
                             _%tl412702413381%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd412701413379%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl412702413381%_))
                              (let ((_%e412703413384%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl412702413381%_))))
                                (let ((_%tl412705413389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e412703413384%_)))
                                      (_%hd412704413387%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e412703413384%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl412705413389%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl412699413373%_))
                                          (let ((_%e412706413392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl412699413373%_))))
                                            (let ((_%tl412708413397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e412706413392%_)))
                                                  (_%hd412707413395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e412706413392%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd412707413395%_))
                                                  (let ((_%e412709413400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd412707413395%_))))
                                                    (let ((_%tl412711413405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e412709413400%_)))
                                                          (_%hd412710413403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e412709413400%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd412710413403%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd412710413403%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl412711413405%_))
                          (let ((_%e412712413408%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl412711413405%_))))
                            (let ((_%tl412714413413%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e412712413408%_)))
                                  (_%hd412713413411%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e412712413408%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl412714413413%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl412708413397%_))
                                      (let ((_%__splice417053417054%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl412708413397%_
                                                '0))))
                                        (let ((_%tl412717413418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice417053417054%_
                                                  '1)))
                                              (_%target412715413416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice417053417054%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl412717413418%_))
                                              (_%__match417260417261%_
                                               _%e412676413312%_
                                               _%hd412677413315%_
                                               _%tl412678413317%_
                                               _%e412679413320%_
                                               _%hd412680413323%_
                                               _%tl412681413325%_
                                               _%e412682413328%_
                                               _%hd412683413331%_
                                               _%tl412684413333%_
                                               _%e412685413336%_
                                               _%hd412686413339%_
                                               _%tl412687413341%_
                                               _%e412688413344%_
                                               _%hd412689413347%_
                                               _%tl412690413349%_
                                               _%e412691413352%_
                                               _%hd412692413355%_
                                               _%tl412693413357%_
                                               _%e412694413360%_
                                               _%hd412695413363%_
                                               _%tl412696413365%_
                                               _%e412697413368%_
                                               _%hd412698413371%_
                                               _%tl412699413373%_
                                               _%e412700413376%_
                                               _%hd412701413379%_
                                               _%tl412702413381%_
                                               _%e412703413384%_
                                               _%hd412704413387%_
                                               _%tl412705413389%_
                                               _%e412706413392%_
                                               _%hd412707413395%_
                                               _%tl412708413397%_
                                               _%e412709413400%_
                                               _%hd412710413403%_
                                               _%tl412711413405%_
                                               _%e412712413408%_
                                               _%hd412713413411%_
                                               _%tl412714413413%_
                                               _%__splice417053417054%_
                                               _%target412715413416%_
                                               _%tl412717413418%_)
                                              (_%__kont417063417064%_))))
                                      (_%__kont417063417064%_))
                                  (_%__kont417063417064%_))))
                          (_%__kont417063417064%_))
                      (_%__kont417063417064%_))
                  (_%__kont417063417064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont417063417064%_))))
                                          (_%__match417542417543%_
                                           _%e412676413312%_
                                           _%hd412677413315%_
                                           _%tl412678413317%_
                                           _%e412679413320%_
                                           _%hd412680413323%_
                                           _%tl412681413325%_
                                           _%e412682413328%_
                                           _%hd412683413331%_
                                           _%tl412684413333%_
                                           _%e412685413336%_
                                           _%hd412686413339%_
                                           _%tl412687413341%_
                                           _%e412688413344%_
                                           _%hd412689413347%_
                                           _%tl412690413349%_
                                           _%e412691413352%_
                                           _%hd412692413355%_
                                           _%tl412693413357%_
                                           _%e412694413360%_
                                           _%hd412695413363%_
                                           _%tl412696413365%_
                                           _%e412697413368%_
                                           _%hd412698413371%_
                                           _%tl412699413373%_))
                                      (_%__match417542417543%_
                                       _%e412676413312%_
                                       _%hd412677413315%_
                                       _%tl412678413317%_
                                       _%e412679413320%_
                                       _%hd412680413323%_
                                       _%tl412681413325%_
                                       _%e412682413328%_
                                       _%hd412683413331%_
                                       _%tl412684413333%_
                                       _%e412685413336%_
                                       _%hd412686413339%_
                                       _%tl412687413341%_
                                       _%e412688413344%_
                                       _%hd412689413347%_
                                       _%tl412690413349%_
                                       _%e412691413352%_
                                       _%hd412692413355%_
                                       _%tl412693413357%_
                                       _%e412694413360%_
                                       _%hd412695413363%_
                                       _%tl412696413365%_
                                       _%e412697413368%_
                                       _%hd412698413371%_
                                       _%tl412699413373%_))))
                              (_%__match417542417543%_
                               _%e412676413312%_
                               _%hd412677413315%_
                               _%tl412678413317%_
                               _%e412679413320%_
                               _%hd412680413323%_
                               _%tl412681413325%_
                               _%e412682413328%_
                               _%hd412683413331%_
                               _%tl412684413333%_
                               _%e412685413336%_
                               _%hd412686413339%_
                               _%tl412687413341%_
                               _%e412688413344%_
                               _%hd412689413347%_
                               _%tl412690413349%_
                               _%e412691413352%_
                               _%hd412692413355%_
                               _%tl412693413357%_
                               _%e412694413360%_
                               _%hd412695413363%_
                               _%tl412696413365%_
                               _%e412697413368%_
                               _%hd412698413371%_
                               _%tl412699413373%_))
                          (_%__match417328417329%_
                           _%e412676413312%_
                           _%hd412677413315%_
                           _%tl412678413317%_
                           _%e412679413320%_
                           _%hd412680413323%_
                           _%tl412681413325%_
                           _%e412682413328%_
                           _%hd412683413331%_
                           _%tl412684413333%_
                           _%e412685413336%_
                           _%hd412686413339%_
                           _%tl412687413341%_
                           _%e412688413344%_
                           _%hd412689413347%_
                           _%tl412690413349%_
                           _%e412691413352%_
                           _%hd412692413355%_
                           _%tl412693413357%_
                           _%e412694413360%_
                           _%hd412695413363%_
                           _%tl412696413365%_
                           _%e412697413368%_
                           _%hd412698413371%_
                           _%tl412699413373%_
                           _%e412700413376%_
                           _%hd412701413379%_
                           _%tl412702413381%_))))
                   (_%__match417150417151%_
                    (lambda (_%e412632413499%_
                             _%hd412633413502%_
                             _%tl412634413504%_
                             _%e412635413507%_
                             _%hd412636413510%_
                             _%tl412637413512%_
                             _%e412638413515%_
                             _%hd412639413518%_
                             _%tl412640413520%_
                             _%e412641413523%_
                             _%hd412642413526%_
                             _%tl412643413528%_
                             _%e412644413531%_
                             _%hd412645413534%_
                             _%tl412646413536%_
                             _%e412647413539%_
                             _%hd412648413542%_
                             _%tl412649413544%_
                             _%e412650413547%_
                             _%hd412651413550%_
                             _%tl412652413552%_
                             _%e412653413555%_
                             _%hd412654413558%_
                             _%tl412655413560%_
                             _%e412656413563%_
                             _%hd412657413566%_
                             _%tl412658413568%_
                             _%e412659413571%_
                             _%hd412660413574%_
                             _%tl412661413576%_
                             _%__splice417049417050%_
                             _%target412662413579%_
                             _%tl412664413581%_)
                      (letrec ((_%loop412665413584%_
                                (lambda (_%hd412663413587%_
                                         _%args412669413589%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd412663413587%_))
                                      (let ((_%e412666413591%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd412663413587%_))))
                                        (let ((_%lp-tl412668413596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e412666413591%_)))
                                              (_%lp-hd412667413594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e412666413591%_))))
                                          (_%loop412665413584%_
                                           _%lp-tl412668413596%_
                                           (cons _%lp-hd412667413594%_
                                                 _%args412669413589%_))))
                                      (let ((_%args412670413599%_
                                             (reverse _%args412669413589%_)))
                                        (let ((_%g412628413601%_
                                               _%args412670413599%_)
                                              (_%g412629413602%_
                                               _%hd412660413574%_)
                                              (_%g412630413603%_
                                               _%hd412651413550%_)
                                              (_%g412631413604%_
                                               _%hd412642413526%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g412631413604%_
                                                      'call-method))
                                                   (let ((__tmp418208
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self412617%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g412630413603%_
                                                      __tmp418208)))
                                              (_%__kont417047417048%_
                                               _%g412628413601%_
                                               _%g412629413602%_
                                               _%g412630413603%_
                                               _%g412631413604%_)
                                              (_%__match417338417339%_
                                               _%e412632413499%_
                                               _%hd412633413502%_
                                               _%tl412634413504%_
                                               _%e412635413507%_
                                               _%hd412636413510%_
                                               _%tl412637413512%_
                                               _%e412638413515%_
                                               _%hd412639413518%_
                                               _%tl412640413520%_
                                               _%e412641413523%_
                                               _%hd412642413526%_
                                               _%tl412643413528%_
                                               _%e412644413531%_
                                               _%hd412645413534%_
                                               _%tl412646413536%_
                                               _%e412647413539%_
                                               _%hd412648413542%_
                                               _%tl412649413544%_
                                               _%e412650413547%_
                                               _%hd412651413550%_
                                               _%tl412652413552%_
                                               _%e412653413555%_
                                               _%hd412654413558%_
                                               _%tl412655413560%_
                                               _%e412656413563%_
                                               _%hd412657413566%_
                                               _%tl412658413568%_
                                               _%e412659413571%_
                                               _%hd412660413574%_
                                               _%tl412661413576%_))))))))
                        (_%loop412665413584%_ _%target412662413579%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx417045417046%_))
                  (let ((_%e412632413499%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx417045417046%_))))
                    (let ((_%tl412634413504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e412632413499%_)))
                          (_%hd412633413502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e412632413499%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl412634413504%_))
                          (let ((_%e412635413507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl412634413504%_))))
                            (let ((_%tl412637413512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e412635413507%_)))
                                  (_%hd412636413510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e412635413507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd412636413510%_))
                                  (let ((_%e412638413515%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd412636413510%_))))
                                    (let ((_%tl412640413520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e412638413515%_)))
                                          (_%hd412639413518%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e412638413515%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd412639413518%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd412639413518%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl412640413520%_))
                                                  (let ((_%e412641413523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl412640413520%_))))
                                                    (let ((_%tl412643413528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e412641413523%_)))
                                                          (_%hd412642413526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e412641413523%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl412643413528%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl412637413512%_))
                      (let ((_%e412644413531%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl412637413512%_))))
                        (let ((_%tl412646413536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e412644413531%_)))
                              (_%hd412645413534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e412644413531%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd412645413534%_))
                              (let ((_%e412647413539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd412645413534%_))))
                                (let ((_%tl412649413544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e412647413539%_)))
                                      (_%hd412648413542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e412647413539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd412648413542%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd412648413542%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl412649413544%_))
                                              (let ((_%e412650413547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl412649413544%_))))
                                                (let ((_%tl412652413552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e412650413547%_)))
                                                      (_%hd412651413550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e412650413547%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl412652413552%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl412646413536%_))
                                                          (let ((_%e412653413555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl412646413536%_))))
                    (let ((_%tl412655413560%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e412653413555%_)))
                          (_%hd412654413558%_
                           (let ()
                             (declare (not safe))
                             (##car _%e412653413555%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd412654413558%_))
                          (let ((_%e412656413563%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd412654413558%_))))
                            (let ((_%tl412658413568%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e412656413563%_)))
                                  (_%hd412657413566%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e412656413563%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd412657413566%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd412657413566%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl412658413568%_))
                                          (let ((_%e412659413571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl412658413568%_))))
                                            (let ((_%tl412661413576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e412659413571%_)))
                                                  (_%hd412660413574%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e412659413571%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl412661413576%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl412655413560%_))
                                                      (let ((_%__splice417049417050%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl412655413560%_
                        '0))))
                (let ((_%tl412664413581%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice417049417050%_ '1)))
                      (_%target412662413579%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice417049417050%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl412664413581%_))
                      (_%__match417150417151%_
                       _%e412632413499%_
                       _%hd412633413502%_
                       _%tl412634413504%_
                       _%e412635413507%_
                       _%hd412636413510%_
                       _%tl412637413512%_
                       _%e412638413515%_
                       _%hd412639413518%_
                       _%tl412640413520%_
                       _%e412641413523%_
                       _%hd412642413526%_
                       _%tl412643413528%_
                       _%e412644413531%_
                       _%hd412645413534%_
                       _%tl412646413536%_
                       _%e412647413539%_
                       _%hd412648413542%_
                       _%tl412649413544%_
                       _%e412650413547%_
                       _%hd412651413550%_
                       _%tl412652413552%_
                       _%e412653413555%_
                       _%hd412654413558%_
                       _%tl412655413560%_
                       _%e412656413563%_
                       _%hd412657413566%_
                       _%tl412658413568%_
                       _%e412659413571%_
                       _%hd412660413574%_
                       _%tl412661413576%_
                       _%__splice417049417050%_
                       _%target412662413579%_
                       _%tl412664413581%_)
                      (_%__match417338417339%_
                       _%e412632413499%_
                       _%hd412633413502%_
                       _%tl412634413504%_
                       _%e412635413507%_
                       _%hd412636413510%_
                       _%tl412637413512%_
                       _%e412638413515%_
                       _%hd412639413518%_
                       _%tl412640413520%_
                       _%e412641413523%_
                       _%hd412642413526%_
                       _%tl412643413528%_
                       _%e412644413531%_
                       _%hd412645413534%_
                       _%tl412646413536%_
                       _%e412647413539%_
                       _%hd412648413542%_
                       _%tl412649413544%_
                       _%e412650413547%_
                       _%hd412651413550%_
                       _%tl412652413552%_
                       _%e412653413555%_
                       _%hd412654413558%_
                       _%tl412655413560%_
                       _%e412656413563%_
                       _%hd412657413566%_
                       _%tl412658413568%_
                       _%e412659413571%_
                       _%hd412660413574%_
                       _%tl412661413576%_))))
              (_%__match417338417339%_
               _%e412632413499%_
               _%hd412633413502%_
               _%tl412634413504%_
               _%e412635413507%_
               _%hd412636413510%_
               _%tl412637413512%_
               _%e412638413515%_
               _%hd412639413518%_
               _%tl412640413520%_
               _%e412641413523%_
               _%hd412642413526%_
               _%tl412643413528%_
               _%e412644413531%_
               _%hd412645413534%_
               _%tl412646413536%_
               _%e412647413539%_
               _%hd412648413542%_
               _%tl412649413544%_
               _%e412650413547%_
               _%hd412651413550%_
               _%tl412652413552%_
               _%e412653413555%_
               _%hd412654413558%_
               _%tl412655413560%_
               _%e412656413563%_
               _%hd412657413566%_
               _%tl412658413568%_
               _%e412659413571%_
               _%hd412660413574%_
               _%tl412661413576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match417542417543%_
                                                   _%e412632413499%_
                                                   _%hd412633413502%_
                                                   _%tl412634413504%_
                                                   _%e412635413507%_
                                                   _%hd412636413510%_
                                                   _%tl412637413512%_
                                                   _%e412638413515%_
                                                   _%hd412639413518%_
                                                   _%tl412640413520%_
                                                   _%e412641413523%_
                                                   _%hd412642413526%_
                                                   _%tl412643413528%_
                                                   _%e412644413531%_
                                                   _%hd412645413534%_
                                                   _%tl412646413536%_
                                                   _%e412647413539%_
                                                   _%hd412648413542%_
                                                   _%tl412649413544%_
                                                   _%e412650413547%_
                                                   _%hd412651413550%_
                                                   _%tl412652413552%_
                                                   _%e412653413555%_
                                                   _%hd412654413558%_
                                                   _%tl412655413560%_))))
                                          (_%__match417542417543%_
                                           _%e412632413499%_
                                           _%hd412633413502%_
                                           _%tl412634413504%_
                                           _%e412635413507%_
                                           _%hd412636413510%_
                                           _%tl412637413512%_
                                           _%e412638413515%_
                                           _%hd412639413518%_
                                           _%tl412640413520%_
                                           _%e412641413523%_
                                           _%hd412642413526%_
                                           _%tl412643413528%_
                                           _%e412644413531%_
                                           _%hd412645413534%_
                                           _%tl412646413536%_
                                           _%e412647413539%_
                                           _%hd412648413542%_
                                           _%tl412649413544%_
                                           _%e412650413547%_
                                           _%hd412651413550%_
                                           _%tl412652413552%_
                                           _%e412653413555%_
                                           _%hd412654413558%_
                                           _%tl412655413560%_))
                                      (_%__match417218417219%_
                                       _%e412632413499%_
                                       _%hd412633413502%_
                                       _%tl412634413504%_
                                       _%e412635413507%_
                                       _%hd412636413510%_
                                       _%tl412637413512%_
                                       _%e412638413515%_
                                       _%hd412639413518%_
                                       _%tl412640413520%_
                                       _%e412641413523%_
                                       _%hd412642413526%_
                                       _%tl412643413528%_
                                       _%e412644413531%_
                                       _%hd412645413534%_
                                       _%tl412646413536%_
                                       _%e412647413539%_
                                       _%hd412648413542%_
                                       _%tl412649413544%_
                                       _%e412650413547%_
                                       _%hd412651413550%_
                                       _%tl412652413552%_
                                       _%e412653413555%_
                                       _%hd412654413558%_
                                       _%tl412655413560%_
                                       _%e412656413563%_
                                       _%hd412657413566%_
                                       _%tl412658413568%_))
                                  (_%__match417542417543%_
                                   _%e412632413499%_
                                   _%hd412633413502%_
                                   _%tl412634413504%_
                                   _%e412635413507%_
                                   _%hd412636413510%_
                                   _%tl412637413512%_
                                   _%e412638413515%_
                                   _%hd412639413518%_
                                   _%tl412640413520%_
                                   _%e412641413523%_
                                   _%hd412642413526%_
                                   _%tl412643413528%_
                                   _%e412644413531%_
                                   _%hd412645413534%_
                                   _%tl412646413536%_
                                   _%e412647413539%_
                                   _%hd412648413542%_
                                   _%tl412649413544%_
                                   _%e412650413547%_
                                   _%hd412651413550%_
                                   _%tl412652413552%_
                                   _%e412653413555%_
                                   _%hd412654413558%_
                                   _%tl412655413560%_))))
                          (_%__match417542417543%_
                           _%e412632413499%_
                           _%hd412633413502%_
                           _%tl412634413504%_
                           _%e412635413507%_
                           _%hd412636413510%_
                           _%tl412637413512%_
                           _%e412638413515%_
                           _%hd412639413518%_
                           _%tl412640413520%_
                           _%e412641413523%_
                           _%hd412642413526%_
                           _%tl412643413528%_
                           _%e412644413531%_
                           _%hd412645413534%_
                           _%tl412646413536%_
                           _%e412647413539%_
                           _%hd412648413542%_
                           _%tl412649413544%_
                           _%e412650413547%_
                           _%hd412651413550%_
                           _%tl412652413552%_
                           _%e412653413555%_
                           _%hd412654413558%_
                           _%tl412655413560%_))))
                  (_%__match417480417481%_
                   _%e412632413499%_
                   _%hd412633413502%_
                   _%tl412634413504%_
                   _%e412635413507%_
                   _%hd412636413510%_
                   _%tl412637413512%_
                   _%e412638413515%_
                   _%hd412639413518%_
                   _%tl412640413520%_
                   _%e412641413523%_
                   _%hd412642413526%_
                   _%tl412643413528%_
                   _%e412644413531%_
                   _%hd412645413534%_
                   _%tl412646413536%_
                   _%e412647413539%_
                   _%hd412648413542%_
                   _%tl412649413544%_
                   _%e412650413547%_
                   _%hd412651413550%_
                   _%tl412652413552%_))
              (_%__kont417063417064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont417063417064%_))
                                          (_%__kont417063417064%_))
                                      (_%__kont417063417064%_))))
                              (_%__kont417063417064%_))))
                      (_%__kont417063417064%_))
                  (_%__kont417063417064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont417063417064%_))
                                              (_%__kont417063417064%_))
                                          (_%__kont417063417064%_))))
                                  (_%__kont417063417064%_))))
                          (_%__kont417063417064%_))))
                  (_%__kont417063417064%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self411560%_ _%stx411561%_)
        (letrec ((_%force-e411563%_
                  (lambda (_%target412615%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target412615%_ '()))
                                      '()))))))
          (let* ((_%__stx417547417548%_ _%stx411561%_)
                 (_%g411571411793%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx417547417548%_)))))
            (let ((_%__kont417549417550%_
                   (lambda (_%g411573412561%_
                            _%g411574412562%_
                            _%g411575412563%_
                            _%g411576412564%_)
                     (let ((_%$method412609%_
                            (let ((__tmp418210
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self411560%_ 'methods)))
                                  (__tmp418209
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g411574412562%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp418210 __tmp418209)))
                           (_%args412610%_
                            (map (lambda (_%g412597412599%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self411560%_
                                      _%g412597412599%_)))
                                 (let ((__tmp418211
                                        (lambda (_%g412601412604%_
                                                 _%g412602412606%_)
                                          (cons _%g412601412604%_
                                                _%g412602412606%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp418211
                                    '()
                                    _%g411573412561%_)))))
                       (let ((__tmp418212
                              (cons '%#call
                                    (cons (_%force-e411563%_ _%$method412609%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self411560%_
                                                               'receiver))
                                                            '()))
                                                _%args412610%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp418212 _%stx411561%_)))))
                  (_%__kont417553417554%_
                   (lambda (_%g411616412395%_
                            _%g411617412396%_
                            _%g411618412397%_
                            _%g411619412398%_
                            _%g411620412399%_)
                     (let ((_%$method412451%_
                            (let ((__tmp418214
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self411560%_ 'methods)))
                                  (__tmp418213
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g411617412396%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp418214 __tmp418213)))
                           (_%args412452%_
                            (map (lambda (_%g412439412441%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self411560%_
                                      _%g412439412441%_)))
                                 (let ((__tmp418215
                                        (lambda (_%g412443412446%_
                                                 _%g412444412448%_)
                                          (cons _%g412443412446%_
                                                _%g412444412448%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp418215
                                    '()
                                    _%g411616412395%_)))))
                       (let ((__tmp418216
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e411563%_
                                                 _%$method412451%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self411560%_ 'receiver))
                          '()))
              _%args412452%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp418216 _%stx411561%_)))))
                  (_%__kont417557417558%_
                   (lambda (_%g411669412228%_
                            _%g411670412229%_
                            _%g411671412230%_)
                     (let* ((_%$field412262%_
                             (let ((__tmp418218
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self411560%_ 'slots)))
                                   (__tmp418217
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g411669412228%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp418218 __tmp418217)))
                            (__tmp418219
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self411560%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field412262%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self411560%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp418219 _%stx411561%_))))
                  (_%__kont417559417560%_
                   (lambda (_%g411702412102%_
                            _%g411703412103%_
                            _%g411704412104%_
                            _%g411705412105%_)
                     (let ((_%$field412140%_
                            (let ((__tmp418221
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self411560%_ 'slots)))
                                  (__tmp418220
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g411703412103%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp418221 __tmp418220)))
                           (_%expr412141%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self411560%_
                               _%g411702412102%_))))
                       (let ((__tmp418222
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self411560%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field412140%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self411560%_ 'receiver))
                          '()))
              (cons _%expr412141%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp418222 _%stx411561%_)))))
                  (_%__kont417561417562%_
                   (lambda (_%g411739411974%_ _%g411740411975%_)
                     (let* ((_%accessor411997%_
                             (let ((__tmp418223
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g411740411975%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp418223)))
                            (_%klass411999%_
                             (let ((__tmp418224
                                    (##structure-ref
                                     _%accessor411997%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx411561%_
                                __tmp418224)))
                            (_%slot412001%_
                             (##structure-ref
                              _%accessor411997%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor411997%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass411999%_
                                      _%slot412001%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass411999%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx411561%_
                           (let* ((_%$field412007%_
                                   (let ((__tmp418225
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self411560%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp418225 _%slot412001%_)))
                                  (__tmp418226
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self411560%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field412007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self411560%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp418226
                              _%stx411561%_))))))
                  (_%__kont417563417564%_
                   (lambda (_%g411762411869%_
                            _%g411763411870%_
                            _%g411764411871%_)
                     (let* ((_%mutator411899%_
                             (let ((__tmp418227
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g411764411871%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp418227)))
                            (_%klass411901%_
                             (let ((__tmp418228
                                    (##structure-ref
                                     _%mutator411899%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx411561%_
                                __tmp418228)))
                            (_%slot411903%_
                             (##structure-ref
                              _%mutator411899%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr411905%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self411560%_
                                _%g411762411869%_))))
                       (if (if (##structure-ref
                                _%mutator411899%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass411901%_
                                      _%slot411903%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass411901%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp418229
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g411764411871%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g411763411870%_
                                                                '()))
                                                    (cons _%expr411905%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp418229 _%stx411561%_))
                           (let* ((_%$field411911%_
                                   (let ((__tmp418230
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self411560%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp418230 _%slot411903%_)))
                                  (__tmp418231
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self411560%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field411911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self411560%_ 'receiver))
                               '()))
                   (cons _%expr411905%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp418231
                              _%stx411561%_))))))
                  (_%__kont417565417566%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self411560%_ _%stx411561%_)))))
              (let* ((_%__match418046418047%_
                      (lambda (_%e411765411805%_
                               _%hd411766411808%_
                               _%tl411767411810%_
                               _%e411768411813%_
                               _%hd411769411816%_
                               _%tl411770411818%_
                               _%e411771411821%_
                               _%hd411772411824%_
                               _%tl411773411826%_
                               _%e411774411829%_
                               _%hd411775411832%_
                               _%tl411776411834%_
                               _%e411777411837%_
                               _%hd411778411840%_
                               _%tl411779411842%_
                               _%e411780411845%_
                               _%hd411781411848%_
                               _%tl411782411850%_
                               _%e411783411853%_
                               _%hd411784411856%_
                               _%tl411785411858%_
                               _%e411786411861%_
                               _%hd411787411864%_
                               _%tl411788411866%_)
                        (let ((_%g411762411869%_ _%hd411787411864%_)
                              (_%g411763411870%_ _%hd411784411856%_)
                              (_%g411764411871%_ _%hd411775411832%_))
                          (if (and (let ((__tmp418232
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self411560%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g411763411870%_
                                      __tmp418232))
                                   (let ((__tmp418233
                                          (let ((__tmp418234
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g411764411871%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp418234))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp418233
                                      'gxc#!mutator::t)))
                              (_%__kont417563417564%_
                               _%g411762411869%_
                               _%g411763411870%_
                               _%g411764411871%_)
                              (_%__kont417565417566%_)))))
                     (_%__match418044418045%_
                      (lambda (_%e411765411805%_
                               _%hd411766411808%_
                               _%tl411767411810%_
                               _%e411768411813%_
                               _%hd411769411816%_
                               _%tl411770411818%_
                               _%e411771411821%_
                               _%hd411772411824%_
                               _%tl411773411826%_
                               _%e411774411829%_
                               _%hd411775411832%_
                               _%tl411776411834%_
                               _%e411777411837%_
                               _%hd411778411840%_
                               _%tl411779411842%_
                               _%e411780411845%_
                               _%hd411781411848%_
                               _%tl411782411850%_
                               _%e411783411853%_
                               _%hd411784411856%_
                               _%tl411785411858%_
                               _%e411786411861%_
                               _%hd411787411864%_
                               _%tl411788411866%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl411788411866%_))
                            (_%__match418046418047%_
                             _%e411765411805%_
                             _%hd411766411808%_
                             _%tl411767411810%_
                             _%e411768411813%_
                             _%hd411769411816%_
                             _%tl411770411818%_
                             _%e411771411821%_
                             _%hd411772411824%_
                             _%tl411773411826%_
                             _%e411774411829%_
                             _%hd411775411832%_
                             _%tl411776411834%_
                             _%e411777411837%_
                             _%hd411778411840%_
                             _%tl411779411842%_
                             _%e411780411845%_
                             _%hd411781411848%_
                             _%tl411782411850%_
                             _%e411783411853%_
                             _%hd411784411856%_
                             _%tl411785411858%_
                             _%e411786411861%_
                             _%hd411787411864%_
                             _%tl411788411866%_)
                            (_%__kont417565417566%_))))
                     (_%__match418038418039%_
                      (lambda (_%e411765411805%_
                               _%hd411766411808%_
                               _%tl411767411810%_
                               _%e411768411813%_
                               _%hd411769411816%_
                               _%tl411770411818%_
                               _%e411771411821%_
                               _%hd411772411824%_
                               _%tl411773411826%_
                               _%e411774411829%_
                               _%hd411775411832%_
                               _%tl411776411834%_
                               _%e411777411837%_
                               _%hd411778411840%_
                               _%tl411779411842%_
                               _%e411780411845%_
                               _%hd411781411848%_
                               _%tl411782411850%_
                               _%e411783411853%_
                               _%hd411784411856%_
                               _%tl411785411858%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl411779411842%_))
                            (let ((_%e411786411861%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl411779411842%_))))
                              (let ((_%tl411788411866%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e411786411861%_)))
                                    (_%hd411787411864%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e411786411861%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl411788411866%_))
                                    (_%__match418046418047%_
                                     _%e411765411805%_
                                     _%hd411766411808%_
                                     _%tl411767411810%_
                                     _%e411768411813%_
                                     _%hd411769411816%_
                                     _%tl411770411818%_
                                     _%e411771411821%_
                                     _%hd411772411824%_
                                     _%tl411773411826%_
                                     _%e411774411829%_
                                     _%hd411775411832%_
                                     _%tl411776411834%_
                                     _%e411777411837%_
                                     _%hd411778411840%_
                                     _%tl411779411842%_
                                     _%e411780411845%_
                                     _%hd411781411848%_
                                     _%tl411782411850%_
                                     _%e411783411853%_
                                     _%hd411784411856%_
                                     _%tl411785411858%_
                                     _%e411786411861%_
                                     _%hd411787411864%_
                                     _%tl411788411866%_)
                                    (_%__kont417565417566%_))))
                            (_%__kont417565417566%_))))
                     (_%__match417984417985%_
                      (lambda (_%e411741411918%_
                               _%hd411742411921%_
                               _%tl411743411923%_
                               _%e411744411926%_
                               _%hd411745411929%_
                               _%tl411746411931%_
                               _%e411747411934%_
                               _%hd411748411937%_
                               _%tl411749411939%_
                               _%e411750411942%_
                               _%hd411751411945%_
                               _%tl411752411947%_
                               _%e411753411950%_
                               _%hd411754411953%_
                               _%tl411755411955%_
                               _%e411756411958%_
                               _%hd411757411961%_
                               _%tl411758411963%_
                               _%e411759411966%_
                               _%hd411760411969%_
                               _%tl411761411971%_)
                        (let ((_%g411739411974%_ _%hd411760411969%_)
                              (_%g411740411975%_ _%hd411751411945%_))
                          (if (and (let ((__tmp418235
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self411560%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g411739411974%_
                                      __tmp418235))
                                   (let ((__tmp418236
                                          (let ((__tmp418237
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g411740411975%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp418237))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp418236
                                      'gxc#!accessor::t)))
                              (_%__kont417561417562%_
                               _%g411739411974%_
                               _%g411740411975%_)
                              (_%__kont417565417566%_)))))
                     (_%__match417982417983%_
                      (lambda (_%e411741411918%_
                               _%hd411742411921%_
                               _%tl411743411923%_
                               _%e411744411926%_
                               _%hd411745411929%_
                               _%tl411746411931%_
                               _%e411747411934%_
                               _%hd411748411937%_
                               _%tl411749411939%_
                               _%e411750411942%_
                               _%hd411751411945%_
                               _%tl411752411947%_
                               _%e411753411950%_
                               _%hd411754411953%_
                               _%tl411755411955%_
                               _%e411756411958%_
                               _%hd411757411961%_
                               _%tl411758411963%_
                               _%e411759411966%_
                               _%hd411760411969%_
                               _%tl411761411971%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl411755411955%_))
                            (_%__match417984417985%_
                             _%e411741411918%_
                             _%hd411742411921%_
                             _%tl411743411923%_
                             _%e411744411926%_
                             _%hd411745411929%_
                             _%tl411746411931%_
                             _%e411747411934%_
                             _%hd411748411937%_
                             _%tl411749411939%_
                             _%e411750411942%_
                             _%hd411751411945%_
                             _%tl411752411947%_
                             _%e411753411950%_
                             _%hd411754411953%_
                             _%tl411755411955%_
                             _%e411756411958%_
                             _%hd411757411961%_
                             _%tl411758411963%_
                             _%e411759411966%_
                             _%hd411760411969%_
                             _%tl411761411971%_)
                            (_%__match418038418039%_
                             _%e411741411918%_
                             _%hd411742411921%_
                             _%tl411743411923%_
                             _%e411744411926%_
                             _%hd411745411929%_
                             _%tl411746411931%_
                             _%e411747411934%_
                             _%hd411748411937%_
                             _%tl411749411939%_
                             _%e411750411942%_
                             _%hd411751411945%_
                             _%tl411752411947%_
                             _%e411753411950%_
                             _%hd411754411953%_
                             _%tl411755411955%_
                             _%e411756411958%_
                             _%hd411757411961%_
                             _%tl411758411963%_
                             _%e411759411966%_
                             _%hd411760411969%_
                             _%tl411761411971%_))))
                     (_%__match417928417929%_
                      (lambda (_%e411706412014%_
                               _%hd411707412017%_
                               _%tl411708412019%_
                               _%e411709412022%_
                               _%hd411710412025%_
                               _%tl411711412027%_
                               _%e411712412030%_
                               _%hd411713412033%_
                               _%tl411714412035%_
                               _%e411715412038%_
                               _%hd411716412041%_
                               _%tl411717412043%_
                               _%e411718412046%_
                               _%hd411719412049%_
                               _%tl411720412051%_
                               _%e411721412054%_
                               _%hd411722412057%_
                               _%tl411723412059%_
                               _%e411724412062%_
                               _%hd411725412065%_
                               _%tl411726412067%_
                               _%e411727412070%_
                               _%hd411728412073%_
                               _%tl411729412075%_
                               _%e411730412078%_
                               _%hd411731412081%_
                               _%tl411732412083%_
                               _%e411733412086%_
                               _%hd411734412089%_
                               _%tl411735412091%_
                               _%e411736412094%_
                               _%hd411737412097%_
                               _%tl411738412099%_)
                        (let ((_%g411702412102%_ _%hd411737412097%_)
                              (_%g411703412103%_ _%hd411734412089%_)
                              (_%g411704412104%_ _%hd411725412065%_)
                              (_%g411705412105%_ _%hd411716412041%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g411705412105%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g411705412105%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp418238
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self411560%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g411704412104%_
                                      __tmp418238)))
                              (_%__kont417559417560%_
                               _%g411702412102%_
                               _%g411703412103%_
                               _%g411704412104%_
                               _%g411705412105%_)
                              (_%__kont417565417566%_)))))
                     (_%__match417920417921%_
                      (lambda (_%e411706412014%_
                               _%hd411707412017%_
                               _%tl411708412019%_
                               _%e411709412022%_
                               _%hd411710412025%_
                               _%tl411711412027%_
                               _%e411712412030%_
                               _%hd411713412033%_
                               _%tl411714412035%_
                               _%e411715412038%_
                               _%hd411716412041%_
                               _%tl411717412043%_
                               _%e411718412046%_
                               _%hd411719412049%_
                               _%tl411720412051%_
                               _%e411721412054%_
                               _%hd411722412057%_
                               _%tl411723412059%_
                               _%e411724412062%_
                               _%hd411725412065%_
                               _%tl411726412067%_
                               _%e411727412070%_
                               _%hd411728412073%_
                               _%tl411729412075%_
                               _%e411730412078%_
                               _%hd411731412081%_
                               _%tl411732412083%_
                               _%e411733412086%_
                               _%hd411734412089%_
                               _%tl411735412091%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl411729412075%_))
                            (let ((_%e411736412094%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl411729412075%_))))
                              (let ((_%tl411738412099%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e411736412094%_)))
                                    (_%hd411737412097%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e411736412094%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl411738412099%_))
                                    (_%__match417928417929%_
                                     _%e411706412014%_
                                     _%hd411707412017%_
                                     _%tl411708412019%_
                                     _%e411709412022%_
                                     _%hd411710412025%_
                                     _%tl411711412027%_
                                     _%e411712412030%_
                                     _%hd411713412033%_
                                     _%tl411714412035%_
                                     _%e411715412038%_
                                     _%hd411716412041%_
                                     _%tl411717412043%_
                                     _%e411718412046%_
                                     _%hd411719412049%_
                                     _%tl411720412051%_
                                     _%e411721412054%_
                                     _%hd411722412057%_
                                     _%tl411723412059%_
                                     _%e411724412062%_
                                     _%hd411725412065%_
                                     _%tl411726412067%_
                                     _%e411727412070%_
                                     _%hd411728412073%_
                                     _%tl411729412075%_
                                     _%e411730412078%_
                                     _%hd411731412081%_
                                     _%tl411732412083%_
                                     _%e411733412086%_
                                     _%hd411734412089%_
                                     _%tl411735412091%_
                                     _%e411736412094%_
                                     _%hd411737412097%_
                                     _%tl411738412099%_)
                                    (_%__kont417565417566%_))))
                            (_%__match418044418045%_
                             _%e411706412014%_
                             _%hd411707412017%_
                             _%tl411708412019%_
                             _%e411709412022%_
                             _%hd411710412025%_
                             _%tl411711412027%_
                             _%e411712412030%_
                             _%hd411713412033%_
                             _%tl411714412035%_
                             _%e411715412038%_
                             _%hd411716412041%_
                             _%tl411717412043%_
                             _%e411718412046%_
                             _%hd411719412049%_
                             _%tl411720412051%_
                             _%e411721412054%_
                             _%hd411722412057%_
                             _%tl411723412059%_
                             _%e411724412062%_
                             _%hd411725412065%_
                             _%tl411726412067%_
                             _%e411727412070%_
                             _%hd411728412073%_
                             _%tl411729412075%_))))
                     (_%__match417842417843%_
                      (lambda (_%e411672412148%_
                               _%hd411673412151%_
                               _%tl411674412153%_
                               _%e411675412156%_
                               _%hd411676412159%_
                               _%tl411677412161%_
                               _%e411678412164%_
                               _%hd411679412167%_
                               _%tl411680412169%_
                               _%e411681412172%_
                               _%hd411682412175%_
                               _%tl411683412177%_
                               _%e411684412180%_
                               _%hd411685412183%_
                               _%tl411686412185%_
                               _%e411687412188%_
                               _%hd411688412191%_
                               _%tl411689412193%_
                               _%e411690412196%_
                               _%hd411691412199%_
                               _%tl411692412201%_
                               _%e411693412204%_
                               _%hd411694412207%_
                               _%tl411695412209%_
                               _%e411696412212%_
                               _%hd411697412215%_
                               _%tl411698412217%_
                               _%e411699412220%_
                               _%hd411700412223%_
                               _%tl411701412225%_)
                        (let ((_%g411669412228%_ _%hd411700412223%_)
                              (_%g411670412229%_ _%hd411691412199%_)
                              (_%g411671412230%_ _%hd411682412175%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g411671412230%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g411671412230%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp418239
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self411560%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g411670412229%_
                                      __tmp418239)))
                              (_%__kont417557417558%_
                               _%g411669412228%_
                               _%g411670412229%_
                               _%g411671412230%_)
                              (_%__match418046418047%_
                               _%e411672412148%_
                               _%hd411673412151%_
                               _%tl411674412153%_
                               _%e411675412156%_
                               _%hd411676412159%_
                               _%tl411677412161%_
                               _%e411678412164%_
                               _%hd411679412167%_
                               _%tl411680412169%_
                               _%e411681412172%_
                               _%hd411682412175%_
                               _%tl411683412177%_
                               _%e411684412180%_
                               _%hd411685412183%_
                               _%tl411686412185%_
                               _%e411687412188%_
                               _%hd411688412191%_
                               _%tl411689412193%_
                               _%e411690412196%_
                               _%hd411691412199%_
                               _%tl411692412201%_
                               _%e411693412204%_
                               _%hd411694412207%_
                               _%tl411695412209%_)))))
                     (_%__match417840417841%_
                      (lambda (_%e411672412148%_
                               _%hd411673412151%_
                               _%tl411674412153%_
                               _%e411675412156%_
                               _%hd411676412159%_
                               _%tl411677412161%_
                               _%e411678412164%_
                               _%hd411679412167%_
                               _%tl411680412169%_
                               _%e411681412172%_
                               _%hd411682412175%_
                               _%tl411683412177%_
                               _%e411684412180%_
                               _%hd411685412183%_
                               _%tl411686412185%_
                               _%e411687412188%_
                               _%hd411688412191%_
                               _%tl411689412193%_
                               _%e411690412196%_
                               _%hd411691412199%_
                               _%tl411692412201%_
                               _%e411693412204%_
                               _%hd411694412207%_
                               _%tl411695412209%_
                               _%e411696412212%_
                               _%hd411697412215%_
                               _%tl411698412217%_
                               _%e411699412220%_
                               _%hd411700412223%_
                               _%tl411701412225%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl411695412209%_))
                            (_%__match417842417843%_
                             _%e411672412148%_
                             _%hd411673412151%_
                             _%tl411674412153%_
                             _%e411675412156%_
                             _%hd411676412159%_
                             _%tl411677412161%_
                             _%e411678412164%_
                             _%hd411679412167%_
                             _%tl411680412169%_
                             _%e411681412172%_
                             _%hd411682412175%_
                             _%tl411683412177%_
                             _%e411684412180%_
                             _%hd411685412183%_
                             _%tl411686412185%_
                             _%e411687412188%_
                             _%hd411688412191%_
                             _%tl411689412193%_
                             _%e411690412196%_
                             _%hd411691412199%_
                             _%tl411692412201%_
                             _%e411693412204%_
                             _%hd411694412207%_
                             _%tl411695412209%_
                             _%e411696412212%_
                             _%hd411697412215%_
                             _%tl411698412217%_
                             _%e411699412220%_
                             _%hd411700412223%_
                             _%tl411701412225%_)
                            (_%__match417920417921%_
                             _%e411672412148%_
                             _%hd411673412151%_
                             _%tl411674412153%_
                             _%e411675412156%_
                             _%hd411676412159%_
                             _%tl411677412161%_
                             _%e411678412164%_
                             _%hd411679412167%_
                             _%tl411680412169%_
                             _%e411681412172%_
                             _%hd411682412175%_
                             _%tl411683412177%_
                             _%e411684412180%_
                             _%hd411685412183%_
                             _%tl411686412185%_
                             _%e411687412188%_
                             _%hd411688412191%_
                             _%tl411689412193%_
                             _%e411690412196%_
                             _%hd411691412199%_
                             _%tl411692412201%_
                             _%e411693412204%_
                             _%hd411694412207%_
                             _%tl411695412209%_
                             _%e411696412212%_
                             _%hd411697412215%_
                             _%tl411698412217%_
                             _%e411699412220%_
                             _%hd411700412223%_
                             _%tl411701412225%_))))
                     (_%__match417830417831%_
                      (lambda (_%e411672412148%_
                               _%hd411673412151%_
                               _%tl411674412153%_
                               _%e411675412156%_
                               _%hd411676412159%_
                               _%tl411677412161%_
                               _%e411678412164%_
                               _%hd411679412167%_
                               _%tl411680412169%_
                               _%e411681412172%_
                               _%hd411682412175%_
                               _%tl411683412177%_
                               _%e411684412180%_
                               _%hd411685412183%_
                               _%tl411686412185%_
                               _%e411687412188%_
                               _%hd411688412191%_
                               _%tl411689412193%_
                               _%e411690412196%_
                               _%hd411691412199%_
                               _%tl411692412201%_
                               _%e411693412204%_
                               _%hd411694412207%_
                               _%tl411695412209%_
                               _%e411696412212%_
                               _%hd411697412215%_
                               _%tl411698412217%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd411697412215%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl411698412217%_))
                                (let ((_%e411699412220%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl411698412217%_))))
                                  (let ((_%tl411701412225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e411699412220%_)))
                                        (_%hd411700412223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e411699412220%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl411701412225%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl411695412209%_))
                                            (_%__match417842417843%_
                                             _%e411672412148%_
                                             _%hd411673412151%_
                                             _%tl411674412153%_
                                             _%e411675412156%_
                                             _%hd411676412159%_
                                             _%tl411677412161%_
                                             _%e411678412164%_
                                             _%hd411679412167%_
                                             _%tl411680412169%_
                                             _%e411681412172%_
                                             _%hd411682412175%_
                                             _%tl411683412177%_
                                             _%e411684412180%_
                                             _%hd411685412183%_
                                             _%tl411686412185%_
                                             _%e411687412188%_
                                             _%hd411688412191%_
                                             _%tl411689412193%_
                                             _%e411690412196%_
                                             _%hd411691412199%_
                                             _%tl411692412201%_
                                             _%e411693412204%_
                                             _%hd411694412207%_
                                             _%tl411695412209%_
                                             _%e411696412212%_
                                             _%hd411697412215%_
                                             _%tl411698412217%_
                                             _%e411699412220%_
                                             _%hd411700412223%_
                                             _%tl411701412225%_)
                                            (_%__match417920417921%_
                                             _%e411672412148%_
                                             _%hd411673412151%_
                                             _%tl411674412153%_
                                             _%e411675412156%_
                                             _%hd411676412159%_
                                             _%tl411677412161%_
                                             _%e411678412164%_
                                             _%hd411679412167%_
                                             _%tl411680412169%_
                                             _%e411681412172%_
                                             _%hd411682412175%_
                                             _%tl411683412177%_
                                             _%e411684412180%_
                                             _%hd411685412183%_
                                             _%tl411686412185%_
                                             _%e411687412188%_
                                             _%hd411688412191%_
                                             _%tl411689412193%_
                                             _%e411690412196%_
                                             _%hd411691412199%_
                                             _%tl411692412201%_
                                             _%e411693412204%_
                                             _%hd411694412207%_
                                             _%tl411695412209%_
                                             _%e411696412212%_
                                             _%hd411697412215%_
                                             _%tl411698412217%_
                                             _%e411699412220%_
                                             _%hd411700412223%_
                                             _%tl411701412225%_))
                                        (_%__match418044418045%_
                                         _%e411672412148%_
                                         _%hd411673412151%_
                                         _%tl411674412153%_
                                         _%e411675412156%_
                                         _%hd411676412159%_
                                         _%tl411677412161%_
                                         _%e411678412164%_
                                         _%hd411679412167%_
                                         _%tl411680412169%_
                                         _%e411681412172%_
                                         _%hd411682412175%_
                                         _%tl411683412177%_
                                         _%e411684412180%_
                                         _%hd411685412183%_
                                         _%tl411686412185%_
                                         _%e411687412188%_
                                         _%hd411688412191%_
                                         _%tl411689412193%_
                                         _%e411690412196%_
                                         _%hd411691412199%_
                                         _%tl411692412201%_
                                         _%e411693412204%_
                                         _%hd411694412207%_
                                         _%tl411695412209%_))))
                                (_%__match418044418045%_
                                 _%e411672412148%_
                                 _%hd411673412151%_
                                 _%tl411674412153%_
                                 _%e411675412156%_
                                 _%hd411676412159%_
                                 _%tl411677412161%_
                                 _%e411678412164%_
                                 _%hd411679412167%_
                                 _%tl411680412169%_
                                 _%e411681412172%_
                                 _%hd411682412175%_
                                 _%tl411683412177%_
                                 _%e411684412180%_
                                 _%hd411685412183%_
                                 _%tl411686412185%_
                                 _%e411687412188%_
                                 _%hd411688412191%_
                                 _%tl411689412193%_
                                 _%e411690412196%_
                                 _%hd411691412199%_
                                 _%tl411692412201%_
                                 _%e411693412204%_
                                 _%hd411694412207%_
                                 _%tl411695412209%_))
                            (_%__match418044418045%_
                             _%e411672412148%_
                             _%hd411673412151%_
                             _%tl411674412153%_
                             _%e411675412156%_
                             _%hd411676412159%_
                             _%tl411677412161%_
                             _%e411678412164%_
                             _%hd411679412167%_
                             _%tl411680412169%_
                             _%e411681412172%_
                             _%hd411682412175%_
                             _%tl411683412177%_
                             _%e411684412180%_
                             _%hd411685412183%_
                             _%tl411686412185%_
                             _%e411687412188%_
                             _%hd411688412191%_
                             _%tl411689412193%_
                             _%e411690412196%_
                             _%hd411691412199%_
                             _%tl411692412201%_
                             _%e411693412204%_
                             _%hd411694412207%_
                             _%tl411695412209%_))))
                     (_%__match417762417763%_
                      (lambda (_%e411621412269%_
                               _%hd411622412272%_
                               _%tl411623412274%_
                               _%e411624412277%_
                               _%hd411625412280%_
                               _%tl411626412282%_
                               _%e411627412285%_
                               _%hd411628412288%_
                               _%tl411629412290%_
                               _%e411630412293%_
                               _%hd411631412296%_
                               _%tl411632412298%_
                               _%e411633412301%_
                               _%hd411634412304%_
                               _%tl411635412306%_
                               _%e411636412309%_
                               _%hd411637412312%_
                               _%tl411638412314%_
                               _%e411639412317%_
                               _%hd411640412320%_
                               _%tl411641412322%_
                               _%e411642412325%_
                               _%hd411643412328%_
                               _%tl411644412330%_
                               _%e411645412333%_
                               _%hd411646412336%_
                               _%tl411647412338%_
                               _%e411648412341%_
                               _%hd411649412344%_
                               _%tl411650412346%_
                               _%e411651412349%_
                               _%hd411652412352%_
                               _%tl411653412354%_
                               _%e411654412357%_
                               _%hd411655412360%_
                               _%tl411656412362%_
                               _%e411657412365%_
                               _%hd411658412368%_
                               _%tl411659412370%_
                               _%__splice417555417556%_
                               _%target411660412373%_
                               _%tl411662412375%_)
                        (letrec ((_%loop411663412378%_
                                  (lambda (_%hd411661412381%_
                                           _%args411667412383%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd411661412381%_))
                                        (let ((_%e411664412385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd411661412381%_))))
                                          (let ((_%lp-tl411666412390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e411664412385%_)))
                                                (_%lp-hd411665412388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e411664412385%_))))
                                            (_%loop411663412378%_
                                             _%lp-tl411666412390%_
                                             (cons _%lp-hd411665412388%_
                                                   _%args411667412383%_))))
                                        (let ((_%args411668412393%_
                                               (reverse _%args411667412383%_)))
                                          (let ((_%g411616412395%_
                                                 _%args411668412393%_)
                                                (_%g411617412396%_
                                                 _%hd411658412368%_)
                                                (_%g411618412397%_
                                                 _%hd411649412344%_)
                                                (_%g411619412398%_
                                                 _%hd411640412320%_)
                                                (_%g411620412399%_
                                                 _%hd411631412296%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g411620412399%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g411619412398%_
                                                        'call-method))
                                                     (let ((__tmp418240
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self411560%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g411618412397%_
                                                        __tmp418240)))
                                                (_%__kont417553417554%_
                                                 _%g411616412395%_
                                                 _%g411617412396%_
                                                 _%g411618412397%_
                                                 _%g411619412398%_
                                                 _%g411620412399%_)
                                                (_%__kont417565417566%_))))))))
                          (_%loop411663412378%_ _%target411660412373%_ '()))))
                     (_%__match417720417721%_
                      (lambda (_%e411621412269%_
                               _%hd411622412272%_
                               _%tl411623412274%_
                               _%e411624412277%_
                               _%hd411625412280%_
                               _%tl411626412282%_
                               _%e411627412285%_
                               _%hd411628412288%_
                               _%tl411629412290%_
                               _%e411630412293%_
                               _%hd411631412296%_
                               _%tl411632412298%_
                               _%e411633412301%_
                               _%hd411634412304%_
                               _%tl411635412306%_
                               _%e411636412309%_
                               _%hd411637412312%_
                               _%tl411638412314%_
                               _%e411639412317%_
                               _%hd411640412320%_
                               _%tl411641412322%_
                               _%e411642412325%_
                               _%hd411643412328%_
                               _%tl411644412330%_
                               _%e411645412333%_
                               _%hd411646412336%_
                               _%tl411647412338%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd411646412336%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl411647412338%_))
                                (let ((_%e411648412341%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl411647412338%_))))
                                  (let ((_%tl411650412346%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e411648412341%_)))
                                        (_%hd411649412344%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e411648412341%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl411650412346%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl411644412330%_))
                                            (let ((_%e411651412349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl411644412330%_))))
                                              (let ((_%tl411653412354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e411651412349%_)))
                                                    (_%hd411652412352%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e411651412349%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd411652412352%_))
                                                    (let ((_%e411654412357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd411652412352%_))))
                                                      (let ((_%tl411656412362%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e411654412357%_)))
                    (_%hd411655412360%_
                     (let () (declare (not safe)) (##car _%e411654412357%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd411655412360%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd411655412360%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl411656412362%_))
                            (let ((_%e411657412365%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl411656412362%_))))
                              (let ((_%tl411659412370%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e411657412365%_)))
                                    (_%hd411658412368%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e411657412365%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl411659412370%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl411653412354%_))
                                        (let ((_%__splice417555417556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl411653412354%_
                                                  '0))))
                                          (let ((_%tl411662412375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice417555417556%_
                                                    '1)))
                                                (_%target411660412373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice417555417556%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl411662412375%_))
                                                (_%__match417762417763%_
                                                 _%e411621412269%_
                                                 _%hd411622412272%_
                                                 _%tl411623412274%_
                                                 _%e411624412277%_
                                                 _%hd411625412280%_
                                                 _%tl411626412282%_
                                                 _%e411627412285%_
                                                 _%hd411628412288%_
                                                 _%tl411629412290%_
                                                 _%e411630412293%_
                                                 _%hd411631412296%_
                                                 _%tl411632412298%_
                                                 _%e411633412301%_
                                                 _%hd411634412304%_
                                                 _%tl411635412306%_
                                                 _%e411636412309%_
                                                 _%hd411637412312%_
                                                 _%tl411638412314%_
                                                 _%e411639412317%_
                                                 _%hd411640412320%_
                                                 _%tl411641412322%_
                                                 _%e411642412325%_
                                                 _%hd411643412328%_
                                                 _%tl411644412330%_
                                                 _%e411645412333%_
                                                 _%hd411646412336%_
                                                 _%tl411647412338%_
                                                 _%e411648412341%_
                                                 _%hd411649412344%_
                                                 _%tl411650412346%_
                                                 _%e411651412349%_
                                                 _%hd411652412352%_
                                                 _%tl411653412354%_
                                                 _%e411654412357%_
                                                 _%hd411655412360%_
                                                 _%tl411656412362%_
                                                 _%e411657412365%_
                                                 _%hd411658412368%_
                                                 _%tl411659412370%_
                                                 _%__splice417555417556%_
                                                 _%target411660412373%_
                                                 _%tl411662412375%_)
                                                (_%__kont417565417566%_))))
                                        (_%__kont417565417566%_))
                                    (_%__kont417565417566%_))))
                            (_%__kont417565417566%_))
                        (_%__kont417565417566%_))
                    (_%__kont417565417566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont417565417566%_))))
                                            (_%__match418044418045%_
                                             _%e411621412269%_
                                             _%hd411622412272%_
                                             _%tl411623412274%_
                                             _%e411624412277%_
                                             _%hd411625412280%_
                                             _%tl411626412282%_
                                             _%e411627412285%_
                                             _%hd411628412288%_
                                             _%tl411629412290%_
                                             _%e411630412293%_
                                             _%hd411631412296%_
                                             _%tl411632412298%_
                                             _%e411633412301%_
                                             _%hd411634412304%_
                                             _%tl411635412306%_
                                             _%e411636412309%_
                                             _%hd411637412312%_
                                             _%tl411638412314%_
                                             _%e411639412317%_
                                             _%hd411640412320%_
                                             _%tl411641412322%_
                                             _%e411642412325%_
                                             _%hd411643412328%_
                                             _%tl411644412330%_))
                                        (_%__match418044418045%_
                                         _%e411621412269%_
                                         _%hd411622412272%_
                                         _%tl411623412274%_
                                         _%e411624412277%_
                                         _%hd411625412280%_
                                         _%tl411626412282%_
                                         _%e411627412285%_
                                         _%hd411628412288%_
                                         _%tl411629412290%_
                                         _%e411630412293%_
                                         _%hd411631412296%_
                                         _%tl411632412298%_
                                         _%e411633412301%_
                                         _%hd411634412304%_
                                         _%tl411635412306%_
                                         _%e411636412309%_
                                         _%hd411637412312%_
                                         _%tl411638412314%_
                                         _%e411639412317%_
                                         _%hd411640412320%_
                                         _%tl411641412322%_
                                         _%e411642412325%_
                                         _%hd411643412328%_
                                         _%tl411644412330%_))))
                                (_%__match418044418045%_
                                 _%e411621412269%_
                                 _%hd411622412272%_
                                 _%tl411623412274%_
                                 _%e411624412277%_
                                 _%hd411625412280%_
                                 _%tl411626412282%_
                                 _%e411627412285%_
                                 _%hd411628412288%_
                                 _%tl411629412290%_
                                 _%e411630412293%_
                                 _%hd411631412296%_
                                 _%tl411632412298%_
                                 _%e411633412301%_
                                 _%hd411634412304%_
                                 _%tl411635412306%_
                                 _%e411636412309%_
                                 _%hd411637412312%_
                                 _%tl411638412314%_
                                 _%e411639412317%_
                                 _%hd411640412320%_
                                 _%tl411641412322%_
                                 _%e411642412325%_
                                 _%hd411643412328%_
                                 _%tl411644412330%_))
                            (_%__match417830417831%_
                             _%e411621412269%_
                             _%hd411622412272%_
                             _%tl411623412274%_
                             _%e411624412277%_
                             _%hd411625412280%_
                             _%tl411626412282%_
                             _%e411627412285%_
                             _%hd411628412288%_
                             _%tl411629412290%_
                             _%e411630412293%_
                             _%hd411631412296%_
                             _%tl411632412298%_
                             _%e411633412301%_
                             _%hd411634412304%_
                             _%tl411635412306%_
                             _%e411636412309%_
                             _%hd411637412312%_
                             _%tl411638412314%_
                             _%e411639412317%_
                             _%hd411640412320%_
                             _%tl411641412322%_
                             _%e411642412325%_
                             _%hd411643412328%_
                             _%tl411644412330%_
                             _%e411645412333%_
                             _%hd411646412336%_
                             _%tl411647412338%_))))
                     (_%__match417652417653%_
                      (lambda (_%e411577412459%_
                               _%hd411578412462%_
                               _%tl411579412464%_
                               _%e411580412467%_
                               _%hd411581412470%_
                               _%tl411582412472%_
                               _%e411583412475%_
                               _%hd411584412478%_
                               _%tl411585412480%_
                               _%e411586412483%_
                               _%hd411587412486%_
                               _%tl411588412488%_
                               _%e411589412491%_
                               _%hd411590412494%_
                               _%tl411591412496%_
                               _%e411592412499%_
                               _%hd411593412502%_
                               _%tl411594412504%_
                               _%e411595412507%_
                               _%hd411596412510%_
                               _%tl411597412512%_
                               _%e411598412515%_
                               _%hd411599412518%_
                               _%tl411600412520%_
                               _%e411601412523%_
                               _%hd411602412526%_
                               _%tl411603412528%_
                               _%e411604412531%_
                               _%hd411605412534%_
                               _%tl411606412536%_
                               _%__splice417551417552%_
                               _%target411607412539%_
                               _%tl411609412541%_)
                        (letrec ((_%loop411610412544%_
                                  (lambda (_%hd411608412547%_
                                           _%args411614412549%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd411608412547%_))
                                        (let ((_%e411611412551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd411608412547%_))))
                                          (let ((_%lp-tl411613412556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e411611412551%_)))
                                                (_%lp-hd411612412554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e411611412551%_))))
                                            (_%loop411610412544%_
                                             _%lp-tl411613412556%_
                                             (cons _%lp-hd411612412554%_
                                                   _%args411614412549%_))))
                                        (let ((_%args411615412559%_
                                               (reverse _%args411614412549%_)))
                                          (let ((_%g411573412561%_
                                                 _%args411615412559%_)
                                                (_%g411574412562%_
                                                 _%hd411605412534%_)
                                                (_%g411575412563%_
                                                 _%hd411596412510%_)
                                                (_%g411576412564%_
                                                 _%hd411587412486%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g411576412564%_
                                                        'call-method))
                                                     (let ((__tmp418241
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self411560%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g411575412563%_
                                                        __tmp418241)))
                                                (_%__kont417549417550%_
                                                 _%g411573412561%_
                                                 _%g411574412562%_
                                                 _%g411575412563%_
                                                 _%g411576412564%_)
                                                (_%__match417840417841%_
                                                 _%e411577412459%_
                                                 _%hd411578412462%_
                                                 _%tl411579412464%_
                                                 _%e411580412467%_
                                                 _%hd411581412470%_
                                                 _%tl411582412472%_
                                                 _%e411583412475%_
                                                 _%hd411584412478%_
                                                 _%tl411585412480%_
                                                 _%e411586412483%_
                                                 _%hd411587412486%_
                                                 _%tl411588412488%_
                                                 _%e411589412491%_
                                                 _%hd411590412494%_
                                                 _%tl411591412496%_
                                                 _%e411592412499%_
                                                 _%hd411593412502%_
                                                 _%tl411594412504%_
                                                 _%e411595412507%_
                                                 _%hd411596412510%_
                                                 _%tl411597412512%_
                                                 _%e411598412515%_
                                                 _%hd411599412518%_
                                                 _%tl411600412520%_
                                                 _%e411601412523%_
                                                 _%hd411602412526%_
                                                 _%tl411603412528%_
                                                 _%e411604412531%_
                                                 _%hd411605412534%_
                                                 _%tl411606412536%_))))))))
                          (_%loop411610412544%_ _%target411607412539%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx417547417548%_))
                    (let ((_%e411577412459%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx417547417548%_))))
                      (let ((_%tl411579412464%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e411577412459%_)))
                            (_%hd411578412462%_
                             (let ()
                               (declare (not safe))
                               (##car _%e411577412459%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl411579412464%_))
                            (let ((_%e411580412467%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl411579412464%_))))
                              (let ((_%tl411582412472%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e411580412467%_)))
                                    (_%hd411581412470%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e411580412467%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd411581412470%_))
                                    (let ((_%e411583412475%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd411581412470%_))))
                                      (let ((_%tl411585412480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e411583412475%_)))
                                            (_%hd411584412478%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e411583412475%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd411584412478%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd411584412478%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl411585412480%_))
                                                    (let ((_%e411586412483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl411585412480%_))))
                                                      (let ((_%tl411588412488%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e411586412483%_)))
                    (_%hd411587412486%_
                     (let () (declare (not safe)) (##car _%e411586412483%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl411588412488%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl411582412472%_))
                        (let ((_%e411589412491%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl411582412472%_))))
                          (let ((_%tl411591412496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e411589412491%_)))
                                (_%hd411590412494%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e411589412491%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd411590412494%_))
                                (let ((_%e411592412499%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd411590412494%_))))
                                  (let ((_%tl411594412504%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e411592412499%_)))
                                        (_%hd411593412502%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e411592412499%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd411593412502%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd411593412502%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl411594412504%_))
                                                (let ((_%e411595412507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl411594412504%_))))
                                                  (let ((_%tl411597412512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e411595412507%_)))
                                                        (_%hd411596412510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e411595412507%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl411597412512%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl411591412496%_))
                                                            (let ((_%e411598412515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl411591412496%_))))
                      (let ((_%tl411600412520%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e411598412515%_)))
                            (_%hd411599412518%_
                             (let ()
                               (declare (not safe))
                               (##car _%e411598412515%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd411599412518%_))
                            (let ((_%e411601412523%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd411599412518%_))))
                              (let ((_%tl411603412528%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e411601412523%_)))
                                    (_%hd411602412526%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e411601412523%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd411602412526%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd411602412526%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl411603412528%_))
                                            (let ((_%e411604412531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl411603412528%_))))
                                              (let ((_%tl411606412536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e411604412531%_)))
                                                    (_%hd411605412534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e411604412531%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl411606412536%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl411600412520%_))
                                                        (let ((_%__splice417551417552%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl411600412520%_
                          '0))))
                  (let ((_%tl411609412541%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice417551417552%_ '1)))
                        (_%target411607412539%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice417551417552%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl411609412541%_))
                        (_%__match417652417653%_
                         _%e411577412459%_
                         _%hd411578412462%_
                         _%tl411579412464%_
                         _%e411580412467%_
                         _%hd411581412470%_
                         _%tl411582412472%_
                         _%e411583412475%_
                         _%hd411584412478%_
                         _%tl411585412480%_
                         _%e411586412483%_
                         _%hd411587412486%_
                         _%tl411588412488%_
                         _%e411589412491%_
                         _%hd411590412494%_
                         _%tl411591412496%_
                         _%e411592412499%_
                         _%hd411593412502%_
                         _%tl411594412504%_
                         _%e411595412507%_
                         _%hd411596412510%_
                         _%tl411597412512%_
                         _%e411598412515%_
                         _%hd411599412518%_
                         _%tl411600412520%_
                         _%e411601412523%_
                         _%hd411602412526%_
                         _%tl411603412528%_
                         _%e411604412531%_
                         _%hd411605412534%_
                         _%tl411606412536%_
                         _%__splice417551417552%_
                         _%target411607412539%_
                         _%tl411609412541%_)
                        (_%__match417840417841%_
                         _%e411577412459%_
                         _%hd411578412462%_
                         _%tl411579412464%_
                         _%e411580412467%_
                         _%hd411581412470%_
                         _%tl411582412472%_
                         _%e411583412475%_
                         _%hd411584412478%_
                         _%tl411585412480%_
                         _%e411586412483%_
                         _%hd411587412486%_
                         _%tl411588412488%_
                         _%e411589412491%_
                         _%hd411590412494%_
                         _%tl411591412496%_
                         _%e411592412499%_
                         _%hd411593412502%_
                         _%tl411594412504%_
                         _%e411595412507%_
                         _%hd411596412510%_
                         _%tl411597412512%_
                         _%e411598412515%_
                         _%hd411599412518%_
                         _%tl411600412520%_
                         _%e411601412523%_
                         _%hd411602412526%_
                         _%tl411603412528%_
                         _%e411604412531%_
                         _%hd411605412534%_
                         _%tl411606412536%_))))
                (_%__match417840417841%_
                 _%e411577412459%_
                 _%hd411578412462%_
                 _%tl411579412464%_
                 _%e411580412467%_
                 _%hd411581412470%_
                 _%tl411582412472%_
                 _%e411583412475%_
                 _%hd411584412478%_
                 _%tl411585412480%_
                 _%e411586412483%_
                 _%hd411587412486%_
                 _%tl411588412488%_
                 _%e411589412491%_
                 _%hd411590412494%_
                 _%tl411591412496%_
                 _%e411592412499%_
                 _%hd411593412502%_
                 _%tl411594412504%_
                 _%e411595412507%_
                 _%hd411596412510%_
                 _%tl411597412512%_
                 _%e411598412515%_
                 _%hd411599412518%_
                 _%tl411600412520%_
                 _%e411601412523%_
                 _%hd411602412526%_
                 _%tl411603412528%_
                 _%e411604412531%_
                 _%hd411605412534%_
                 _%tl411606412536%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match418044418045%_
                                                     _%e411577412459%_
                                                     _%hd411578412462%_
                                                     _%tl411579412464%_
                                                     _%e411580412467%_
                                                     _%hd411581412470%_
                                                     _%tl411582412472%_
                                                     _%e411583412475%_
                                                     _%hd411584412478%_
                                                     _%tl411585412480%_
                                                     _%e411586412483%_
                                                     _%hd411587412486%_
                                                     _%tl411588412488%_
                                                     _%e411589412491%_
                                                     _%hd411590412494%_
                                                     _%tl411591412496%_
                                                     _%e411592412499%_
                                                     _%hd411593412502%_
                                                     _%tl411594412504%_
                                                     _%e411595412507%_
                                                     _%hd411596412510%_
                                                     _%tl411597412512%_
                                                     _%e411598412515%_
                                                     _%hd411599412518%_
                                                     _%tl411600412520%_))))
                                            (_%__match418044418045%_
                                             _%e411577412459%_
                                             _%hd411578412462%_
                                             _%tl411579412464%_
                                             _%e411580412467%_
                                             _%hd411581412470%_
                                             _%tl411582412472%_
                                             _%e411583412475%_
                                             _%hd411584412478%_
                                             _%tl411585412480%_
                                             _%e411586412483%_
                                             _%hd411587412486%_
                                             _%tl411588412488%_
                                             _%e411589412491%_
                                             _%hd411590412494%_
                                             _%tl411591412496%_
                                             _%e411592412499%_
                                             _%hd411593412502%_
                                             _%tl411594412504%_
                                             _%e411595412507%_
                                             _%hd411596412510%_
                                             _%tl411597412512%_
                                             _%e411598412515%_
                                             _%hd411599412518%_
                                             _%tl411600412520%_))
                                        (_%__match417720417721%_
                                         _%e411577412459%_
                                         _%hd411578412462%_
                                         _%tl411579412464%_
                                         _%e411580412467%_
                                         _%hd411581412470%_
                                         _%tl411582412472%_
                                         _%e411583412475%_
                                         _%hd411584412478%_
                                         _%tl411585412480%_
                                         _%e411586412483%_
                                         _%hd411587412486%_
                                         _%tl411588412488%_
                                         _%e411589412491%_
                                         _%hd411590412494%_
                                         _%tl411591412496%_
                                         _%e411592412499%_
                                         _%hd411593412502%_
                                         _%tl411594412504%_
                                         _%e411595412507%_
                                         _%hd411596412510%_
                                         _%tl411597412512%_
                                         _%e411598412515%_
                                         _%hd411599412518%_
                                         _%tl411600412520%_
                                         _%e411601412523%_
                                         _%hd411602412526%_
                                         _%tl411603412528%_))
                                    (_%__match418044418045%_
                                     _%e411577412459%_
                                     _%hd411578412462%_
                                     _%tl411579412464%_
                                     _%e411580412467%_
                                     _%hd411581412470%_
                                     _%tl411582412472%_
                                     _%e411583412475%_
                                     _%hd411584412478%_
                                     _%tl411585412480%_
                                     _%e411586412483%_
                                     _%hd411587412486%_
                                     _%tl411588412488%_
                                     _%e411589412491%_
                                     _%hd411590412494%_
                                     _%tl411591412496%_
                                     _%e411592412499%_
                                     _%hd411593412502%_
                                     _%tl411594412504%_
                                     _%e411595412507%_
                                     _%hd411596412510%_
                                     _%tl411597412512%_
                                     _%e411598412515%_
                                     _%hd411599412518%_
                                     _%tl411600412520%_))))
                            (_%__match418044418045%_
                             _%e411577412459%_
                             _%hd411578412462%_
                             _%tl411579412464%_
                             _%e411580412467%_
                             _%hd411581412470%_
                             _%tl411582412472%_
                             _%e411583412475%_
                             _%hd411584412478%_
                             _%tl411585412480%_
                             _%e411586412483%_
                             _%hd411587412486%_
                             _%tl411588412488%_
                             _%e411589412491%_
                             _%hd411590412494%_
                             _%tl411591412496%_
                             _%e411592412499%_
                             _%hd411593412502%_
                             _%tl411594412504%_
                             _%e411595412507%_
                             _%hd411596412510%_
                             _%tl411597412512%_
                             _%e411598412515%_
                             _%hd411599412518%_
                             _%tl411600412520%_))))
                    (_%__match417982417983%_
                     _%e411577412459%_
                     _%hd411578412462%_
                     _%tl411579412464%_
                     _%e411580412467%_
                     _%hd411581412470%_
                     _%tl411582412472%_
                     _%e411583412475%_
                     _%hd411584412478%_
                     _%tl411585412480%_
                     _%e411586412483%_
                     _%hd411587412486%_
                     _%tl411588412488%_
                     _%e411589412491%_
                     _%hd411590412494%_
                     _%tl411591412496%_
                     _%e411592412499%_
                     _%hd411593412502%_
                     _%tl411594412504%_
                     _%e411595412507%_
                     _%hd411596412510%_
                     _%tl411597412512%_))
                (_%__kont417565417566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont417565417566%_))
                                            (_%__kont417565417566%_))
                                        (_%__kont417565417566%_))))
                                (_%__kont417565417566%_))))
                        (_%__kont417565417566%_))
                    (_%__kont417565417566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont417565417566%_))
                                                (_%__kont417565417566%_))
                                            (_%__kont417565417566%_))))
                                    (_%__kont417565417566%_))))
                            (_%__kont417565417566%_))))
                    (_%__kont417565417566%_))))))))))
