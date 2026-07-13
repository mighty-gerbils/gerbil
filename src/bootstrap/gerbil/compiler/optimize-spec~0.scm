(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1783939353)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp242266 (list gxc#::identity::t))
            (__tmp242265 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp242266
         '()
         __tmp242265
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args241063%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args241063%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp242267
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
        (__make-atomic-promise __tmp242267)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx241055%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self241058%_
                (let ((__obj242258
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj242258))
               (__tmp242268
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self241058%_ _%stx241055%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp242268
           gxc#current-compile-method
           _%self241058%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp242270 (list gxc#::false::t))
            (__tmp242269 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp242270
         '()
         __tmp242269
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args241052%_
        (apply make-instance gxc#::extract-receiver::t _%$args241052%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp242271
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
        (__make-atomic-promise __tmp242271)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx241044%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self241047%_
                (let ((__obj242260
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj242260))
               (__tmp242272
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self241047%_ _%stx241044%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp242272
           gxc#current-compile-method
           _%self241047%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp242274 (list gxc#::void::t))
            (__tmp242273 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp242274
         '(receiver methods slots)
         __tmp242273
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args241041%_
        (apply make-instance gxc#::collect-object-refs::t _%$args241041%_)))
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
      (let ((__tmp242275
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
        (__make-atomic-promise __tmp242275)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords241010%_
               _%$%receiver241005241011%_
               _%$%methods241006241012%_
               _%$%slots241007241013%_
               _%stx241014%_)
        (let* ((_%receiver241017%_
                (if (eq? _%$%receiver241005241011%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver241005241011%_))
               (_%methods241019%_
                (if (eq? _%$%methods241006241012%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods241006241012%_))
               (_%slots241021%_
                (if (eq? _%$%slots241007241013%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots241007241013%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self241023%_
                  (let ((__obj242262
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
                       __obj242262
                       _%receiver241017%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj242262
                       _%methods241019%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj242262
                       _%slots241021%_
                       '3
                       '#f
                       '#f))
                    __obj242262))
                 (__tmp242276
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self241023%_ _%stx241014%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp242276
             gxc#current-compile-method
             _%self241023%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords241030%_ . _%args241031%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords241030%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords241030%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords241030%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords241030%_
                  'slots:
                  absent-value))
               _%args241031%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args241008241037%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args241008241037%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp242278 (list gxc#::basic-xform-expression::t))
            (__tmp242277 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp242278
         '(receiver klass methods slots)
         __tmp242277
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args241001%_
        (apply make-instance gxc#::subst-object-refs::t _%$args241001%_)))
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
      (let ((__tmp242279
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
        (__make-atomic-promise __tmp242279)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords240967%_
               _%$%receiver240961240968%_
               _%$%klass240962240969%_
               _%$%methods240963240970%_
               _%$%slots240964240971%_
               _%stx240972%_)
        (let* ((_%receiver240975%_
                (if (eq? _%$%receiver240961240968%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver240961240968%_))
               (_%klass240977%_
                (if (eq? _%$%klass240962240969%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass240962240969%_))
               (_%methods240979%_
                (if (eq? _%$%methods240963240970%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods240963240970%_))
               (_%slots240981%_
                (if (eq? _%$%slots240964240971%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots240964240971%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self240983%_
                  (let ((__obj242264
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
                       __obj242264
                       _%receiver240975%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj242264
                       _%klass240977%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj242264
                       _%methods240979%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj242264
                       _%slots240981%_
                       '4
                       '#f
                       '#f))
                    __obj242264))
                 (__tmp242280
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self240983%_ _%stx240972%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp242280
             gxc#current-compile-method
             _%self240983%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords240990%_ . _%args240991%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords240990%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240990%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240990%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240990%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords240990%_
                  'slots:
                  absent-value))
               _%args240991%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args240965240997%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args240965240997%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self238092%_ _%stx238093%_)
        (letrec ((_%generate-method-bind238095%_
                  (lambda (_%$klass240953%_
                           _%$method-table240954%_
                           _%id240955%_
                           _%$id240956%_)
                    (let ((_%$tmp240958%_
                           (let ((__tmp242281
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp242281))))
                      (cons (cons _%$id240956%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp240958%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table240954%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id240955%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp240958%_ '()))
                    (cons (cons '%#ref (cons _%$tmp240958%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id240955%_
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
                 (_%generate-slot-bind238096%_
                  (lambda (_%$klass240947%_ _%id240948%_ _%$id240949%_)
                    (let ((_%$tmp240951%_
                           (let ((__tmp242282
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp242282))))
                      (cons (cons _%$id240949%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp240951%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass240947%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id240948%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp240951%_ '()))
                        (cons (cons '%#ref (cons _%$tmp240951%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id240948%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl238097%_
                  (lambda (_%$klass240941%_
                           _%$method-table240942%_
                           _%methods-bind240943%_
                           _%slots-bind240944%_
                           _%specializer-impl240945%_)
                    (let ((__tmp242283
                           (cons '%#lambda
                                 (cons (cons _%$klass240941%_
                                             (cons _%$method-table240942%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind240944%_
                                                            _%methods-bind240943%_))
                                                         (cons _%specializer-impl240945%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp242283 _%stx238093%_))))
                 (_%generate-specializer-def238098%_
                  (lambda (_%id240937%_
                           _%specializer-id240938%_
                           _%specializer-impl240939%_)
                    (let ((__tmp242284
                           (cons '%#begin
                                 (cons _%stx238093%_
                                       (cons (let ((__tmp242285
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id240938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl240939%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp242285
                                                _%stx238093%_))
                                             (cons (let ((__tmp242286
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id240937%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id240938%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp242286
                                                      _%stx238093%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp242284 _%stx238093%_)))))
          (let* ((_%__stx241152241153%_ _%stx238093%_)
                 (_%$%g238101238121%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx241152241153%_)))))
            (let ((_%__kont241154241155%_
                   (lambda (_%$%g238103238165%_ _%$%g238104238166%_)
                     (let ((_%method-calls238185%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs238186%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty238187%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?238189%_
                                 (lambda ()
                                   (if (let ((__tmp242287
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls238185%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp242287))
                                       (let ((__tmp242288
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs238186%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp242288))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g238103238165%_))
                             (let* ((_%__stx241066241067%_ _%$%g238103238165%_)
                                    (_%$%g238573238591%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx241066241067%_)))))
                               (let ((_%__kont241068241069%_
                                      (lambda (_%$%g238575238627%_
                                               _%$%g238576238628%_
                                               _%$%g238577238629%_)
                                        (let ((_%receiver238649%_
                                               (let ((_%$e238646%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g238575238627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e238646%_
                                                     _%$e238646%_
                                                     _%$%g238577238629%_))))
                                          (for-each
                                           (lambda (_%$%g238650238652%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver238649%_
                                              _%method-calls238185%_
                                              _%slot-refs238186%_
                                              _%$%g238650238652%_))
                                           _%$%g238575238627%_)
                                          (if (_%no-specializer?238189%_)
                                              _%stx238093%_
                                              (let* ((_%specializer-id238661%_
                                                      (let* ((_%id238655%_
                                                              (let ((__tmp242289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g238104238166%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp242289 '"::specialize")))
                     (_%specializer-id238658%_
                      (let ((__tmp242290
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx238093%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id238655%_ __tmp242290))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id238658%_))
                _%specializer-id238658%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass238663%_
                                                      (let ((__tmp242291
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp242291)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table238665%_
                                                      (let ((__tmp242292
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp242292)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods238667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls238185%_)))
                                                     (_%$methods238671%_
                                                      (let ((__tmp242293
                                                             (lambda (_%id238669%_)
                                                               (let ((__tmp242294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id238669%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp242294)))))
                (declare (not safe))
                (##map __tmp242293 _%methods238667%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_238680%_
                                                      (let ((__tmp242295
                                                             (lambda (_%$%g238672238675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238673238677%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls238185%_
                          _%$%g238672238675%_
                          _%$%g238673238677%_)))))
                (declare (not safe))
                (##for-each __tmp242295 _%methods238667%_ _%$methods238671%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind238690%_
                                                      (let ((__tmp242296
                                                             (lambda (_%$%g238682238685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238683238687%_)
                       (_%generate-method-bind238095%_
                        _%$klass238663%_
                        _%$method-table238665%_
                        _%$%g238682238685%_
                        _%$%g238683238687%_))))
                (declare (not safe))
                (##map __tmp242296 _%methods238667%_ _%$methods238671%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots238692%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs238186%_)))
                                                     (_%$slots238696%_
                                                      (let ((__tmp242297
                                                             (lambda (_%id238694%_)
                                                               (let ((__tmp242298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id238694%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp242298)))))
                (declare (not safe))
                (##map __tmp242297 _%slots238692%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_238705%_
                                                      (let ((__tmp242299
                                                             (lambda (_%$%g238697238700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238698238702%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs238186%_
                          _%$%g238697238700%_
                          _%$%g238698238702%_)))))
                (declare (not safe))
                (##for-each __tmp242299 _%slots238692%_ _%$slots238696%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind238714%_
                                                      (let ((__tmp242300
                                                             (lambda (_%$%g238706238709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g238707238711%_)
                       (_%generate-slot-bind238096%_
                        _%$klass238663%_
                        _%$%g238706238709%_
                        _%$%g238707238711%_))))
                (declare (not safe))
                (##map __tmp242300 _%slots238692%_ _%$slots238696%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body238720%_
                                                      (map (lambda (_%$%g238715238717%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver238649%_
                                                              _%$klass238663%_
                                                              _%method-calls238185%_
                                                              _%slot-refs238186%_
                                                              _%$%g238715238717%_))
                                                           _%$%g238575238627%_))
                                                     (_%specializer-impl238722%_
                                                      (let ((__tmp242301
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g238577238629%_ _%$%g238576238628%_)
                                 _%specializer-body238720%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp242301 _%stx238093%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl238724%_
                                                      (_%generate-specializer-impl238097%_
                                                       _%$klass238663%_
                                                       _%$method-table238665%_
                                                       _%methods-bind238690%_
                                                       _%slots-bind238714%_
                                                       _%specializer-impl238722%_)))
                                                (let ((__tmp242303
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g238104238166%_)))
                                                      (__tmp242302
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id238661%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp242303
                                                   '" => "
                                                   __tmp242302))
                                                (_%generate-specializer-def238098%_
                                                 _%$%g238104238166%_
                                                 _%specializer-id238661%_
                                                 _%specializer-impl238724%_))))))
                                     (_%__kont241070241071%_
                                      (lambda () _%stx238093%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx241066241067%_))
                                     (let ((_%$%e238578238603%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx241066241067%_))))
                                       (let ((_%$%tl238580238608%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e238578238603%_)))
                                             (_%$%hd238579238606%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e238578238603%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl238580238608%_))
                                             (let ((_%$%e238581238611%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl238580238608%_))))
                                               (let ((_%$%tl238583238616%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e238581238611%_)))
                                                     (_%$%hd238582238614%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e238581238611%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd238582238614%_))
                                                     (let ((_%$%e238584238619%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd238582238614%_))))
                                                       (let ((_%$%tl238586238624%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e238584238619%_)))
                     (_%$%hd238585238622%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e238584238619%_))))
                 (_%__kont241068241069%_
                  _%$%tl238583238616%_
                  _%$%tl238586238624%_
                  _%$%hd238585238622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont241070241071%_))))
                                             (_%__kont241070241071%_))))
                                     (_%__kont241070241071%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g238103238165%_))
                                 (let* ((_%$%g238731238750%_
                                         (lambda (_%$%g238732238747%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g238732238747%_))))
                                        (_%$%g238730239046%_
                                         (lambda (_%$%g238732238753%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g238732238753%_))
                                               (let ((_%$%e238734238755%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g238732238753%_))))
                                                 (let ((_%$%hd238735238758%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e238734238755%_)))
                                                       (_%$%tl238736238760%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e238734238755%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl238736238760%_))
                                                       (let ((_g242304_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl238736238760%_ '0))))
                 (begin
                   (let ((_g242305_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g242304_)
                                (##values-length _g242304_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g242305_ 2)))
                         (error "Context expects 2 values" _g242305_)))
                   (let ((_%$%target238737238763%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g242304_ 0)))
                         (_%$%tl238739238765%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g242304_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl238739238765%_))
                         (letrec ((_%$%loop238740238768%_
                                   (lambda (_%$%hd238738238771%_
                                            _%$%clause238744238773%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd238738238771%_))
                                         (let ((_%$%e238741238775%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd238738238771%_))))
                                           (let ((_%$%lp-hd238742238778%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e238741238775%_)))
                                                 (_%$%lp-tl238743238780%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e238741238775%_))))
                                             (_%$%loop238740238768%_
                                              _%$%lp-tl238743238780%_
                                              (cons _%$%lp-hd238742238778%_
                                                    _%$%clause238744238773%_))))
                                         (let ((_%$%clause238745238783%_
                                                (reverse _%$%clause238744238773%_)))
                                           (for-each
                                            (lambda (_%clause238799%_)
                                              (let* ((_%__stx241092241093%_
                                                      _%clause238799%_)
                                                     (_%$%g238802238817%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx241092241093%_)))))
                                                (let ((_%__kont241094241095%_
                                                       (lambda (_%$%g238804238845%_
                                                                _%$%g238805238846%_
                                                                _%$%g238806238847%_)
                                                         (let ((_%receiver238866%_
                                                                (let ((_%$e238863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g238804238845%_))))
                          (if _%$e238863%_ _%$e238863%_ _%$%g238806238847%_))))
                   (for-each
                    (lambda (_%$%g238867238869%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver238866%_
                       _%method-calls238185%_
                       _%slot-refs238186%_
                       _%$%g238867238869%_))
                    _%$%g238804238845%_))))
              (_%__kont241096241097%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx241092241093%_))
                                                      (let ((_%$%e238807238829%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx241092241093%_))))
                (let ((_%$%tl238809238834%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e238807238829%_)))
                      (_%$%hd238808238832%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e238807238829%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd238808238832%_))
                      (let ((_%$%e238810238837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd238808238832%_))))
                        (let ((_%$%tl238812238842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e238810238837%_)))
                              (_%$%hd238811238840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e238810238837%_))))
                          (_%__kont241094241095%_
                           _%$%tl238809238834%_
                           _%$%tl238812238842%_
                           _%$%hd238811238840%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp242306
                                                   (lambda (_%$%g238874238877%_
                                                            _%$%g238875238879%_)
                                                     (cons _%$%g238874238877%_
                                                           _%$%g238875238879%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp242306
                                               '()
                                               _%$%clause238745238783%_)))
                                           (if (_%no-specializer?238189%_)
                                               _%stx238093%_
                                               (let* ((_%specializer-id238888%_
                                                       (let* ((_%id238882%_
                                                               (let ((__tmp242307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g238104238166%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp242307 '"::specialize")))
                      (_%specializer-id238885%_
                       (let ((__tmp242308
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx238093%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id238882%_ __tmp242308))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id238885%_))
                 _%specializer-id238885%_))
              (_%$klass238890%_
               (let ((__tmp242309
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp242309)))
              (_%$method-table238892%_
               (let ((__tmp242310
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp242310)))
              (_%methods238894%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls238185%_)))
              (_%$methods238898%_
               (let ((__tmp242311
                      (lambda (_%id238896%_)
                        (let ((__tmp242312 (gensym _%id238896%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp242312)))))
                 (declare (not safe))
                 (##map __tmp242311 _%methods238894%_)))
              (_%_238907%_
               (let ((__tmp242313
                      (lambda (_%$%g238899238902%_ _%$%g238900238904%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls238185%_
                           _%$%g238899238902%_
                           _%$%g238900238904%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp242313
                  _%methods238894%_
                  _%$methods238898%_)))
              (_%methods-bind238917%_
               (let ((__tmp242314
                      (lambda (_%$%g238909238912%_ _%$%g238910238914%_)
                        (_%generate-method-bind238095%_
                         _%$klass238890%_
                         _%$method-table238892%_
                         _%$%g238909238912%_
                         _%$%g238910238914%_))))
                 (declare (not safe))
                 (##map __tmp242314 _%methods238894%_ _%$methods238898%_)))
              (_%slots238919%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs238186%_)))
              (_%$slots238923%_
               (let ((__tmp242315
                      (lambda (_%id238921%_)
                        (let ((__tmp242316 (gensym _%id238921%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp242316)))))
                 (declare (not safe))
                 (##map __tmp242315 _%slots238919%_)))
              (_%_238932%_
               (let ((__tmp242317
                      (lambda (_%$%g238924238927%_ _%$%g238925238929%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs238186%_
                           _%$%g238924238927%_
                           _%$%g238925238929%_)))))
                 (declare (not safe))
                 (##for-each __tmp242317 _%slots238919%_ _%$slots238923%_)))
              (_%slots-bind238941%_
               (let ((__tmp242318
                      (lambda (_%$%g238933238936%_ _%$%g238934238938%_)
                        (_%generate-slot-bind238096%_
                         _%$klass238890%_
                         _%$%g238933238936%_
                         _%$%g238934238938%_))))
                 (declare (not safe))
                 (##map __tmp242318 _%slots238919%_ _%$slots238923%_)))
              (_%specializer-clauses239039%_
               (map (lambda (_%clause238943%_)
                      (let* ((_%__stx241112241113%_ _%clause238943%_)
                             (_%$%g238946238961%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx241112241113%_)))))
                        (let ((_%__kont241114241115%_
                               (lambda (_%$%g238948238989%_
                                        _%$%g238949238990%_
                                        _%$%g238950238991%_)
                                 (let* ((_%receiver239020%_
                                         (let ((_%$e239017%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g238948238989%_))))
                                           (if _%$e239017%_
                                               _%$e239017%_
                                               _%$%g238950238991%_)))
                                        (_%body239026%_
                                         (map (lambda (_%$%g239021239023%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver239020%_
                                                 _%$klass238890%_
                                                 _%method-calls238185%_
                                                 _%slot-refs238186%_
                                                 _%$%g239021239023%_))
                                              _%$%g238948238989%_)))
                                   (cons (cons _%$%g238950238991%_
                                               _%$%g238949238990%_)
                                         _%body239026%_))))
                              (_%__kont241116241117%_
                               (lambda () _%clause238943%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx241112241113%_))
                              (let ((_%$%e238951238973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx241112241113%_))))
                                (let ((_%$%tl238953238978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e238951238973%_)))
                                      (_%$%hd238952238976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e238951238973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd238952238976%_))
                                      (let ((_%$%e238954238981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd238952238976%_))))
                                        (let ((_%$%tl238956238986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e238954238981%_)))
                                              (_%$%hd238955238984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e238954238981%_))))
                                          (_%__kont241114241115%_
                                           _%$%tl238953238978%_
                                           _%$%tl238956238986%_
                                           _%$%hd238955238984%_)))
                                      (_%__kont241116241117%_))))
                              (_%__kont241116241117%_)))))
                    (let ((__tmp242319
                           (lambda (_%$%g239031239034%_ _%$%g239032239036%_)
                             (cons _%$%g239031239034%_ _%$%g239032239036%_))))
                      (declare (not safe))
                      (foldr__0 __tmp242319 '() _%$%clause238745238783%_))))
              (_%specializer-impl239041%_
               (let ((__tmp242320
                      (cons '%#case-lambda _%specializer-clauses239039%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp242320 _%stx238093%_)))
              (_%specializer-impl239043%_
               (_%generate-specializer-impl238097%_
                _%$klass238890%_
                _%$method-table238892%_
                _%methods-bind238917%_
                _%slots-bind238941%_
                _%specializer-impl239041%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp242322
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g238104238166%_)))
                                                       (__tmp242321
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id238888%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp242322
                                                    '" => "
                                                    __tmp242321))
                                                 (_%generate-specializer-def238098%_
                                                  _%$%g238104238166%_
                                                  _%specializer-id238888%_
                                                  _%specializer-impl239043%_))))))))
                           (_%$%loop238740238768%_
                            _%$%target238737238763%_
                            '()))
                         (_%$%g238731238750%_ _%$%g238732238753%_)))))
               (_%$%g238731238750%_ _%$%g238732238753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g238731238750%_
                                                _%$%g238732238753%_)))))
                                   (_%$%g238730239046%_ _%$%g238103238165%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g238103238165%_))
                                     (let* ((_%$%g239050239080%_
                                             (lambda (_%$%g239051239077%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g239051239077%_))))
                                            (_%$%g239049239707%_
                                             (lambda (_%$%g239051239083%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g239051239083%_))
                                                   (let ((_%$%e239055239085%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g239051239083%_))))
                                                     (let ((_%$%hd239056239088%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e239055239085%_)))
                                                           (_%$%tl239057239090%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e239055239085%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl239057239090%_))
                                                           (let ((_%$%e239058239093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl239057239090%_))))
                     (let ((_%$%hd239059239096%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e239058239093%_)))
                           (_%$%tl239060239098%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e239058239093%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd239059239096%_))
                           (let ((_%$%e239061239101%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd239059239096%_))))
                             (let ((_%$%hd239062239104%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239061239101%_)))
                                   (_%$%tl239063239106%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239061239101%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd239062239104%_))
                                   (let ((_%$%e239064239109%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd239062239104%_))))
                                     (let ((_%$%hd239065239112%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239064239109%_)))
                                           (_%$%tl239066239114%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239064239109%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd239065239112%_))
                                           (let ((_%$%e239067239117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd239065239112%_))))
                                             (let ((_%$%hd239068239120%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e239067239117%_)))
                                                   (_%$%tl239069239122%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e239067239117%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl239069239122%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl239066239114%_))
                                                       (let ((_%$%e239070239125%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl239066239114%_))))
                 (let ((_%$%hd239071239128%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e239070239125%_)))
                       (_%$%tl239072239130%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e239070239125%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl239072239130%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl239063239106%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl239060239098%_))
                               (let ((_%$%e239073239133%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl239060239098%_))))
                                 (let ((_%$%hd239074239136%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e239073239133%_)))
                                       (_%$%tl239075239138%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e239073239133%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl239075239138%_))
                                       (let ()
                                         (let* ((_%$%g239167239185%_
                                                 (lambda (_%$%g239168239182%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g239168239182%_))))
                                                (_%$%g239166239241%_
                                                 (lambda (_%$%g239168239188%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g239168239188%_))
                                                       (let ((_%$%e239172239190%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g239168239188%_))))
                 (let ((_%$%hd239173239193%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e239172239190%_)))
                       (_%$%tl239174239195%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e239172239190%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl239174239195%_))
                       (let ((_%$%e239175239198%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl239174239195%_))))
                         (let ((_%$%hd239176239201%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e239175239198%_)))
                               (_%$%tl239177239203%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e239175239198%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd239176239201%_))
                               (let ((_%$%e239178239206%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd239176239201%_))))
                                 (let ((_%$%hd239179239209%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e239178239206%_)))
                                       (_%$%tl239180239211%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e239178239206%_))))
                                   (let ((_%receiver239235%_
                                          (let ((_%$e239232%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl239177239203%_))))
                                            (if _%$e239232%_
                                                _%$e239232%_
                                                _%$%hd239179239209%_))))
                                     (for-each
                                      (lambda (_%$%g239236239238%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver239235%_
                                         _%method-calls238185%_
                                         _%slot-refs238186%_
                                         _%$%g239236239238%_))
                                      _%$%tl239177239203%_))))
                               (_%$%g239167239185%_ _%$%g239168239188%_))))
                       (_%$%g239167239185%_ _%$%g239168239188%_))))
               (_%$%g239167239185%_ _%$%g239168239188%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g239166239241%_
                                            _%$%hd239071239128%_))
                                         (let* ((_%$%g239244239263%_
                                                 (lambda (_%$%g239245239260%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g239245239260%_))))
                                                (_%$%g239243239385%_
                                                 (lambda (_%$%g239245239266%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g239245239266%_))
                                                       (let ((_%$%e239247239268%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g239245239266%_))))
                 (let ((_%$%hd239248239271%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e239247239268%_)))
                       (_%$%tl239249239273%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e239247239268%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl239249239273%_))
                       (let ((_g242323_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl239249239273%_
                                 '0))))
                         (begin
                           (let ((_g242324_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g242323_)
                                        (##values-length _g242323_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g242324_ 2)))
                                 (error "Context expects 2 values" _g242324_)))
                           (let ((_%$%target239250239276%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g242323_ 0)))
                                 (_%$%tl239252239278%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g242323_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl239252239278%_))
                                 (letrec ((_%$%loop239253239281%_
                                           (lambda (_%$%hd239251239284%_
                                                    _%$%clause239257239286%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd239251239284%_))
                                                 (let ((_%$%e239254239288%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd239251239284%_))))
                                                   (let ((_%$%lp-hd239255239291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e239254239288%_)))
                                                         (_%$%lp-tl239256239293%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e239254239288%_))))
                                                     (_%$%loop239253239281%_
                                                      _%$%lp-tl239256239293%_
                                                      (cons _%$%lp-hd239255239291%_
                                                            _%$%clause239257239286%_))))
                                                 (let ((_%$%clause239258239296%_
                                                        (reverse _%$%clause239257239286%_)))
                                                   (for-each
                                                    (lambda (_%clause239311%_)
                                                      (let* ((_%$%g239313239328%_
                                                              (lambda (_%$%g239314239325%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g239314239325%_))))
                     (_%$%g239312239375%_
                      (lambda (_%$%g239314239331%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g239314239331%_))
                            (let ((_%$%e239318239333%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g239314239331%_))))
                              (let ((_%$%hd239319239336%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e239318239333%_)))
                                    (_%$%tl239320239338%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e239318239333%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd239319239336%_))
                                    (let ((_%$%e239321239341%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd239319239336%_))))
                                      (let ((_%$%hd239322239344%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e239321239341%_)))
                                            (_%$%tl239323239346%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e239321239341%_))))
                                        (let ((_%receiver239369%_
                                               (let ((_%$e239366%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl239320239338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e239366%_
                                                     _%$e239366%_
                                                     _%$%hd239322239344%_))))
                                          (for-each
                                           (lambda (_%$%g239370239372%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver239369%_
                                              _%method-calls238185%_
                                              _%slot-refs238186%_
                                              _%$%g239370239372%_))
                                           _%$%tl239320239338%_))))
                                    (_%$%g239313239328%_
                                     _%$%g239314239331%_))))
                            (_%$%g239313239328%_ _%$%g239314239331%_)))))
                (_%$%g239312239375%_ _%clause239311%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp242325
                                                           (lambda (_%$%g239377239380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g239378239382%_)
                     (cons _%$%g239377239380%_ _%$%g239378239382%_))))
              (declare (not safe))
              (foldr__0 __tmp242325 '() _%$%clause239258239296%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop239253239281%_
                                    _%$%target239250239276%_
                                    '()))
                                 (_%$%g239244239263%_ _%$%g239245239266%_)))))
                       (_%$%g239244239263%_ _%$%g239245239266%_))))
               (_%$%g239244239263%_ _%$%g239245239266%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g239243239385%_
                                            _%$%hd239074239136%_))
                                         (if (_%no-specializer?238189%_)
                                             _%stx238093%_
                                             (let* ((_%specializer-id239394%_
                                                     (let* ((_%id239388%_
                                                             (let ((__tmp242326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g238104238166%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp242326 '"::specialize")))
                    (_%specializer-id239391%_
                     (let ((__tmp242327
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx238093%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id239388%_ __tmp242327))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id239391%_))
               _%specializer-id239391%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass239396%_
                                                     (let ((__tmp242328
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp242328)))
                                                    (_%$method-table239398%_
                                                     (let ((__tmp242329
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp242329)))
                                                    (_%methods239400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls238185%_)))
                                                    (_%$methods239404%_
                                                     (let ((__tmp242330
                                                            (lambda (_%id239402%_)
                                                              (let ((__tmp242331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id239402%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp242331)))))
               (declare (not safe))
               (##map __tmp242330 _%methods239400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_239413%_
                                                     (let ((__tmp242332
                                                            (lambda (_%$%g239405239408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239406239410%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls238185%_
                         _%$%g239405239408%_
                         _%$%g239406239410%_)))))
               (declare (not safe))
               (##for-each __tmp242332 _%methods239400%_ _%$methods239404%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind239423%_
                                                     (let ((__tmp242333
                                                            (lambda (_%$%g239415239418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239416239420%_)
                      (_%generate-method-bind238095%_
                       _%$klass239396%_
                       _%$method-table239398%_
                       _%$%g239415239418%_
                       _%$%g239416239420%_))))
               (declare (not safe))
               (##map __tmp242333 _%methods239400%_ _%$methods239404%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots239425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs238186%_)))
                                                    (_%$slots239429%_
                                                     (let ((__tmp242334
                                                            (lambda (_%id239427%_)
                                                              (let ((__tmp242335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id239427%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp242335)))))
               (declare (not safe))
               (##map __tmp242334 _%slots239425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_239438%_
                                                     (let ((__tmp242336
                                                            (lambda (_%$%g239430239433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239431239435%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs238186%_
                         _%$%g239430239433%_
                         _%$%g239431239435%_)))))
               (declare (not safe))
               (##for-each __tmp242336 _%slots239425%_ _%$slots239429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind239447%_
                                                     (let ((__tmp242337
                                                            (lambda (_%$%g239439239442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g239440239444%_)
                      (_%generate-slot-bind238096%_
                       _%$klass239396%_
                       _%$%g239439239442%_
                       _%$%g239440239444%_))))
               (declare (not safe))
               (##map __tmp242337 _%slots239425%_ _%$slots239429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr239539%_
                                                     (let* ((_%$%g239449239467%_
                                                             (lambda (_%$%g239450239464%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g239450239464%_))))
                    (_%$%g239448239536%_
                     (lambda (_%$%g239450239470%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g239450239470%_))
                           (let ((_%$%e239454239472%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g239450239470%_))))
                             (let ((_%$%hd239455239475%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239454239472%_)))
                                   (_%$%tl239456239477%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239454239472%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl239456239477%_))
                                   (let ((_%$%e239457239480%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl239456239477%_))))
                                     (let ((_%$%hd239458239483%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239457239480%_)))
                                           (_%$%tl239459239485%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239457239480%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd239458239483%_))
                                           (let ((_%$%e239460239488%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd239458239483%_))))
                                             (let ((_%$%hd239461239491%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e239460239488%_)))
                                                   (_%$%tl239462239493%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e239460239488%_))))
                                               (let* ((_%receiver239527%_
                                                       (let ((_%$e239524%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl239459239485%_))))
                 (if _%$e239524%_ _%$e239524%_ _%$%hd239461239491%_)))
              (_%body239533%_
               (map (lambda (_%$%g239528239530%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver239527%_
                       _%$klass239396%_
                       _%method-calls238185%_
                       _%slot-refs238186%_
                       _%$%g239528239530%_))
                    _%$%tl239459239485%_))
              (__tmp242338
               (cons '%#lambda
                     (cons (cons _%$%hd239461239491%_ _%$%tl239462239493%_)
                           _%body239533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp242338
                                                  _%$%hd239071239128%_))))
                                           (_%$%g239449239467%_
                                            _%$%g239450239470%_))))
                                   (_%$%g239449239467%_ _%$%g239450239470%_))))
                           (_%$%g239449239467%_ _%$%g239450239470%_)))))
               (_%$%g239448239536%_ _%$%hd239071239128%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr239700%_
                                                     (let* ((_%$%g239541239560%_
                                                             (lambda (_%$%g239542239557%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g239542239557%_))))
                    (_%$%g239540239697%_
                     (lambda (_%$%g239542239563%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g239542239563%_))
                           (let ((_%$%e239544239565%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g239542239563%_))))
                             (let ((_%$%hd239545239568%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239544239565%_)))
                                   (_%$%tl239546239570%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239544239565%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl239546239570%_))
                                   (let ((_g242339_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl239546239570%_
                                             '0))))
                                     (begin
                                       (let ((_g242340_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g242339_)
                                                    (##values-length _g242339_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g242340_ 2)))
                                             (error "Context expects 2 values"
                                                    _g242340_)))
                                       (let ((_%$%target239547239573%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g242339_ 0)))
                                             (_%$%tl239549239575%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g242339_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl239549239575%_))
                                             (letrec ((_%$%loop239550239578%_
                                                       (lambda (_%$%hd239548239581%_
                                                                _%$%clause239554239583%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd239548239581%_))
                     (let ((_%$%e239551239585%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd239548239581%_))))
                       (let ((_%$%lp-hd239552239588%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e239551239585%_)))
                             (_%$%lp-tl239553239590%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e239551239585%_))))
                         (_%$%loop239550239578%_
                          _%$%lp-tl239553239590%_
                          (cons _%$%lp-hd239552239588%_
                                _%$%clause239554239583%_))))
                     (let* ((_%$%clause239555239593%_
                             (reverse _%$%clause239554239583%_))
                            (_%clauses239695%_
                             (map (lambda (_%clause239609%_)
                                    (let* ((_%__stx241132241133%_
                                            _%clause239609%_)
                                           (_%$%g239612239627%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx241132241133%_)))))
                                      (let ((_%__kont241134241135%_
                                             (lambda (_%$%g239614239655%_
                                                      _%$%g239615239656%_
                                                      _%$%g239616239657%_)
                                               (let* ((_%receiver239676%_
                                                       (let ((_%$e239673%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g239614239655%_))))
                 (if _%$e239673%_ _%$e239673%_ _%$%g239616239657%_)))
              (_%body239682%_
               (map (lambda (_%$%g239677239679%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver239676%_
                       _%$klass239396%_
                       _%method-calls238185%_
                       _%slot-refs238186%_
                       _%$%g239677239679%_))
                    _%$%g239614239655%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g239616239657%_
                                                             _%$%g239615239656%_)
                                                       _%body239682%_))))
                                            (_%__kont241136241137%_
                                             (lambda () _%clause239609%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx241132241133%_))
                                            (let ((_%$%e239617239639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx241132241133%_))))
                                              (let ((_%$%tl239619239644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e239617239639%_)))
                                                    (_%$%hd239618239642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e239617239639%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd239618239642%_))
                                                    (let ((_%$%e239620239647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd239618239642%_))))
                                                      (let ((_%$%tl239622239652%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e239620239647%_)))
                    (_%$%hd239621239650%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e239620239647%_))))
                (_%__kont241134241135%_
                 _%$%tl239619239644%_
                 _%$%tl239622239652%_
                 _%$%hd239621239650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont241136241137%_))))
                                            (_%__kont241136241137%_)))))
                                  (let ((__tmp242341
                                         (lambda (_%$%g239687239690%_
                                                  _%$%g239688239692%_)
                                           (cons _%$%g239687239690%_
                                                 _%$%g239688239692%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp242341
                                     '()
                                     _%$%clause239555239593%_))))
                            (__tmp242342
                             (cons '%#case-lambda _%clauses239695%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp242342
                        _%$%hd239074239136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop239550239578%_
                                                _%$%target239547239573%_
                                                '()))
                                             (_%$%g239541239560%_
                                              _%$%g239542239563%_)))))
                                   (_%$%g239541239560%_ _%$%g239542239563%_))))
                           (_%$%g239541239560%_ _%$%g239542239563%_)))))
               (_%$%g239540239697%_ _%$%hd239074239136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl239702%_
                                                     (let ((__tmp242343
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd239068239120%_ '())
                                            (cons _%specializer-lambda-expr239539%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr239700%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp242343 _%stx238093%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl239704%_
                                                     (_%generate-specializer-impl238097%_
                                                      _%$klass239396%_
                                                      _%$method-table239398%_
                                                      _%methods-bind239423%_
                                                      _%slots-bind239447%_
                                                      _%specializer-impl239702%_)))
                                               (let ((__tmp242345
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g238104238166%_)))
                                                     (__tmp242344
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id239394%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp242345
                                                  '" => "
                                                  __tmp242344))
                                               (_%generate-specializer-def238098%_
                                                _%$%g238104238166%_
                                                _%specializer-id239394%_
                                                _%specializer-impl239704%_))))
                                       (_%$%g239050239080%_
                                        _%$%g239051239083%_))))
                               (_%$%g239050239080%_ _%$%g239051239083%_))
                           (_%$%g239050239080%_ _%$%g239051239083%_))
                       (_%$%g239050239080%_ _%$%g239051239083%_))))
               (_%$%g239050239080%_ _%$%g239051239083%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g239050239080%_
                                                    _%$%g239051239083%_))))
                                           (_%$%g239050239080%_
                                            _%$%g239051239083%_))))
                                   (_%$%g239050239080%_ _%$%g239051239083%_))))
                           (_%$%g239050239080%_ _%$%g239051239083%_))))
                   (_%$%g239050239080%_ _%$%g239051239083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g239050239080%_
                                                    _%$%g239051239083%_)))))
                                       (_%$%g239049239707%_
                                        _%$%g238103238165%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g238103238165%_))
                                         (let* ((_%$%g239711239764%_
                                                 (lambda (_%$%g239712239761%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g239712239761%_))))
                                                (_%$%g239710240929%_
                                                 (lambda (_%$%g239712239767%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g239712239767%_))
                                                       (let ((_%$%e239718239769%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g239712239767%_))))
                 (let ((_%$%hd239719239772%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e239718239769%_)))
                       (_%$%tl239720239774%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e239718239769%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd239719239772%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd239719239772%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl239720239774%_))
                               (let ((_%$%e239721239777%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl239720239774%_))))
                                 (let ((_%$%hd239722239780%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e239721239777%_)))
                                       (_%$%tl239723239782%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e239721239777%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd239722239780%_))
                                       (let ((_%$%e239724239785%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd239722239780%_))))
                                         (let ((_%$%hd239725239788%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e239724239785%_)))
                                               (_%$%tl239726239790%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e239724239785%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd239725239788%_))
                                               (let ((_%$%e239727239793%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd239725239788%_))))
                                                 (let ((_%$%hd239728239796%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e239727239793%_)))
                                                       (_%$%tl239729239798%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e239727239793%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd239728239796%_))
                                                       (let ((_%$%e239730239801%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd239728239796%_))))
                 (let ((_%$%hd239731239804%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e239730239801%_)))
                       (_%$%tl239732239806%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e239730239801%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl239732239806%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl239729239798%_))
                           (let ((_%$%e239733239809%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl239729239798%_))))
                             (let ((_%$%hd239734239812%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239733239809%_)))
                                   (_%$%tl239735239814%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239733239809%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd239734239812%_))
                                   (let ((_%$%e239736239817%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd239734239812%_))))
                                     (let ((_%$%hd239737239820%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239736239817%_)))
                                           (_%$%tl239738239822%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239736239817%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd239737239820%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd239737239820%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl239738239822%_))
                                                   (let ((_%$%e239739239825%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl239738239822%_))))
                                                     (let ((_%$%hd239740239828%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e239739239825%_)))
                                                           (_%$%tl239741239830%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e239739239825%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd239740239828%_))
                                                           (let ((_%$%e239742239833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd239740239828%_))))
                     (let ((_%$%hd239743239836%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e239742239833%_)))
                           (_%$%tl239744239838%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e239742239833%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd239743239836%_))
                           (let ((_%$%e239745239841%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd239743239836%_))))
                             (let ((_%$%hd239746239844%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e239745239841%_)))
                                   (_%$%tl239747239846%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e239745239841%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd239746239844%_))
                                   (let ((_%$%e239748239849%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd239746239844%_))))
                                     (let ((_%$%hd239749239852%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239748239849%_)))
                                           (_%$%tl239750239854%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239748239849%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl239750239854%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl239747239846%_))
                                               (let ((_%$%e239751239857%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl239747239846%_))))
                                                 (let ((_%$%hd239752239860%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e239751239857%_)))
                                                       (_%$%tl239753239862%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e239751239857%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl239753239862%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl239744239838%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl239741239830%_))
                       (let ((_%$%e239754239865%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl239741239830%_))))
                         (let ((_%$%hd239755239868%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e239754239865%_)))
                               (_%$%tl239756239870%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e239754239865%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl239756239870%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl239735239814%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl239726239790%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl239723239782%_))
                                           (let ((_%$%e239757239873%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl239723239782%_))))
                                             (let ((_%$%hd239758239876%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e239757239873%_)))
                                                   (_%$%tl239759239878%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e239757239873%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl239759239878%_))
                                                   (let* ((_%$%g239925239987%_
                                                           (lambda (_%$%g239926239984%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g239926239984%_))))
                  (_%$%g239924240926%_
                   (lambda (_%$%g239926239990%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g239926239990%_))
                         (let ((_%$%e239932239992%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g239926239990%_))))
                           (let ((_%$%hd239933239995%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e239932239992%_)))
                                 (_%$%tl239934239997%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e239932239992%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd239933239995%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd239933239995%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl239934239997%_))
                                         (let ((_%$%e239935240000%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl239934239997%_))))
                                           (let ((_%$%hd239936240003%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e239935240000%_)))
                                                 (_%$%tl239937240005%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e239935240000%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl239937240005%_))
                                                 (let ((_%$%e239938240008%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl239937240005%_))))
                                                   (let ((_%$%hd239939240011%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e239938240008%_)))
                                                         (_%$%tl239940240013%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e239938240008%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd239939240011%_))
                                                         (let ((_%$%e239941240016%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd239939240011%_))))
                   (let ((_%$%hd239942240019%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e239941240016%_)))
                         (_%$%tl239943240021%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e239941240016%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd239942240019%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd239942240019%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl239943240021%_))
                                 (let ((_%$%e239944240024%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl239943240021%_))))
                                   (let ((_%$%hd239945240027%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e239944240024%_)))
                                         (_%$%tl239946240029%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e239944240024%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd239945240027%_))
                                         (let ((_%$%e239947240032%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd239945240027%_))))
                                           (let ((_%$%hd239948240035%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e239947240032%_)))
                                                 (_%$%tl239949240037%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e239947240032%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd239948240035%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd239948240035%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl239949240037%_))
                                                         (let ((_%$%e239950240040%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl239949240037%_))))
                   (let ((_%$%hd239951240043%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e239950240040%_)))
                         (_%$%tl239952240045%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e239950240040%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl239952240045%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl239946240029%_))
                             (let ((_%$%e239953240048%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl239946240029%_))))
                               (let ((_%$%hd239954240051%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e239953240048%_)))
                                     (_%$%tl239955240053%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e239953240048%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd239954240051%_))
                                     (let ((_%$%e239956240056%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd239954240051%_))))
                                       (let ((_%$%hd239957240059%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e239956240056%_)))
                                             (_%$%tl239958240061%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e239956240056%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd239957240059%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd239957240059%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl239958240061%_))
                                                     (let ((_%$%e239959240064%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl239958240061%_))))
                                                       (let ((_%$%hd239960240067%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e239959240064%_)))
                     (_%$%tl239961240069%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e239959240064%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl239961240069%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl239955240053%_))
                         (let ((_%$%e239962240072%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl239955240053%_))))
                           (let ((_%$%hd239963240075%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e239962240072%_)))
                                 (_%$%tl239964240077%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e239962240072%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd239963240075%_))
                                 (let ((_%$%e239965240080%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd239963240075%_))))
                                   (let ((_%$%hd239966240083%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e239965240080%_)))
                                         (_%$%tl239967240085%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e239965240080%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd239966240083%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd239966240083%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl239967240085%_))
                                                 (let ((_%$%e239968240088%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl239967240085%_))))
                                                   (let ((_%$%hd239969240091%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e239968240088%_)))
                                                         (_%$%tl239970240093%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e239968240088%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl239970240093%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl239964240077%_))
                     (if (let ((__tmp242346
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl239964240077%_))))
                           (declare (not safe))
                           (##fx>= __tmp242346 '1))
                         (let ((_g242347_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl239964240077%_
                                   '1))))
                           (begin
                             (let ((_g242348_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g242347_)
                                          (##values-length _g242347_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g242348_ 2)))
                                   (error "Context expects 2 values"
                                          _g242348_)))
                             (let ((_%$%target239971240096%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g242347_ 0)))
                                   (_%$%tl239973240098%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g242347_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl239973240098%_))
                                   (let ((_%$%e239980240101%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl239973240098%_))))
                                     (let ((_%$%hd239981240104%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e239980240101%_)))
                                           (_%$%tl239982240106%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e239980240101%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl239982240106%_))
                                           (letrec ((_%$%loop239974240109%_
                                                     (lambda (_%$%hd239972240112%_
                                                              _%$%kw-ref239978240114%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd239972240112%_))
                                                           (let ((_%$%e239975240116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd239972240112%_))))
                     (let ((_%$%lp-hd239976240119%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e239975240116%_)))
                           (_%$%lp-tl239977240121%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e239975240116%_))))
                       (_%$%loop239974240109%_
                        _%$%lp-tl239977240121%_
                        (cons _%$%lp-hd239976240119%_
                              _%$%kw-ref239978240114%_))))
                   (let ((_%$%kw-ref239979240124%_
                          (reverse _%$%kw-ref239978240114%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl239940240013%_))
                         (let* ((_%kw-count240181%_
                                 (length (let ((__tmp242349
                                                (lambda (_%$%g240173240176%_
                                                         _%$%g240174240178%_)
                                                  (cons _%$%g240173240176%_
                                                        _%$%g240174240178%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp242349
                                            '()
                                            _%$%kw-ref239979240124%_))))
                                (_%self-index240183%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count240181%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd239752239860%_))
                               (let* ((_%$%g240187240201%_
                                       (lambda (_%$%g240188240198%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g240188240198%_))))
                                      (_%$%g240186240324%_
                                       (lambda (_%$%g240188240204%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g240188240204%_))
                                             (let ((_%$%e240191240206%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g240188240204%_))))
                                               (let ((_%$%hd240192240209%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e240191240206%_)))
                                                     (_%$%tl240193240211%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e240191240206%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl240193240211%_))
                                                     (let ((_%$%e240194240214%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl240193240211%_))))
                                                       (let ((_%$%hd240195240217%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e240194240214%_)))
                     (_%$%tl240196240219%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e240194240214%_))))
                 (let* ((_%self240240%_
                         (list-ref _%$%hd240195240217%_ _%self-index240183%_))
                        (_%receiver240245%_
                         (let ((_%$e240242%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl240196240219%_))))
                           (if _%$e240242%_ _%$e240242%_ _%self240240%_))))
                   (for-each
                    (lambda (_%$%g240247240249%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver240245%_
                       _%method-calls238185%_
                       _%slot-refs238186%_
                       _%$%g240247240249%_))
                    _%$%tl240196240219%_)
                   (if (_%no-specializer?238189%_)
                       _%stx238093%_
                       (let* ((_%specializer-id240258%_
                               (let* ((_%id240252%_
                                       (let ((__tmp242350
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g238104238166%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp242350
                                          '"::specialize")))
                                      (_%specializer-id240255%_
                                       (let ((__tmp242351
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx238093%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id240252%_
                                          __tmp242351))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id240255%_))
                                 _%specializer-id240255%_))
                              (_%$klass240260%_
                               (let ((__tmp242352
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp242352)))
                              (_%$method-table240262%_
                               (let ((__tmp242353
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp242353)))
                              (_%methods240264%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls238185%_)))
                              (_%$methods240268%_
                               (let ((__tmp242354
                                      (lambda (_%id240266%_)
                                        (let ((__tmp242355
                                               (gensym _%id240266%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp242355)))))
                                 (declare (not safe))
                                 (##map __tmp242354 _%methods240264%_)))
                              (_%_240277%_
                               (let ((__tmp242356
                                      (lambda (_%$%g240269240272%_
                                               _%$%g240270240274%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls238185%_
                                           _%$%g240269240272%_
                                           _%$%g240270240274%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp242356
                                  _%methods240264%_
                                  _%$methods240268%_)))
                              (_%methods-bind240287%_
                               (let ((__tmp242357
                                      (lambda (_%$%g240279240282%_
                                               _%$%g240280240284%_)
                                        (_%generate-method-bind238095%_
                                         _%$klass240260%_
                                         _%$method-table240262%_
                                         _%$%g240279240282%_
                                         _%$%g240280240284%_))))
                                 (declare (not safe))
                                 (##map __tmp242357
                                        _%methods240264%_
                                        _%$methods240268%_)))
                              (_%slots240289%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs238186%_)))
                              (_%$slots240293%_
                               (let ((__tmp242358
                                      (lambda (_%id240291%_)
                                        (let ((__tmp242359
                                               (gensym _%id240291%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp242359)))))
                                 (declare (not safe))
                                 (##map __tmp242358 _%slots240289%_)))
                              (_%_240302%_
                               (let ((__tmp242360
                                      (lambda (_%$%g240294240297%_
                                               _%$%g240295240299%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs238186%_
                                           _%$%g240294240297%_
                                           _%$%g240295240299%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp242360
                                  _%slots240289%_
                                  _%$slots240293%_)))
                              (_%slots-bind240311%_
                               (let ((__tmp242361
                                      (lambda (_%$%g240303240306%_
                                               _%$%g240304240308%_)
                                        (_%generate-slot-bind238096%_
                                         _%$klass240260%_
                                         _%$%g240303240306%_
                                         _%$%g240304240308%_))))
                                 (declare (not safe))
                                 (##map __tmp242361
                                        _%slots240289%_
                                        _%$slots240293%_)))
                              (_%specializer-impl240319%_
                               (let* ((_%specializer-body240317%_
                                       (map (lambda (_%$%g240312240314%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver240245%_
                                               _%$klass240260%_
                                               _%method-calls238185%_
                                               _%slot-refs238186%_
                                               _%$%g240312240314%_))
                                            _%$%tl240196240219%_))
                                      (__tmp242362
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd239731239804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd239749239852%_
                                                           '())
                                                     (cons (let ((__tmp242363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd240195240217%_
                                      _%specializer-body240317%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp242363 _%$%hd239752239860%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd239755239868%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd239758239876%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp242362
                                  _%stx238093%_)))
                              (_%specializer-impl240321%_
                               (_%generate-specializer-impl238097%_
                                _%$klass240260%_
                                _%$method-table240262%_
                                _%methods-bind240287%_
                                _%slots-bind240311%_
                                _%specializer-impl240319%_)))
                         (let ((__tmp242365
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g238104238166%_)))
                               (__tmp242364
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id240258%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp242365
                            '" => "
                            __tmp242364))
                         (_%generate-specializer-def238098%_
                          _%$%g238104238166%_
                          _%specializer-id240258%_
                          _%specializer-impl240321%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240187240201%_
                                                      _%$%g240188240204%_))))
                                             (_%$%g240187240201%_
                                              _%$%g240188240204%_)))))
                                 (_%$%g240186240324%_ _%$%hd239752239860%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd239752239860%_))
                                   (let* ((_%$%g240328240358%_
                                           (lambda (_%$%g240329240355%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g240329240355%_))))
                                          (_%$%g240327240922%_
                                           (lambda (_%$%g240329240361%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g240329240361%_))
                                                 (let ((_%$%e240333240363%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g240329240361%_))))
                                                   (let ((_%$%hd240334240366%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e240333240363%_)))
                                                         (_%$%tl240335240368%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e240333240363%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl240335240368%_))
                                                         (let ((_%$%e240336240371%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl240335240368%_))))
                   (let ((_%$%hd240337240374%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e240336240371%_)))
                         (_%$%tl240338240376%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e240336240371%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd240337240374%_))
                         (let ((_%$%e240339240379%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd240337240374%_))))
                           (let ((_%$%hd240340240382%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e240339240379%_)))
                                 (_%$%tl240341240384%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e240339240379%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd240340240382%_))
                                 (let ((_%$%e240342240387%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd240340240382%_))))
                                   (let ((_%$%hd240343240390%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e240342240387%_)))
                                         (_%$%tl240344240392%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e240342240387%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd240343240390%_))
                                         (let ((_%$%e240345240395%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd240343240390%_))))
                                           (let ((_%$%hd240346240398%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e240345240395%_)))
                                                 (_%$%tl240347240400%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e240345240395%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl240347240400%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl240344240392%_))
                                                     (let ((_%$%e240348240403%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl240344240392%_))))
                                                       (let ((_%$%hd240349240406%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e240348240403%_)))
                     (_%$%tl240350240408%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e240348240403%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl240350240408%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl240341240384%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl240338240376%_))
                             (let ((_%$%e240351240411%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl240338240376%_))))
                               (let ((_%$%hd240352240414%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e240351240411%_)))
                                     (_%$%tl240353240416%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e240351240411%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl240353240416%_))
                                     (let ()
                                       (let* ((_%$%g240445240459%_
                                               (lambda (_%$%g240446240456%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g240446240456%_))))
                                              (_%$%g240444240506%_
                                               (lambda (_%$%g240446240462%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g240446240462%_))
                                                     (let ((_%$%e240449240464%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g240446240462%_))))
                                                       (let ((_%$%hd240450240467%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e240449240464%_)))
                     (_%$%tl240451240469%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e240449240464%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl240451240469%_))
                     (let ((_%$%e240452240472%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl240451240469%_))))
                       (let ((_%$%hd240453240475%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e240452240472%_)))
                             (_%$%tl240454240477%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e240452240472%_))))
                         (let* ((_%self240494%_
                                 (list-ref
                                  _%$%hd240453240475%_
                                  _%self-index240183%_))
                                (_%receiver240499%_
                                 (let ((_%$e240496%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl240454240477%_))))
                                   (if _%$e240496%_
                                       _%$e240496%_
                                       _%self240494%_))))
                           (for-each
                            (lambda (_%$%g240501240503%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver240499%_
                               _%method-calls238185%_
                               _%slot-refs238186%_
                               _%$%g240501240503%_))
                            _%$%tl240454240477%_))))
                     (_%$%g240445240459%_ _%$%g240446240462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240445240459%_
                                                      _%$%g240446240462%_)))))
                                         (_%$%g240444240506%_
                                          _%$%hd240349240406%_))
                                       (let* ((_%$%g240509240528%_
                                               (lambda (_%$%g240510240525%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g240510240525%_))))
                                              (_%$%g240508240637%_
                                               (lambda (_%$%g240510240531%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g240510240531%_))
                                                     (let ((_%$%e240512240533%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g240510240531%_))))
                                                       (let ((_%$%hd240513240536%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e240512240533%_)))
                     (_%$%tl240514240538%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e240512240533%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl240514240538%_))
                     (let ((_g242366_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl240514240538%_
                               '0))))
                       (begin
                         (let ((_g242367_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g242366_)
                                      (##values-length _g242366_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g242367_ 2)))
                               (error "Context expects 2 values" _g242367_)))
                         (let ((_%$%target240515240541%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g242366_ 0)))
                               (_%$%tl240517240543%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g242366_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl240517240543%_))
                               (letrec ((_%$%loop240518240546%_
                                         (lambda (_%$%hd240516240549%_
                                                  _%$%clause240522240551%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd240516240549%_))
                                               (let ((_%$%e240519240553%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd240516240549%_))))
                                                 (let ((_%$%lp-hd240520240556%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e240519240553%_)))
                                                       (_%$%lp-tl240521240558%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e240519240553%_))))
                                                   (_%$%loop240518240546%_
                                                    _%$%lp-tl240521240558%_
                                                    (cons _%$%lp-hd240520240556%_
                                                          _%$%clause240522240551%_))))
                                               (let ((_%$%clause240523240561%_
                                                      (reverse _%$%clause240522240551%_)))
                                                 (for-each
                                                  (lambda (_%clause240576%_)
                                                    (let* ((_%$%g240578240589%_
                                                            (lambda (_%$%g240579240586%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g240579240586%_))))
                   (_%$%g240577240627%_
                    (lambda (_%$%g240579240592%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g240579240592%_))
                          (let ((_%$%e240582240594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g240579240592%_))))
                            (let ((_%$%hd240583240597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e240582240594%_)))
                                  (_%$%tl240584240599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e240582240594%_))))
                              (let* ((_%self240615%_
                                      (list-ref
                                       _%$%hd240583240597%_
                                       _%self-index240183%_))
                                     (_%receiver240620%_
                                      (let ((_%$e240617%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl240584240599%_))))
                                        (if _%$e240617%_
                                            _%$e240617%_
                                            _%self240615%_))))
                                (for-each
                                 (lambda (_%$%g240622240624%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver240620%_
                                    _%method-calls238185%_
                                    _%slot-refs238186%_
                                    _%$%g240622240624%_))
                                 _%$%tl240584240599%_))))
                          (_%$%g240578240589%_ _%$%g240579240592%_)))))
              (_%$%g240577240627%_ _%clause240576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp242368
                                                         (lambda (_%$%g240629240632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g240630240634%_)
                   (cons _%$%g240629240632%_ _%$%g240630240634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp242368
                                                     '()
                                                     _%$%clause240523240561%_))))))))
                                 (_%$%loop240518240546%_
                                  _%$%target240515240541%_
                                  '()))
                               (_%$%g240509240528%_ _%$%g240510240531%_)))))
                     (_%$%g240509240528%_ _%$%g240510240531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240509240528%_
                                                      _%$%g240510240531%_)))))
                                         (_%$%g240508240637%_
                                          _%$%hd240352240414%_))
                                       (if (_%no-specializer?238189%_)
                                           _%stx238093%_
                                           (let* ((_%specializer-id240646%_
                                                   (let* ((_%id240640%_
                                                           (let ((__tmp242369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g238104238166%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp242369 '"::specialize")))
                  (_%specializer-id240643%_
                   (let ((__tmp242370
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx238093%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id240640%_ __tmp242370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id240643%_))
                                                     _%specializer-id240643%_))
                                                  (_%$klass240648%_
                                                   (let ((__tmp242371
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp242371)))
                                                  (_%$method-table240650%_
                                                   (let ((__tmp242372
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp242372)))
                                                  (_%methods240652%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls238185%_)))
                                                  (_%$methods240656%_
                                                   (let ((__tmp242373
                                                          (lambda (_%id240654%_)
                                                            (let ((__tmp242374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id240654%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp242374)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242373
                                                            _%methods240652%_)))
                                                  (_%_240665%_
                                                   (let ((__tmp242375
                                                          (lambda (_%$%g240657240660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240658240662%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls238185%_
                       _%$%g240657240660%_
                       _%$%g240658240662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp242375
                                                      _%methods240652%_
                                                      _%$methods240656%_)))
                                                  (_%methods-bind240675%_
                                                   (let ((__tmp242376
                                                          (lambda (_%$%g240667240670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240668240672%_)
                    (_%generate-method-bind238095%_
                     _%$klass240648%_
                     _%$method-table240650%_
                     _%$%g240667240670%_
                     _%$%g240668240672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242376
                                                            _%methods240652%_
                                                            _%$methods240656%_)))
                                                  (_%slots240677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs238186%_)))
                                                  (_%$slots240681%_
                                                   (let ((__tmp242377
                                                          (lambda (_%id240679%_)
                                                            (let ((__tmp242378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id240679%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp242378)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242377
                                                            _%slots240677%_)))
                                                  (_%_240690%_
                                                   (let ((__tmp242379
                                                          (lambda (_%$%g240682240685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240683240687%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs238186%_
                       _%$%g240682240685%_
                       _%$%g240683240687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp242379
                                                      _%slots240677%_
                                                      _%$slots240681%_)))
                                                  (_%slots-bind240699%_
                                                   (let ((__tmp242380
                                                          (lambda (_%$%g240691240694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g240692240696%_)
                    (_%generate-slot-bind238096%_
                     _%$klass240648%_
                     _%$%g240691240694%_
                     _%$%g240692240696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp242380
                                                            _%slots240677%_
                                                            _%$slots240681%_)))
                                                  (_%specializer-lambda-expr240777%_
                                                   (let* ((_%$%g240701240715%_
                                                           (lambda (_%$%g240702240712%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g240702240712%_))))
                  (_%$%g240700240774%_
                   (lambda (_%$%g240702240718%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g240702240718%_))
                         (let ((_%$%e240705240720%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g240702240718%_))))
                           (let ((_%$%hd240706240723%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e240705240720%_)))
                                 (_%$%tl240707240725%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e240705240720%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl240707240725%_))
                                 (let ((_%$%e240708240728%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl240707240725%_))))
                                   (let ((_%$%hd240709240731%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e240708240728%_)))
                                         (_%$%tl240710240733%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e240708240728%_))))
                                     (let* ((_%self240760%_
                                             (list-ref
                                              _%$%hd240709240731%_
                                              _%self-index240183%_))
                                            (_%receiver240765%_
                                             (let ((_%$e240762%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl240710240733%_))))
                                               (if _%$e240762%_
                                                   _%$e240762%_
                                                   _%self240760%_)))
                                            (_%body240771%_
                                             (map (lambda (_%$%g240766240768%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver240765%_
                                                     _%$klass240648%_
                                                     _%method-calls238185%_
                                                     _%slot-refs238186%_
                                                     _%$%g240766240768%_))
                                                  _%$%tl240710240733%_))
                                            (__tmp242381
                                             (cons '%#lambda
                                                   (cons _%$%hd240709240731%_
                                                         _%body240771%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp242381
                                        _%$%hd240349240406%_))))
                                 (_%$%g240701240715%_ _%$%g240702240718%_))))
                         (_%$%g240701240715%_ _%$%g240702240718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240700240774%_
                                                      _%$%hd240349240406%_)))
                                                  (_%specializer-case-lambda-expr240915%_
                                                   (let* ((_%$%g240779240798%_
                                                           (lambda (_%$%g240780240795%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g240780240795%_))))
                  (_%$%g240778240912%_
                   (lambda (_%$%g240780240801%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g240780240801%_))
                         (let ((_%$%e240782240803%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g240780240801%_))))
                           (let ((_%$%hd240783240806%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e240782240803%_)))
                                 (_%$%tl240784240808%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e240782240803%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl240784240808%_))
                                 (let ((_g242382_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl240784240808%_
                                           '0))))
                                   (begin
                                     (let ((_g242383_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g242382_)
                                                  (##values-length _g242382_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g242383_ 2)))
                                           (error "Context expects 2 values"
                                                  _g242383_)))
                                     (let ((_%$%target240785240811%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g242382_ 0)))
                                           (_%$%tl240787240813%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g242382_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl240787240813%_))
                                           (letrec ((_%$%loop240788240816%_
                                                     (lambda (_%$%hd240786240819%_
                                                              _%$%clause240792240821%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd240786240819%_))
                                                           (let ((_%$%e240789240823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd240786240819%_))))
                     (let ((_%$%lp-hd240790240826%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e240789240823%_)))
                           (_%$%lp-tl240791240828%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e240789240823%_))))
                       (_%$%loop240788240816%_
                        _%$%lp-tl240791240828%_
                        (cons _%$%lp-hd240790240826%_
                              _%$%clause240792240821%_))))
                   (let* ((_%$%clause240793240831%_
                           (reverse _%$%clause240792240821%_))
                          (_%clauses240910%_
                           (map (lambda (_%clause240847%_)
                                  (let* ((_%$%g240849240860%_
                                          (lambda (_%$%g240850240857%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g240850240857%_))))
                                         (_%$%g240848240900%_
                                          (lambda (_%$%g240850240863%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g240850240863%_))
                                                (let ((_%$%e240853240865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g240850240863%_))))
                                                  (let ((_%$%hd240854240868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240853240865%_)))
                                                        (_%$%tl240855240870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240853240865%_))))
                                                    (let* ((_%self240886%_
                                                            (list-ref
                                                             _%$%hd240854240868%_
                                                             _%self-index240183%_))
                                                           (_%receiver240891%_
                                                            (let ((_%$e240888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl240855240870%_))))
                      (if _%$e240888%_ _%$e240888%_ _%self240886%_)))
                   (_%body240897%_
                    (map (lambda (_%$%g240892240894%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver240891%_
                            _%$klass240648%_
                            _%method-calls238185%_
                            _%slot-refs238186%_
                            _%$%g240892240894%_))
                         _%$%tl240855240870%_)))
              (cons _%$%hd240854240868%_ _%body240897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g240849240860%_
                                                 _%$%g240850240863%_)))))
                                    (_%$%g240848240900%_ _%clause240847%_)))
                                (let ((__tmp242384
                                       (lambda (_%$%g240902240905%_
                                                _%$%g240903240907%_)
                                         (cons _%$%g240902240905%_
                                               _%$%g240903240907%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp242384
                                   '()
                                   _%$%clause240793240831%_))))
                          (__tmp242385
                           (cons '%#case-lambda _%clauses240910%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp242385
                      _%$%hd240352240414%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop240788240816%_
                                              _%$%target240785240811%_
                                              '()))
                                           (_%$%g240779240798%_
                                            _%$%g240780240801%_)))))
                                 (_%$%g240779240798%_ _%$%g240780240801%_))))
                         (_%$%g240779240798%_ _%$%g240780240801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240778240912%_
                                                      _%$%hd240352240414%_)))
                                                  (_%specializer-impl240917%_
                                                   (let ((__tmp242386
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd239731239804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd239749239852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp242387
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd240346240398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr240777%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr240915%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp242387
                                         _%stx238093%_))
                                      '()))
                          '())
                    (cons _%$%hd239755239868%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd239758239876%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp242386
                                                      _%stx238093%_)))
                                                  (_%specializer-impl240919%_
                                                   (_%generate-specializer-impl238097%_
                                                    _%$klass240648%_
                                                    _%$method-table240650%_
                                                    _%methods-bind240675%_
                                                    _%slots-bind240699%_
                                                    _%specializer-impl240917%_)))
                                             (let ((__tmp242389
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g238104238166%_)))
                                                   (__tmp242388
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id240646%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp242389
                                                '" => "
                                                __tmp242388))
                                             (_%generate-specializer-def238098%_
                                              _%$%g238104238166%_
                                              _%specializer-id240646%_
                                              _%specializer-impl240919%_))))
                                     (_%$%g240328240358%_
                                      _%$%g240329240361%_))))
                             (_%$%g240328240358%_ _%$%g240329240361%_))
                         (_%$%g240328240358%_ _%$%g240329240361%_))
                     (_%$%g240328240358%_ _%$%g240329240361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g240328240358%_
                                                      _%$%g240329240361%_))
                                                 (_%$%g240328240358%_
                                                  _%$%g240329240361%_))))
                                         (_%$%g240328240358%_
                                          _%$%g240329240361%_))))
                                 (_%$%g240328240358%_ _%$%g240329240361%_))))
                         (_%$%g240328240358%_ _%$%g240329240361%_))))
                 (_%$%g240328240358%_ _%$%g240329240361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g240328240358%_
                                                  _%$%g240329240361%_)))))
                                     (_%$%g240327240922%_
                                      _%$%hd239752239860%_))
                                   _%stx238093%_)))
                         (_%$%g239925239987%_ _%$%g239926239990%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop239974240109%_
                                              _%$%target239971240096%_
                                              '()))
                                           (_%$%g239925239987%_
                                            _%$%g239926239990%_))))
                                   (_%$%g239925239987%_
                                    _%$%g239926239990%_)))))
                         (_%$%g239925239987%_ _%$%g239926239990%_))
                     (_%$%g239925239987%_ _%$%g239926239990%_))
                 (_%$%g239925239987%_ _%$%g239926239990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g239925239987%_
                                                  _%$%g239926239990%_))
                                             (_%$%g239925239987%_
                                              _%$%g239926239990%_))
                                         (_%$%g239925239987%_
                                          _%$%g239926239990%_))))
                                 (_%$%g239925239987%_ _%$%g239926239990%_))))
                         (_%$%g239925239987%_ _%$%g239926239990%_))
                     (_%$%g239925239987%_ _%$%g239926239990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239925239987%_
                                                      _%$%g239926239990%_))
                                                 (_%$%g239925239987%_
                                                  _%$%g239926239990%_))
                                             (_%$%g239925239987%_
                                              _%$%g239926239990%_))))
                                     (_%$%g239925239987%_
                                      _%$%g239926239990%_))))
                             (_%$%g239925239987%_ _%$%g239926239990%_))
                         (_%$%g239925239987%_ _%$%g239926239990%_))))
                 (_%$%g239925239987%_ _%$%g239926239990%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239925239987%_
                                                      _%$%g239926239990%_))
                                                 (_%$%g239925239987%_
                                                  _%$%g239926239990%_))))
                                         (_%$%g239925239987%_
                                          _%$%g239926239990%_))))
                                 (_%$%g239925239987%_ _%$%g239926239990%_))
                             (_%$%g239925239987%_ _%$%g239926239990%_))
                         (_%$%g239925239987%_ _%$%g239926239990%_))))
                 (_%$%g239925239987%_ _%$%g239926239990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g239925239987%_
                                                  _%$%g239926239990%_))))
                                         (_%$%g239925239987%_
                                          _%$%g239926239990%_))
                                     (_%$%g239925239987%_ _%$%g239926239990%_))
                                 (_%$%g239925239987%_ _%$%g239926239990%_))))
                         (_%$%g239925239987%_ _%$%g239926239990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g239924240926%_
                                                      _%$%hd239755239868%_))
                                                   (_%$%g239711239764%_
                                                    _%$%g239712239767%_))))
                                           (_%$%g239711239764%_
                                            _%$%g239712239767%_))
                                       (_%$%g239711239764%_
                                        _%$%g239712239767%_))
                                   (_%$%g239711239764%_ _%$%g239712239767%_))
                               (_%$%g239711239764%_ _%$%g239712239767%_))))
                       (_%$%g239711239764%_ _%$%g239712239767%_))
                   (_%$%g239711239764%_ _%$%g239712239767%_))
               (_%$%g239711239764%_ _%$%g239712239767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g239711239764%_
                                                _%$%g239712239767%_))
                                           (_%$%g239711239764%_
                                            _%$%g239712239767%_))))
                                   (_%$%g239711239764%_ _%$%g239712239767%_))))
                           (_%$%g239711239764%_ _%$%g239712239767%_))))
                   (_%$%g239711239764%_ _%$%g239712239767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g239711239764%_
                                                    _%$%g239712239767%_))
                                               (_%$%g239711239764%_
                                                _%$%g239712239767%_))
                                           (_%$%g239711239764%_
                                            _%$%g239712239767%_))))
                                   (_%$%g239711239764%_ _%$%g239712239767%_))))
                           (_%$%g239711239764%_ _%$%g239712239767%_))
                       (_%$%g239711239764%_ _%$%g239712239767%_))))
               (_%$%g239711239764%_ _%$%g239712239767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g239711239764%_
                                                _%$%g239712239767%_))))
                                       (_%$%g239711239764%_
                                        _%$%g239712239767%_))))
                               (_%$%g239711239764%_ _%$%g239712239767%_))
                           (_%$%g239711239764%_ _%$%g239712239767%_))
                       (_%$%g239711239764%_ _%$%g239712239767%_))))
               (_%$%g239711239764%_ _%$%g239712239767%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g239710240929%_
                                            _%$%g238103238165%_))
                                         _%stx238093%_))))))))
                  (_%__kont241156241157%_ (lambda () _%stx238093%_)))
              (let ((_%__match241185241186%_
                     (lambda (_%$%e238105238133%_
                              _%$%hd238106238136%_
                              _%$%tl238107238138%_
                              _%$%e238108238141%_
                              _%$%hd238109238144%_
                              _%$%tl238110238146%_
                              _%$%e238111238149%_
                              _%$%hd238112238152%_
                              _%$%tl238113238154%_
                              _%$%e238114238157%_
                              _%$%hd238115238160%_
                              _%$%tl238116238162%_)
                       (let ((_%$%g238103238165%_ _%$%hd238115238160%_)
                             (_%$%g238104238166%_ _%$%hd238112238152%_))
                         (if (let ((__tmp242390
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g238104238166%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp242390))
                             (_%__kont241154241155%_
                              _%$%g238103238165%_
                              _%$%g238104238166%_)
                             (_%__kont241156241157%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx241152241153%_))
                    (let ((_%$%e238105238133%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx241152241153%_))))
                      (let ((_%$%tl238107238138%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e238105238133%_)))
                            (_%$%hd238106238136%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e238105238133%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238107238138%_))
                            (let ((_%$%e238108238141%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238107238138%_))))
                              (let ((_%$%tl238110238146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238108238141%_)))
                                    (_%$%hd238109238144%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238108238141%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd238109238144%_))
                                    (let ((_%$%e238111238149%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd238109238144%_))))
                                      (let ((_%$%tl238113238154%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e238111238149%_)))
                                            (_%$%hd238112238152%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e238111238149%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl238113238154%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl238110238146%_))
                                                (let ((_%$%e238114238157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl238110238146%_))))
                                                  (let ((_%$%tl238116238162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e238114238157%_)))
                                                        (_%$%hd238115238160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e238114238157%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl238116238162%_))
                                                        (_%__match241185241186%_
                                                         _%$%e238105238133%_
                                                         _%$%hd238106238136%_
                                                         _%$%tl238107238138%_
                                                         _%$%e238108238141%_
                                                         _%$%hd238109238144%_
                                                         _%$%tl238110238146%_
                                                         _%$%e238111238149%_
                                                         _%$%hd238112238152%_
                                                         _%$%tl238113238154%_
                                                         _%$%e238114238157%_
                                                         _%$%hd238115238160%_
                                                         _%$%tl238116238162%_)
                                                        (_%__kont241156241157%_))))
                                                (_%__kont241156241157%_))
                                            (_%__kont241156241157%_))))
                                    (_%__kont241156241157%_))))
                            (_%__kont241156241157%_))))
                    (_%__kont241156241157%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self237945%_ _%stx237946%_)
        (let* ((_%__stx241188241189%_ _%stx237946%_)
               (_%$%g237949237982%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx241188241189%_)))))
          (let ((_%__kont241190241191%_
                 (lambda (_%$%g237951238072%_) _%$%g237951238072%_))
                (_%__kont241192241193%_
                 (lambda (_%$%g237967238011%_ _%$%g237968238012%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self237945%_ _%$%g237967238011%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx241188241189%_))
                (let ((_%$%e237952238032%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx241188241189%_))))
                  (let ((_%$%tl237954238037%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e237952238032%_)))
                        (_%$%hd237953238035%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e237952238032%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl237954238037%_))
                        (let ((_%$%e237955238040%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl237954238037%_))))
                          (let ((_%$%tl237957238045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e237955238040%_)))
                                (_%$%hd237956238043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e237955238040%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd237956238043%_))
                                (let ((_%$%e237958238048%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd237956238043%_))))
                                  (let ((_%$%tl237960238053%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e237958238048%_)))
                                        (_%$%hd237959238051%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e237958238048%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd237959238051%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd237959238051%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl237960238053%_))
                                                (let ((_%$%e237961238056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl237960238053%_))))
                                                  (let ((_%$%tl237963238061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e237961238056%_)))
                                                        (_%$%hd237962238059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e237961238056%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl237963238061%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl237957238045%_))
                                                            (let ((_%$%e237964238064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl237957238045%_))))
                      (let ((_%$%tl237966238069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e237964238064%_)))
                            (_%$%hd237965238067%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e237964238064%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl237966238069%_))
                            (_%__kont241190241191%_ _%$%hd237962238059%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g237949237982%_)))))
                    (let () (declare (not safe)) (_%$%g237949237982%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl237957238045%_))
                    (let ((_%$%e237975238003%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl237957238045%_))))
                      (let ((_%$%tl237977238008%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e237975238003%_)))
                            (_%$%hd237976238006%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e237975238003%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl237977238008%_))
                            (_%__kont241192241193%_
                             _%$%hd237976238006%_
                             _%$%hd237956238043%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g237949237982%_)))))
                    (let () (declare (not safe)) (_%$%g237949237982%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl237957238045%_))
                                                    (let ((_%$%e237975238003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl237957238045%_))))
                                                      (let ((_%$%tl237977238008%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e237975238003%_)))
                    (_%$%hd237976238006%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e237975238003%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl237977238008%_))
                    (_%__kont241192241193%_
                     _%$%hd237976238006%_
                     _%$%hd237956238043%_)
                    (let () (declare (not safe)) (_%$%g237949237982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g237949237982%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl237957238045%_))
                                                (let ((_%$%e237975238003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl237957238045%_))))
                                                  (let ((_%$%tl237977238008%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e237975238003%_)))
                                                        (_%$%hd237976238006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e237975238003%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl237977238008%_))
                                                        (_%__kont241192241193%_
                                                         _%$%hd237976238006%_
                                                         _%$%hd237956238043%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g237949237982%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g237949237982%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl237957238045%_))
                                            (let ((_%$%e237975238003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl237957238045%_))))
                                              (let ((_%$%tl237977238008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e237975238003%_)))
                                                    (_%$%hd237976238006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e237975238003%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl237977238008%_))
                                                    (_%__kont241192241193%_
                                                     _%$%hd237976238006%_
                                                     _%$%hd237956238043%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g237949237982%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g237949237982%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl237957238045%_))
                                    (let ((_%$%e237975238003%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl237957238045%_))))
                                      (let ((_%$%tl237977238008%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e237975238003%_)))
                                            (_%$%hd237976238006%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e237975238003%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl237977238008%_))
                                            (_%__kont241192241193%_
                                             _%$%hd237976238006%_
                                             _%$%hd237956238043%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g237949237982%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g237949237982%_))))))
                        (let () (declare (not safe)) (_%$%g237949237982%_)))))
                (let () (declare (not safe)) (_%$%g237949237982%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self237861%_ _%stx237862%_)
        (let* ((_%$%g237864237885%_
                (lambda (_%$%g237865237882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g237865237882%_))))
               (_%$%g237863237942%_
                (lambda (_%$%g237865237888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g237865237888%_))
                      (let ((_%$%e237869237890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g237865237888%_))))
                        (let ((_%$%hd237870237893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e237869237890%_)))
                              (_%$%tl237871237895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e237869237890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl237871237895%_))
                              (let ((_%$%e237872237898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl237871237895%_))))
                                (let ((_%$%hd237873237901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e237872237898%_)))
                                      (_%$%tl237874237903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e237872237898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl237874237903%_))
                                      (let ((_%$%e237875237906%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl237874237903%_))))
                                        (let ((_%$%hd237876237909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e237875237906%_)))
                                              (_%$%tl237877237911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e237875237906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl237877237911%_))
                                              (let ((_%$%e237878237914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl237877237911%_))))
                                                (let ((_%$%hd237879237917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e237878237914%_)))
                                                      (_%$%tl237880237919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e237878237914%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl237880237919%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self237861%_
                                                         _%$%hd237876237909%_))
                                                      (_%$%g237864237885%_
                                                       _%$%g237865237888%_))))
                                              (_%$%g237864237885%_
                                               _%$%g237865237888%_))))
                                      (_%$%g237864237885%_
                                       _%$%g237865237888%_))))
                              (_%$%g237864237885%_ _%$%g237865237888%_))))
                      (_%$%g237864237885%_ _%$%g237865237888%_)))))
          (_%$%g237863237942%_ _%stx237862%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self236826%_ _%stx236827%_)
        (let* ((_%__stx241254241255%_ _%stx236827%_)
               (_%$%g236835237057%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx241254241255%_)))))
          (let ((_%__kont241256241257%_
                 (lambda (_%$%g236837237810%_
                          _%$%g236838237811%_
                          _%$%g236839237812%_
                          _%$%g236840237813%_)
                   (let ((__tmp242392
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236826%_ 'methods)))
                         (__tmp242391
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236838237811%_))))
                     (declare (not safe))
                     (hash-put! __tmp242392 __tmp242391 '#t))
                   (for-each
                    (lambda (_%$%g237846237848%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self236826%_ _%$%g237846237848%_)))
                    (let ((__tmp242393
                           (lambda (_%$%g237850237853%_ _%$%g237851237855%_)
                             (cons _%$%g237850237853%_ _%$%g237851237855%_))))
                      (declare (not safe))
                      (foldr__0 __tmp242393 '() _%$%g236837237810%_)))))
                (_%__kont241260241261%_
                 (lambda (_%$%g236880237647%_
                          _%$%g236881237648%_
                          _%$%g236882237649%_
                          _%$%g236883237650%_
                          _%$%g236884237651%_)
                   (let ((__tmp242395
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236826%_ 'methods)))
                         (__tmp242394
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236881237648%_))))
                     (declare (not safe))
                     (hash-put! __tmp242395 __tmp242394 '#t))
                   (for-each
                    (lambda (_%$%g237691237693%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self236826%_ _%$%g237691237693%_)))
                    (let ((__tmp242396
                           (lambda (_%$%g237695237698%_ _%$%g237696237700%_)
                             (cons _%$%g237695237698%_ _%$%g237696237700%_))))
                      (declare (not safe))
                      (foldr__0 __tmp242396 '() _%$%g236880237647%_)))))
                (_%__kont241264241265%_
                 (lambda (_%$%g236933237482%_
                          _%$%g236934237483%_
                          _%$%g236935237484%_)
                   (let ((__tmp242398
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236826%_ 'slots)))
                         (__tmp242397
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236933237482%_))))
                     (declare (not safe))
                     (hash-put! __tmp242398 __tmp242397 '#t))))
                (_%__kont241266241267%_
                 (lambda (_%$%g236966237359%_
                          _%$%g236967237360%_
                          _%$%g236968237361%_
                          _%$%g236969237362%_)
                   (let ((__tmp242400
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self236826%_ 'slots)))
                         (__tmp242399
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g236967237360%_))))
                     (declare (not safe))
                     (hash-put! __tmp242400 __tmp242399 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self236826%_ _%$%g236966237359%_))))
                (_%__kont241268241269%_
                 (lambda (_%$%g237003237233%_ _%$%g237004237234%_)
                   (let* ((_%accessor237256%_
                           (let ((__tmp242401
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g237004237234%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp242401)))
                          (_%klass237258%_
                           (let ((__tmp242402
                                  (##structure-ref
                                   _%accessor237256%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx236827%_
                              __tmp242402)))
                          (_%slot237260%_
                           (##structure-ref
                            _%accessor237256%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor237256%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass237258%_
                                    _%slot237260%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass237258%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp242404
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self236826%_ 'slots)))
                               (__tmp242403
                                (##structure-ref
                                 _%accessor237256%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp242404 __tmp242403 '#t))))))
                (_%__kont241270241271%_
                 (lambda (_%$%g237026237133%_
                          _%$%g237027237134%_
                          _%$%g237028237135%_)
                   (let* ((_%mutator237162%_
                           (let ((__tmp242405
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g237028237135%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp242405)))
                          (_%klass237164%_
                           (let ((__tmp242406
                                  (##structure-ref
                                   _%mutator237162%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx236827%_
                              __tmp242406)))
                          (_%slot237166%_
                           (##structure-ref
                            _%mutator237162%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator237162%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass237164%_
                                    _%slot237166%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass237164%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp242407
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self236826%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp242407 _%slot237166%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self236826%_
                        _%$%g237026237133%_)))))
                (_%__kont241272241273%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self236826%_ _%stx236827%_)))))
            (let* ((_%__match241753241754%_
                    (lambda (_%$%e237029237069%_
                             _%$%hd237030237072%_
                             _%$%tl237031237074%_
                             _%$%e237032237077%_
                             _%$%hd237033237080%_
                             _%$%tl237034237082%_
                             _%$%e237035237085%_
                             _%$%hd237036237088%_
                             _%$%tl237037237090%_
                             _%$%e237038237093%_
                             _%$%hd237039237096%_
                             _%$%tl237040237098%_
                             _%$%e237041237101%_
                             _%$%hd237042237104%_
                             _%$%tl237043237106%_
                             _%$%e237044237109%_
                             _%$%hd237045237112%_
                             _%$%tl237046237114%_
                             _%$%e237047237117%_
                             _%$%hd237048237120%_
                             _%$%tl237049237122%_
                             _%$%e237050237125%_
                             _%$%hd237051237128%_
                             _%$%tl237052237130%_)
                      (let ((_%$%g237026237133%_ _%$%hd237051237128%_)
                            (_%$%g237027237134%_ _%$%hd237048237120%_)
                            (_%$%g237028237135%_ _%$%hd237039237096%_))
                        (if (and (let ((__tmp242408
                                        (let ((__tmp242409
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g237028237135%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp242409))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp242408
                                    'gxc#!mutator::t))
                                 (let ((__tmp242410
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236826%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g237027237134%_
                                    __tmp242410)))
                            (_%__kont241270241271%_
                             _%$%g237026237133%_
                             _%$%g237027237134%_
                             _%$%g237028237135%_)
                            (_%__kont241272241273%_)))))
                   (_%__match241751241752%_
                    (lambda (_%$%e237029237069%_
                             _%$%hd237030237072%_
                             _%$%tl237031237074%_
                             _%$%e237032237077%_
                             _%$%hd237033237080%_
                             _%$%tl237034237082%_
                             _%$%e237035237085%_
                             _%$%hd237036237088%_
                             _%$%tl237037237090%_
                             _%$%e237038237093%_
                             _%$%hd237039237096%_
                             _%$%tl237040237098%_
                             _%$%e237041237101%_
                             _%$%hd237042237104%_
                             _%$%tl237043237106%_
                             _%$%e237044237109%_
                             _%$%hd237045237112%_
                             _%$%tl237046237114%_
                             _%$%e237047237117%_
                             _%$%hd237048237120%_
                             _%$%tl237049237122%_
                             _%$%e237050237125%_
                             _%$%hd237051237128%_
                             _%$%tl237052237130%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl237052237130%_))
                          (_%__match241753241754%_
                           _%$%e237029237069%_
                           _%$%hd237030237072%_
                           _%$%tl237031237074%_
                           _%$%e237032237077%_
                           _%$%hd237033237080%_
                           _%$%tl237034237082%_
                           _%$%e237035237085%_
                           _%$%hd237036237088%_
                           _%$%tl237037237090%_
                           _%$%e237038237093%_
                           _%$%hd237039237096%_
                           _%$%tl237040237098%_
                           _%$%e237041237101%_
                           _%$%hd237042237104%_
                           _%$%tl237043237106%_
                           _%$%e237044237109%_
                           _%$%hd237045237112%_
                           _%$%tl237046237114%_
                           _%$%e237047237117%_
                           _%$%hd237048237120%_
                           _%$%tl237049237122%_
                           _%$%e237050237125%_
                           _%$%hd237051237128%_
                           _%$%tl237052237130%_)
                          (_%__kont241272241273%_))))
                   (_%__match241745241746%_
                    (lambda (_%$%e237029237069%_
                             _%$%hd237030237072%_
                             _%$%tl237031237074%_
                             _%$%e237032237077%_
                             _%$%hd237033237080%_
                             _%$%tl237034237082%_
                             _%$%e237035237085%_
                             _%$%hd237036237088%_
                             _%$%tl237037237090%_
                             _%$%e237038237093%_
                             _%$%hd237039237096%_
                             _%$%tl237040237098%_
                             _%$%e237041237101%_
                             _%$%hd237042237104%_
                             _%$%tl237043237106%_
                             _%$%e237044237109%_
                             _%$%hd237045237112%_
                             _%$%tl237046237114%_
                             _%$%e237047237117%_
                             _%$%hd237048237120%_
                             _%$%tl237049237122%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl237043237106%_))
                          (let ((_%$%e237050237125%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl237043237106%_))))
                            (let ((_%$%tl237052237130%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e237050237125%_)))
                                  (_%$%hd237051237128%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e237050237125%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl237052237130%_))
                                  (_%__match241753241754%_
                                   _%$%e237029237069%_
                                   _%$%hd237030237072%_
                                   _%$%tl237031237074%_
                                   _%$%e237032237077%_
                                   _%$%hd237033237080%_
                                   _%$%tl237034237082%_
                                   _%$%e237035237085%_
                                   _%$%hd237036237088%_
                                   _%$%tl237037237090%_
                                   _%$%e237038237093%_
                                   _%$%hd237039237096%_
                                   _%$%tl237040237098%_
                                   _%$%e237041237101%_
                                   _%$%hd237042237104%_
                                   _%$%tl237043237106%_
                                   _%$%e237044237109%_
                                   _%$%hd237045237112%_
                                   _%$%tl237046237114%_
                                   _%$%e237047237117%_
                                   _%$%hd237048237120%_
                                   _%$%tl237049237122%_
                                   _%$%e237050237125%_
                                   _%$%hd237051237128%_
                                   _%$%tl237052237130%_)
                                  (_%__kont241272241273%_))))
                          (_%__kont241272241273%_))))
                   (_%__match241691241692%_
                    (lambda (_%$%e237005237177%_
                             _%$%hd237006237180%_
                             _%$%tl237007237182%_
                             _%$%e237008237185%_
                             _%$%hd237009237188%_
                             _%$%tl237010237190%_
                             _%$%e237011237193%_
                             _%$%hd237012237196%_
                             _%$%tl237013237198%_
                             _%$%e237014237201%_
                             _%$%hd237015237204%_
                             _%$%tl237016237206%_
                             _%$%e237017237209%_
                             _%$%hd237018237212%_
                             _%$%tl237019237214%_
                             _%$%e237020237217%_
                             _%$%hd237021237220%_
                             _%$%tl237022237222%_
                             _%$%e237023237225%_
                             _%$%hd237024237228%_
                             _%$%tl237025237230%_)
                      (let ((_%$%g237003237233%_ _%$%hd237024237228%_)
                            (_%$%g237004237234%_ _%$%hd237015237204%_))
                        (if (and (let ((__tmp242411
                                        (let ((__tmp242412
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g237004237234%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp242412))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp242411
                                    'gxc#!accessor::t))
                                 (let ((__tmp242413
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236826%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g237003237233%_
                                    __tmp242413)))
                            (_%__kont241268241269%_
                             _%$%g237003237233%_
                             _%$%g237004237234%_)
                            (_%__kont241272241273%_)))))
                   (_%__match241689241690%_
                    (lambda (_%$%e237005237177%_
                             _%$%hd237006237180%_
                             _%$%tl237007237182%_
                             _%$%e237008237185%_
                             _%$%hd237009237188%_
                             _%$%tl237010237190%_
                             _%$%e237011237193%_
                             _%$%hd237012237196%_
                             _%$%tl237013237198%_
                             _%$%e237014237201%_
                             _%$%hd237015237204%_
                             _%$%tl237016237206%_
                             _%$%e237017237209%_
                             _%$%hd237018237212%_
                             _%$%tl237019237214%_
                             _%$%e237020237217%_
                             _%$%hd237021237220%_
                             _%$%tl237022237222%_
                             _%$%e237023237225%_
                             _%$%hd237024237228%_
                             _%$%tl237025237230%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl237019237214%_))
                          (_%__match241691241692%_
                           _%$%e237005237177%_
                           _%$%hd237006237180%_
                           _%$%tl237007237182%_
                           _%$%e237008237185%_
                           _%$%hd237009237188%_
                           _%$%tl237010237190%_
                           _%$%e237011237193%_
                           _%$%hd237012237196%_
                           _%$%tl237013237198%_
                           _%$%e237014237201%_
                           _%$%hd237015237204%_
                           _%$%tl237016237206%_
                           _%$%e237017237209%_
                           _%$%hd237018237212%_
                           _%$%tl237019237214%_
                           _%$%e237020237217%_
                           _%$%hd237021237220%_
                           _%$%tl237022237222%_
                           _%$%e237023237225%_
                           _%$%hd237024237228%_
                           _%$%tl237025237230%_)
                          (_%__match241745241746%_
                           _%$%e237005237177%_
                           _%$%hd237006237180%_
                           _%$%tl237007237182%_
                           _%$%e237008237185%_
                           _%$%hd237009237188%_
                           _%$%tl237010237190%_
                           _%$%e237011237193%_
                           _%$%hd237012237196%_
                           _%$%tl237013237198%_
                           _%$%e237014237201%_
                           _%$%hd237015237204%_
                           _%$%tl237016237206%_
                           _%$%e237017237209%_
                           _%$%hd237018237212%_
                           _%$%tl237019237214%_
                           _%$%e237020237217%_
                           _%$%hd237021237220%_
                           _%$%tl237022237222%_
                           _%$%e237023237225%_
                           _%$%hd237024237228%_
                           _%$%tl237025237230%_))))
                   (_%__match241635241636%_
                    (lambda (_%$%e236970237271%_
                             _%$%hd236971237274%_
                             _%$%tl236972237276%_
                             _%$%e236973237279%_
                             _%$%hd236974237282%_
                             _%$%tl236975237284%_
                             _%$%e236976237287%_
                             _%$%hd236977237290%_
                             _%$%tl236978237292%_
                             _%$%e236979237295%_
                             _%$%hd236980237298%_
                             _%$%tl236981237300%_
                             _%$%e236982237303%_
                             _%$%hd236983237306%_
                             _%$%tl236984237308%_
                             _%$%e236985237311%_
                             _%$%hd236986237314%_
                             _%$%tl236987237316%_
                             _%$%e236988237319%_
                             _%$%hd236989237322%_
                             _%$%tl236990237324%_
                             _%$%e236991237327%_
                             _%$%hd236992237330%_
                             _%$%tl236993237332%_
                             _%$%e236994237335%_
                             _%$%hd236995237338%_
                             _%$%tl236996237340%_
                             _%$%e236997237343%_
                             _%$%hd236998237346%_
                             _%$%tl236999237348%_
                             _%$%e237000237351%_
                             _%$%hd237001237354%_
                             _%$%tl237002237356%_)
                      (let ((_%$%g236966237359%_ _%$%hd237001237354%_)
                            (_%$%g236967237360%_ _%$%hd236998237346%_)
                            (_%$%g236968237361%_ _%$%hd236989237322%_)
                            (_%$%g236969237362%_ _%$%hd236980237298%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236969237362%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236969237362%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp242414
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236826%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g236968237361%_
                                    __tmp242414)))
                            (_%__kont241266241267%_
                             _%$%g236966237359%_
                             _%$%g236967237360%_
                             _%$%g236968237361%_
                             _%$%g236969237362%_)
                            (_%__kont241272241273%_)))))
                   (_%__match241627241628%_
                    (lambda (_%$%e236970237271%_
                             _%$%hd236971237274%_
                             _%$%tl236972237276%_
                             _%$%e236973237279%_
                             _%$%hd236974237282%_
                             _%$%tl236975237284%_
                             _%$%e236976237287%_
                             _%$%hd236977237290%_
                             _%$%tl236978237292%_
                             _%$%e236979237295%_
                             _%$%hd236980237298%_
                             _%$%tl236981237300%_
                             _%$%e236982237303%_
                             _%$%hd236983237306%_
                             _%$%tl236984237308%_
                             _%$%e236985237311%_
                             _%$%hd236986237314%_
                             _%$%tl236987237316%_
                             _%$%e236988237319%_
                             _%$%hd236989237322%_
                             _%$%tl236990237324%_
                             _%$%e236991237327%_
                             _%$%hd236992237330%_
                             _%$%tl236993237332%_
                             _%$%e236994237335%_
                             _%$%hd236995237338%_
                             _%$%tl236996237340%_
                             _%$%e236997237343%_
                             _%$%hd236998237346%_
                             _%$%tl236999237348%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl236993237332%_))
                          (let ((_%$%e237000237351%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl236993237332%_))))
                            (let ((_%$%tl237002237356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e237000237351%_)))
                                  (_%$%hd237001237354%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e237000237351%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl237002237356%_))
                                  (_%__match241635241636%_
                                   _%$%e236970237271%_
                                   _%$%hd236971237274%_
                                   _%$%tl236972237276%_
                                   _%$%e236973237279%_
                                   _%$%hd236974237282%_
                                   _%$%tl236975237284%_
                                   _%$%e236976237287%_
                                   _%$%hd236977237290%_
                                   _%$%tl236978237292%_
                                   _%$%e236979237295%_
                                   _%$%hd236980237298%_
                                   _%$%tl236981237300%_
                                   _%$%e236982237303%_
                                   _%$%hd236983237306%_
                                   _%$%tl236984237308%_
                                   _%$%e236985237311%_
                                   _%$%hd236986237314%_
                                   _%$%tl236987237316%_
                                   _%$%e236988237319%_
                                   _%$%hd236989237322%_
                                   _%$%tl236990237324%_
                                   _%$%e236991237327%_
                                   _%$%hd236992237330%_
                                   _%$%tl236993237332%_
                                   _%$%e236994237335%_
                                   _%$%hd236995237338%_
                                   _%$%tl236996237340%_
                                   _%$%e236997237343%_
                                   _%$%hd236998237346%_
                                   _%$%tl236999237348%_
                                   _%$%e237000237351%_
                                   _%$%hd237001237354%_
                                   _%$%tl237002237356%_)
                                  (_%__kont241272241273%_))))
                          (_%__match241751241752%_
                           _%$%e236970237271%_
                           _%$%hd236971237274%_
                           _%$%tl236972237276%_
                           _%$%e236973237279%_
                           _%$%hd236974237282%_
                           _%$%tl236975237284%_
                           _%$%e236976237287%_
                           _%$%hd236977237290%_
                           _%$%tl236978237292%_
                           _%$%e236979237295%_
                           _%$%hd236980237298%_
                           _%$%tl236981237300%_
                           _%$%e236982237303%_
                           _%$%hd236983237306%_
                           _%$%tl236984237308%_
                           _%$%e236985237311%_
                           _%$%hd236986237314%_
                           _%$%tl236987237316%_
                           _%$%e236988237319%_
                           _%$%hd236989237322%_
                           _%$%tl236990237324%_
                           _%$%e236991237327%_
                           _%$%hd236992237330%_
                           _%$%tl236993237332%_))))
                   (_%__match241549241550%_
                    (lambda (_%$%e236936237402%_
                             _%$%hd236937237405%_
                             _%$%tl236938237407%_
                             _%$%e236939237410%_
                             _%$%hd236940237413%_
                             _%$%tl236941237415%_
                             _%$%e236942237418%_
                             _%$%hd236943237421%_
                             _%$%tl236944237423%_
                             _%$%e236945237426%_
                             _%$%hd236946237429%_
                             _%$%tl236947237431%_
                             _%$%e236948237434%_
                             _%$%hd236949237437%_
                             _%$%tl236950237439%_
                             _%$%e236951237442%_
                             _%$%hd236952237445%_
                             _%$%tl236953237447%_
                             _%$%e236954237450%_
                             _%$%hd236955237453%_
                             _%$%tl236956237455%_
                             _%$%e236957237458%_
                             _%$%hd236958237461%_
                             _%$%tl236959237463%_
                             _%$%e236960237466%_
                             _%$%hd236961237469%_
                             _%$%tl236962237471%_
                             _%$%e236963237474%_
                             _%$%hd236964237477%_
                             _%$%tl236965237479%_)
                      (let ((_%$%g236933237482%_ _%$%hd236964237477%_)
                            (_%$%g236934237483%_ _%$%hd236955237453%_)
                            (_%$%g236935237484%_ _%$%hd236946237429%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236935237484%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g236935237484%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp242415
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self236826%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g236934237483%_
                                    __tmp242415)))
                            (_%__kont241264241265%_
                             _%$%g236933237482%_
                             _%$%g236934237483%_
                             _%$%g236935237484%_)
                            (_%__match241753241754%_
                             _%$%e236936237402%_
                             _%$%hd236937237405%_
                             _%$%tl236938237407%_
                             _%$%e236939237410%_
                             _%$%hd236940237413%_
                             _%$%tl236941237415%_
                             _%$%e236942237418%_
                             _%$%hd236943237421%_
                             _%$%tl236944237423%_
                             _%$%e236945237426%_
                             _%$%hd236946237429%_
                             _%$%tl236947237431%_
                             _%$%e236948237434%_
                             _%$%hd236949237437%_
                             _%$%tl236950237439%_
                             _%$%e236951237442%_
                             _%$%hd236952237445%_
                             _%$%tl236953237447%_
                             _%$%e236954237450%_
                             _%$%hd236955237453%_
                             _%$%tl236956237455%_
                             _%$%e236957237458%_
                             _%$%hd236958237461%_
                             _%$%tl236959237463%_)))))
                   (_%__match241547241548%_
                    (lambda (_%$%e236936237402%_
                             _%$%hd236937237405%_
                             _%$%tl236938237407%_
                             _%$%e236939237410%_
                             _%$%hd236940237413%_
                             _%$%tl236941237415%_
                             _%$%e236942237418%_
                             _%$%hd236943237421%_
                             _%$%tl236944237423%_
                             _%$%e236945237426%_
                             _%$%hd236946237429%_
                             _%$%tl236947237431%_
                             _%$%e236948237434%_
                             _%$%hd236949237437%_
                             _%$%tl236950237439%_
                             _%$%e236951237442%_
                             _%$%hd236952237445%_
                             _%$%tl236953237447%_
                             _%$%e236954237450%_
                             _%$%hd236955237453%_
                             _%$%tl236956237455%_
                             _%$%e236957237458%_
                             _%$%hd236958237461%_
                             _%$%tl236959237463%_
                             _%$%e236960237466%_
                             _%$%hd236961237469%_
                             _%$%tl236962237471%_
                             _%$%e236963237474%_
                             _%$%hd236964237477%_
                             _%$%tl236965237479%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl236959237463%_))
                          (_%__match241549241550%_
                           _%$%e236936237402%_
                           _%$%hd236937237405%_
                           _%$%tl236938237407%_
                           _%$%e236939237410%_
                           _%$%hd236940237413%_
                           _%$%tl236941237415%_
                           _%$%e236942237418%_
                           _%$%hd236943237421%_
                           _%$%tl236944237423%_
                           _%$%e236945237426%_
                           _%$%hd236946237429%_
                           _%$%tl236947237431%_
                           _%$%e236948237434%_
                           _%$%hd236949237437%_
                           _%$%tl236950237439%_
                           _%$%e236951237442%_
                           _%$%hd236952237445%_
                           _%$%tl236953237447%_
                           _%$%e236954237450%_
                           _%$%hd236955237453%_
                           _%$%tl236956237455%_
                           _%$%e236957237458%_
                           _%$%hd236958237461%_
                           _%$%tl236959237463%_
                           _%$%e236960237466%_
                           _%$%hd236961237469%_
                           _%$%tl236962237471%_
                           _%$%e236963237474%_
                           _%$%hd236964237477%_
                           _%$%tl236965237479%_)
                          (_%__match241627241628%_
                           _%$%e236936237402%_
                           _%$%hd236937237405%_
                           _%$%tl236938237407%_
                           _%$%e236939237410%_
                           _%$%hd236940237413%_
                           _%$%tl236941237415%_
                           _%$%e236942237418%_
                           _%$%hd236943237421%_
                           _%$%tl236944237423%_
                           _%$%e236945237426%_
                           _%$%hd236946237429%_
                           _%$%tl236947237431%_
                           _%$%e236948237434%_
                           _%$%hd236949237437%_
                           _%$%tl236950237439%_
                           _%$%e236951237442%_
                           _%$%hd236952237445%_
                           _%$%tl236953237447%_
                           _%$%e236954237450%_
                           _%$%hd236955237453%_
                           _%$%tl236956237455%_
                           _%$%e236957237458%_
                           _%$%hd236958237461%_
                           _%$%tl236959237463%_
                           _%$%e236960237466%_
                           _%$%hd236961237469%_
                           _%$%tl236962237471%_
                           _%$%e236963237474%_
                           _%$%hd236964237477%_
                           _%$%tl236965237479%_))))
                   (_%__match241537241538%_
                    (lambda (_%$%e236936237402%_
                             _%$%hd236937237405%_
                             _%$%tl236938237407%_
                             _%$%e236939237410%_
                             _%$%hd236940237413%_
                             _%$%tl236941237415%_
                             _%$%e236942237418%_
                             _%$%hd236943237421%_
                             _%$%tl236944237423%_
                             _%$%e236945237426%_
                             _%$%hd236946237429%_
                             _%$%tl236947237431%_
                             _%$%e236948237434%_
                             _%$%hd236949237437%_
                             _%$%tl236950237439%_
                             _%$%e236951237442%_
                             _%$%hd236952237445%_
                             _%$%tl236953237447%_
                             _%$%e236954237450%_
                             _%$%hd236955237453%_
                             _%$%tl236956237455%_
                             _%$%e236957237458%_
                             _%$%hd236958237461%_
                             _%$%tl236959237463%_
                             _%$%e236960237466%_
                             _%$%hd236961237469%_
                             _%$%tl236962237471%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd236961237469%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl236962237471%_))
                              (let ((_%$%e236963237474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl236962237471%_))))
                                (let ((_%$%tl236965237479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e236963237474%_)))
                                      (_%$%hd236964237477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e236963237474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl236965237479%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl236959237463%_))
                                          (_%__match241549241550%_
                                           _%$%e236936237402%_
                                           _%$%hd236937237405%_
                                           _%$%tl236938237407%_
                                           _%$%e236939237410%_
                                           _%$%hd236940237413%_
                                           _%$%tl236941237415%_
                                           _%$%e236942237418%_
                                           _%$%hd236943237421%_
                                           _%$%tl236944237423%_
                                           _%$%e236945237426%_
                                           _%$%hd236946237429%_
                                           _%$%tl236947237431%_
                                           _%$%e236948237434%_
                                           _%$%hd236949237437%_
                                           _%$%tl236950237439%_
                                           _%$%e236951237442%_
                                           _%$%hd236952237445%_
                                           _%$%tl236953237447%_
                                           _%$%e236954237450%_
                                           _%$%hd236955237453%_
                                           _%$%tl236956237455%_
                                           _%$%e236957237458%_
                                           _%$%hd236958237461%_
                                           _%$%tl236959237463%_
                                           _%$%e236960237466%_
                                           _%$%hd236961237469%_
                                           _%$%tl236962237471%_
                                           _%$%e236963237474%_
                                           _%$%hd236964237477%_
                                           _%$%tl236965237479%_)
                                          (_%__match241627241628%_
                                           _%$%e236936237402%_
                                           _%$%hd236937237405%_
                                           _%$%tl236938237407%_
                                           _%$%e236939237410%_
                                           _%$%hd236940237413%_
                                           _%$%tl236941237415%_
                                           _%$%e236942237418%_
                                           _%$%hd236943237421%_
                                           _%$%tl236944237423%_
                                           _%$%e236945237426%_
                                           _%$%hd236946237429%_
                                           _%$%tl236947237431%_
                                           _%$%e236948237434%_
                                           _%$%hd236949237437%_
                                           _%$%tl236950237439%_
                                           _%$%e236951237442%_
                                           _%$%hd236952237445%_
                                           _%$%tl236953237447%_
                                           _%$%e236954237450%_
                                           _%$%hd236955237453%_
                                           _%$%tl236956237455%_
                                           _%$%e236957237458%_
                                           _%$%hd236958237461%_
                                           _%$%tl236959237463%_
                                           _%$%e236960237466%_
                                           _%$%hd236961237469%_
                                           _%$%tl236962237471%_
                                           _%$%e236963237474%_
                                           _%$%hd236964237477%_
                                           _%$%tl236965237479%_))
                                      (_%__match241751241752%_
                                       _%$%e236936237402%_
                                       _%$%hd236937237405%_
                                       _%$%tl236938237407%_
                                       _%$%e236939237410%_
                                       _%$%hd236940237413%_
                                       _%$%tl236941237415%_
                                       _%$%e236942237418%_
                                       _%$%hd236943237421%_
                                       _%$%tl236944237423%_
                                       _%$%e236945237426%_
                                       _%$%hd236946237429%_
                                       _%$%tl236947237431%_
                                       _%$%e236948237434%_
                                       _%$%hd236949237437%_
                                       _%$%tl236950237439%_
                                       _%$%e236951237442%_
                                       _%$%hd236952237445%_
                                       _%$%tl236953237447%_
                                       _%$%e236954237450%_
                                       _%$%hd236955237453%_
                                       _%$%tl236956237455%_
                                       _%$%e236957237458%_
                                       _%$%hd236958237461%_
                                       _%$%tl236959237463%_))))
                              (_%__match241751241752%_
                               _%$%e236936237402%_
                               _%$%hd236937237405%_
                               _%$%tl236938237407%_
                               _%$%e236939237410%_
                               _%$%hd236940237413%_
                               _%$%tl236941237415%_
                               _%$%e236942237418%_
                               _%$%hd236943237421%_
                               _%$%tl236944237423%_
                               _%$%e236945237426%_
                               _%$%hd236946237429%_
                               _%$%tl236947237431%_
                               _%$%e236948237434%_
                               _%$%hd236949237437%_
                               _%$%tl236950237439%_
                               _%$%e236951237442%_
                               _%$%hd236952237445%_
                               _%$%tl236953237447%_
                               _%$%e236954237450%_
                               _%$%hd236955237453%_
                               _%$%tl236956237455%_
                               _%$%e236957237458%_
                               _%$%hd236958237461%_
                               _%$%tl236959237463%_))
                          (_%__match241751241752%_
                           _%$%e236936237402%_
                           _%$%hd236937237405%_
                           _%$%tl236938237407%_
                           _%$%e236939237410%_
                           _%$%hd236940237413%_
                           _%$%tl236941237415%_
                           _%$%e236942237418%_
                           _%$%hd236943237421%_
                           _%$%tl236944237423%_
                           _%$%e236945237426%_
                           _%$%hd236946237429%_
                           _%$%tl236947237431%_
                           _%$%e236948237434%_
                           _%$%hd236949237437%_
                           _%$%tl236950237439%_
                           _%$%e236951237442%_
                           _%$%hd236952237445%_
                           _%$%tl236953237447%_
                           _%$%e236954237450%_
                           _%$%hd236955237453%_
                           _%$%tl236956237455%_
                           _%$%e236957237458%_
                           _%$%hd236958237461%_
                           _%$%tl236959237463%_))))
                   (_%__match241469241470%_
                    (lambda (_%$%e236885237521%_
                             _%$%hd236886237524%_
                             _%$%tl236887237526%_
                             _%$%e236888237529%_
                             _%$%hd236889237532%_
                             _%$%tl236890237534%_
                             _%$%e236891237537%_
                             _%$%hd236892237540%_
                             _%$%tl236893237542%_
                             _%$%e236894237545%_
                             _%$%hd236895237548%_
                             _%$%tl236896237550%_
                             _%$%e236897237553%_
                             _%$%hd236898237556%_
                             _%$%tl236899237558%_
                             _%$%e236900237561%_
                             _%$%hd236901237564%_
                             _%$%tl236902237566%_
                             _%$%e236903237569%_
                             _%$%hd236904237572%_
                             _%$%tl236905237574%_
                             _%$%e236906237577%_
                             _%$%hd236907237580%_
                             _%$%tl236908237582%_
                             _%$%e236909237585%_
                             _%$%hd236910237588%_
                             _%$%tl236911237590%_
                             _%$%e236912237593%_
                             _%$%hd236913237596%_
                             _%$%tl236914237598%_
                             _%$%e236915237601%_
                             _%$%hd236916237604%_
                             _%$%tl236917237606%_
                             _%$%e236918237609%_
                             _%$%hd236919237612%_
                             _%$%tl236920237614%_
                             _%$%e236921237617%_
                             _%$%hd236922237620%_
                             _%$%tl236923237622%_
                             _%__splice241262241263%_
                             _%$%target236924237625%_
                             _%$%tl236926237627%_)
                      (letrec ((_%$%loop236927237630%_
                                (lambda (_%$%hd236925237633%_
                                         _%$%args236931237635%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd236925237633%_))
                                      (let ((_%$%e236928237637%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd236925237633%_))))
                                        (let ((_%$%lp-tl236930237642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e236928237637%_)))
                                              (_%$%lp-hd236929237640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e236928237637%_))))
                                          (_%$%loop236927237630%_
                                           _%$%lp-tl236930237642%_
                                           (cons _%$%lp-hd236929237640%_
                                                 _%$%args236931237635%_))))
                                      (let ((_%$%args236932237645%_
                                             (reverse _%$%args236931237635%_)))
                                        (let ((_%$%g236880237647%_
                                               _%$%args236932237645%_)
                                              (_%$%g236881237648%_
                                               _%$%hd236922237620%_)
                                              (_%$%g236882237649%_
                                               _%$%hd236913237596%_)
                                              (_%$%g236883237650%_
                                               _%$%hd236904237572%_)
                                              (_%$%g236884237651%_
                                               _%$%hd236895237548%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g236884237651%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g236883237650%_
                                                      'call-method))
                                                   (let ((__tmp242416
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self236826%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g236882237649%_
                                                      __tmp242416)))
                                              (_%__kont241260241261%_
                                               _%$%g236880237647%_
                                               _%$%g236881237648%_
                                               _%$%g236882237649%_
                                               _%$%g236883237650%_
                                               _%$%g236884237651%_)
                                              (_%__kont241272241273%_))))))))
                        (_%$%loop236927237630%_
                         _%$%target236924237625%_
                         '()))))
                   (_%__match241427241428%_
                    (lambda (_%$%e236885237521%_
                             _%$%hd236886237524%_
                             _%$%tl236887237526%_
                             _%$%e236888237529%_
                             _%$%hd236889237532%_
                             _%$%tl236890237534%_
                             _%$%e236891237537%_
                             _%$%hd236892237540%_
                             _%$%tl236893237542%_
                             _%$%e236894237545%_
                             _%$%hd236895237548%_
                             _%$%tl236896237550%_
                             _%$%e236897237553%_
                             _%$%hd236898237556%_
                             _%$%tl236899237558%_
                             _%$%e236900237561%_
                             _%$%hd236901237564%_
                             _%$%tl236902237566%_
                             _%$%e236903237569%_
                             _%$%hd236904237572%_
                             _%$%tl236905237574%_
                             _%$%e236906237577%_
                             _%$%hd236907237580%_
                             _%$%tl236908237582%_
                             _%$%e236909237585%_
                             _%$%hd236910237588%_
                             _%$%tl236911237590%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd236910237588%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl236911237590%_))
                              (let ((_%$%e236912237593%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl236911237590%_))))
                                (let ((_%$%tl236914237598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e236912237593%_)))
                                      (_%$%hd236913237596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e236912237593%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl236914237598%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl236908237582%_))
                                          (let ((_%$%e236915237601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl236908237582%_))))
                                            (let ((_%$%tl236917237606%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e236915237601%_)))
                                                  (_%$%hd236916237604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e236915237601%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd236916237604%_))
                                                  (let ((_%$%e236918237609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd236916237604%_))))
                                                    (let ((_%$%tl236920237614%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e236918237609%_)))
                                                          (_%$%hd236919237612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e236918237609%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd236919237612%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd236919237612%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl236920237614%_))
                          (let ((_%$%e236921237617%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl236920237614%_))))
                            (let ((_%$%tl236923237622%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236921237617%_)))
                                  (_%$%hd236922237620%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236921237617%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl236923237622%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl236917237606%_))
                                      (let ((_%__splice241262241263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl236917237606%_
                                                '0))))
                                        (let ((_%$%tl236926237627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice241262241263%_
                                                  '1)))
                                              (_%$%target236924237625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice241262241263%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl236926237627%_))
                                              (_%__match241469241470%_
                                               _%$%e236885237521%_
                                               _%$%hd236886237524%_
                                               _%$%tl236887237526%_
                                               _%$%e236888237529%_
                                               _%$%hd236889237532%_
                                               _%$%tl236890237534%_
                                               _%$%e236891237537%_
                                               _%$%hd236892237540%_
                                               _%$%tl236893237542%_
                                               _%$%e236894237545%_
                                               _%$%hd236895237548%_
                                               _%$%tl236896237550%_
                                               _%$%e236897237553%_
                                               _%$%hd236898237556%_
                                               _%$%tl236899237558%_
                                               _%$%e236900237561%_
                                               _%$%hd236901237564%_
                                               _%$%tl236902237566%_
                                               _%$%e236903237569%_
                                               _%$%hd236904237572%_
                                               _%$%tl236905237574%_
                                               _%$%e236906237577%_
                                               _%$%hd236907237580%_
                                               _%$%tl236908237582%_
                                               _%$%e236909237585%_
                                               _%$%hd236910237588%_
                                               _%$%tl236911237590%_
                                               _%$%e236912237593%_
                                               _%$%hd236913237596%_
                                               _%$%tl236914237598%_
                                               _%$%e236915237601%_
                                               _%$%hd236916237604%_
                                               _%$%tl236917237606%_
                                               _%$%e236918237609%_
                                               _%$%hd236919237612%_
                                               _%$%tl236920237614%_
                                               _%$%e236921237617%_
                                               _%$%hd236922237620%_
                                               _%$%tl236923237622%_
                                               _%__splice241262241263%_
                                               _%$%target236924237625%_
                                               _%$%tl236926237627%_)
                                              (_%__kont241272241273%_))))
                                      (_%__kont241272241273%_))
                                  (_%__kont241272241273%_))))
                          (_%__kont241272241273%_))
                      (_%__kont241272241273%_))
                  (_%__kont241272241273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont241272241273%_))))
                                          (_%__match241751241752%_
                                           _%$%e236885237521%_
                                           _%$%hd236886237524%_
                                           _%$%tl236887237526%_
                                           _%$%e236888237529%_
                                           _%$%hd236889237532%_
                                           _%$%tl236890237534%_
                                           _%$%e236891237537%_
                                           _%$%hd236892237540%_
                                           _%$%tl236893237542%_
                                           _%$%e236894237545%_
                                           _%$%hd236895237548%_
                                           _%$%tl236896237550%_
                                           _%$%e236897237553%_
                                           _%$%hd236898237556%_
                                           _%$%tl236899237558%_
                                           _%$%e236900237561%_
                                           _%$%hd236901237564%_
                                           _%$%tl236902237566%_
                                           _%$%e236903237569%_
                                           _%$%hd236904237572%_
                                           _%$%tl236905237574%_
                                           _%$%e236906237577%_
                                           _%$%hd236907237580%_
                                           _%$%tl236908237582%_))
                                      (_%__match241751241752%_
                                       _%$%e236885237521%_
                                       _%$%hd236886237524%_
                                       _%$%tl236887237526%_
                                       _%$%e236888237529%_
                                       _%$%hd236889237532%_
                                       _%$%tl236890237534%_
                                       _%$%e236891237537%_
                                       _%$%hd236892237540%_
                                       _%$%tl236893237542%_
                                       _%$%e236894237545%_
                                       _%$%hd236895237548%_
                                       _%$%tl236896237550%_
                                       _%$%e236897237553%_
                                       _%$%hd236898237556%_
                                       _%$%tl236899237558%_
                                       _%$%e236900237561%_
                                       _%$%hd236901237564%_
                                       _%$%tl236902237566%_
                                       _%$%e236903237569%_
                                       _%$%hd236904237572%_
                                       _%$%tl236905237574%_
                                       _%$%e236906237577%_
                                       _%$%hd236907237580%_
                                       _%$%tl236908237582%_))))
                              (_%__match241751241752%_
                               _%$%e236885237521%_
                               _%$%hd236886237524%_
                               _%$%tl236887237526%_
                               _%$%e236888237529%_
                               _%$%hd236889237532%_
                               _%$%tl236890237534%_
                               _%$%e236891237537%_
                               _%$%hd236892237540%_
                               _%$%tl236893237542%_
                               _%$%e236894237545%_
                               _%$%hd236895237548%_
                               _%$%tl236896237550%_
                               _%$%e236897237553%_
                               _%$%hd236898237556%_
                               _%$%tl236899237558%_
                               _%$%e236900237561%_
                               _%$%hd236901237564%_
                               _%$%tl236902237566%_
                               _%$%e236903237569%_
                               _%$%hd236904237572%_
                               _%$%tl236905237574%_
                               _%$%e236906237577%_
                               _%$%hd236907237580%_
                               _%$%tl236908237582%_))
                          (_%__match241537241538%_
                           _%$%e236885237521%_
                           _%$%hd236886237524%_
                           _%$%tl236887237526%_
                           _%$%e236888237529%_
                           _%$%hd236889237532%_
                           _%$%tl236890237534%_
                           _%$%e236891237537%_
                           _%$%hd236892237540%_
                           _%$%tl236893237542%_
                           _%$%e236894237545%_
                           _%$%hd236895237548%_
                           _%$%tl236896237550%_
                           _%$%e236897237553%_
                           _%$%hd236898237556%_
                           _%$%tl236899237558%_
                           _%$%e236900237561%_
                           _%$%hd236901237564%_
                           _%$%tl236902237566%_
                           _%$%e236903237569%_
                           _%$%hd236904237572%_
                           _%$%tl236905237574%_
                           _%$%e236906237577%_
                           _%$%hd236907237580%_
                           _%$%tl236908237582%_
                           _%$%e236909237585%_
                           _%$%hd236910237588%_
                           _%$%tl236911237590%_))))
                   (_%__match241359241360%_
                    (lambda (_%$%e236841237708%_
                             _%$%hd236842237711%_
                             _%$%tl236843237713%_
                             _%$%e236844237716%_
                             _%$%hd236845237719%_
                             _%$%tl236846237721%_
                             _%$%e236847237724%_
                             _%$%hd236848237727%_
                             _%$%tl236849237729%_
                             _%$%e236850237732%_
                             _%$%hd236851237735%_
                             _%$%tl236852237737%_
                             _%$%e236853237740%_
                             _%$%hd236854237743%_
                             _%$%tl236855237745%_
                             _%$%e236856237748%_
                             _%$%hd236857237751%_
                             _%$%tl236858237753%_
                             _%$%e236859237756%_
                             _%$%hd236860237759%_
                             _%$%tl236861237761%_
                             _%$%e236862237764%_
                             _%$%hd236863237767%_
                             _%$%tl236864237769%_
                             _%$%e236865237772%_
                             _%$%hd236866237775%_
                             _%$%tl236867237777%_
                             _%$%e236868237780%_
                             _%$%hd236869237783%_
                             _%$%tl236870237785%_
                             _%__splice241258241259%_
                             _%$%target236871237788%_
                             _%$%tl236873237790%_)
                      (letrec ((_%$%loop236874237793%_
                                (lambda (_%$%hd236872237796%_
                                         _%$%args236878237798%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd236872237796%_))
                                      (let ((_%$%e236875237800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd236872237796%_))))
                                        (let ((_%$%lp-tl236877237805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e236875237800%_)))
                                              (_%$%lp-hd236876237803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e236875237800%_))))
                                          (_%$%loop236874237793%_
                                           _%$%lp-tl236877237805%_
                                           (cons _%$%lp-hd236876237803%_
                                                 _%$%args236878237798%_))))
                                      (let ((_%$%args236879237808%_
                                             (reverse _%$%args236878237798%_)))
                                        (let ((_%$%g236837237810%_
                                               _%$%args236879237808%_)
                                              (_%$%g236838237811%_
                                               _%$%hd236869237783%_)
                                              (_%$%g236839237812%_
                                               _%$%hd236860237759%_)
                                              (_%$%g236840237813%_
                                               _%$%hd236851237735%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g236840237813%_
                                                      'call-method))
                                                   (let ((__tmp242417
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self236826%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g236839237812%_
                                                      __tmp242417)))
                                              (_%__kont241256241257%_
                                               _%$%g236837237810%_
                                               _%$%g236838237811%_
                                               _%$%g236839237812%_
                                               _%$%g236840237813%_)
                                              (_%__match241547241548%_
                                               _%$%e236841237708%_
                                               _%$%hd236842237711%_
                                               _%$%tl236843237713%_
                                               _%$%e236844237716%_
                                               _%$%hd236845237719%_
                                               _%$%tl236846237721%_
                                               _%$%e236847237724%_
                                               _%$%hd236848237727%_
                                               _%$%tl236849237729%_
                                               _%$%e236850237732%_
                                               _%$%hd236851237735%_
                                               _%$%tl236852237737%_
                                               _%$%e236853237740%_
                                               _%$%hd236854237743%_
                                               _%$%tl236855237745%_
                                               _%$%e236856237748%_
                                               _%$%hd236857237751%_
                                               _%$%tl236858237753%_
                                               _%$%e236859237756%_
                                               _%$%hd236860237759%_
                                               _%$%tl236861237761%_
                                               _%$%e236862237764%_
                                               _%$%hd236863237767%_
                                               _%$%tl236864237769%_
                                               _%$%e236865237772%_
                                               _%$%hd236866237775%_
                                               _%$%tl236867237777%_
                                               _%$%e236868237780%_
                                               _%$%hd236869237783%_
                                               _%$%tl236870237785%_))))))))
                        (_%$%loop236874237793%_
                         _%$%target236871237788%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx241254241255%_))
                  (let ((_%$%e236841237708%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx241254241255%_))))
                    (let ((_%$%tl236843237713%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e236841237708%_)))
                          (_%$%hd236842237711%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e236841237708%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl236843237713%_))
                          (let ((_%$%e236844237716%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl236843237713%_))))
                            (let ((_%$%tl236846237721%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236844237716%_)))
                                  (_%$%hd236845237719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236844237716%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd236845237719%_))
                                  (let ((_%$%e236847237724%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd236845237719%_))))
                                    (let ((_%$%tl236849237729%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e236847237724%_)))
                                          (_%$%hd236848237727%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e236847237724%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd236848237727%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd236848237727%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl236849237729%_))
                                                  (let ((_%$%e236850237732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl236849237729%_))))
                                                    (let ((_%$%tl236852237737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e236850237732%_)))
                                                          (_%$%hd236851237735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e236850237732%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl236852237737%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl236846237721%_))
                      (let ((_%$%e236853237740%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl236846237721%_))))
                        (let ((_%$%tl236855237745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e236853237740%_)))
                              (_%$%hd236854237743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e236853237740%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd236854237743%_))
                              (let ((_%$%e236856237748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd236854237743%_))))
                                (let ((_%$%tl236858237753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e236856237748%_)))
                                      (_%$%hd236857237751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e236856237748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd236857237751%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd236857237751%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl236858237753%_))
                                              (let ((_%$%e236859237756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl236858237753%_))))
                                                (let ((_%$%tl236861237761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e236859237756%_)))
                                                      (_%$%hd236860237759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e236859237756%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl236861237761%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl236855237745%_))
                                                          (let ((_%$%e236862237764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl236855237745%_))))
                    (let ((_%$%tl236864237769%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e236862237764%_)))
                          (_%$%hd236863237767%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e236862237764%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd236863237767%_))
                          (let ((_%$%e236865237772%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd236863237767%_))))
                            (let ((_%$%tl236867237777%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e236865237772%_)))
                                  (_%$%hd236866237775%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e236865237772%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd236866237775%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd236866237775%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl236867237777%_))
                                          (let ((_%$%e236868237780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl236867237777%_))))
                                            (let ((_%$%tl236870237785%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e236868237780%_)))
                                                  (_%$%hd236869237783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e236868237780%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl236870237785%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl236864237769%_))
                                                      (let ((_%__splice241258241259%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl236864237769%_
                        '0))))
                (let ((_%$%tl236873237790%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice241258241259%_ '1)))
                      (_%$%target236871237788%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice241258241259%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl236873237790%_))
                      (_%__match241359241360%_
                       _%$%e236841237708%_
                       _%$%hd236842237711%_
                       _%$%tl236843237713%_
                       _%$%e236844237716%_
                       _%$%hd236845237719%_
                       _%$%tl236846237721%_
                       _%$%e236847237724%_
                       _%$%hd236848237727%_
                       _%$%tl236849237729%_
                       _%$%e236850237732%_
                       _%$%hd236851237735%_
                       _%$%tl236852237737%_
                       _%$%e236853237740%_
                       _%$%hd236854237743%_
                       _%$%tl236855237745%_
                       _%$%e236856237748%_
                       _%$%hd236857237751%_
                       _%$%tl236858237753%_
                       _%$%e236859237756%_
                       _%$%hd236860237759%_
                       _%$%tl236861237761%_
                       _%$%e236862237764%_
                       _%$%hd236863237767%_
                       _%$%tl236864237769%_
                       _%$%e236865237772%_
                       _%$%hd236866237775%_
                       _%$%tl236867237777%_
                       _%$%e236868237780%_
                       _%$%hd236869237783%_
                       _%$%tl236870237785%_
                       _%__splice241258241259%_
                       _%$%target236871237788%_
                       _%$%tl236873237790%_)
                      (_%__match241547241548%_
                       _%$%e236841237708%_
                       _%$%hd236842237711%_
                       _%$%tl236843237713%_
                       _%$%e236844237716%_
                       _%$%hd236845237719%_
                       _%$%tl236846237721%_
                       _%$%e236847237724%_
                       _%$%hd236848237727%_
                       _%$%tl236849237729%_
                       _%$%e236850237732%_
                       _%$%hd236851237735%_
                       _%$%tl236852237737%_
                       _%$%e236853237740%_
                       _%$%hd236854237743%_
                       _%$%tl236855237745%_
                       _%$%e236856237748%_
                       _%$%hd236857237751%_
                       _%$%tl236858237753%_
                       _%$%e236859237756%_
                       _%$%hd236860237759%_
                       _%$%tl236861237761%_
                       _%$%e236862237764%_
                       _%$%hd236863237767%_
                       _%$%tl236864237769%_
                       _%$%e236865237772%_
                       _%$%hd236866237775%_
                       _%$%tl236867237777%_
                       _%$%e236868237780%_
                       _%$%hd236869237783%_
                       _%$%tl236870237785%_))))
              (_%__match241547241548%_
               _%$%e236841237708%_
               _%$%hd236842237711%_
               _%$%tl236843237713%_
               _%$%e236844237716%_
               _%$%hd236845237719%_
               _%$%tl236846237721%_
               _%$%e236847237724%_
               _%$%hd236848237727%_
               _%$%tl236849237729%_
               _%$%e236850237732%_
               _%$%hd236851237735%_
               _%$%tl236852237737%_
               _%$%e236853237740%_
               _%$%hd236854237743%_
               _%$%tl236855237745%_
               _%$%e236856237748%_
               _%$%hd236857237751%_
               _%$%tl236858237753%_
               _%$%e236859237756%_
               _%$%hd236860237759%_
               _%$%tl236861237761%_
               _%$%e236862237764%_
               _%$%hd236863237767%_
               _%$%tl236864237769%_
               _%$%e236865237772%_
               _%$%hd236866237775%_
               _%$%tl236867237777%_
               _%$%e236868237780%_
               _%$%hd236869237783%_
               _%$%tl236870237785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match241751241752%_
                                                   _%$%e236841237708%_
                                                   _%$%hd236842237711%_
                                                   _%$%tl236843237713%_
                                                   _%$%e236844237716%_
                                                   _%$%hd236845237719%_
                                                   _%$%tl236846237721%_
                                                   _%$%e236847237724%_
                                                   _%$%hd236848237727%_
                                                   _%$%tl236849237729%_
                                                   _%$%e236850237732%_
                                                   _%$%hd236851237735%_
                                                   _%$%tl236852237737%_
                                                   _%$%e236853237740%_
                                                   _%$%hd236854237743%_
                                                   _%$%tl236855237745%_
                                                   _%$%e236856237748%_
                                                   _%$%hd236857237751%_
                                                   _%$%tl236858237753%_
                                                   _%$%e236859237756%_
                                                   _%$%hd236860237759%_
                                                   _%$%tl236861237761%_
                                                   _%$%e236862237764%_
                                                   _%$%hd236863237767%_
                                                   _%$%tl236864237769%_))))
                                          (_%__match241751241752%_
                                           _%$%e236841237708%_
                                           _%$%hd236842237711%_
                                           _%$%tl236843237713%_
                                           _%$%e236844237716%_
                                           _%$%hd236845237719%_
                                           _%$%tl236846237721%_
                                           _%$%e236847237724%_
                                           _%$%hd236848237727%_
                                           _%$%tl236849237729%_
                                           _%$%e236850237732%_
                                           _%$%hd236851237735%_
                                           _%$%tl236852237737%_
                                           _%$%e236853237740%_
                                           _%$%hd236854237743%_
                                           _%$%tl236855237745%_
                                           _%$%e236856237748%_
                                           _%$%hd236857237751%_
                                           _%$%tl236858237753%_
                                           _%$%e236859237756%_
                                           _%$%hd236860237759%_
                                           _%$%tl236861237761%_
                                           _%$%e236862237764%_
                                           _%$%hd236863237767%_
                                           _%$%tl236864237769%_))
                                      (_%__match241427241428%_
                                       _%$%e236841237708%_
                                       _%$%hd236842237711%_
                                       _%$%tl236843237713%_
                                       _%$%e236844237716%_
                                       _%$%hd236845237719%_
                                       _%$%tl236846237721%_
                                       _%$%e236847237724%_
                                       _%$%hd236848237727%_
                                       _%$%tl236849237729%_
                                       _%$%e236850237732%_
                                       _%$%hd236851237735%_
                                       _%$%tl236852237737%_
                                       _%$%e236853237740%_
                                       _%$%hd236854237743%_
                                       _%$%tl236855237745%_
                                       _%$%e236856237748%_
                                       _%$%hd236857237751%_
                                       _%$%tl236858237753%_
                                       _%$%e236859237756%_
                                       _%$%hd236860237759%_
                                       _%$%tl236861237761%_
                                       _%$%e236862237764%_
                                       _%$%hd236863237767%_
                                       _%$%tl236864237769%_
                                       _%$%e236865237772%_
                                       _%$%hd236866237775%_
                                       _%$%tl236867237777%_))
                                  (_%__match241751241752%_
                                   _%$%e236841237708%_
                                   _%$%hd236842237711%_
                                   _%$%tl236843237713%_
                                   _%$%e236844237716%_
                                   _%$%hd236845237719%_
                                   _%$%tl236846237721%_
                                   _%$%e236847237724%_
                                   _%$%hd236848237727%_
                                   _%$%tl236849237729%_
                                   _%$%e236850237732%_
                                   _%$%hd236851237735%_
                                   _%$%tl236852237737%_
                                   _%$%e236853237740%_
                                   _%$%hd236854237743%_
                                   _%$%tl236855237745%_
                                   _%$%e236856237748%_
                                   _%$%hd236857237751%_
                                   _%$%tl236858237753%_
                                   _%$%e236859237756%_
                                   _%$%hd236860237759%_
                                   _%$%tl236861237761%_
                                   _%$%e236862237764%_
                                   _%$%hd236863237767%_
                                   _%$%tl236864237769%_))))
                          (_%__match241751241752%_
                           _%$%e236841237708%_
                           _%$%hd236842237711%_
                           _%$%tl236843237713%_
                           _%$%e236844237716%_
                           _%$%hd236845237719%_
                           _%$%tl236846237721%_
                           _%$%e236847237724%_
                           _%$%hd236848237727%_
                           _%$%tl236849237729%_
                           _%$%e236850237732%_
                           _%$%hd236851237735%_
                           _%$%tl236852237737%_
                           _%$%e236853237740%_
                           _%$%hd236854237743%_
                           _%$%tl236855237745%_
                           _%$%e236856237748%_
                           _%$%hd236857237751%_
                           _%$%tl236858237753%_
                           _%$%e236859237756%_
                           _%$%hd236860237759%_
                           _%$%tl236861237761%_
                           _%$%e236862237764%_
                           _%$%hd236863237767%_
                           _%$%tl236864237769%_))))
                  (_%__match241689241690%_
                   _%$%e236841237708%_
                   _%$%hd236842237711%_
                   _%$%tl236843237713%_
                   _%$%e236844237716%_
                   _%$%hd236845237719%_
                   _%$%tl236846237721%_
                   _%$%e236847237724%_
                   _%$%hd236848237727%_
                   _%$%tl236849237729%_
                   _%$%e236850237732%_
                   _%$%hd236851237735%_
                   _%$%tl236852237737%_
                   _%$%e236853237740%_
                   _%$%hd236854237743%_
                   _%$%tl236855237745%_
                   _%$%e236856237748%_
                   _%$%hd236857237751%_
                   _%$%tl236858237753%_
                   _%$%e236859237756%_
                   _%$%hd236860237759%_
                   _%$%tl236861237761%_))
              (_%__kont241272241273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont241272241273%_))
                                          (_%__kont241272241273%_))
                                      (_%__kont241272241273%_))))
                              (_%__kont241272241273%_))))
                      (_%__kont241272241273%_))
                  (_%__kont241272241273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont241272241273%_))
                                              (_%__kont241272241273%_))
                                          (_%__kont241272241273%_))))
                                  (_%__kont241272241273%_))))
                          (_%__kont241272241273%_))))
                  (_%__kont241272241273%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self235769%_ _%stx235770%_)
        (letrec ((_%force-e235772%_
                  (lambda (_%target236824%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target236824%_ '()))
                                      '()))))))
          (let* ((_%__stx241756241757%_ _%stx235770%_)
                 (_%$%g235780236002%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx241756241757%_)))))
            (let ((_%__kont241758241759%_
                   (lambda (_%$%g235782236770%_
                            _%$%g235783236771%_
                            _%$%g235784236772%_
                            _%$%g235785236773%_)
                     (let ((_%$method236818%_
                            (let ((__tmp242419
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self235769%_ 'methods)))
                                  (__tmp242418
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g235783236771%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp242419 __tmp242418)))
                           (_%args236819%_
                            (map (lambda (_%$%g236806236808%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self235769%_
                                      _%$%g236806236808%_)))
                                 (let ((__tmp242420
                                        (lambda (_%$%g236810236813%_
                                                 _%$%g236811236815%_)
                                          (cons _%$%g236810236813%_
                                                _%$%g236811236815%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp242420
                                    '()
                                    _%$%g235782236770%_)))))
                       (let ((__tmp242421
                              (cons '%#call
                                    (cons (_%force-e235772%_ _%$method236818%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self235769%_
                                                               'receiver))
                                                            '()))
                                                _%args236819%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp242421 _%stx235770%_)))))
                  (_%__kont241762241763%_
                   (lambda (_%$%g235825236604%_
                            _%$%g235826236605%_
                            _%$%g235827236606%_
                            _%$%g235828236607%_
                            _%$%g235829236608%_)
                     (let ((_%$method236660%_
                            (let ((__tmp242423
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self235769%_ 'methods)))
                                  (__tmp242422
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g235826236605%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp242423 __tmp242422)))
                           (_%args236661%_
                            (map (lambda (_%$%g236648236650%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self235769%_
                                      _%$%g236648236650%_)))
                                 (let ((__tmp242424
                                        (lambda (_%$%g236652236655%_
                                                 _%$%g236653236657%_)
                                          (cons _%$%g236652236655%_
                                                _%$%g236653236657%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp242424
                                    '()
                                    _%$%g235825236604%_)))))
                       (let ((__tmp242425
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e235772%_
                                                 _%$method236660%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self235769%_ 'receiver))
                          '()))
              _%args236661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp242425 _%stx235770%_)))))
                  (_%__kont241766241767%_
                   (lambda (_%$%g235878236437%_
                            _%$%g235879236438%_
                            _%$%g235880236439%_)
                     (let* ((_%$field236471%_
                             (let ((__tmp242427
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self235769%_ 'slots)))
                                   (__tmp242426
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g235878236437%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp242427 __tmp242426)))
                            (__tmp242428
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self235769%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field236471%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self235769%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp242428 _%stx235770%_))))
                  (_%__kont241768241769%_
                   (lambda (_%$%g235911236311%_
                            _%$%g235912236312%_
                            _%$%g235913236313%_
                            _%$%g235914236314%_)
                     (let ((_%$field236349%_
                            (let ((__tmp242430
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self235769%_ 'slots)))
                                  (__tmp242429
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g235912236312%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp242430 __tmp242429)))
                           (_%expr236350%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self235769%_
                               _%$%g235911236311%_))))
                       (let ((__tmp242431
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self235769%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field236349%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self235769%_ 'receiver))
                          '()))
              (cons _%expr236350%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp242431 _%stx235770%_)))))
                  (_%__kont241770241771%_
                   (lambda (_%$%g235948236183%_ _%$%g235949236184%_)
                     (let* ((_%accessor236206%_
                             (let ((__tmp242432
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g235949236184%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp242432)))
                            (_%klass236208%_
                             (let ((__tmp242433
                                    (##structure-ref
                                     _%accessor236206%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx235770%_
                                __tmp242433)))
                            (_%slot236210%_
                             (##structure-ref
                              _%accessor236206%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor236206%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass236208%_
                                      _%slot236210%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass236208%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx235770%_
                           (let* ((_%$field236216%_
                                   (let ((__tmp242434
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235769%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp242434 _%slot236210%_)))
                                  (__tmp242435
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self235769%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field236216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self235769%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp242435
                              _%stx235770%_))))))
                  (_%__kont241772241773%_
                   (lambda (_%$%g235971236078%_
                            _%$%g235972236079%_
                            _%$%g235973236080%_)
                     (let* ((_%mutator236108%_
                             (let ((__tmp242436
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g235973236080%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp242436)))
                            (_%klass236110%_
                             (let ((__tmp242437
                                    (##structure-ref
                                     _%mutator236108%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx235770%_
                                __tmp242437)))
                            (_%slot236112%_
                             (##structure-ref
                              _%mutator236108%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr236114%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self235769%_
                                _%$%g235971236078%_))))
                       (if (if (##structure-ref
                                _%mutator236108%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass236110%_
                                      _%slot236112%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass236110%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp242438
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g235973236080%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g235972236079%_
                                                                '()))
                                                    (cons _%expr236114%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp242438 _%stx235770%_))
                           (let* ((_%$field236120%_
                                   (let ((__tmp242439
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235769%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp242439 _%slot236112%_)))
                                  (__tmp242440
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self235769%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field236120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self235769%_ 'receiver))
                               '()))
                   (cons _%expr236114%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp242440
                              _%stx235770%_))))))
                  (_%__kont241774241775%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self235769%_ _%stx235770%_)))))
              (let* ((_%__match242255242256%_
                      (lambda (_%$%e235974236014%_
                               _%$%hd235975236017%_
                               _%$%tl235976236019%_
                               _%$%e235977236022%_
                               _%$%hd235978236025%_
                               _%$%tl235979236027%_
                               _%$%e235980236030%_
                               _%$%hd235981236033%_
                               _%$%tl235982236035%_
                               _%$%e235983236038%_
                               _%$%hd235984236041%_
                               _%$%tl235985236043%_
                               _%$%e235986236046%_
                               _%$%hd235987236049%_
                               _%$%tl235988236051%_
                               _%$%e235989236054%_
                               _%$%hd235990236057%_
                               _%$%tl235991236059%_
                               _%$%e235992236062%_
                               _%$%hd235993236065%_
                               _%$%tl235994236067%_
                               _%$%e235995236070%_
                               _%$%hd235996236073%_
                               _%$%tl235997236075%_)
                        (let ((_%$%g235971236078%_ _%$%hd235996236073%_)
                              (_%$%g235972236079%_ _%$%hd235993236065%_)
                              (_%$%g235973236080%_ _%$%hd235984236041%_))
                          (if (and (let ((__tmp242441
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235769%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235972236079%_
                                      __tmp242441))
                                   (let ((__tmp242442
                                          (let ((__tmp242443
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g235973236080%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp242443))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp242442
                                      'gxc#!mutator::t)))
                              (_%__kont241772241773%_
                               _%$%g235971236078%_
                               _%$%g235972236079%_
                               _%$%g235973236080%_)
                              (_%__kont241774241775%_)))))
                     (_%__match242253242254%_
                      (lambda (_%$%e235974236014%_
                               _%$%hd235975236017%_
                               _%$%tl235976236019%_
                               _%$%e235977236022%_
                               _%$%hd235978236025%_
                               _%$%tl235979236027%_
                               _%$%e235980236030%_
                               _%$%hd235981236033%_
                               _%$%tl235982236035%_
                               _%$%e235983236038%_
                               _%$%hd235984236041%_
                               _%$%tl235985236043%_
                               _%$%e235986236046%_
                               _%$%hd235987236049%_
                               _%$%tl235988236051%_
                               _%$%e235989236054%_
                               _%$%hd235990236057%_
                               _%$%tl235991236059%_
                               _%$%e235992236062%_
                               _%$%hd235993236065%_
                               _%$%tl235994236067%_
                               _%$%e235995236070%_
                               _%$%hd235996236073%_
                               _%$%tl235997236075%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl235997236075%_))
                            (_%__match242255242256%_
                             _%$%e235974236014%_
                             _%$%hd235975236017%_
                             _%$%tl235976236019%_
                             _%$%e235977236022%_
                             _%$%hd235978236025%_
                             _%$%tl235979236027%_
                             _%$%e235980236030%_
                             _%$%hd235981236033%_
                             _%$%tl235982236035%_
                             _%$%e235983236038%_
                             _%$%hd235984236041%_
                             _%$%tl235985236043%_
                             _%$%e235986236046%_
                             _%$%hd235987236049%_
                             _%$%tl235988236051%_
                             _%$%e235989236054%_
                             _%$%hd235990236057%_
                             _%$%tl235991236059%_
                             _%$%e235992236062%_
                             _%$%hd235993236065%_
                             _%$%tl235994236067%_
                             _%$%e235995236070%_
                             _%$%hd235996236073%_
                             _%$%tl235997236075%_)
                            (_%__kont241774241775%_))))
                     (_%__match242247242248%_
                      (lambda (_%$%e235974236014%_
                               _%$%hd235975236017%_
                               _%$%tl235976236019%_
                               _%$%e235977236022%_
                               _%$%hd235978236025%_
                               _%$%tl235979236027%_
                               _%$%e235980236030%_
                               _%$%hd235981236033%_
                               _%$%tl235982236035%_
                               _%$%e235983236038%_
                               _%$%hd235984236041%_
                               _%$%tl235985236043%_
                               _%$%e235986236046%_
                               _%$%hd235987236049%_
                               _%$%tl235988236051%_
                               _%$%e235989236054%_
                               _%$%hd235990236057%_
                               _%$%tl235991236059%_
                               _%$%e235992236062%_
                               _%$%hd235993236065%_
                               _%$%tl235994236067%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235988236051%_))
                            (let ((_%$%e235995236070%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235988236051%_))))
                              (let ((_%$%tl235997236075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235995236070%_)))
                                    (_%$%hd235996236073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235995236070%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl235997236075%_))
                                    (_%__match242255242256%_
                                     _%$%e235974236014%_
                                     _%$%hd235975236017%_
                                     _%$%tl235976236019%_
                                     _%$%e235977236022%_
                                     _%$%hd235978236025%_
                                     _%$%tl235979236027%_
                                     _%$%e235980236030%_
                                     _%$%hd235981236033%_
                                     _%$%tl235982236035%_
                                     _%$%e235983236038%_
                                     _%$%hd235984236041%_
                                     _%$%tl235985236043%_
                                     _%$%e235986236046%_
                                     _%$%hd235987236049%_
                                     _%$%tl235988236051%_
                                     _%$%e235989236054%_
                                     _%$%hd235990236057%_
                                     _%$%tl235991236059%_
                                     _%$%e235992236062%_
                                     _%$%hd235993236065%_
                                     _%$%tl235994236067%_
                                     _%$%e235995236070%_
                                     _%$%hd235996236073%_
                                     _%$%tl235997236075%_)
                                    (_%__kont241774241775%_))))
                            (_%__kont241774241775%_))))
                     (_%__match242193242194%_
                      (lambda (_%$%e235950236127%_
                               _%$%hd235951236130%_
                               _%$%tl235952236132%_
                               _%$%e235953236135%_
                               _%$%hd235954236138%_
                               _%$%tl235955236140%_
                               _%$%e235956236143%_
                               _%$%hd235957236146%_
                               _%$%tl235958236148%_
                               _%$%e235959236151%_
                               _%$%hd235960236154%_
                               _%$%tl235961236156%_
                               _%$%e235962236159%_
                               _%$%hd235963236162%_
                               _%$%tl235964236164%_
                               _%$%e235965236167%_
                               _%$%hd235966236170%_
                               _%$%tl235967236172%_
                               _%$%e235968236175%_
                               _%$%hd235969236178%_
                               _%$%tl235970236180%_)
                        (let ((_%$%g235948236183%_ _%$%hd235969236178%_)
                              (_%$%g235949236184%_ _%$%hd235960236154%_))
                          (if (and (let ((__tmp242444
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235769%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235948236183%_
                                      __tmp242444))
                                   (let ((__tmp242445
                                          (let ((__tmp242446
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g235949236184%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp242446))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp242445
                                      'gxc#!accessor::t)))
                              (_%__kont241770241771%_
                               _%$%g235948236183%_
                               _%$%g235949236184%_)
                              (_%__kont241774241775%_)))))
                     (_%__match242191242192%_
                      (lambda (_%$%e235950236127%_
                               _%$%hd235951236130%_
                               _%$%tl235952236132%_
                               _%$%e235953236135%_
                               _%$%hd235954236138%_
                               _%$%tl235955236140%_
                               _%$%e235956236143%_
                               _%$%hd235957236146%_
                               _%$%tl235958236148%_
                               _%$%e235959236151%_
                               _%$%hd235960236154%_
                               _%$%tl235961236156%_
                               _%$%e235962236159%_
                               _%$%hd235963236162%_
                               _%$%tl235964236164%_
                               _%$%e235965236167%_
                               _%$%hd235966236170%_
                               _%$%tl235967236172%_
                               _%$%e235968236175%_
                               _%$%hd235969236178%_
                               _%$%tl235970236180%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl235964236164%_))
                            (_%__match242193242194%_
                             _%$%e235950236127%_
                             _%$%hd235951236130%_
                             _%$%tl235952236132%_
                             _%$%e235953236135%_
                             _%$%hd235954236138%_
                             _%$%tl235955236140%_
                             _%$%e235956236143%_
                             _%$%hd235957236146%_
                             _%$%tl235958236148%_
                             _%$%e235959236151%_
                             _%$%hd235960236154%_
                             _%$%tl235961236156%_
                             _%$%e235962236159%_
                             _%$%hd235963236162%_
                             _%$%tl235964236164%_
                             _%$%e235965236167%_
                             _%$%hd235966236170%_
                             _%$%tl235967236172%_
                             _%$%e235968236175%_
                             _%$%hd235969236178%_
                             _%$%tl235970236180%_)
                            (_%__match242247242248%_
                             _%$%e235950236127%_
                             _%$%hd235951236130%_
                             _%$%tl235952236132%_
                             _%$%e235953236135%_
                             _%$%hd235954236138%_
                             _%$%tl235955236140%_
                             _%$%e235956236143%_
                             _%$%hd235957236146%_
                             _%$%tl235958236148%_
                             _%$%e235959236151%_
                             _%$%hd235960236154%_
                             _%$%tl235961236156%_
                             _%$%e235962236159%_
                             _%$%hd235963236162%_
                             _%$%tl235964236164%_
                             _%$%e235965236167%_
                             _%$%hd235966236170%_
                             _%$%tl235967236172%_
                             _%$%e235968236175%_
                             _%$%hd235969236178%_
                             _%$%tl235970236180%_))))
                     (_%__match242137242138%_
                      (lambda (_%$%e235915236223%_
                               _%$%hd235916236226%_
                               _%$%tl235917236228%_
                               _%$%e235918236231%_
                               _%$%hd235919236234%_
                               _%$%tl235920236236%_
                               _%$%e235921236239%_
                               _%$%hd235922236242%_
                               _%$%tl235923236244%_
                               _%$%e235924236247%_
                               _%$%hd235925236250%_
                               _%$%tl235926236252%_
                               _%$%e235927236255%_
                               _%$%hd235928236258%_
                               _%$%tl235929236260%_
                               _%$%e235930236263%_
                               _%$%hd235931236266%_
                               _%$%tl235932236268%_
                               _%$%e235933236271%_
                               _%$%hd235934236274%_
                               _%$%tl235935236276%_
                               _%$%e235936236279%_
                               _%$%hd235937236282%_
                               _%$%tl235938236284%_
                               _%$%e235939236287%_
                               _%$%hd235940236290%_
                               _%$%tl235941236292%_
                               _%$%e235942236295%_
                               _%$%hd235943236298%_
                               _%$%tl235944236300%_
                               _%$%e235945236303%_
                               _%$%hd235946236306%_
                               _%$%tl235947236308%_)
                        (let ((_%$%g235911236311%_ _%$%hd235946236306%_)
                              (_%$%g235912236312%_ _%$%hd235943236298%_)
                              (_%$%g235913236313%_ _%$%hd235934236274%_)
                              (_%$%g235914236314%_ _%$%hd235925236250%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235914236314%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235914236314%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp242447
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235769%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235913236313%_
                                      __tmp242447)))
                              (_%__kont241768241769%_
                               _%$%g235911236311%_
                               _%$%g235912236312%_
                               _%$%g235913236313%_
                               _%$%g235914236314%_)
                              (_%__kont241774241775%_)))))
                     (_%__match242129242130%_
                      (lambda (_%$%e235915236223%_
                               _%$%hd235916236226%_
                               _%$%tl235917236228%_
                               _%$%e235918236231%_
                               _%$%hd235919236234%_
                               _%$%tl235920236236%_
                               _%$%e235921236239%_
                               _%$%hd235922236242%_
                               _%$%tl235923236244%_
                               _%$%e235924236247%_
                               _%$%hd235925236250%_
                               _%$%tl235926236252%_
                               _%$%e235927236255%_
                               _%$%hd235928236258%_
                               _%$%tl235929236260%_
                               _%$%e235930236263%_
                               _%$%hd235931236266%_
                               _%$%tl235932236268%_
                               _%$%e235933236271%_
                               _%$%hd235934236274%_
                               _%$%tl235935236276%_
                               _%$%e235936236279%_
                               _%$%hd235937236282%_
                               _%$%tl235938236284%_
                               _%$%e235939236287%_
                               _%$%hd235940236290%_
                               _%$%tl235941236292%_
                               _%$%e235942236295%_
                               _%$%hd235943236298%_
                               _%$%tl235944236300%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235938236284%_))
                            (let ((_%$%e235945236303%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235938236284%_))))
                              (let ((_%$%tl235947236308%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235945236303%_)))
                                    (_%$%hd235946236306%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235945236303%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl235947236308%_))
                                    (_%__match242137242138%_
                                     _%$%e235915236223%_
                                     _%$%hd235916236226%_
                                     _%$%tl235917236228%_
                                     _%$%e235918236231%_
                                     _%$%hd235919236234%_
                                     _%$%tl235920236236%_
                                     _%$%e235921236239%_
                                     _%$%hd235922236242%_
                                     _%$%tl235923236244%_
                                     _%$%e235924236247%_
                                     _%$%hd235925236250%_
                                     _%$%tl235926236252%_
                                     _%$%e235927236255%_
                                     _%$%hd235928236258%_
                                     _%$%tl235929236260%_
                                     _%$%e235930236263%_
                                     _%$%hd235931236266%_
                                     _%$%tl235932236268%_
                                     _%$%e235933236271%_
                                     _%$%hd235934236274%_
                                     _%$%tl235935236276%_
                                     _%$%e235936236279%_
                                     _%$%hd235937236282%_
                                     _%$%tl235938236284%_
                                     _%$%e235939236287%_
                                     _%$%hd235940236290%_
                                     _%$%tl235941236292%_
                                     _%$%e235942236295%_
                                     _%$%hd235943236298%_
                                     _%$%tl235944236300%_
                                     _%$%e235945236303%_
                                     _%$%hd235946236306%_
                                     _%$%tl235947236308%_)
                                    (_%__kont241774241775%_))))
                            (_%__match242253242254%_
                             _%$%e235915236223%_
                             _%$%hd235916236226%_
                             _%$%tl235917236228%_
                             _%$%e235918236231%_
                             _%$%hd235919236234%_
                             _%$%tl235920236236%_
                             _%$%e235921236239%_
                             _%$%hd235922236242%_
                             _%$%tl235923236244%_
                             _%$%e235924236247%_
                             _%$%hd235925236250%_
                             _%$%tl235926236252%_
                             _%$%e235927236255%_
                             _%$%hd235928236258%_
                             _%$%tl235929236260%_
                             _%$%e235930236263%_
                             _%$%hd235931236266%_
                             _%$%tl235932236268%_
                             _%$%e235933236271%_
                             _%$%hd235934236274%_
                             _%$%tl235935236276%_
                             _%$%e235936236279%_
                             _%$%hd235937236282%_
                             _%$%tl235938236284%_))))
                     (_%__match242051242052%_
                      (lambda (_%$%e235881236357%_
                               _%$%hd235882236360%_
                               _%$%tl235883236362%_
                               _%$%e235884236365%_
                               _%$%hd235885236368%_
                               _%$%tl235886236370%_
                               _%$%e235887236373%_
                               _%$%hd235888236376%_
                               _%$%tl235889236378%_
                               _%$%e235890236381%_
                               _%$%hd235891236384%_
                               _%$%tl235892236386%_
                               _%$%e235893236389%_
                               _%$%hd235894236392%_
                               _%$%tl235895236394%_
                               _%$%e235896236397%_
                               _%$%hd235897236400%_
                               _%$%tl235898236402%_
                               _%$%e235899236405%_
                               _%$%hd235900236408%_
                               _%$%tl235901236410%_
                               _%$%e235902236413%_
                               _%$%hd235903236416%_
                               _%$%tl235904236418%_
                               _%$%e235905236421%_
                               _%$%hd235906236424%_
                               _%$%tl235907236426%_
                               _%$%e235908236429%_
                               _%$%hd235909236432%_
                               _%$%tl235910236434%_)
                        (let ((_%$%g235878236437%_ _%$%hd235909236432%_)
                              (_%$%g235879236438%_ _%$%hd235900236408%_)
                              (_%$%g235880236439%_ _%$%hd235891236384%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235880236439%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g235880236439%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp242448
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self235769%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g235879236438%_
                                      __tmp242448)))
                              (_%__kont241766241767%_
                               _%$%g235878236437%_
                               _%$%g235879236438%_
                               _%$%g235880236439%_)
                              (_%__match242255242256%_
                               _%$%e235881236357%_
                               _%$%hd235882236360%_
                               _%$%tl235883236362%_
                               _%$%e235884236365%_
                               _%$%hd235885236368%_
                               _%$%tl235886236370%_
                               _%$%e235887236373%_
                               _%$%hd235888236376%_
                               _%$%tl235889236378%_
                               _%$%e235890236381%_
                               _%$%hd235891236384%_
                               _%$%tl235892236386%_
                               _%$%e235893236389%_
                               _%$%hd235894236392%_
                               _%$%tl235895236394%_
                               _%$%e235896236397%_
                               _%$%hd235897236400%_
                               _%$%tl235898236402%_
                               _%$%e235899236405%_
                               _%$%hd235900236408%_
                               _%$%tl235901236410%_
                               _%$%e235902236413%_
                               _%$%hd235903236416%_
                               _%$%tl235904236418%_)))))
                     (_%__match242049242050%_
                      (lambda (_%$%e235881236357%_
                               _%$%hd235882236360%_
                               _%$%tl235883236362%_
                               _%$%e235884236365%_
                               _%$%hd235885236368%_
                               _%$%tl235886236370%_
                               _%$%e235887236373%_
                               _%$%hd235888236376%_
                               _%$%tl235889236378%_
                               _%$%e235890236381%_
                               _%$%hd235891236384%_
                               _%$%tl235892236386%_
                               _%$%e235893236389%_
                               _%$%hd235894236392%_
                               _%$%tl235895236394%_
                               _%$%e235896236397%_
                               _%$%hd235897236400%_
                               _%$%tl235898236402%_
                               _%$%e235899236405%_
                               _%$%hd235900236408%_
                               _%$%tl235901236410%_
                               _%$%e235902236413%_
                               _%$%hd235903236416%_
                               _%$%tl235904236418%_
                               _%$%e235905236421%_
                               _%$%hd235906236424%_
                               _%$%tl235907236426%_
                               _%$%e235908236429%_
                               _%$%hd235909236432%_
                               _%$%tl235910236434%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl235904236418%_))
                            (_%__match242051242052%_
                             _%$%e235881236357%_
                             _%$%hd235882236360%_
                             _%$%tl235883236362%_
                             _%$%e235884236365%_
                             _%$%hd235885236368%_
                             _%$%tl235886236370%_
                             _%$%e235887236373%_
                             _%$%hd235888236376%_
                             _%$%tl235889236378%_
                             _%$%e235890236381%_
                             _%$%hd235891236384%_
                             _%$%tl235892236386%_
                             _%$%e235893236389%_
                             _%$%hd235894236392%_
                             _%$%tl235895236394%_
                             _%$%e235896236397%_
                             _%$%hd235897236400%_
                             _%$%tl235898236402%_
                             _%$%e235899236405%_
                             _%$%hd235900236408%_
                             _%$%tl235901236410%_
                             _%$%e235902236413%_
                             _%$%hd235903236416%_
                             _%$%tl235904236418%_
                             _%$%e235905236421%_
                             _%$%hd235906236424%_
                             _%$%tl235907236426%_
                             _%$%e235908236429%_
                             _%$%hd235909236432%_
                             _%$%tl235910236434%_)
                            (_%__match242129242130%_
                             _%$%e235881236357%_
                             _%$%hd235882236360%_
                             _%$%tl235883236362%_
                             _%$%e235884236365%_
                             _%$%hd235885236368%_
                             _%$%tl235886236370%_
                             _%$%e235887236373%_
                             _%$%hd235888236376%_
                             _%$%tl235889236378%_
                             _%$%e235890236381%_
                             _%$%hd235891236384%_
                             _%$%tl235892236386%_
                             _%$%e235893236389%_
                             _%$%hd235894236392%_
                             _%$%tl235895236394%_
                             _%$%e235896236397%_
                             _%$%hd235897236400%_
                             _%$%tl235898236402%_
                             _%$%e235899236405%_
                             _%$%hd235900236408%_
                             _%$%tl235901236410%_
                             _%$%e235902236413%_
                             _%$%hd235903236416%_
                             _%$%tl235904236418%_
                             _%$%e235905236421%_
                             _%$%hd235906236424%_
                             _%$%tl235907236426%_
                             _%$%e235908236429%_
                             _%$%hd235909236432%_
                             _%$%tl235910236434%_))))
                     (_%__match242039242040%_
                      (lambda (_%$%e235881236357%_
                               _%$%hd235882236360%_
                               _%$%tl235883236362%_
                               _%$%e235884236365%_
                               _%$%hd235885236368%_
                               _%$%tl235886236370%_
                               _%$%e235887236373%_
                               _%$%hd235888236376%_
                               _%$%tl235889236378%_
                               _%$%e235890236381%_
                               _%$%hd235891236384%_
                               _%$%tl235892236386%_
                               _%$%e235893236389%_
                               _%$%hd235894236392%_
                               _%$%tl235895236394%_
                               _%$%e235896236397%_
                               _%$%hd235897236400%_
                               _%$%tl235898236402%_
                               _%$%e235899236405%_
                               _%$%hd235900236408%_
                               _%$%tl235901236410%_
                               _%$%e235902236413%_
                               _%$%hd235903236416%_
                               _%$%tl235904236418%_
                               _%$%e235905236421%_
                               _%$%hd235906236424%_
                               _%$%tl235907236426%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd235906236424%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl235907236426%_))
                                (let ((_%$%e235908236429%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl235907236426%_))))
                                  (let ((_%$%tl235910236434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e235908236429%_)))
                                        (_%$%hd235909236432%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e235908236429%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl235910236434%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl235904236418%_))
                                            (_%__match242051242052%_
                                             _%$%e235881236357%_
                                             _%$%hd235882236360%_
                                             _%$%tl235883236362%_
                                             _%$%e235884236365%_
                                             _%$%hd235885236368%_
                                             _%$%tl235886236370%_
                                             _%$%e235887236373%_
                                             _%$%hd235888236376%_
                                             _%$%tl235889236378%_
                                             _%$%e235890236381%_
                                             _%$%hd235891236384%_
                                             _%$%tl235892236386%_
                                             _%$%e235893236389%_
                                             _%$%hd235894236392%_
                                             _%$%tl235895236394%_
                                             _%$%e235896236397%_
                                             _%$%hd235897236400%_
                                             _%$%tl235898236402%_
                                             _%$%e235899236405%_
                                             _%$%hd235900236408%_
                                             _%$%tl235901236410%_
                                             _%$%e235902236413%_
                                             _%$%hd235903236416%_
                                             _%$%tl235904236418%_
                                             _%$%e235905236421%_
                                             _%$%hd235906236424%_
                                             _%$%tl235907236426%_
                                             _%$%e235908236429%_
                                             _%$%hd235909236432%_
                                             _%$%tl235910236434%_)
                                            (_%__match242129242130%_
                                             _%$%e235881236357%_
                                             _%$%hd235882236360%_
                                             _%$%tl235883236362%_
                                             _%$%e235884236365%_
                                             _%$%hd235885236368%_
                                             _%$%tl235886236370%_
                                             _%$%e235887236373%_
                                             _%$%hd235888236376%_
                                             _%$%tl235889236378%_
                                             _%$%e235890236381%_
                                             _%$%hd235891236384%_
                                             _%$%tl235892236386%_
                                             _%$%e235893236389%_
                                             _%$%hd235894236392%_
                                             _%$%tl235895236394%_
                                             _%$%e235896236397%_
                                             _%$%hd235897236400%_
                                             _%$%tl235898236402%_
                                             _%$%e235899236405%_
                                             _%$%hd235900236408%_
                                             _%$%tl235901236410%_
                                             _%$%e235902236413%_
                                             _%$%hd235903236416%_
                                             _%$%tl235904236418%_
                                             _%$%e235905236421%_
                                             _%$%hd235906236424%_
                                             _%$%tl235907236426%_
                                             _%$%e235908236429%_
                                             _%$%hd235909236432%_
                                             _%$%tl235910236434%_))
                                        (_%__match242253242254%_
                                         _%$%e235881236357%_
                                         _%$%hd235882236360%_
                                         _%$%tl235883236362%_
                                         _%$%e235884236365%_
                                         _%$%hd235885236368%_
                                         _%$%tl235886236370%_
                                         _%$%e235887236373%_
                                         _%$%hd235888236376%_
                                         _%$%tl235889236378%_
                                         _%$%e235890236381%_
                                         _%$%hd235891236384%_
                                         _%$%tl235892236386%_
                                         _%$%e235893236389%_
                                         _%$%hd235894236392%_
                                         _%$%tl235895236394%_
                                         _%$%e235896236397%_
                                         _%$%hd235897236400%_
                                         _%$%tl235898236402%_
                                         _%$%e235899236405%_
                                         _%$%hd235900236408%_
                                         _%$%tl235901236410%_
                                         _%$%e235902236413%_
                                         _%$%hd235903236416%_
                                         _%$%tl235904236418%_))))
                                (_%__match242253242254%_
                                 _%$%e235881236357%_
                                 _%$%hd235882236360%_
                                 _%$%tl235883236362%_
                                 _%$%e235884236365%_
                                 _%$%hd235885236368%_
                                 _%$%tl235886236370%_
                                 _%$%e235887236373%_
                                 _%$%hd235888236376%_
                                 _%$%tl235889236378%_
                                 _%$%e235890236381%_
                                 _%$%hd235891236384%_
                                 _%$%tl235892236386%_
                                 _%$%e235893236389%_
                                 _%$%hd235894236392%_
                                 _%$%tl235895236394%_
                                 _%$%e235896236397%_
                                 _%$%hd235897236400%_
                                 _%$%tl235898236402%_
                                 _%$%e235899236405%_
                                 _%$%hd235900236408%_
                                 _%$%tl235901236410%_
                                 _%$%e235902236413%_
                                 _%$%hd235903236416%_
                                 _%$%tl235904236418%_))
                            (_%__match242253242254%_
                             _%$%e235881236357%_
                             _%$%hd235882236360%_
                             _%$%tl235883236362%_
                             _%$%e235884236365%_
                             _%$%hd235885236368%_
                             _%$%tl235886236370%_
                             _%$%e235887236373%_
                             _%$%hd235888236376%_
                             _%$%tl235889236378%_
                             _%$%e235890236381%_
                             _%$%hd235891236384%_
                             _%$%tl235892236386%_
                             _%$%e235893236389%_
                             _%$%hd235894236392%_
                             _%$%tl235895236394%_
                             _%$%e235896236397%_
                             _%$%hd235897236400%_
                             _%$%tl235898236402%_
                             _%$%e235899236405%_
                             _%$%hd235900236408%_
                             _%$%tl235901236410%_
                             _%$%e235902236413%_
                             _%$%hd235903236416%_
                             _%$%tl235904236418%_))))
                     (_%__match241971241972%_
                      (lambda (_%$%e235830236478%_
                               _%$%hd235831236481%_
                               _%$%tl235832236483%_
                               _%$%e235833236486%_
                               _%$%hd235834236489%_
                               _%$%tl235835236491%_
                               _%$%e235836236494%_
                               _%$%hd235837236497%_
                               _%$%tl235838236499%_
                               _%$%e235839236502%_
                               _%$%hd235840236505%_
                               _%$%tl235841236507%_
                               _%$%e235842236510%_
                               _%$%hd235843236513%_
                               _%$%tl235844236515%_
                               _%$%e235845236518%_
                               _%$%hd235846236521%_
                               _%$%tl235847236523%_
                               _%$%e235848236526%_
                               _%$%hd235849236529%_
                               _%$%tl235850236531%_
                               _%$%e235851236534%_
                               _%$%hd235852236537%_
                               _%$%tl235853236539%_
                               _%$%e235854236542%_
                               _%$%hd235855236545%_
                               _%$%tl235856236547%_
                               _%$%e235857236550%_
                               _%$%hd235858236553%_
                               _%$%tl235859236555%_
                               _%$%e235860236558%_
                               _%$%hd235861236561%_
                               _%$%tl235862236563%_
                               _%$%e235863236566%_
                               _%$%hd235864236569%_
                               _%$%tl235865236571%_
                               _%$%e235866236574%_
                               _%$%hd235867236577%_
                               _%$%tl235868236579%_
                               _%__splice241764241765%_
                               _%$%target235869236582%_
                               _%$%tl235871236584%_)
                        (letrec ((_%$%loop235872236587%_
                                  (lambda (_%$%hd235870236590%_
                                           _%$%args235876236592%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd235870236590%_))
                                        (let ((_%$%e235873236594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd235870236590%_))))
                                          (let ((_%$%lp-tl235875236599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e235873236594%_)))
                                                (_%$%lp-hd235874236597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e235873236594%_))))
                                            (_%$%loop235872236587%_
                                             _%$%lp-tl235875236599%_
                                             (cons _%$%lp-hd235874236597%_
                                                   _%$%args235876236592%_))))
                                        (let ((_%$%args235877236602%_
                                               (reverse _%$%args235876236592%_)))
                                          (let ((_%$%g235825236604%_
                                                 _%$%args235877236602%_)
                                                (_%$%g235826236605%_
                                                 _%$%hd235867236577%_)
                                                (_%$%g235827236606%_
                                                 _%$%hd235858236553%_)
                                                (_%$%g235828236607%_
                                                 _%$%hd235849236529%_)
                                                (_%$%g235829236608%_
                                                 _%$%hd235840236505%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g235829236608%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g235828236607%_
                                                        'call-method))
                                                     (let ((__tmp242449
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self235769%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g235827236606%_
                                                        __tmp242449)))
                                                (_%__kont241762241763%_
                                                 _%$%g235825236604%_
                                                 _%$%g235826236605%_
                                                 _%$%g235827236606%_
                                                 _%$%g235828236607%_
                                                 _%$%g235829236608%_)
                                                (_%__kont241774241775%_))))))))
                          (_%$%loop235872236587%_
                           _%$%target235869236582%_
                           '()))))
                     (_%__match241929241930%_
                      (lambda (_%$%e235830236478%_
                               _%$%hd235831236481%_
                               _%$%tl235832236483%_
                               _%$%e235833236486%_
                               _%$%hd235834236489%_
                               _%$%tl235835236491%_
                               _%$%e235836236494%_
                               _%$%hd235837236497%_
                               _%$%tl235838236499%_
                               _%$%e235839236502%_
                               _%$%hd235840236505%_
                               _%$%tl235841236507%_
                               _%$%e235842236510%_
                               _%$%hd235843236513%_
                               _%$%tl235844236515%_
                               _%$%e235845236518%_
                               _%$%hd235846236521%_
                               _%$%tl235847236523%_
                               _%$%e235848236526%_
                               _%$%hd235849236529%_
                               _%$%tl235850236531%_
                               _%$%e235851236534%_
                               _%$%hd235852236537%_
                               _%$%tl235853236539%_
                               _%$%e235854236542%_
                               _%$%hd235855236545%_
                               _%$%tl235856236547%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd235855236545%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl235856236547%_))
                                (let ((_%$%e235857236550%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl235856236547%_))))
                                  (let ((_%$%tl235859236555%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e235857236550%_)))
                                        (_%$%hd235858236553%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e235857236550%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl235859236555%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl235853236539%_))
                                            (let ((_%$%e235860236558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl235853236539%_))))
                                              (let ((_%$%tl235862236563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e235860236558%_)))
                                                    (_%$%hd235861236561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e235860236558%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd235861236561%_))
                                                    (let ((_%$%e235863236566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd235861236561%_))))
                                                      (let ((_%$%tl235865236571%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e235863236566%_)))
                    (_%$%hd235864236569%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e235863236566%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd235864236569%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd235864236569%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235865236571%_))
                            (let ((_%$%e235866236574%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235865236571%_))))
                              (let ((_%$%tl235868236579%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235866236574%_)))
                                    (_%$%hd235867236577%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235866236574%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl235868236579%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl235862236563%_))
                                        (let ((_%__splice241764241765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl235862236563%_
                                                  '0))))
                                          (let ((_%$%tl235871236584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice241764241765%_
                                                    '1)))
                                                (_%$%target235869236582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice241764241765%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl235871236584%_))
                                                (_%__match241971241972%_
                                                 _%$%e235830236478%_
                                                 _%$%hd235831236481%_
                                                 _%$%tl235832236483%_
                                                 _%$%e235833236486%_
                                                 _%$%hd235834236489%_
                                                 _%$%tl235835236491%_
                                                 _%$%e235836236494%_
                                                 _%$%hd235837236497%_
                                                 _%$%tl235838236499%_
                                                 _%$%e235839236502%_
                                                 _%$%hd235840236505%_
                                                 _%$%tl235841236507%_
                                                 _%$%e235842236510%_
                                                 _%$%hd235843236513%_
                                                 _%$%tl235844236515%_
                                                 _%$%e235845236518%_
                                                 _%$%hd235846236521%_
                                                 _%$%tl235847236523%_
                                                 _%$%e235848236526%_
                                                 _%$%hd235849236529%_
                                                 _%$%tl235850236531%_
                                                 _%$%e235851236534%_
                                                 _%$%hd235852236537%_
                                                 _%$%tl235853236539%_
                                                 _%$%e235854236542%_
                                                 _%$%hd235855236545%_
                                                 _%$%tl235856236547%_
                                                 _%$%e235857236550%_
                                                 _%$%hd235858236553%_
                                                 _%$%tl235859236555%_
                                                 _%$%e235860236558%_
                                                 _%$%hd235861236561%_
                                                 _%$%tl235862236563%_
                                                 _%$%e235863236566%_
                                                 _%$%hd235864236569%_
                                                 _%$%tl235865236571%_
                                                 _%$%e235866236574%_
                                                 _%$%hd235867236577%_
                                                 _%$%tl235868236579%_
                                                 _%__splice241764241765%_
                                                 _%$%target235869236582%_
                                                 _%$%tl235871236584%_)
                                                (_%__kont241774241775%_))))
                                        (_%__kont241774241775%_))
                                    (_%__kont241774241775%_))))
                            (_%__kont241774241775%_))
                        (_%__kont241774241775%_))
                    (_%__kont241774241775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont241774241775%_))))
                                            (_%__match242253242254%_
                                             _%$%e235830236478%_
                                             _%$%hd235831236481%_
                                             _%$%tl235832236483%_
                                             _%$%e235833236486%_
                                             _%$%hd235834236489%_
                                             _%$%tl235835236491%_
                                             _%$%e235836236494%_
                                             _%$%hd235837236497%_
                                             _%$%tl235838236499%_
                                             _%$%e235839236502%_
                                             _%$%hd235840236505%_
                                             _%$%tl235841236507%_
                                             _%$%e235842236510%_
                                             _%$%hd235843236513%_
                                             _%$%tl235844236515%_
                                             _%$%e235845236518%_
                                             _%$%hd235846236521%_
                                             _%$%tl235847236523%_
                                             _%$%e235848236526%_
                                             _%$%hd235849236529%_
                                             _%$%tl235850236531%_
                                             _%$%e235851236534%_
                                             _%$%hd235852236537%_
                                             _%$%tl235853236539%_))
                                        (_%__match242253242254%_
                                         _%$%e235830236478%_
                                         _%$%hd235831236481%_
                                         _%$%tl235832236483%_
                                         _%$%e235833236486%_
                                         _%$%hd235834236489%_
                                         _%$%tl235835236491%_
                                         _%$%e235836236494%_
                                         _%$%hd235837236497%_
                                         _%$%tl235838236499%_
                                         _%$%e235839236502%_
                                         _%$%hd235840236505%_
                                         _%$%tl235841236507%_
                                         _%$%e235842236510%_
                                         _%$%hd235843236513%_
                                         _%$%tl235844236515%_
                                         _%$%e235845236518%_
                                         _%$%hd235846236521%_
                                         _%$%tl235847236523%_
                                         _%$%e235848236526%_
                                         _%$%hd235849236529%_
                                         _%$%tl235850236531%_
                                         _%$%e235851236534%_
                                         _%$%hd235852236537%_
                                         _%$%tl235853236539%_))))
                                (_%__match242253242254%_
                                 _%$%e235830236478%_
                                 _%$%hd235831236481%_
                                 _%$%tl235832236483%_
                                 _%$%e235833236486%_
                                 _%$%hd235834236489%_
                                 _%$%tl235835236491%_
                                 _%$%e235836236494%_
                                 _%$%hd235837236497%_
                                 _%$%tl235838236499%_
                                 _%$%e235839236502%_
                                 _%$%hd235840236505%_
                                 _%$%tl235841236507%_
                                 _%$%e235842236510%_
                                 _%$%hd235843236513%_
                                 _%$%tl235844236515%_
                                 _%$%e235845236518%_
                                 _%$%hd235846236521%_
                                 _%$%tl235847236523%_
                                 _%$%e235848236526%_
                                 _%$%hd235849236529%_
                                 _%$%tl235850236531%_
                                 _%$%e235851236534%_
                                 _%$%hd235852236537%_
                                 _%$%tl235853236539%_))
                            (_%__match242039242040%_
                             _%$%e235830236478%_
                             _%$%hd235831236481%_
                             _%$%tl235832236483%_
                             _%$%e235833236486%_
                             _%$%hd235834236489%_
                             _%$%tl235835236491%_
                             _%$%e235836236494%_
                             _%$%hd235837236497%_
                             _%$%tl235838236499%_
                             _%$%e235839236502%_
                             _%$%hd235840236505%_
                             _%$%tl235841236507%_
                             _%$%e235842236510%_
                             _%$%hd235843236513%_
                             _%$%tl235844236515%_
                             _%$%e235845236518%_
                             _%$%hd235846236521%_
                             _%$%tl235847236523%_
                             _%$%e235848236526%_
                             _%$%hd235849236529%_
                             _%$%tl235850236531%_
                             _%$%e235851236534%_
                             _%$%hd235852236537%_
                             _%$%tl235853236539%_
                             _%$%e235854236542%_
                             _%$%hd235855236545%_
                             _%$%tl235856236547%_))))
                     (_%__match241861241862%_
                      (lambda (_%$%e235786236668%_
                               _%$%hd235787236671%_
                               _%$%tl235788236673%_
                               _%$%e235789236676%_
                               _%$%hd235790236679%_
                               _%$%tl235791236681%_
                               _%$%e235792236684%_
                               _%$%hd235793236687%_
                               _%$%tl235794236689%_
                               _%$%e235795236692%_
                               _%$%hd235796236695%_
                               _%$%tl235797236697%_
                               _%$%e235798236700%_
                               _%$%hd235799236703%_
                               _%$%tl235800236705%_
                               _%$%e235801236708%_
                               _%$%hd235802236711%_
                               _%$%tl235803236713%_
                               _%$%e235804236716%_
                               _%$%hd235805236719%_
                               _%$%tl235806236721%_
                               _%$%e235807236724%_
                               _%$%hd235808236727%_
                               _%$%tl235809236729%_
                               _%$%e235810236732%_
                               _%$%hd235811236735%_
                               _%$%tl235812236737%_
                               _%$%e235813236740%_
                               _%$%hd235814236743%_
                               _%$%tl235815236745%_
                               _%__splice241760241761%_
                               _%$%target235816236748%_
                               _%$%tl235818236750%_)
                        (letrec ((_%$%loop235819236753%_
                                  (lambda (_%$%hd235817236756%_
                                           _%$%args235823236758%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd235817236756%_))
                                        (let ((_%$%e235820236760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd235817236756%_))))
                                          (let ((_%$%lp-tl235822236765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e235820236760%_)))
                                                (_%$%lp-hd235821236763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e235820236760%_))))
                                            (_%$%loop235819236753%_
                                             _%$%lp-tl235822236765%_
                                             (cons _%$%lp-hd235821236763%_
                                                   _%$%args235823236758%_))))
                                        (let ((_%$%args235824236768%_
                                               (reverse _%$%args235823236758%_)))
                                          (let ((_%$%g235782236770%_
                                                 _%$%args235824236768%_)
                                                (_%$%g235783236771%_
                                                 _%$%hd235814236743%_)
                                                (_%$%g235784236772%_
                                                 _%$%hd235805236719%_)
                                                (_%$%g235785236773%_
                                                 _%$%hd235796236695%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g235785236773%_
                                                        'call-method))
                                                     (let ((__tmp242450
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self235769%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g235784236772%_
                                                        __tmp242450)))
                                                (_%__kont241758241759%_
                                                 _%$%g235782236770%_
                                                 _%$%g235783236771%_
                                                 _%$%g235784236772%_
                                                 _%$%g235785236773%_)
                                                (_%__match242049242050%_
                                                 _%$%e235786236668%_
                                                 _%$%hd235787236671%_
                                                 _%$%tl235788236673%_
                                                 _%$%e235789236676%_
                                                 _%$%hd235790236679%_
                                                 _%$%tl235791236681%_
                                                 _%$%e235792236684%_
                                                 _%$%hd235793236687%_
                                                 _%$%tl235794236689%_
                                                 _%$%e235795236692%_
                                                 _%$%hd235796236695%_
                                                 _%$%tl235797236697%_
                                                 _%$%e235798236700%_
                                                 _%$%hd235799236703%_
                                                 _%$%tl235800236705%_
                                                 _%$%e235801236708%_
                                                 _%$%hd235802236711%_
                                                 _%$%tl235803236713%_
                                                 _%$%e235804236716%_
                                                 _%$%hd235805236719%_
                                                 _%$%tl235806236721%_
                                                 _%$%e235807236724%_
                                                 _%$%hd235808236727%_
                                                 _%$%tl235809236729%_
                                                 _%$%e235810236732%_
                                                 _%$%hd235811236735%_
                                                 _%$%tl235812236737%_
                                                 _%$%e235813236740%_
                                                 _%$%hd235814236743%_
                                                 _%$%tl235815236745%_))))))))
                          (_%$%loop235819236753%_
                           _%$%target235816236748%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx241756241757%_))
                    (let ((_%$%e235786236668%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx241756241757%_))))
                      (let ((_%$%tl235788236673%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e235786236668%_)))
                            (_%$%hd235787236671%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e235786236668%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl235788236673%_))
                            (let ((_%$%e235789236676%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl235788236673%_))))
                              (let ((_%$%tl235791236681%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235789236676%_)))
                                    (_%$%hd235790236679%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235789236676%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd235790236679%_))
                                    (let ((_%$%e235792236684%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd235790236679%_))))
                                      (let ((_%$%tl235794236689%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e235792236684%_)))
                                            (_%$%hd235793236687%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e235792236684%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd235793236687%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd235793236687%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl235794236689%_))
                                                    (let ((_%$%e235795236692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl235794236689%_))))
                                                      (let ((_%$%tl235797236697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e235795236692%_)))
                    (_%$%hd235796236695%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e235795236692%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl235797236697%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl235791236681%_))
                        (let ((_%$%e235798236700%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl235791236681%_))))
                          (let ((_%$%tl235800236705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e235798236700%_)))
                                (_%$%hd235799236703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e235798236700%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd235799236703%_))
                                (let ((_%$%e235801236708%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd235799236703%_))))
                                  (let ((_%$%tl235803236713%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e235801236708%_)))
                                        (_%$%hd235802236711%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e235801236708%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd235802236711%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd235802236711%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl235803236713%_))
                                                (let ((_%$%e235804236716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl235803236713%_))))
                                                  (let ((_%$%tl235806236721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e235804236716%_)))
                                                        (_%$%hd235805236719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e235804236716%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl235806236721%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl235800236705%_))
                                                            (let ((_%$%e235807236724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl235800236705%_))))
                      (let ((_%$%tl235809236729%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e235807236724%_)))
                            (_%$%hd235808236727%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e235807236724%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd235808236727%_))
                            (let ((_%$%e235810236732%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd235808236727%_))))
                              (let ((_%$%tl235812236737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e235810236732%_)))
                                    (_%$%hd235811236735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e235810236732%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd235811236735%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd235811236735%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl235812236737%_))
                                            (let ((_%$%e235813236740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl235812236737%_))))
                                              (let ((_%$%tl235815236745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e235813236740%_)))
                                                    (_%$%hd235814236743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e235813236740%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl235815236745%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl235809236729%_))
                                                        (let ((_%__splice241760241761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl235809236729%_
                          '0))))
                  (let ((_%$%tl235818236750%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice241760241761%_ '1)))
                        (_%$%target235816236748%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice241760241761%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl235818236750%_))
                        (_%__match241861241862%_
                         _%$%e235786236668%_
                         _%$%hd235787236671%_
                         _%$%tl235788236673%_
                         _%$%e235789236676%_
                         _%$%hd235790236679%_
                         _%$%tl235791236681%_
                         _%$%e235792236684%_
                         _%$%hd235793236687%_
                         _%$%tl235794236689%_
                         _%$%e235795236692%_
                         _%$%hd235796236695%_
                         _%$%tl235797236697%_
                         _%$%e235798236700%_
                         _%$%hd235799236703%_
                         _%$%tl235800236705%_
                         _%$%e235801236708%_
                         _%$%hd235802236711%_
                         _%$%tl235803236713%_
                         _%$%e235804236716%_
                         _%$%hd235805236719%_
                         _%$%tl235806236721%_
                         _%$%e235807236724%_
                         _%$%hd235808236727%_
                         _%$%tl235809236729%_
                         _%$%e235810236732%_
                         _%$%hd235811236735%_
                         _%$%tl235812236737%_
                         _%$%e235813236740%_
                         _%$%hd235814236743%_
                         _%$%tl235815236745%_
                         _%__splice241760241761%_
                         _%$%target235816236748%_
                         _%$%tl235818236750%_)
                        (_%__match242049242050%_
                         _%$%e235786236668%_
                         _%$%hd235787236671%_
                         _%$%tl235788236673%_
                         _%$%e235789236676%_
                         _%$%hd235790236679%_
                         _%$%tl235791236681%_
                         _%$%e235792236684%_
                         _%$%hd235793236687%_
                         _%$%tl235794236689%_
                         _%$%e235795236692%_
                         _%$%hd235796236695%_
                         _%$%tl235797236697%_
                         _%$%e235798236700%_
                         _%$%hd235799236703%_
                         _%$%tl235800236705%_
                         _%$%e235801236708%_
                         _%$%hd235802236711%_
                         _%$%tl235803236713%_
                         _%$%e235804236716%_
                         _%$%hd235805236719%_
                         _%$%tl235806236721%_
                         _%$%e235807236724%_
                         _%$%hd235808236727%_
                         _%$%tl235809236729%_
                         _%$%e235810236732%_
                         _%$%hd235811236735%_
                         _%$%tl235812236737%_
                         _%$%e235813236740%_
                         _%$%hd235814236743%_
                         _%$%tl235815236745%_))))
                (_%__match242049242050%_
                 _%$%e235786236668%_
                 _%$%hd235787236671%_
                 _%$%tl235788236673%_
                 _%$%e235789236676%_
                 _%$%hd235790236679%_
                 _%$%tl235791236681%_
                 _%$%e235792236684%_
                 _%$%hd235793236687%_
                 _%$%tl235794236689%_
                 _%$%e235795236692%_
                 _%$%hd235796236695%_
                 _%$%tl235797236697%_
                 _%$%e235798236700%_
                 _%$%hd235799236703%_
                 _%$%tl235800236705%_
                 _%$%e235801236708%_
                 _%$%hd235802236711%_
                 _%$%tl235803236713%_
                 _%$%e235804236716%_
                 _%$%hd235805236719%_
                 _%$%tl235806236721%_
                 _%$%e235807236724%_
                 _%$%hd235808236727%_
                 _%$%tl235809236729%_
                 _%$%e235810236732%_
                 _%$%hd235811236735%_
                 _%$%tl235812236737%_
                 _%$%e235813236740%_
                 _%$%hd235814236743%_
                 _%$%tl235815236745%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match242253242254%_
                                                     _%$%e235786236668%_
                                                     _%$%hd235787236671%_
                                                     _%$%tl235788236673%_
                                                     _%$%e235789236676%_
                                                     _%$%hd235790236679%_
                                                     _%$%tl235791236681%_
                                                     _%$%e235792236684%_
                                                     _%$%hd235793236687%_
                                                     _%$%tl235794236689%_
                                                     _%$%e235795236692%_
                                                     _%$%hd235796236695%_
                                                     _%$%tl235797236697%_
                                                     _%$%e235798236700%_
                                                     _%$%hd235799236703%_
                                                     _%$%tl235800236705%_
                                                     _%$%e235801236708%_
                                                     _%$%hd235802236711%_
                                                     _%$%tl235803236713%_
                                                     _%$%e235804236716%_
                                                     _%$%hd235805236719%_
                                                     _%$%tl235806236721%_
                                                     _%$%e235807236724%_
                                                     _%$%hd235808236727%_
                                                     _%$%tl235809236729%_))))
                                            (_%__match242253242254%_
                                             _%$%e235786236668%_
                                             _%$%hd235787236671%_
                                             _%$%tl235788236673%_
                                             _%$%e235789236676%_
                                             _%$%hd235790236679%_
                                             _%$%tl235791236681%_
                                             _%$%e235792236684%_
                                             _%$%hd235793236687%_
                                             _%$%tl235794236689%_
                                             _%$%e235795236692%_
                                             _%$%hd235796236695%_
                                             _%$%tl235797236697%_
                                             _%$%e235798236700%_
                                             _%$%hd235799236703%_
                                             _%$%tl235800236705%_
                                             _%$%e235801236708%_
                                             _%$%hd235802236711%_
                                             _%$%tl235803236713%_
                                             _%$%e235804236716%_
                                             _%$%hd235805236719%_
                                             _%$%tl235806236721%_
                                             _%$%e235807236724%_
                                             _%$%hd235808236727%_
                                             _%$%tl235809236729%_))
                                        (_%__match241929241930%_
                                         _%$%e235786236668%_
                                         _%$%hd235787236671%_
                                         _%$%tl235788236673%_
                                         _%$%e235789236676%_
                                         _%$%hd235790236679%_
                                         _%$%tl235791236681%_
                                         _%$%e235792236684%_
                                         _%$%hd235793236687%_
                                         _%$%tl235794236689%_
                                         _%$%e235795236692%_
                                         _%$%hd235796236695%_
                                         _%$%tl235797236697%_
                                         _%$%e235798236700%_
                                         _%$%hd235799236703%_
                                         _%$%tl235800236705%_
                                         _%$%e235801236708%_
                                         _%$%hd235802236711%_
                                         _%$%tl235803236713%_
                                         _%$%e235804236716%_
                                         _%$%hd235805236719%_
                                         _%$%tl235806236721%_
                                         _%$%e235807236724%_
                                         _%$%hd235808236727%_
                                         _%$%tl235809236729%_
                                         _%$%e235810236732%_
                                         _%$%hd235811236735%_
                                         _%$%tl235812236737%_))
                                    (_%__match242253242254%_
                                     _%$%e235786236668%_
                                     _%$%hd235787236671%_
                                     _%$%tl235788236673%_
                                     _%$%e235789236676%_
                                     _%$%hd235790236679%_
                                     _%$%tl235791236681%_
                                     _%$%e235792236684%_
                                     _%$%hd235793236687%_
                                     _%$%tl235794236689%_
                                     _%$%e235795236692%_
                                     _%$%hd235796236695%_
                                     _%$%tl235797236697%_
                                     _%$%e235798236700%_
                                     _%$%hd235799236703%_
                                     _%$%tl235800236705%_
                                     _%$%e235801236708%_
                                     _%$%hd235802236711%_
                                     _%$%tl235803236713%_
                                     _%$%e235804236716%_
                                     _%$%hd235805236719%_
                                     _%$%tl235806236721%_
                                     _%$%e235807236724%_
                                     _%$%hd235808236727%_
                                     _%$%tl235809236729%_))))
                            (_%__match242253242254%_
                             _%$%e235786236668%_
                             _%$%hd235787236671%_
                             _%$%tl235788236673%_
                             _%$%e235789236676%_
                             _%$%hd235790236679%_
                             _%$%tl235791236681%_
                             _%$%e235792236684%_
                             _%$%hd235793236687%_
                             _%$%tl235794236689%_
                             _%$%e235795236692%_
                             _%$%hd235796236695%_
                             _%$%tl235797236697%_
                             _%$%e235798236700%_
                             _%$%hd235799236703%_
                             _%$%tl235800236705%_
                             _%$%e235801236708%_
                             _%$%hd235802236711%_
                             _%$%tl235803236713%_
                             _%$%e235804236716%_
                             _%$%hd235805236719%_
                             _%$%tl235806236721%_
                             _%$%e235807236724%_
                             _%$%hd235808236727%_
                             _%$%tl235809236729%_))))
                    (_%__match242191242192%_
                     _%$%e235786236668%_
                     _%$%hd235787236671%_
                     _%$%tl235788236673%_
                     _%$%e235789236676%_
                     _%$%hd235790236679%_
                     _%$%tl235791236681%_
                     _%$%e235792236684%_
                     _%$%hd235793236687%_
                     _%$%tl235794236689%_
                     _%$%e235795236692%_
                     _%$%hd235796236695%_
                     _%$%tl235797236697%_
                     _%$%e235798236700%_
                     _%$%hd235799236703%_
                     _%$%tl235800236705%_
                     _%$%e235801236708%_
                     _%$%hd235802236711%_
                     _%$%tl235803236713%_
                     _%$%e235804236716%_
                     _%$%hd235805236719%_
                     _%$%tl235806236721%_))
                (_%__kont241774241775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont241774241775%_))
                                            (_%__kont241774241775%_))
                                        (_%__kont241774241775%_))))
                                (_%__kont241774241775%_))))
                        (_%__kont241774241775%_))
                    (_%__kont241774241775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont241774241775%_))
                                                (_%__kont241774241775%_))
                                            (_%__kont241774241775%_))))
                                    (_%__kont241774241775%_))))
                            (_%__kont241774241775%_))))
                    (_%__kont241774241775%_))))))))))
