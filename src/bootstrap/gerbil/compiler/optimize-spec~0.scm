(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770505726)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp232177 (list gxc#::identity::t))
            (__tmp232176 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp232177
         '()
         __tmp232176
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args230974%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args230974%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp232178
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
        (__make-atomic-promise __tmp232178)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx230966%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self230969%_
                (let ((__obj232169
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj232169))
               (__tmp232179
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self230969%_ _%stx230966%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp232179
           gxc#current-compile-method
           _%self230969%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp232181 (list gxc#::false::t))
            (__tmp232180 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp232181
         '()
         __tmp232180
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args230963%_
        (apply make-instance gxc#::extract-receiver::t _%$args230963%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp232182
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
        (__make-atomic-promise __tmp232182)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx230955%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self230958%_
                (let ((__obj232171
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj232171))
               (__tmp232183
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self230958%_ _%stx230955%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp232183
           gxc#current-compile-method
           _%self230958%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp232185 (list gxc#::void::t))
            (__tmp232184 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp232185
         '(receiver methods slots)
         __tmp232184
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args230952%_
        (apply make-instance gxc#::collect-object-refs::t _%$args230952%_)))
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
      (let ((__tmp232186
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
        (__make-atomic-promise __tmp232186)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords230921%_
               _%receiver230916230922%_
               _%methods230917230923%_
               _%slots230918230924%_
               _%stx230925%_)
        (let* ((_%receiver230928%_
                (if (eq? _%receiver230916230922%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver230916230922%_))
               (_%methods230930%_
                (if (eq? _%methods230917230923%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods230917230923%_))
               (_%slots230932%_
                (if (eq? _%slots230918230924%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots230918230924%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self230934%_
                  (let ((__obj232173
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
                       __obj232173
                       _%receiver230928%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232173
                       _%methods230930%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232173
                       _%slots230932%_
                       '3
                       '#f
                       '#f))
                    __obj232173))
                 (__tmp232187
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self230934%_ _%stx230925%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp232187
             gxc#current-compile-method
             _%self230934%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords230941%_ . _%args230942%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords230941%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230941%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230941%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230941%_
                  'slots:
                  absent-value))
               _%args230942%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args230919230948%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args230919230948%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp232189 (list gxc#::basic-xform-expression::t))
            (__tmp232188 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp232189
         '(receiver klass methods slots)
         __tmp232188
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args230912%_
        (apply make-instance gxc#::subst-object-refs::t _%$args230912%_)))
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
      (let ((__tmp232190
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
        (__make-atomic-promise __tmp232190)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords230878%_
               _%receiver230872230879%_
               _%klass230873230880%_
               _%methods230874230881%_
               _%slots230875230882%_
               _%stx230883%_)
        (let* ((_%receiver230886%_
                (if (eq? _%receiver230872230879%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver230872230879%_))
               (_%klass230888%_
                (if (eq? _%klass230873230880%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass230873230880%_))
               (_%methods230890%_
                (if (eq? _%methods230874230881%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods230874230881%_))
               (_%slots230892%_
                (if (eq? _%slots230875230882%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots230875230882%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self230894%_
                  (let ((__obj232175
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
                       __obj232175
                       _%receiver230886%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232175
                       _%klass230888%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232175
                       _%methods230890%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232175
                       _%slots230892%_
                       '4
                       '#f
                       '#f))
                    __obj232175))
                 (__tmp232191
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self230894%_ _%stx230883%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp232191
             gxc#current-compile-method
             _%self230894%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords230901%_ . _%args230902%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords230901%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230901%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230901%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230901%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230901%_
                  'slots:
                  absent-value))
               _%args230902%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args230876230908%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args230876230908%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self228003%_ _%stx228004%_)
        (letrec ((_%generate-method-bind228006%_
                  (lambda (_%$klass230864%_
                           _%$method-table230865%_
                           _%id230866%_
                           _%$id230867%_)
                    (let ((_%$tmp230869%_
                           (let ((__tmp232192
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp232192))))
                      (cons (cons _%$id230867%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp230869%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table230865%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id230866%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp230869%_ '()))
                    (cons (cons '%#ref (cons _%$tmp230869%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id230866%_
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
                 (_%generate-slot-bind228007%_
                  (lambda (_%$klass230858%_ _%id230859%_ _%$id230860%_)
                    (let ((_%$tmp230862%_
                           (let ((__tmp232193
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp232193))))
                      (cons (cons _%$id230860%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp230862%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass230858%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id230859%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp230862%_ '()))
                        (cons (cons '%#ref (cons _%$tmp230862%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id230859%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl228008%_
                  (lambda (_%$klass230852%_
                           _%$method-table230853%_
                           _%methods-bind230854%_
                           _%slots-bind230855%_
                           _%specializer-impl230856%_)
                    (let ((__tmp232194
                           (cons '%#lambda
                                 (cons (cons _%$klass230852%_
                                             (cons _%$method-table230853%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind230855%_
                                                            _%methods-bind230854%_))
                                                         (cons _%specializer-impl230856%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp232194 _%stx228004%_))))
                 (_%generate-specializer-def228009%_
                  (lambda (_%id230848%_
                           _%specializer-id230849%_
                           _%specializer-impl230850%_)
                    (let ((__tmp232195
                           (cons '%#begin
                                 (cons _%stx228004%_
                                       (cons (let ((__tmp232196
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id230849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl230850%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp232196
                                                _%stx228004%_))
                                             (cons (let ((__tmp232197
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id230848%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id230849%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp232197
                                                      _%stx228004%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp232195 _%stx228004%_)))))
          (let* ((_%__stx231063231064%_ _%stx228004%_)
                 (_%g228012228032%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx231063231064%_)))))
            (let ((_%__kont231065231066%_
                   (lambda (_%g228014228076%_ _%g228015228077%_)
                     (let ((_%method-calls228096%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs228097%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty228098%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?228100%_
                                 (lambda ()
                                   (if (let ((__tmp232198
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls228096%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp232198))
                                       (let ((__tmp232199
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs228097%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp232199))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g228014228076%_))
                             (let* ((_%__stx230977230978%_ _%g228014228076%_)
                                    (_%g228484228502%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx230977230978%_)))))
                               (let ((_%__kont230979230980%_
                                      (lambda (_%g228486228538%_
                                               _%g228487228539%_
                                               _%g228488228540%_)
                                        (let ((_%receiver228560%_
                                               (let ((_%$e228557%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g228486228538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e228557%_
                                                     _%$e228557%_
                                                     _%g228488228540%_))))
                                          (for-each
                                           (lambda (_%g228561228563%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver228560%_
                                              _%method-calls228096%_
                                              _%slot-refs228097%_
                                              _%g228561228563%_))
                                           _%g228486228538%_)
                                          (if (_%no-specializer?228100%_)
                                              _%stx228004%_
                                              (let* ((_%specializer-id228572%_
                                                      (let* ((_%id228566%_
                                                              (let ((__tmp232200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228015228077%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp232200 '"::specialize")))
                     (_%specializer-id228569%_
                      (let ((__tmp232201
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx228004%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id228566%_ __tmp232201))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id228569%_))
                _%specializer-id228569%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass228574%_
                                                      (let ((__tmp232202
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp232202)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table228576%_
                                                      (let ((__tmp232203
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp232203)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods228578%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls228096%_)))
                                                     (_%$methods228582%_
                                                      (let ((__tmp232204
                                                             (lambda (_%id228580%_)
                                                               (let ((__tmp232205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id228580%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232205)))))
                (declare (not safe))
                (##map __tmp232204 _%methods228578%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_228591%_
                                                      (let ((__tmp232206
                                                             (lambda (_%g228583228586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228584228588%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls228096%_
                          _%g228583228586%_
                          _%g228584228588%_)))))
                (declare (not safe))
                (##for-each __tmp232206 _%methods228578%_ _%$methods228582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind228601%_
                                                      (let ((__tmp232207
                                                             (lambda (_%g228593228596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228594228598%_)
                       (_%generate-method-bind228006%_
                        _%$klass228574%_
                        _%$method-table228576%_
                        _%g228593228596%_
                        _%g228594228598%_))))
                (declare (not safe))
                (##map __tmp232207 _%methods228578%_ _%$methods228582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots228603%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs228097%_)))
                                                     (_%$slots228607%_
                                                      (let ((__tmp232208
                                                             (lambda (_%id228605%_)
                                                               (let ((__tmp232209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id228605%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232209)))))
                (declare (not safe))
                (##map __tmp232208 _%slots228603%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_228616%_
                                                      (let ((__tmp232210
                                                             (lambda (_%g228608228611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228609228613%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs228097%_
                          _%g228608228611%_
                          _%g228609228613%_)))))
                (declare (not safe))
                (##for-each __tmp232210 _%slots228603%_ _%$slots228607%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind228625%_
                                                      (let ((__tmp232211
                                                             (lambda (_%g228617228620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228618228622%_)
                       (_%generate-slot-bind228007%_
                        _%$klass228574%_
                        _%g228617228620%_
                        _%g228618228622%_))))
                (declare (not safe))
                (##map __tmp232211 _%slots228603%_ _%$slots228607%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body228631%_
                                                      (map (lambda (_%g228626228628%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver228560%_
                                                              _%$klass228574%_
                                                              _%method-calls228096%_
                                                              _%slot-refs228097%_
                                                              _%g228626228628%_))
                                                           _%g228486228538%_))
                                                     (_%specializer-impl228633%_
                                                      (let ((__tmp232212
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g228488228540%_ _%g228487228539%_)
                                 _%specializer-body228631%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp232212 _%stx228004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl228635%_
                                                      (_%generate-specializer-impl228008%_
                                                       _%$klass228574%_
                                                       _%$method-table228576%_
                                                       _%methods-bind228601%_
                                                       _%slots-bind228625%_
                                                       _%specializer-impl228633%_)))
                                                (let ((__tmp232214
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228015228077%_)))
                                                      (__tmp232213
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id228572%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp232214
                                                   '" => "
                                                   __tmp232213))
                                                (_%generate-specializer-def228009%_
                                                 _%g228015228077%_
                                                 _%specializer-id228572%_
                                                 _%specializer-impl228635%_))))))
                                     (_%__kont230981230982%_
                                      (lambda () _%stx228004%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx230977230978%_))
                                     (let ((_%e228489228514%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx230977230978%_))))
                                       (let ((_%tl228491228519%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228489228514%_)))
                                             (_%hd228490228517%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228489228514%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl228491228519%_))
                                             (let ((_%e228492228522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl228491228519%_))))
                                               (let ((_%tl228494228527%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e228492228522%_)))
                                                     (_%hd228493228525%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e228492228522%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd228493228525%_))
                                                     (let ((_%e228495228530%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd228493228525%_))))
                                                       (let ((_%tl228497228535%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e228495228530%_)))
                     (_%hd228496228533%_
                      (let () (declare (not safe)) (##car _%e228495228530%_))))
                 (_%__kont230979230980%_
                  _%tl228494228527%_
                  _%tl228497228535%_
                  _%hd228496228533%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont230981230982%_))))
                                             (_%__kont230981230982%_))))
                                     (_%__kont230981230982%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g228014228076%_))
                                 (let* ((_%g228642228661%_
                                         (lambda (_%g228643228658%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g228643228658%_))))
                                        (_%g228641228957%_
                                         (lambda (_%g228643228664%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g228643228664%_))
                                               (let ((_%e228645228666%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g228643228664%_))))
                                                 (let ((_%hd228646228669%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e228645228666%_)))
                                                       (_%tl228647228671%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e228645228666%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl228647228671%_))
                                                       (let ((_g232215_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl228647228671%_ '0))))
                 (begin
                   (let ((_g232216_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g232215_)
                                (##values-length _g232215_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g232216_ 2)))
                         (error "Context expects 2 values" _g232216_)))
                   (let ((_%target228648228674%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g232215_ 0)))
                         (_%tl228650228676%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g232215_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl228650228676%_))
                         (letrec ((_%loop228651228679%_
                                   (lambda (_%hd228649228682%_
                                            _%clause228655228684%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd228649228682%_))
                                         (let ((_%e228652228686%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd228649228682%_))))
                                           (let ((_%lp-hd228653228689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e228652228686%_)))
                                                 (_%lp-tl228654228691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e228652228686%_))))
                                             (_%loop228651228679%_
                                              _%lp-tl228654228691%_
                                              (cons _%lp-hd228653228689%_
                                                    _%clause228655228684%_))))
                                         (let ((_%clause228656228694%_
                                                (reverse _%clause228655228684%_)))
                                           ((lambda (_%g228644228696%_)
                                              (for-each
                                               (lambda (_%clause228710%_)
                                                 (let* ((_%__stx231003231004%_
                                                         _%clause228710%_)
                                                        (_%g228713228728%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx231003231004%_)))))
                                                   (let ((_%__kont231005231006%_
                                                          (lambda (_%g228715228756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g228716228757%_
                           _%g228717228758%_)
                    (let ((_%receiver228777%_
                           (let ((_%$e228774%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g228715228756%_))))
                             (if _%$e228774%_
                                 _%$e228774%_
                                 _%g228717228758%_))))
                      (for-each
                       (lambda (_%g228778228780%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver228777%_
                          _%method-calls228096%_
                          _%slot-refs228097%_
                          _%g228778228780%_))
                       _%g228715228756%_))))
                 (_%__kont231007231008%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx231003231004%_))
                                                         (let ((_%e228718228740%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx231003231004%_))))
                   (let ((_%tl228720228745%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e228718228740%_)))
                         (_%hd228719228743%_
                          (let ()
                            (declare (not safe))
                            (##car _%e228718228740%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd228719228743%_))
                         (let ((_%e228721228748%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd228719228743%_))))
                           (let ((_%tl228723228753%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e228721228748%_)))
                                 (_%hd228722228751%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e228721228748%_))))
                             (_%__kont231005231006%_
                              _%tl228720228745%_
                              _%tl228723228753%_
                              _%hd228722228751%_)))
                         (_%__kont231007231008%_))))
                 (_%__kont231007231008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp232217
                                                      (lambda (_%g228785228788%_
                                                               _%g228786228790%_)
                                                        (cons _%g228785228788%_
                                                              _%g228786228790%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp232217
                                                  '()
                                                  _%g228644228696%_)))
                                              (if (_%no-specializer?228100%_)
                                                  _%stx228004%_
                                                  (let* ((_%specializer-id228799%_
                                                          (let* ((_%id228793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp232218
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g228015228077%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp232218 '"::specialize")))
                         (_%specializer-id228796%_
                          (let ((__tmp232219
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx228004%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id228793%_
                             __tmp232219))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id228796%_))
                    _%specializer-id228796%_))
                 (_%$klass228801%_
                  (let ((__tmp232220
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232220)))
                 (_%$method-table228803%_
                  (let ((__tmp232221
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232221)))
                 (_%methods228805%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls228096%_)))
                 (_%$methods228809%_
                  (let ((__tmp232222
                         (lambda (_%id228807%_)
                           (let ((__tmp232223 (gensym _%id228807%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232223)))))
                    (declare (not safe))
                    (##map __tmp232222 _%methods228805%_)))
                 (_%_228818%_
                  (let ((__tmp232224
                         (lambda (_%g228810228813%_ _%g228811228815%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls228096%_
                              _%g228810228813%_
                              _%g228811228815%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp232224
                     _%methods228805%_
                     _%$methods228809%_)))
                 (_%methods-bind228828%_
                  (let ((__tmp232225
                         (lambda (_%g228820228823%_ _%g228821228825%_)
                           (_%generate-method-bind228006%_
                            _%$klass228801%_
                            _%$method-table228803%_
                            _%g228820228823%_
                            _%g228821228825%_))))
                    (declare (not safe))
                    (##map __tmp232225 _%methods228805%_ _%$methods228809%_)))
                 (_%slots228830%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs228097%_)))
                 (_%$slots228834%_
                  (let ((__tmp232226
                         (lambda (_%id228832%_)
                           (let ((__tmp232227 (gensym _%id228832%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232227)))))
                    (declare (not safe))
                    (##map __tmp232226 _%slots228830%_)))
                 (_%_228843%_
                  (let ((__tmp232228
                         (lambda (_%g228835228838%_ _%g228836228840%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs228097%_
                              _%g228835228838%_
                              _%g228836228840%_)))))
                    (declare (not safe))
                    (##for-each __tmp232228 _%slots228830%_ _%$slots228834%_)))
                 (_%slots-bind228852%_
                  (let ((__tmp232229
                         (lambda (_%g228844228847%_ _%g228845228849%_)
                           (_%generate-slot-bind228007%_
                            _%$klass228801%_
                            _%g228844228847%_
                            _%g228845228849%_))))
                    (declare (not safe))
                    (##map __tmp232229 _%slots228830%_ _%$slots228834%_)))
                 (_%specializer-clauses228950%_
                  (map (lambda (_%clause228854%_)
                         (let* ((_%__stx231023231024%_ _%clause228854%_)
                                (_%g228857228872%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx231023231024%_)))))
                           (let ((_%__kont231025231026%_
                                  (lambda (_%g228859228900%_
                                           _%g228860228901%_
                                           _%g228861228902%_)
                                    (let* ((_%receiver228931%_
                                            (let ((_%$e228928%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g228859228900%_))))
                                              (if _%$e228928%_
                                                  _%$e228928%_
                                                  _%g228861228902%_)))
                                           (_%body228937%_
                                            (map (lambda (_%g228932228934%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver228931%_
                                                    _%$klass228801%_
                                                    _%method-calls228096%_
                                                    _%slot-refs228097%_
                                                    _%g228932228934%_))
                                                 _%g228859228900%_)))
                                      (cons (cons _%g228861228902%_
                                                  _%g228860228901%_)
                                            _%body228937%_))))
                                 (_%__kont231027231028%_
                                  (lambda () _%clause228854%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx231023231024%_))
                                 (let ((_%e228862228884%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx231023231024%_))))
                                   (let ((_%tl228864228889%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e228862228884%_)))
                                         (_%hd228863228887%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e228862228884%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd228863228887%_))
                                         (let ((_%e228865228892%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd228863228887%_))))
                                           (let ((_%tl228867228897%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e228865228892%_)))
                                                 (_%hd228866228895%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e228865228892%_))))
                                             (_%__kont231025231026%_
                                              _%tl228864228889%_
                                              _%tl228867228897%_
                                              _%hd228866228895%_)))
                                         (_%__kont231027231028%_))))
                                 (_%__kont231027231028%_)))))
                       (let ((__tmp232230
                              (lambda (_%g228942228945%_ _%g228943228947%_)
                                (cons _%g228942228945%_ _%g228943228947%_))))
                         (declare (not safe))
                         (foldr__0 __tmp232230 '() _%g228644228696%_))))
                 (_%specializer-impl228952%_
                  (let ((__tmp232231
                         (cons '%#case-lambda _%specializer-clauses228950%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp232231 _%stx228004%_)))
                 (_%specializer-impl228954%_
                  (_%generate-specializer-impl228008%_
                   _%$klass228801%_
                   _%$method-table228803%_
                   _%methods-bind228828%_
                   _%slots-bind228852%_
                   _%specializer-impl228952%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp232233
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g228015228077%_)))
                                                          (__tmp232232
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id228799%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp232233
                                                       '" => "
                                                       __tmp232232))
                                                    (_%generate-specializer-def228009%_
                                                     _%g228015228077%_
                                                     _%specializer-id228799%_
                                                     _%specializer-impl228954%_))))
                                            _%clause228656228694%_))))))
                           (_%loop228651228679%_ _%target228648228674%_ '()))
                         (_%g228642228661%_ _%g228643228664%_)))))
               (_%g228642228661%_ _%g228643228664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g228642228661%_
                                                _%g228643228664%_)))))
                                   (_%g228641228957%_ _%g228014228076%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g228014228076%_))
                                     (let* ((_%g228961228991%_
                                             (lambda (_%g228962228988%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g228962228988%_))))
                                            (_%g228960229618%_
                                             (lambda (_%g228962228994%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g228962228994%_))
                                                   (let ((_%e228966228996%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g228962228994%_))))
                                                     (let ((_%hd228967228999%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e228966228996%_)))
                                                           (_%tl228968229001%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e228966228996%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl228968229001%_))
                                                           (let ((_%e228969229004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl228968229001%_))))
                     (let ((_%hd228970229007%_
                            (let ()
                              (declare (not safe))
                              (##car _%e228969229004%_)))
                           (_%tl228971229009%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e228969229004%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd228970229007%_))
                           (let ((_%e228972229012%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd228970229007%_))))
                             (let ((_%hd228973229015%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e228972229012%_)))
                                   (_%tl228974229017%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e228972229012%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd228973229015%_))
                                   (let ((_%e228975229020%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd228973229015%_))))
                                     (let ((_%hd228976229023%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e228975229020%_)))
                                           (_%tl228977229025%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e228975229020%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd228976229023%_))
                                           (let ((_%e228978229028%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd228976229023%_))))
                                             (let ((_%hd228979229031%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e228978229028%_)))
                                                   (_%tl228980229033%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e228978229028%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl228980229033%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl228977229025%_))
                                                       (let ((_%e228981229036%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl228977229025%_))))
                 (let ((_%hd228982229039%_
                        (let ()
                          (declare (not safe))
                          (##car _%e228981229036%_)))
                       (_%tl228983229041%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e228981229036%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl228983229041%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl228974229017%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl228971229009%_))
                               (let ((_%e228984229044%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl228971229009%_))))
                                 (let ((_%hd228985229047%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e228984229044%_)))
                                       (_%tl228986229049%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e228984229044%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl228986229049%_))
                                       ((lambda (_%g228963229052%_
                                                 _%g228964229053%_
                                                 _%g228965229054%_)
                                          (let* ((_%g229078229096%_
                                                  (lambda (_%g229079229093%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g229079229093%_))))
                                                 (_%g229077229152%_
                                                  (lambda (_%g229079229099%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g229079229099%_))
                                                        (let ((_%e229083229101%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g229079229099%_))))
                  (let ((_%hd229084229104%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229083229101%_)))
                        (_%tl229085229106%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229083229101%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229085229106%_))
                        (let ((_%e229086229109%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229085229106%_))))
                          (let ((_%hd229087229112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229086229109%_)))
                                (_%tl229088229114%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229086229109%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229087229112%_))
                                (let ((_%e229089229117%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229087229112%_))))
                                  (let ((_%hd229090229120%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229089229117%_)))
                                        (_%tl229091229122%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229089229117%_))))
                                    ((lambda (_%g229080229125%_
                                              _%g229081229126%_
                                              _%g229082229127%_)
                                       (let ((_%receiver229146%_
                                              (let ((_%$e229143%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g229080229125%_))))
                                                (if _%$e229143%_
                                                    _%$e229143%_
                                                    _%g229082229127%_))))
                                         (for-each
                                          (lambda (_%g229147229149%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver229146%_
                                             _%method-calls228096%_
                                             _%slot-refs228097%_
                                             _%g229147229149%_))
                                          _%g229080229125%_)))
                                     _%tl229088229114%_
                                     _%tl229091229122%_
                                     _%hd229090229120%_)))
                                (_%g229078229096%_ _%g229079229099%_))))
                        (_%g229078229096%_ _%g229079229099%_))))
                (_%g229078229096%_ _%g229079229099%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g229077229152%_
                                             _%g228964229053%_))
                                          (let* ((_%g229155229174%_
                                                  (lambda (_%g229156229171%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g229156229171%_))))
                                                 (_%g229154229296%_
                                                  (lambda (_%g229156229177%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g229156229177%_))
                                                        (let ((_%e229158229179%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g229156229177%_))))
                  (let ((_%hd229159229182%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229158229179%_)))
                        (_%tl229160229184%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229158229179%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl229160229184%_))
                        (let ((_g232234_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl229160229184%_
                                  '0))))
                          (begin
                            (let ((_g232235_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232234_)
                                         (##values-length _g232234_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232235_ 2)))
                                  (error "Context expects 2 values"
                                         _g232235_)))
                            (let ((_%target229161229187%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232234_ 0)))
                                  (_%tl229163229189%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232234_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229163229189%_))
                                  (letrec ((_%loop229164229192%_
                                            (lambda (_%hd229162229195%_
                                                     _%clause229168229197%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd229162229195%_))
                                                  (let ((_%e229165229199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd229162229195%_))))
                                                    (let ((_%lp-hd229166229202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229165229199%_)))
                                                          (_%lp-tl229167229204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229165229199%_))))
                                                      (_%loop229164229192%_
                                                       _%lp-tl229167229204%_
                                                       (cons _%lp-hd229166229202%_
                                                             _%clause229168229197%_))))
                                                  (let ((_%clause229169229207%_
                                                         (reverse _%clause229168229197%_)))
                                                    ((lambda (_%g229157229209%_)
                                                       (for-each
                                                        (lambda (_%clause229222%_)
                                                          (let* ((_%g229224229239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g229225229236%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g229225229236%_))))
                         (_%g229223229286%_
                          (lambda (_%g229225229242%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g229225229242%_))
                                (let ((_%e229229229244%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g229225229242%_))))
                                  (let ((_%hd229230229247%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229229229244%_)))
                                        (_%tl229231229249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229229229244%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229230229247%_))
                                        (let ((_%e229232229252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229230229247%_))))
                                          (let ((_%hd229233229255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229232229252%_)))
                                                (_%tl229234229257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229232229252%_))))
                                            ((lambda (_%g229226229260%_
                                                      _%g229227229261%_
                                                      _%g229228229262%_)
                                               (let ((_%receiver229280%_
                                                      (let ((_%$e229277%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g229226229260%_))))
                (if _%$e229277%_ _%$e229277%_ _%g229228229262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g229281229283%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver229280%_
                                                     _%method-calls228096%_
                                                     _%slot-refs228097%_
                                                     _%g229281229283%_))
                                                  _%g229226229260%_)))
                                             _%tl229231229249%_
                                             _%tl229234229257%_
                                             _%hd229233229255%_)))
                                        (_%g229224229239%_
                                         _%g229225229242%_))))
                                (_%g229224229239%_ _%g229225229242%_)))))
                    (_%g229223229286%_ _%clause229222%_)))
                (let ((__tmp232236
                       (lambda (_%g229288229291%_ _%g229289229293%_)
                         (cons _%g229288229291%_ _%g229289229293%_))))
                  (declare (not safe))
                  (foldr__0 __tmp232236 '() _%g229157229209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause229169229207%_))))))
                                    (_%loop229164229192%_
                                     _%target229161229187%_
                                     '()))
                                  (_%g229155229174%_ _%g229156229177%_)))))
                        (_%g229155229174%_ _%g229156229177%_))))
                (_%g229155229174%_ _%g229156229177%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g229154229296%_
                                             _%g228963229052%_))
                                          (if (_%no-specializer?228100%_)
                                              _%stx228004%_
                                              (let* ((_%specializer-id229305%_
                                                      (let* ((_%id229299%_
                                                              (let ((__tmp232237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228015228077%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp232237 '"::specialize")))
                     (_%specializer-id229302%_
                      (let ((__tmp232238
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx228004%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id229299%_ __tmp232238))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id229302%_))
                _%specializer-id229302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass229307%_
                                                      (let ((__tmp232239
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp232239)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table229309%_
                                                      (let ((__tmp232240
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp232240)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods229311%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls228096%_)))
                                                     (_%$methods229315%_
                                                      (let ((__tmp232241
                                                             (lambda (_%id229313%_)
                                                               (let ((__tmp232242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229313%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232242)))))
                (declare (not safe))
                (##map __tmp232241 _%methods229311%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229324%_
                                                      (let ((__tmp232243
                                                             (lambda (_%g229316229319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229317229321%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls228096%_
                          _%g229316229319%_
                          _%g229317229321%_)))))
                (declare (not safe))
                (##for-each __tmp232243 _%methods229311%_ _%$methods229315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind229334%_
                                                      (let ((__tmp232244
                                                             (lambda (_%g229326229329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229327229331%_)
                       (_%generate-method-bind228006%_
                        _%$klass229307%_
                        _%$method-table229309%_
                        _%g229326229329%_
                        _%g229327229331%_))))
                (declare (not safe))
                (##map __tmp232244 _%methods229311%_ _%$methods229315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots229336%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs228097%_)))
                                                     (_%$slots229340%_
                                                      (let ((__tmp232245
                                                             (lambda (_%id229338%_)
                                                               (let ((__tmp232246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229338%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232246)))))
                (declare (not safe))
                (##map __tmp232245 _%slots229336%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229349%_
                                                      (let ((__tmp232247
                                                             (lambda (_%g229341229344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229342229346%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs228097%_
                          _%g229341229344%_
                          _%g229342229346%_)))))
                (declare (not safe))
                (##for-each __tmp232247 _%slots229336%_ _%$slots229340%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind229358%_
                                                      (let ((__tmp232248
                                                             (lambda (_%g229350229353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229351229355%_)
                       (_%generate-slot-bind228007%_
                        _%$klass229307%_
                        _%g229350229353%_
                        _%g229351229355%_))))
                (declare (not safe))
                (##map __tmp232248 _%slots229336%_ _%$slots229340%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr229450%_
                                                      (let* ((_%g229360229378%_
                                                              (lambda (_%g229361229375%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229361229375%_))))
                     (_%g229359229447%_
                      (lambda (_%g229361229381%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229361229381%_))
                            (let ((_%e229365229383%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229361229381%_))))
                              (let ((_%hd229366229386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229365229383%_)))
                                    (_%tl229367229388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229365229383%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229367229388%_))
                                    (let ((_%e229368229391%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229367229388%_))))
                                      (let ((_%hd229369229394%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229368229391%_)))
                                            (_%tl229370229396%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229368229391%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229369229394%_))
                                            (let ((_%e229371229399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd229369229394%_))))
                                              (let ((_%hd229372229402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229371229399%_)))
                                                    (_%tl229373229404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229371229399%_))))
                                                ((lambda (_%g229362229407%_
                                                          _%g229363229408%_
                                                          _%g229364229409%_)
                                                   (let* ((_%receiver229438%_
                                                           (let ((_%$e229435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g229362229407%_))))
                     (if _%$e229435%_ _%$e229435%_ _%g229364229409%_)))
                  (_%body229444%_
                   (map (lambda (_%g229439229441%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver229438%_
                           _%$klass229307%_
                           _%method-calls228096%_
                           _%slot-refs228097%_
                           _%g229439229441%_))
                        _%g229362229407%_))
                  (__tmp232249
                   (cons '%#lambda
                         (cons (cons _%g229364229409%_ _%g229363229408%_)
                               _%body229444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp232249
                                                      _%g228964229053%_)))
                                                 _%tl229370229396%_
                                                 _%tl229373229404%_
                                                 _%hd229372229402%_)))
                                            (_%g229360229378%_
                                             _%g229361229381%_))))
                                    (_%g229360229378%_ _%g229361229381%_))))
                            (_%g229360229378%_ _%g229361229381%_)))))
                (_%g229359229447%_ _%g228964229053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr229611%_
                                                      (let* ((_%g229452229471%_
                                                              (lambda (_%g229453229468%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229453229468%_))))
                     (_%g229451229608%_
                      (lambda (_%g229453229474%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229453229474%_))
                            (let ((_%e229455229476%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229453229474%_))))
                              (let ((_%hd229456229479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229455229476%_)))
                                    (_%tl229457229481%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229455229476%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl229457229481%_))
                                    (let ((_g232250_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl229457229481%_
                                              '0))))
                                      (begin
                                        (let ((_g232251_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g232250_)
                                                     (##values-length
                                                      _g232250_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g232251_ 2)))
                                              (error "Context expects 2 values"
                                                     _g232251_)))
                                        (let ((_%target229458229484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g232250_ 0)))
                                              (_%tl229460229486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g232250_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229460229486%_))
                                              (letrec ((_%loop229461229489%_
                                                        (lambda (_%hd229459229492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause229465229494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd229459229492%_))
                      (let ((_%e229462229496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd229459229492%_))))
                        (let ((_%lp-hd229463229499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229462229496%_)))
                              (_%lp-tl229464229501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229462229496%_))))
                          (_%loop229461229489%_
                           _%lp-tl229464229501%_
                           (cons _%lp-hd229463229499%_
                                 _%clause229465229494%_))))
                      (let ((_%clause229466229504%_
                             (reverse _%clause229465229494%_)))
                        ((lambda (_%g229454229506%_)
                           (let* ((_%clauses229606%_
                                   (map (lambda (_%clause229520%_)
                                          (let* ((_%__stx231043231044%_
                                                  _%clause229520%_)
                                                 (_%g229523229538%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx231043231044%_)))))
                                            (let ((_%__kont231045231046%_
                                                   (lambda (_%g229525229566%_
                                                            _%g229526229567%_
                                                            _%g229527229568%_)
                                                     (let* ((_%receiver229587%_
                                                             (let ((_%$e229584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g229525229566%_))))
                       (if _%$e229584%_ _%$e229584%_ _%g229527229568%_)))
                    (_%body229593%_
                     (map (lambda (_%g229588229590%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver229587%_
                             _%$klass229307%_
                             _%method-calls228096%_
                             _%slot-refs228097%_
                             _%g229588229590%_))
                          _%g229525229566%_)))
               (cons (cons _%g229527229568%_ _%g229526229567%_)
                     _%body229593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231047231048%_
                                                   (lambda ()
                                                     _%clause229520%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx231043231044%_))
                                                  (let ((_%e229528229550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx231043231044%_))))
                                                    (let ((_%tl229530229555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229528229550%_)))
                                                          (_%hd229529229553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229528229550%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229529229553%_))
                                                          (let ((_%e229531229558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd229529229553%_))))
                    (let ((_%tl229533229563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229531229558%_)))
                          (_%hd229532229561%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229531229558%_))))
                      (_%__kont231045231046%_
                       _%tl229530229555%_
                       _%tl229533229563%_
                       _%hd229532229561%_)))
                  (_%__kont231047231048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231047231048%_)))))
                                        (let ((__tmp232252
                                               (lambda (_%g229598229601%_
                                                        _%g229599229603%_)
                                                 (cons _%g229598229601%_
                                                       _%g229599229603%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp232252
                                           '()
                                           _%g229454229506%_))))
                                  (__tmp232253
                                   (cons '%#case-lambda _%clauses229606%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232253
                              _%g228963229052%_)))
                         _%clause229466229504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop229461229489%_
                                                 _%target229458229484%_
                                                 '()))
                                              (_%g229452229471%_
                                               _%g229453229474%_)))))
                                    (_%g229452229471%_ _%g229453229474%_))))
                            (_%g229452229471%_ _%g229453229474%_)))))
                (_%g229451229608%_ _%g228963229052%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229613%_
                                                      (let ((__tmp232254
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g228965229054%_ '())
                                             (cons _%specializer-lambda-expr229450%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr229611%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp232254 _%stx228004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229615%_
                                                      (_%generate-specializer-impl228008%_
                                                       _%$klass229307%_
                                                       _%$method-table229309%_
                                                       _%methods-bind229334%_
                                                       _%slots-bind229358%_
                                                       _%specializer-impl229613%_)))
                                                (let ((__tmp232256
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228015228077%_)))
                                                      (__tmp232255
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id229305%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp232256
                                                   '" => "
                                                   __tmp232255))
                                                (_%generate-specializer-def228009%_
                                                 _%g228015228077%_
                                                 _%specializer-id229305%_
                                                 _%specializer-impl229615%_))))
                                        _%hd228985229047%_
                                        _%hd228982229039%_
                                        _%hd228979229031%_)
                                       (_%g228961228991%_ _%g228962228994%_))))
                               (_%g228961228991%_ _%g228962228994%_))
                           (_%g228961228991%_ _%g228962228994%_))
                       (_%g228961228991%_ _%g228962228994%_))))
               (_%g228961228991%_ _%g228962228994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g228961228991%_
                                                    _%g228962228994%_))))
                                           (_%g228961228991%_
                                            _%g228962228994%_))))
                                   (_%g228961228991%_ _%g228962228994%_))))
                           (_%g228961228991%_ _%g228962228994%_))))
                   (_%g228961228991%_ _%g228962228994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g228961228991%_
                                                    _%g228962228994%_)))))
                                       (_%g228960229618%_ _%g228014228076%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g228014228076%_))
                                         (let* ((_%g229622229675%_
                                                 (lambda (_%g229623229672%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g229623229672%_))))
                                                (_%g229621230840%_
                                                 (lambda (_%g229623229678%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g229623229678%_))
                                                       (let ((_%e229629229680%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g229623229678%_))))
                 (let ((_%hd229630229683%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229629229680%_)))
                       (_%tl229631229685%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229629229680%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd229630229683%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd229630229683%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl229631229685%_))
                               (let ((_%e229632229688%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl229631229685%_))))
                                 (let ((_%hd229633229691%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e229632229688%_)))
                                       (_%tl229634229693%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e229632229688%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd229633229691%_))
                                       (let ((_%e229635229696%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd229633229691%_))))
                                         (let ((_%hd229636229699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e229635229696%_)))
                                               (_%tl229637229701%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e229635229696%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd229636229699%_))
                                               (let ((_%e229638229704%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd229636229699%_))))
                                                 (let ((_%hd229639229707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229638229704%_)))
                                                       (_%tl229640229709%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229638229704%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd229639229707%_))
                                                       (let ((_%e229641229712%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd229639229707%_))))
                 (let ((_%hd229642229715%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229641229712%_)))
                       (_%tl229643229717%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229641229712%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl229643229717%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl229640229709%_))
                           (let ((_%e229644229720%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl229640229709%_))))
                             (let ((_%hd229645229723%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e229644229720%_)))
                                   (_%tl229646229725%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e229644229720%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd229645229723%_))
                                   (let ((_%e229647229728%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd229645229723%_))))
                                     (let ((_%hd229648229731%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229647229728%_)))
                                           (_%tl229649229733%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229647229728%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd229648229731%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd229648229731%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl229649229733%_))
                                                   (let ((_%e229650229736%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl229649229733%_))))
                                                     (let ((_%hd229651229739%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e229650229736%_)))
                                                           (_%tl229652229741%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e229650229736%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd229651229739%_))
                                                           (let ((_%e229653229744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd229651229739%_))))
                     (let ((_%hd229654229747%_
                            (let ()
                              (declare (not safe))
                              (##car _%e229653229744%_)))
                           (_%tl229655229749%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e229653229744%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd229654229747%_))
                           (let ((_%e229656229752%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd229654229747%_))))
                             (let ((_%hd229657229755%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e229656229752%_)))
                                   (_%tl229658229757%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e229656229752%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd229657229755%_))
                                   (let ((_%e229659229760%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd229657229755%_))))
                                     (let ((_%hd229660229763%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229659229760%_)))
                                           (_%tl229661229765%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229659229760%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl229661229765%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl229658229757%_))
                                               (let ((_%e229662229768%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl229658229757%_))))
                                                 (let ((_%hd229663229771%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229662229768%_)))
                                                       (_%tl229664229773%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229662229768%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl229664229773%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl229655229749%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl229652229741%_))
                       (let ((_%e229665229776%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl229652229741%_))))
                         (let ((_%hd229666229779%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e229665229776%_)))
                               (_%tl229667229781%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e229665229776%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl229667229781%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl229646229725%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl229637229701%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl229634229693%_))
                                           (let ((_%e229668229784%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl229634229693%_))))
                                             (let ((_%hd229669229787%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e229668229784%_)))
                                                   (_%tl229670229789%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e229668229784%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl229670229789%_))
                                                   ((lambda (_%g229624229792%_
                                                             _%g229625229793%_
                                                             _%g229626229794%_
                                                             _%g229627229795%_
                                                             _%g229628229796%_)
                                                      (let* ((_%g229836229898%_
                                                              (lambda (_%g229837229895%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229837229895%_))))
                     (_%g229835230837%_
                      (lambda (_%g229837229901%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229837229901%_))
                            (let ((_%e229843229903%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229837229901%_))))
                              (let ((_%hd229844229906%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229843229903%_)))
                                    (_%tl229845229908%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229843229903%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229844229906%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd229844229906%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229845229908%_))
                                            (let ((_%e229846229911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229845229908%_))))
                                              (let ((_%hd229847229914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229846229911%_)))
                                                    (_%tl229848229916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229846229911%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229848229916%_))
                                                    (let ((_%e229849229919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229848229916%_))))
                                                      (let ((_%hd229850229922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e229849229919%_)))
                    (_%tl229851229924%_
                     (let () (declare (not safe)) (##cdr _%e229849229919%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd229850229922%_))
                    (let ((_%e229852229927%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd229850229922%_))))
                      (let ((_%hd229853229930%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229852229927%_)))
                            (_%tl229854229932%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229852229927%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd229853229930%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd229853229930%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229854229932%_))
                                    (let ((_%e229855229935%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229854229932%_))))
                                      (let ((_%hd229856229938%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229855229935%_)))
                                            (_%tl229857229940%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229855229935%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229856229938%_))
                                            (let ((_%e229858229943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd229856229938%_))))
                                              (let ((_%hd229859229946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229858229943%_)))
                                                    (_%tl229860229948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229858229943%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229859229946%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd229859229946%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229860229948%_))
                                                            (let ((_%e229861229951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229860229948%_))))
                      (let ((_%hd229862229954%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229861229951%_)))
                            (_%tl229863229956%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229861229951%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229863229956%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229857229940%_))
                                (let ((_%e229864229959%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229857229940%_))))
                                  (let ((_%hd229865229962%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229864229959%_)))
                                        (_%tl229866229964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229864229959%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229865229962%_))
                                        (let ((_%e229867229967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229865229962%_))))
                                          (let ((_%hd229868229970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229867229967%_)))
                                                (_%tl229869229972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229867229967%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd229868229970%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd229868229970%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229869229972%_))
                                                        (let ((_%e229870229975%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl229869229972%_))))
                  (let ((_%hd229871229978%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229870229975%_)))
                        (_%tl229872229980%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229870229975%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229872229980%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229866229964%_))
                            (let ((_%e229873229983%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229866229964%_))))
                              (let ((_%hd229874229986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229873229983%_)))
                                    (_%tl229875229988%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229873229983%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229874229986%_))
                                    (let ((_%e229876229991%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229874229986%_))))
                                      (let ((_%hd229877229994%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229876229991%_)))
                                            (_%tl229878229996%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229876229991%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229877229994%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229877229994%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229878229996%_))
                                                    (let ((_%e229879229999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229878229996%_))))
                                                      (let ((_%hd229880230002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e229879229999%_)))
                    (_%tl229881230004%_
                     (let () (declare (not safe)) (##cdr _%e229879229999%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229881230004%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl229875229988%_))
                        (if (let ((__tmp232257
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl229875229988%_))))
                              (declare (not safe))
                              (##fx>= __tmp232257 '1))
                            (let ((_g232258_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl229875229988%_
                                      '1))))
                              (begin
                                (let ((_g232259_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g232258_)
                                             (##values-length _g232258_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g232259_ 2)))
                                      (error "Context expects 2 values"
                                             _g232259_)))
                                (let ((_%target229882230007%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232258_ 0)))
                                      (_%tl229884230009%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232258_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229884230009%_))
                                      (let ((_%e229891230012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl229884230009%_))))
                                        (let ((_%hd229892230015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229891230012%_)))
                                              (_%tl229893230017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229891230012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229893230017%_))
                                              (letrec ((_%loop229885230020%_
                                                        (lambda (_%hd229883230023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref229889230025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd229883230023%_))
                      (let ((_%e229886230027%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd229883230023%_))))
                        (let ((_%lp-hd229887230030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229886230027%_)))
                              (_%lp-tl229888230032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229886230027%_))))
                          (_%loop229885230020%_
                           _%lp-tl229888230032%_
                           (cons _%lp-hd229887230030%_
                                 _%kw-ref229889230025%_))))
                      (let ((_%kw-ref229890230035%_
                             (reverse _%kw-ref229889230025%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229851229924%_))
                            ((lambda (_%g229838230037%_
                                      _%g229839230038%_
                                      _%g229840230039%_
                                      _%g229841230040%_
                                      _%g229842230041%_)
                               (let* ((_%kw-count230092%_
                                       (length (let ((__tmp232260
                                                      (lambda (_%g230084230087%_
                                                               _%g230085230089%_)
                                                        (cons _%g230084230087%_
                                                              _%g230085230089%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp232260
                                                  '()
                                                  _%g229839230038%_))))
                                      (_%self-index230094%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count230092%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g229626229794%_))
                                     (let* ((_%g230098230112%_
                                             (lambda (_%g230099230109%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g230099230109%_))))
                                            (_%g230097230235%_
                                             (lambda (_%g230099230115%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g230099230115%_))
                                                   (let ((_%e230102230117%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g230099230115%_))))
                                                     (let ((_%hd230103230120%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e230102230117%_)))
                                                           (_%tl230104230122%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e230102230117%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230104230122%_))
                                                           (let ((_%e230105230125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230104230122%_))))
                     (let ((_%hd230106230128%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230105230125%_)))
                           (_%tl230107230130%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230105230125%_))))
                       ((lambda (_%g230100230133%_ _%g230101230134%_)
                          (let* ((_%self230151%_
                                  (list-ref
                                   _%g230101230134%_
                                   _%self-index230094%_))
                                 (_%receiver230156%_
                                  (let ((_%$e230153%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g230100230133%_))))
                                    (if _%$e230153%_
                                        _%$e230153%_
                                        _%self230151%_))))
                            (for-each
                             (lambda (_%g230158230160%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver230156%_
                                _%method-calls228096%_
                                _%slot-refs228097%_
                                _%g230158230160%_))
                             _%g230100230133%_)
                            (if (_%no-specializer?228100%_)
                                _%stx228004%_
                                (let* ((_%specializer-id230169%_
                                        (let* ((_%id230163%_
                                                (let ((__tmp232261
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228015228077%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp232261
                                                   '"::specialize")))
                                               (_%specializer-id230166%_
                                                (let ((__tmp232262
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx228004%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id230163%_
                                                   __tmp232262))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id230166%_))
                                          _%specializer-id230166%_))
                                       (_%$klass230171%_
                                        (let ((__tmp232263
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp232263)))
                                       (_%$method-table230173%_
                                        (let ((__tmp232264
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp232264)))
                                       (_%methods230175%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls228096%_)))
                                       (_%$methods230179%_
                                        (let ((__tmp232265
                                               (lambda (_%id230177%_)
                                                 (let ((__tmp232266
                                                        (gensym _%id230177%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp232266)))))
                                          (declare (not safe))
                                          (##map __tmp232265
                                                 _%methods230175%_)))
                                       (_%_230188%_
                                        (let ((__tmp232267
                                               (lambda (_%g230180230183%_
                                                        _%g230181230185%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls228096%_
                                                    _%g230180230183%_
                                                    _%g230181230185%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp232267
                                           _%methods230175%_
                                           _%$methods230179%_)))
                                       (_%methods-bind230198%_
                                        (let ((__tmp232268
                                               (lambda (_%g230190230193%_
                                                        _%g230191230195%_)
                                                 (_%generate-method-bind228006%_
                                                  _%$klass230171%_
                                                  _%$method-table230173%_
                                                  _%g230190230193%_
                                                  _%g230191230195%_))))
                                          (declare (not safe))
                                          (##map __tmp232268
                                                 _%methods230175%_
                                                 _%$methods230179%_)))
                                       (_%slots230200%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs228097%_)))
                                       (_%$slots230204%_
                                        (let ((__tmp232269
                                               (lambda (_%id230202%_)
                                                 (let ((__tmp232270
                                                        (gensym _%id230202%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp232270)))))
                                          (declare (not safe))
                                          (##map __tmp232269 _%slots230200%_)))
                                       (_%_230213%_
                                        (let ((__tmp232271
                                               (lambda (_%g230205230208%_
                                                        _%g230206230210%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs228097%_
                                                    _%g230205230208%_
                                                    _%g230206230210%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp232271
                                           _%slots230200%_
                                           _%$slots230204%_)))
                                       (_%slots-bind230222%_
                                        (let ((__tmp232272
                                               (lambda (_%g230214230217%_
                                                        _%g230215230219%_)
                                                 (_%generate-slot-bind228007%_
                                                  _%$klass230171%_
                                                  _%g230214230217%_
                                                  _%g230215230219%_))))
                                          (declare (not safe))
                                          (##map __tmp232272
                                                 _%slots230200%_
                                                 _%$slots230204%_)))
                                       (_%specializer-impl230230%_
                                        (let* ((_%specializer-body230228%_
                                                (map (lambda (_%g230223230225%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver230156%_
                                                        _%$klass230171%_
                                                        _%method-calls228096%_
                                                        _%slot-refs228097%_
                                                        _%g230223230225%_))
                                                     _%g230100230133%_))
                                               (__tmp232273
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g229628229796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g229627229795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp232274
                                   (cons '%#lambda
                                         (cons _%g230101230134%_
                                               _%specializer-body230228%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp232274
                               _%g229626229794%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g229625229793%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g229624229792%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp232273
                                           _%stx228004%_)))
                                       (_%specializer-impl230232%_
                                        (_%generate-specializer-impl228008%_
                                         _%$klass230171%_
                                         _%$method-table230173%_
                                         _%methods-bind230198%_
                                         _%slots-bind230222%_
                                         _%specializer-impl230230%_)))
                                  (let ((__tmp232276
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g228015228077%_)))
                                        (__tmp232275
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id230169%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp232276
                                     '" => "
                                     __tmp232275))
                                  (_%generate-specializer-def228009%_
                                   _%g228015228077%_
                                   _%specializer-id230169%_
                                   _%specializer-impl230232%_)))))
                        _%tl230107230130%_
                        _%hd230106230128%_)))
                   (_%g230098230112%_ _%g230099230115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230098230112%_
                                                    _%g230099230115%_)))))
                                       (_%g230097230235%_ _%g229626229794%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g229626229794%_))
                                         (let* ((_%g230239230269%_
                                                 (lambda (_%g230240230266%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g230240230266%_))))
                                                (_%g230238230833%_
                                                 (lambda (_%g230240230272%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g230240230272%_))
                                                       (let ((_%e230244230274%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g230240230272%_))))
                 (let ((_%hd230245230277%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230244230274%_)))
                       (_%tl230246230279%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230244230274%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl230246230279%_))
                       (let ((_%e230247230282%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl230246230279%_))))
                         (let ((_%hd230248230285%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230247230282%_)))
                               (_%tl230249230287%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230247230282%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd230248230285%_))
                               (let ((_%e230250230290%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd230248230285%_))))
                                 (let ((_%hd230251230293%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230250230290%_)))
                                       (_%tl230252230295%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230250230290%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd230251230293%_))
                                       (let ((_%e230253230298%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd230251230293%_))))
                                         (let ((_%hd230254230301%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e230253230298%_)))
                                               (_%tl230255230303%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e230253230298%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd230254230301%_))
                                               (let ((_%e230256230306%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd230254230301%_))))
                                                 (let ((_%hd230257230309%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230256230306%_)))
                                                       (_%tl230258230311%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230256230306%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl230258230311%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230255230303%_))
                                                           (let ((_%e230259230314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230255230303%_))))
                     (let ((_%hd230260230317%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230259230314%_)))
                           (_%tl230261230319%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230259230314%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl230261230319%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl230252230295%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl230249230287%_))
                                   (let ((_%e230262230322%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl230249230287%_))))
                                     (let ((_%hd230263230325%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230262230322%_)))
                                           (_%tl230264230327%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230262230322%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl230264230327%_))
                                           ((lambda (_%g230241230330%_
                                                     _%g230242230331%_
                                                     _%g230243230332%_)
                                              (let* ((_%g230356230370%_
                                                      (lambda (_%g230357230367%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230357230367%_))))
                                                     (_%g230355230417%_
                                                      (lambda (_%g230357230373%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230357230373%_))
                                                            (let ((_%e230360230375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230357230373%_))))
                      (let ((_%hd230361230378%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230360230375%_)))
                            (_%tl230362230380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230360230375%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230362230380%_))
                            (let ((_%e230363230383%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230362230380%_))))
                              (let ((_%hd230364230386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230363230383%_)))
                                    (_%tl230365230388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230363230383%_))))
                                ((lambda (_%g230358230391%_ _%g230359230392%_)
                                   (let* ((_%self230405%_
                                           (list-ref
                                            _%g230359230392%_
                                            _%self-index230094%_))
                                          (_%receiver230410%_
                                           (let ((_%$e230407%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g230358230391%_))))
                                             (if _%$e230407%_
                                                 _%$e230407%_
                                                 _%self230405%_))))
                                     (for-each
                                      (lambda (_%g230412230414%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver230410%_
                                         _%method-calls228096%_
                                         _%slot-refs228097%_
                                         _%g230412230414%_))
                                      _%g230358230391%_)))
                                 _%tl230365230388%_
                                 _%hd230364230386%_)))
                            (_%g230356230370%_ _%g230357230373%_))))
                    (_%g230356230370%_ _%g230357230373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230355230417%_
                                                 _%g230242230331%_))
                                              (let* ((_%g230420230439%_
                                                      (lambda (_%g230421230436%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230421230436%_))))
                                                     (_%g230419230548%_
                                                      (lambda (_%g230421230442%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230421230442%_))
                                                            (let ((_%e230423230444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230421230442%_))))
                      (let ((_%hd230424230447%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230423230444%_)))
                            (_%tl230425230449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230423230444%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl230425230449%_))
                            (let ((_g232277_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl230425230449%_
                                      '0))))
                              (begin
                                (let ((_g232278_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g232277_)
                                             (##values-length _g232277_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g232278_ 2)))
                                      (error "Context expects 2 values"
                                             _g232278_)))
                                (let ((_%target230426230452%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232277_ 0)))
                                      (_%tl230428230454%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232277_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230428230454%_))
                                      (letrec ((_%loop230429230457%_
                                                (lambda (_%hd230427230460%_
                                                         _%clause230433230462%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd230427230460%_))
                                                      (let ((_%e230430230464%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd230427230460%_))))
                (let ((_%lp-hd230431230467%_
                       (let () (declare (not safe)) (##car _%e230430230464%_)))
                      (_%lp-tl230432230469%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e230430230464%_))))
                  (_%loop230429230457%_
                   _%lp-tl230432230469%_
                   (cons _%lp-hd230431230467%_ _%clause230433230462%_))))
              (let ((_%clause230434230472%_ (reverse _%clause230433230462%_)))
                ((lambda (_%g230422230474%_)
                   (for-each
                    (lambda (_%clause230487%_)
                      (let* ((_%g230489230500%_
                              (lambda (_%g230490230497%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g230490230497%_))))
                             (_%g230488230538%_
                              (lambda (_%g230490230503%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g230490230503%_))
                                    (let ((_%e230493230505%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g230490230503%_))))
                                      (let ((_%hd230494230508%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230493230505%_)))
                                            (_%tl230495230510%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230493230505%_))))
                                        ((lambda (_%g230491230513%_
                                                  _%g230492230514%_)
                                           (let* ((_%self230526%_
                                                   (list-ref
                                                    _%g230492230514%_
                                                    _%self-index230094%_))
                                                  (_%receiver230531%_
                                                   (let ((_%$e230528%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g230491230513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e230528%_
                                                         _%$e230528%_
                                                         _%self230526%_))))
                                             (for-each
                                              (lambda (_%g230533230535%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver230531%_
                                                 _%method-calls228096%_
                                                 _%slot-refs228097%_
                                                 _%g230533230535%_))
                                              _%g230491230513%_)))
                                         _%tl230495230510%_
                                         _%hd230494230508%_)))
                                    (_%g230489230500%_ _%g230490230503%_)))))
                        (_%g230488230538%_ _%clause230487%_)))
                    (let ((__tmp232279
                           (lambda (_%g230540230543%_ _%g230541230545%_)
                             (cons _%g230540230543%_ _%g230541230545%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232279 '() _%g230422230474%_))))
                 _%clause230434230472%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop230429230457%_
                                         _%target230426230452%_
                                         '()))
                                      (_%g230420230439%_ _%g230421230442%_)))))
                            (_%g230420230439%_ _%g230421230442%_))))
                    (_%g230420230439%_ _%g230421230442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230419230548%_
                                                 _%g230241230330%_))
                                              (if (_%no-specializer?228100%_)
                                                  _%stx228004%_
                                                  (let* ((_%specializer-id230557%_
                                                          (let* ((_%id230551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp232280
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g228015228077%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp232280 '"::specialize")))
                         (_%specializer-id230554%_
                          (let ((__tmp232281
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx228004%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id230551%_
                             __tmp232281))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id230554%_))
                    _%specializer-id230554%_))
                 (_%$klass230559%_
                  (let ((__tmp232282
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232282)))
                 (_%$method-table230561%_
                  (let ((__tmp232283
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232283)))
                 (_%methods230563%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls228096%_)))
                 (_%$methods230567%_
                  (let ((__tmp232284
                         (lambda (_%id230565%_)
                           (let ((__tmp232285 (gensym _%id230565%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232285)))))
                    (declare (not safe))
                    (##map __tmp232284 _%methods230563%_)))
                 (_%_230576%_
                  (let ((__tmp232286
                         (lambda (_%g230568230571%_ _%g230569230573%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls228096%_
                              _%g230568230571%_
                              _%g230569230573%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp232286
                     _%methods230563%_
                     _%$methods230567%_)))
                 (_%methods-bind230586%_
                  (let ((__tmp232287
                         (lambda (_%g230578230581%_ _%g230579230583%_)
                           (_%generate-method-bind228006%_
                            _%$klass230559%_
                            _%$method-table230561%_
                            _%g230578230581%_
                            _%g230579230583%_))))
                    (declare (not safe))
                    (##map __tmp232287 _%methods230563%_ _%$methods230567%_)))
                 (_%slots230588%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs228097%_)))
                 (_%$slots230592%_
                  (let ((__tmp232288
                         (lambda (_%id230590%_)
                           (let ((__tmp232289 (gensym _%id230590%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232289)))))
                    (declare (not safe))
                    (##map __tmp232288 _%slots230588%_)))
                 (_%_230601%_
                  (let ((__tmp232290
                         (lambda (_%g230593230596%_ _%g230594230598%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs228097%_
                              _%g230593230596%_
                              _%g230594230598%_)))))
                    (declare (not safe))
                    (##for-each __tmp232290 _%slots230588%_ _%$slots230592%_)))
                 (_%slots-bind230610%_
                  (let ((__tmp232291
                         (lambda (_%g230602230605%_ _%g230603230607%_)
                           (_%generate-slot-bind228007%_
                            _%$klass230559%_
                            _%g230602230605%_
                            _%g230603230607%_))))
                    (declare (not safe))
                    (##map __tmp232291 _%slots230588%_ _%$slots230592%_)))
                 (_%specializer-lambda-expr230688%_
                  (let* ((_%g230612230626%_
                          (lambda (_%g230613230623%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230613230623%_))))
                         (_%g230611230685%_
                          (lambda (_%g230613230629%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230613230629%_))
                                (let ((_%e230616230631%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230613230629%_))))
                                  (let ((_%hd230617230634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230616230631%_)))
                                        (_%tl230618230636%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230616230631%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl230618230636%_))
                                        (let ((_%e230619230639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl230618230636%_))))
                                          (let ((_%hd230620230642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230619230639%_)))
                                                (_%tl230621230644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230619230639%_))))
                                            ((lambda (_%g230614230647%_
                                                      _%g230615230648%_)
                                               (let* ((_%self230671%_
                                                       (list-ref
                                                        _%g230615230648%_
                                                        _%self-index230094%_))
                                                      (_%receiver230676%_
                                                       (let ((_%$e230673%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g230614230647%_))))
                 (if _%$e230673%_ _%$e230673%_ _%self230671%_)))
              (_%body230682%_
               (map (lambda (_%g230677230679%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver230676%_
                       _%$klass230559%_
                       _%method-calls228096%_
                       _%slot-refs228097%_
                       _%g230677230679%_))
                    _%g230614230647%_))
              (__tmp232292
               (cons '%#lambda (cons _%g230615230648%_ _%body230682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp232292
                                                  _%g230242230331%_)))
                                             _%tl230621230644%_
                                             _%hd230620230642%_)))
                                        (_%g230612230626%_
                                         _%g230613230629%_))))
                                (_%g230612230626%_ _%g230613230629%_)))))
                    (_%g230611230685%_ _%g230242230331%_)))
                 (_%specializer-case-lambda-expr230826%_
                  (let* ((_%g230690230709%_
                          (lambda (_%g230691230706%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230691230706%_))))
                         (_%g230689230823%_
                          (lambda (_%g230691230712%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230691230712%_))
                                (let ((_%e230693230714%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230691230712%_))))
                                  (let ((_%hd230694230717%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230693230714%_)))
                                        (_%tl230695230719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230693230714%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl230695230719%_))
                                        (let ((_g232293_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl230695230719%_
                                                  '0))))
                                          (begin
                                            (let ((_g232294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g232293_)
                                                         (##values-length
                                                          _g232293_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g232294_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g232294_)))
                                            (let ((_%target230696230722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g232293_
                                                      0)))
                                                  (_%tl230698230724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g232293_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230698230724%_))
                                                  (letrec ((_%loop230699230727%_
                                                            (lambda (_%hd230697230730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause230703230732%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230697230730%_))
                          (let ((_%e230700230734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230697230730%_))))
                            (let ((_%lp-hd230701230737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230700230734%_)))
                                  (_%lp-tl230702230739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230700230734%_))))
                              (_%loop230699230727%_
                               _%lp-tl230702230739%_
                               (cons _%lp-hd230701230737%_
                                     _%clause230703230732%_))))
                          (let ((_%clause230704230742%_
                                 (reverse _%clause230703230732%_)))
                            ((lambda (_%g230692230744%_)
                               (let* ((_%clauses230821%_
                                       (map (lambda (_%clause230758%_)
                                              (let* ((_%g230760230771%_
                                                      (lambda (_%g230761230768%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230761230768%_))))
                                                     (_%g230759230811%_
                                                      (lambda (_%g230761230774%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230761230774%_))
                                                            (let ((_%e230764230776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230761230774%_))))
                      (let ((_%hd230765230779%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230764230776%_)))
                            (_%tl230766230781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230764230776%_))))
                        ((lambda (_%g230762230784%_ _%g230763230785%_)
                           (let* ((_%self230797%_
                                   (list-ref
                                    _%g230763230785%_
                                    _%self-index230094%_))
                                  (_%receiver230802%_
                                   (let ((_%$e230799%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g230762230784%_))))
                                     (if _%$e230799%_
                                         _%$e230799%_
                                         _%self230797%_)))
                                  (_%body230808%_
                                   (map (lambda (_%g230803230805%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver230802%_
                                           _%$klass230559%_
                                           _%method-calls228096%_
                                           _%slot-refs228097%_
                                           _%g230803230805%_))
                                        _%g230762230784%_)))
                             (cons _%g230763230785%_ _%body230808%_)))
                         _%tl230766230781%_
                         _%hd230765230779%_)))
                    (_%g230760230771%_ _%g230761230774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230759230811%_
                                                 _%clause230758%_)))
                                            (let ((__tmp232295
                                                   (lambda (_%g230813230816%_
                                                            _%g230814230818%_)
                                                     (cons _%g230813230816%_
                                                           _%g230814230818%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp232295
                                               '()
                                               _%g230692230744%_))))
                                      (__tmp232296
                                       (cons '%#case-lambda
                                             _%clauses230821%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp232296
                                  _%g230241230330%_)))
                             _%clause230704230742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop230699230727%_
                                                     _%target230696230722%_
                                                     '()))
                                                  (_%g230690230709%_
                                                   _%g230691230712%_)))))
                                        (_%g230690230709%_
                                         _%g230691230712%_))))
                                (_%g230690230709%_ _%g230691230712%_)))))
                    (_%g230689230823%_ _%g230241230330%_)))
                 (_%specializer-impl230828%_
                  (let ((__tmp232297
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g229628229796%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g229627229795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp232298
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g230243230332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr230688%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr230826%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp232298
                                                _%stx228004%_))
                                             '()))
                                 '())
                           (cons _%g229625229793%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g229624229792%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp232297 _%stx228004%_)))
                 (_%specializer-impl230830%_
                  (_%generate-specializer-impl228008%_
                   _%$klass230559%_
                   _%$method-table230561%_
                   _%methods-bind230586%_
                   _%slots-bind230610%_
                   _%specializer-impl230828%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp232300
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g228015228077%_)))
                                                          (__tmp232299
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id230557%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp232300
                                                       '" => "
                                                       __tmp232299))
                                                    (_%generate-specializer-def228009%_
                                                     _%g228015228077%_
                                                     _%specializer-id230557%_
                                                     _%specializer-impl230830%_))))
                                            _%hd230263230325%_
                                            _%hd230260230317%_
                                            _%hd230257230309%_)
                                           (_%g230239230269%_
                                            _%g230240230272%_))))
                                   (_%g230239230269%_ _%g230240230272%_))
                               (_%g230239230269%_ _%g230240230272%_))
                           (_%g230239230269%_ _%g230240230272%_))))
                   (_%g230239230269%_ _%g230240230272%_))
               (_%g230239230269%_ _%g230240230272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230239230269%_
                                                _%g230240230272%_))))
                                       (_%g230239230269%_ _%g230240230272%_))))
                               (_%g230239230269%_ _%g230240230272%_))))
                       (_%g230239230269%_ _%g230240230272%_))))
               (_%g230239230269%_ _%g230240230272%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g230238230833%_
                                            _%g229626229794%_))
                                         _%stx228004%_))))
                             _%hd229892230015%_
                             _%kw-ref229890230035%_
                             _%hd229880230002%_
                             _%hd229871229978%_
                             _%hd229862229954%_)
                            (_%g229836229898%_ _%g229837229901%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop229885230020%_
                                                 _%target229882230007%_
                                                 '()))
                                              (_%g229836229898%_
                                               _%g229837229901%_))))
                                      (_%g229836229898%_ _%g229837229901%_)))))
                            (_%g229836229898%_ _%g229837229901%_))
                        (_%g229836229898%_ _%g229837229901%_))
                    (_%g229836229898%_ _%g229837229901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229836229898%_
                                                     _%g229837229901%_))
                                                (_%g229836229898%_
                                                 _%g229837229901%_))
                                            (_%g229836229898%_
                                             _%g229837229901%_))))
                                    (_%g229836229898%_ _%g229837229901%_))))
                            (_%g229836229898%_ _%g229837229901%_))
                        (_%g229836229898%_ _%g229837229901%_))))
                (_%g229836229898%_ _%g229837229901%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229836229898%_
                                                     _%g229837229901%_))
                                                (_%g229836229898%_
                                                 _%g229837229901%_))))
                                        (_%g229836229898%_
                                         _%g229837229901%_))))
                                (_%g229836229898%_ _%g229837229901%_))
                            (_%g229836229898%_ _%g229837229901%_))))
                    (_%g229836229898%_ _%g229837229901%_))
                (_%g229836229898%_ _%g229837229901%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229836229898%_
                                                     _%g229837229901%_))))
                                            (_%g229836229898%_
                                             _%g229837229901%_))))
                                    (_%g229836229898%_ _%g229837229901%_))
                                (_%g229836229898%_ _%g229837229901%_))
                            (_%g229836229898%_ _%g229837229901%_))))
                    (_%g229836229898%_ _%g229837229901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229836229898%_
                                                     _%g229837229901%_))))
                                            (_%g229836229898%_
                                             _%g229837229901%_))
                                        (_%g229836229898%_ _%g229837229901%_))
                                    (_%g229836229898%_ _%g229837229901%_))))
                            (_%g229836229898%_ _%g229837229901%_)))))
                (_%g229835230837%_ _%g229625229793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd229669229787%_
                                                    _%hd229666229779%_
                                                    _%hd229663229771%_
                                                    _%hd229660229763%_
                                                    _%hd229642229715%_)
                                                   (_%g229622229675%_
                                                    _%g229623229678%_))))
                                           (_%g229622229675%_
                                            _%g229623229678%_))
                                       (_%g229622229675%_ _%g229623229678%_))
                                   (_%g229622229675%_ _%g229623229678%_))
                               (_%g229622229675%_ _%g229623229678%_))))
                       (_%g229622229675%_ _%g229623229678%_))
                   (_%g229622229675%_ _%g229623229678%_))
               (_%g229622229675%_ _%g229623229678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229622229675%_
                                                _%g229623229678%_))
                                           (_%g229622229675%_
                                            _%g229623229678%_))))
                                   (_%g229622229675%_ _%g229623229678%_))))
                           (_%g229622229675%_ _%g229623229678%_))))
                   (_%g229622229675%_ _%g229623229678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g229622229675%_
                                                    _%g229623229678%_))
                                               (_%g229622229675%_
                                                _%g229623229678%_))
                                           (_%g229622229675%_
                                            _%g229623229678%_))))
                                   (_%g229622229675%_ _%g229623229678%_))))
                           (_%g229622229675%_ _%g229623229678%_))
                       (_%g229622229675%_ _%g229623229678%_))))
               (_%g229622229675%_ _%g229623229678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229622229675%_
                                                _%g229623229678%_))))
                                       (_%g229622229675%_ _%g229623229678%_))))
                               (_%g229622229675%_ _%g229623229678%_))
                           (_%g229622229675%_ _%g229623229678%_))
                       (_%g229622229675%_ _%g229623229678%_))))
               (_%g229622229675%_ _%g229623229678%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g229621230840%_
                                            _%g228014228076%_))
                                         _%stx228004%_))))))))
                  (_%__kont231067231068%_ (lambda () _%stx228004%_)))
              (let ((_%__match231096231097%_
                     (lambda (_%e228016228044%_
                              _%hd228017228047%_
                              _%tl228018228049%_
                              _%e228019228052%_
                              _%hd228020228055%_
                              _%tl228021228057%_
                              _%e228022228060%_
                              _%hd228023228063%_
                              _%tl228024228065%_
                              _%e228025228068%_
                              _%hd228026228071%_
                              _%tl228027228073%_)
                       (let ((_%g228014228076%_ _%hd228026228071%_)
                             (_%g228015228077%_ _%hd228023228063%_))
                         (if (let ((__tmp232301
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228015228077%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp232301))
                             (_%__kont231065231066%_
                              _%g228014228076%_
                              _%g228015228077%_)
                             (_%__kont231067231068%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx231063231064%_))
                    (let ((_%e228016228044%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx231063231064%_))))
                      (let ((_%tl228018228049%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228016228044%_)))
                            (_%hd228017228047%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228016228044%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228018228049%_))
                            (let ((_%e228019228052%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228018228049%_))))
                              (let ((_%tl228021228057%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228019228052%_)))
                                    (_%hd228020228055%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228019228052%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228020228055%_))
                                    (let ((_%e228022228060%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd228020228055%_))))
                                      (let ((_%tl228024228065%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228022228060%_)))
                                            (_%hd228023228063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228022228060%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228024228065%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl228021228057%_))
                                                (let ((_%e228025228068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl228021228057%_))))
                                                  (let ((_%tl228027228073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e228025228068%_)))
                                                        (_%hd228026228071%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e228025228068%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl228027228073%_))
                                                        (_%__match231096231097%_
                                                         _%e228016228044%_
                                                         _%hd228017228047%_
                                                         _%tl228018228049%_
                                                         _%e228019228052%_
                                                         _%hd228020228055%_
                                                         _%tl228021228057%_
                                                         _%e228022228060%_
                                                         _%hd228023228063%_
                                                         _%tl228024228065%_
                                                         _%e228025228068%_
                                                         _%hd228026228071%_
                                                         _%tl228027228073%_)
                                                        (_%__kont231067231068%_))))
                                                (_%__kont231067231068%_))
                                            (_%__kont231067231068%_))))
                                    (_%__kont231067231068%_))))
                            (_%__kont231067231068%_))))
                    (_%__kont231067231068%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self227856%_ _%stx227857%_)
        (let* ((_%__stx231099231100%_ _%stx227857%_)
               (_%g227860227893%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231099231100%_)))))
          (let ((_%__kont231101231102%_
                 (lambda (_%g227862227983%_) _%g227862227983%_))
                (_%__kont231103231104%_
                 (lambda (_%g227878227922%_ _%g227879227923%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self227856%_ _%g227878227922%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx231099231100%_))
                (let ((_%e227863227943%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx231099231100%_))))
                  (let ((_%tl227865227948%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227863227943%_)))
                        (_%hd227864227946%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227863227943%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227865227948%_))
                        (let ((_%e227866227951%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl227865227948%_))))
                          (let ((_%tl227868227956%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227866227951%_)))
                                (_%hd227867227954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227866227951%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd227867227954%_))
                                (let ((_%e227869227959%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd227867227954%_))))
                                  (let ((_%tl227871227964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227869227959%_)))
                                        (_%hd227870227962%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227869227959%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd227870227962%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd227870227962%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227871227964%_))
                                                (let ((_%e227872227967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl227871227964%_))))
                                                  (let ((_%tl227874227972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227872227967%_)))
                                                        (_%hd227873227970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227872227967%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl227874227972%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl227868227956%_))
                                                            (let ((_%e227875227975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl227868227956%_))))
                      (let ((_%tl227877227980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e227875227975%_)))
                            (_%hd227876227978%_
                             (let ()
                               (declare (not safe))
                               (##car _%e227875227975%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227877227980%_))
                            (_%__kont231101231102%_ _%hd227873227970%_)
                            (let ()
                              (declare (not safe))
                              (_%g227860227893%_)))))
                    (let () (declare (not safe)) (_%g227860227893%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl227868227956%_))
                    (let ((_%e227886227914%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl227868227956%_))))
                      (let ((_%tl227888227919%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e227886227914%_)))
                            (_%hd227887227917%_
                             (let ()
                               (declare (not safe))
                               (##car _%e227886227914%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227888227919%_))
                            (_%__kont231103231104%_
                             _%hd227887227917%_
                             _%hd227867227954%_)
                            (let ()
                              (declare (not safe))
                              (_%g227860227893%_)))))
                    (let () (declare (not safe)) (_%g227860227893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl227868227956%_))
                                                    (let ((_%e227886227914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl227868227956%_))))
                                                      (let ((_%tl227888227919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e227886227914%_)))
                    (_%hd227887227917%_
                     (let () (declare (not safe)) (##car _%e227886227914%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl227888227919%_))
                    (_%__kont231103231104%_
                     _%hd227887227917%_
                     _%hd227867227954%_)
                    (let () (declare (not safe)) (_%g227860227893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g227860227893%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227868227956%_))
                                                (let ((_%e227886227914%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl227868227956%_))))
                                                  (let ((_%tl227888227919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227886227914%_)))
                                                        (_%hd227887227917%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227886227914%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl227888227919%_))
                                                        (_%__kont231103231104%_
                                                         _%hd227887227917%_
                                                         _%hd227867227954%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g227860227893%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227860227893%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227868227956%_))
                                            (let ((_%e227886227914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl227868227956%_))))
                                              (let ((_%tl227888227919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227886227914%_)))
                                                    (_%hd227887227917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227886227914%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl227888227919%_))
                                                    (_%__kont231103231104%_
                                                     _%hd227887227917%_
                                                     _%hd227867227954%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g227860227893%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g227860227893%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl227868227956%_))
                                    (let ((_%e227886227914%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl227868227956%_))))
                                      (let ((_%tl227888227919%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e227886227914%_)))
                                            (_%hd227887227917%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e227886227914%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl227888227919%_))
                                            (_%__kont231103231104%_
                                             _%hd227887227917%_
                                             _%hd227867227954%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g227860227893%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g227860227893%_))))))
                        (let () (declare (not safe)) (_%g227860227893%_)))))
                (let () (declare (not safe)) (_%g227860227893%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self227772%_ _%stx227773%_)
        (let* ((_%g227775227796%_
                (lambda (_%g227776227793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227776227793%_))))
               (_%g227774227853%_
                (lambda (_%g227776227799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227776227799%_))
                      (let ((_%e227780227801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g227776227799%_))))
                        (let ((_%hd227781227804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227780227801%_)))
                              (_%tl227782227806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227780227801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227782227806%_))
                              (let ((_%e227783227809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl227782227806%_))))
                                (let ((_%hd227784227812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227783227809%_)))
                                      (_%tl227785227814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227783227809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227785227814%_))
                                      (let ((_%e227786227817%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl227785227814%_))))
                                        (let ((_%hd227787227820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227786227817%_)))
                                              (_%tl227788227822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227786227817%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227788227822%_))
                                              (let ((_%e227789227825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl227788227822%_))))
                                                (let ((_%hd227790227828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227789227825%_)))
                                                      (_%tl227791227830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227789227825%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227791227830%_))
                                                      ((lambda (_%g227777227833%_
                                                                _%g227778227834%_
                                                                _%g227779227835%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self227772%_
                                                            _%g227778227834%_)))
                                                       _%hd227790227828%_
                                                       _%hd227787227820%_
                                                       _%hd227784227812%_)
                                                      (_%g227775227796%_
                                                       _%g227776227799%_))))
                                              (_%g227775227796%_
                                               _%g227776227799%_))))
                                      (_%g227775227796%_ _%g227776227799%_))))
                              (_%g227775227796%_ _%g227776227799%_))))
                      (_%g227775227796%_ _%g227776227799%_)))))
          (_%g227774227853%_ _%stx227773%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self226737%_ _%stx226738%_)
        (let* ((_%__stx231165231166%_ _%stx226738%_)
               (_%g226746226968%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231165231166%_)))))
          (let ((_%__kont231167231168%_
                 (lambda (_%g226748227721%_
                          _%g226749227722%_
                          _%g226750227723%_
                          _%g226751227724%_)
                   (let ((__tmp232303
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226737%_ 'methods)))
                         (__tmp232302
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226749227722%_))))
                     (declare (not safe))
                     (hash-put! __tmp232303 __tmp232302 '#t))
                   (for-each
                    (lambda (_%g227757227759%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self226737%_ _%g227757227759%_)))
                    (let ((__tmp232304
                           (lambda (_%g227761227764%_ _%g227762227766%_)
                             (cons _%g227761227764%_ _%g227762227766%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232304 '() _%g226748227721%_)))))
                (_%__kont231171231172%_
                 (lambda (_%g226791227558%_
                          _%g226792227559%_
                          _%g226793227560%_
                          _%g226794227561%_
                          _%g226795227562%_)
                   (let ((__tmp232306
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226737%_ 'methods)))
                         (__tmp232305
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226792227559%_))))
                     (declare (not safe))
                     (hash-put! __tmp232306 __tmp232305 '#t))
                   (for-each
                    (lambda (_%g227602227604%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self226737%_ _%g227602227604%_)))
                    (let ((__tmp232307
                           (lambda (_%g227606227609%_ _%g227607227611%_)
                             (cons _%g227606227609%_ _%g227607227611%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232307 '() _%g226791227558%_)))))
                (_%__kont231175231176%_
                 (lambda (_%g226844227393%_
                          _%g226845227394%_
                          _%g226846227395%_)
                   (let ((__tmp232309
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226737%_ 'slots)))
                         (__tmp232308
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226844227393%_))))
                     (declare (not safe))
                     (hash-put! __tmp232309 __tmp232308 '#t))))
                (_%__kont231177231178%_
                 (lambda (_%g226877227270%_
                          _%g226878227271%_
                          _%g226879227272%_
                          _%g226880227273%_)
                   (let ((__tmp232311
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226737%_ 'slots)))
                         (__tmp232310
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226878227271%_))))
                     (declare (not safe))
                     (hash-put! __tmp232311 __tmp232310 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self226737%_ _%g226877227270%_))))
                (_%__kont231179231180%_
                 (lambda (_%g226914227144%_ _%g226915227145%_)
                   (let* ((_%accessor227167%_
                           (let ((__tmp232312
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g226915227145%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp232312)))
                          (_%klass227169%_
                           (let ((__tmp232313
                                  (##structure-ref
                                   _%accessor227167%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx226738%_
                              __tmp232313)))
                          (_%slot227171%_
                           (##structure-ref
                            _%accessor227167%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor227167%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass227169%_
                                    _%slot227171%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass227169%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp232315
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self226737%_ 'slots)))
                               (__tmp232314
                                (##structure-ref
                                 _%accessor227167%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp232315 __tmp232314 '#t))))))
                (_%__kont231181231182%_
                 (lambda (_%g226937227044%_
                          _%g226938227045%_
                          _%g226939227046%_)
                   (let* ((_%mutator227073%_
                           (let ((__tmp232316
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g226939227046%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp232316)))
                          (_%klass227075%_
                           (let ((__tmp232317
                                  (##structure-ref
                                   _%mutator227073%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx226738%_
                              __tmp232317)))
                          (_%slot227077%_
                           (##structure-ref
                            _%mutator227073%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator227073%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass227075%_
                                    _%slot227077%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass227075%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp232318
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self226737%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp232318 _%slot227077%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self226737%_ _%g226937227044%_)))))
                (_%__kont231183231184%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self226737%_ _%stx226738%_)))))
            (let* ((_%__match231664231665%_
                    (lambda (_%e226940226980%_
                             _%hd226941226983%_
                             _%tl226942226985%_
                             _%e226943226988%_
                             _%hd226944226991%_
                             _%tl226945226993%_
                             _%e226946226996%_
                             _%hd226947226999%_
                             _%tl226948227001%_
                             _%e226949227004%_
                             _%hd226950227007%_
                             _%tl226951227009%_
                             _%e226952227012%_
                             _%hd226953227015%_
                             _%tl226954227017%_
                             _%e226955227020%_
                             _%hd226956227023%_
                             _%tl226957227025%_
                             _%e226958227028%_
                             _%hd226959227031%_
                             _%tl226960227033%_
                             _%e226961227036%_
                             _%hd226962227039%_
                             _%tl226963227041%_)
                      (let ((_%g226937227044%_ _%hd226962227039%_)
                            (_%g226938227045%_ _%hd226959227031%_)
                            (_%g226939227046%_ _%hd226950227007%_))
                        (if (and (let ((__tmp232319
                                        (let ((__tmp232320
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g226939227046%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp232320))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp232319
                                    'gxc#!mutator::t))
                                 (let ((__tmp232321
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226737%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226938227045%_
                                    __tmp232321)))
                            (_%__kont231181231182%_
                             _%g226937227044%_
                             _%g226938227045%_
                             _%g226939227046%_)
                            (_%__kont231183231184%_)))))
                   (_%__match231662231663%_
                    (lambda (_%e226940226980%_
                             _%hd226941226983%_
                             _%tl226942226985%_
                             _%e226943226988%_
                             _%hd226944226991%_
                             _%tl226945226993%_
                             _%e226946226996%_
                             _%hd226947226999%_
                             _%tl226948227001%_
                             _%e226949227004%_
                             _%hd226950227007%_
                             _%tl226951227009%_
                             _%e226952227012%_
                             _%hd226953227015%_
                             _%tl226954227017%_
                             _%e226955227020%_
                             _%hd226956227023%_
                             _%tl226957227025%_
                             _%e226958227028%_
                             _%hd226959227031%_
                             _%tl226960227033%_
                             _%e226961227036%_
                             _%hd226962227039%_
                             _%tl226963227041%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226963227041%_))
                          (_%__match231664231665%_
                           _%e226940226980%_
                           _%hd226941226983%_
                           _%tl226942226985%_
                           _%e226943226988%_
                           _%hd226944226991%_
                           _%tl226945226993%_
                           _%e226946226996%_
                           _%hd226947226999%_
                           _%tl226948227001%_
                           _%e226949227004%_
                           _%hd226950227007%_
                           _%tl226951227009%_
                           _%e226952227012%_
                           _%hd226953227015%_
                           _%tl226954227017%_
                           _%e226955227020%_
                           _%hd226956227023%_
                           _%tl226957227025%_
                           _%e226958227028%_
                           _%hd226959227031%_
                           _%tl226960227033%_
                           _%e226961227036%_
                           _%hd226962227039%_
                           _%tl226963227041%_)
                          (_%__kont231183231184%_))))
                   (_%__match231656231657%_
                    (lambda (_%e226940226980%_
                             _%hd226941226983%_
                             _%tl226942226985%_
                             _%e226943226988%_
                             _%hd226944226991%_
                             _%tl226945226993%_
                             _%e226946226996%_
                             _%hd226947226999%_
                             _%tl226948227001%_
                             _%e226949227004%_
                             _%hd226950227007%_
                             _%tl226951227009%_
                             _%e226952227012%_
                             _%hd226953227015%_
                             _%tl226954227017%_
                             _%e226955227020%_
                             _%hd226956227023%_
                             _%tl226957227025%_
                             _%e226958227028%_
                             _%hd226959227031%_
                             _%tl226960227033%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226954227017%_))
                          (let ((_%e226961227036%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226954227017%_))))
                            (let ((_%tl226963227041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226961227036%_)))
                                  (_%hd226962227039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226961227036%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226963227041%_))
                                  (_%__match231664231665%_
                                   _%e226940226980%_
                                   _%hd226941226983%_
                                   _%tl226942226985%_
                                   _%e226943226988%_
                                   _%hd226944226991%_
                                   _%tl226945226993%_
                                   _%e226946226996%_
                                   _%hd226947226999%_
                                   _%tl226948227001%_
                                   _%e226949227004%_
                                   _%hd226950227007%_
                                   _%tl226951227009%_
                                   _%e226952227012%_
                                   _%hd226953227015%_
                                   _%tl226954227017%_
                                   _%e226955227020%_
                                   _%hd226956227023%_
                                   _%tl226957227025%_
                                   _%e226958227028%_
                                   _%hd226959227031%_
                                   _%tl226960227033%_
                                   _%e226961227036%_
                                   _%hd226962227039%_
                                   _%tl226963227041%_)
                                  (_%__kont231183231184%_))))
                          (_%__kont231183231184%_))))
                   (_%__match231602231603%_
                    (lambda (_%e226916227088%_
                             _%hd226917227091%_
                             _%tl226918227093%_
                             _%e226919227096%_
                             _%hd226920227099%_
                             _%tl226921227101%_
                             _%e226922227104%_
                             _%hd226923227107%_
                             _%tl226924227109%_
                             _%e226925227112%_
                             _%hd226926227115%_
                             _%tl226927227117%_
                             _%e226928227120%_
                             _%hd226929227123%_
                             _%tl226930227125%_
                             _%e226931227128%_
                             _%hd226932227131%_
                             _%tl226933227133%_
                             _%e226934227136%_
                             _%hd226935227139%_
                             _%tl226936227141%_)
                      (let ((_%g226914227144%_ _%hd226935227139%_)
                            (_%g226915227145%_ _%hd226926227115%_))
                        (if (and (let ((__tmp232322
                                        (let ((__tmp232323
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g226915227145%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp232323))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp232322
                                    'gxc#!accessor::t))
                                 (let ((__tmp232324
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226737%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226914227144%_
                                    __tmp232324)))
                            (_%__kont231179231180%_
                             _%g226914227144%_
                             _%g226915227145%_)
                            (_%__kont231183231184%_)))))
                   (_%__match231600231601%_
                    (lambda (_%e226916227088%_
                             _%hd226917227091%_
                             _%tl226918227093%_
                             _%e226919227096%_
                             _%hd226920227099%_
                             _%tl226921227101%_
                             _%e226922227104%_
                             _%hd226923227107%_
                             _%tl226924227109%_
                             _%e226925227112%_
                             _%hd226926227115%_
                             _%tl226927227117%_
                             _%e226928227120%_
                             _%hd226929227123%_
                             _%tl226930227125%_
                             _%e226931227128%_
                             _%hd226932227131%_
                             _%tl226933227133%_
                             _%e226934227136%_
                             _%hd226935227139%_
                             _%tl226936227141%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226930227125%_))
                          (_%__match231602231603%_
                           _%e226916227088%_
                           _%hd226917227091%_
                           _%tl226918227093%_
                           _%e226919227096%_
                           _%hd226920227099%_
                           _%tl226921227101%_
                           _%e226922227104%_
                           _%hd226923227107%_
                           _%tl226924227109%_
                           _%e226925227112%_
                           _%hd226926227115%_
                           _%tl226927227117%_
                           _%e226928227120%_
                           _%hd226929227123%_
                           _%tl226930227125%_
                           _%e226931227128%_
                           _%hd226932227131%_
                           _%tl226933227133%_
                           _%e226934227136%_
                           _%hd226935227139%_
                           _%tl226936227141%_)
                          (_%__match231656231657%_
                           _%e226916227088%_
                           _%hd226917227091%_
                           _%tl226918227093%_
                           _%e226919227096%_
                           _%hd226920227099%_
                           _%tl226921227101%_
                           _%e226922227104%_
                           _%hd226923227107%_
                           _%tl226924227109%_
                           _%e226925227112%_
                           _%hd226926227115%_
                           _%tl226927227117%_
                           _%e226928227120%_
                           _%hd226929227123%_
                           _%tl226930227125%_
                           _%e226931227128%_
                           _%hd226932227131%_
                           _%tl226933227133%_
                           _%e226934227136%_
                           _%hd226935227139%_
                           _%tl226936227141%_))))
                   (_%__match231546231547%_
                    (lambda (_%e226881227182%_
                             _%hd226882227185%_
                             _%tl226883227187%_
                             _%e226884227190%_
                             _%hd226885227193%_
                             _%tl226886227195%_
                             _%e226887227198%_
                             _%hd226888227201%_
                             _%tl226889227203%_
                             _%e226890227206%_
                             _%hd226891227209%_
                             _%tl226892227211%_
                             _%e226893227214%_
                             _%hd226894227217%_
                             _%tl226895227219%_
                             _%e226896227222%_
                             _%hd226897227225%_
                             _%tl226898227227%_
                             _%e226899227230%_
                             _%hd226900227233%_
                             _%tl226901227235%_
                             _%e226902227238%_
                             _%hd226903227241%_
                             _%tl226904227243%_
                             _%e226905227246%_
                             _%hd226906227249%_
                             _%tl226907227251%_
                             _%e226908227254%_
                             _%hd226909227257%_
                             _%tl226910227259%_
                             _%e226911227262%_
                             _%hd226912227265%_
                             _%tl226913227267%_)
                      (let ((_%g226877227270%_ _%hd226912227265%_)
                            (_%g226878227271%_ _%hd226909227257%_)
                            (_%g226879227272%_ _%hd226900227233%_)
                            (_%g226880227273%_ _%hd226891227209%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226880227273%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226880227273%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp232325
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226737%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226879227272%_
                                    __tmp232325)))
                            (_%__kont231177231178%_
                             _%g226877227270%_
                             _%g226878227271%_
                             _%g226879227272%_
                             _%g226880227273%_)
                            (_%__kont231183231184%_)))))
                   (_%__match231538231539%_
                    (lambda (_%e226881227182%_
                             _%hd226882227185%_
                             _%tl226883227187%_
                             _%e226884227190%_
                             _%hd226885227193%_
                             _%tl226886227195%_
                             _%e226887227198%_
                             _%hd226888227201%_
                             _%tl226889227203%_
                             _%e226890227206%_
                             _%hd226891227209%_
                             _%tl226892227211%_
                             _%e226893227214%_
                             _%hd226894227217%_
                             _%tl226895227219%_
                             _%e226896227222%_
                             _%hd226897227225%_
                             _%tl226898227227%_
                             _%e226899227230%_
                             _%hd226900227233%_
                             _%tl226901227235%_
                             _%e226902227238%_
                             _%hd226903227241%_
                             _%tl226904227243%_
                             _%e226905227246%_
                             _%hd226906227249%_
                             _%tl226907227251%_
                             _%e226908227254%_
                             _%hd226909227257%_
                             _%tl226910227259%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226904227243%_))
                          (let ((_%e226911227262%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226904227243%_))))
                            (let ((_%tl226913227267%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226911227262%_)))
                                  (_%hd226912227265%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226911227262%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226913227267%_))
                                  (_%__match231546231547%_
                                   _%e226881227182%_
                                   _%hd226882227185%_
                                   _%tl226883227187%_
                                   _%e226884227190%_
                                   _%hd226885227193%_
                                   _%tl226886227195%_
                                   _%e226887227198%_
                                   _%hd226888227201%_
                                   _%tl226889227203%_
                                   _%e226890227206%_
                                   _%hd226891227209%_
                                   _%tl226892227211%_
                                   _%e226893227214%_
                                   _%hd226894227217%_
                                   _%tl226895227219%_
                                   _%e226896227222%_
                                   _%hd226897227225%_
                                   _%tl226898227227%_
                                   _%e226899227230%_
                                   _%hd226900227233%_
                                   _%tl226901227235%_
                                   _%e226902227238%_
                                   _%hd226903227241%_
                                   _%tl226904227243%_
                                   _%e226905227246%_
                                   _%hd226906227249%_
                                   _%tl226907227251%_
                                   _%e226908227254%_
                                   _%hd226909227257%_
                                   _%tl226910227259%_
                                   _%e226911227262%_
                                   _%hd226912227265%_
                                   _%tl226913227267%_)
                                  (_%__kont231183231184%_))))
                          (_%__match231662231663%_
                           _%e226881227182%_
                           _%hd226882227185%_
                           _%tl226883227187%_
                           _%e226884227190%_
                           _%hd226885227193%_
                           _%tl226886227195%_
                           _%e226887227198%_
                           _%hd226888227201%_
                           _%tl226889227203%_
                           _%e226890227206%_
                           _%hd226891227209%_
                           _%tl226892227211%_
                           _%e226893227214%_
                           _%hd226894227217%_
                           _%tl226895227219%_
                           _%e226896227222%_
                           _%hd226897227225%_
                           _%tl226898227227%_
                           _%e226899227230%_
                           _%hd226900227233%_
                           _%tl226901227235%_
                           _%e226902227238%_
                           _%hd226903227241%_
                           _%tl226904227243%_))))
                   (_%__match231460231461%_
                    (lambda (_%e226847227313%_
                             _%hd226848227316%_
                             _%tl226849227318%_
                             _%e226850227321%_
                             _%hd226851227324%_
                             _%tl226852227326%_
                             _%e226853227329%_
                             _%hd226854227332%_
                             _%tl226855227334%_
                             _%e226856227337%_
                             _%hd226857227340%_
                             _%tl226858227342%_
                             _%e226859227345%_
                             _%hd226860227348%_
                             _%tl226861227350%_
                             _%e226862227353%_
                             _%hd226863227356%_
                             _%tl226864227358%_
                             _%e226865227361%_
                             _%hd226866227364%_
                             _%tl226867227366%_
                             _%e226868227369%_
                             _%hd226869227372%_
                             _%tl226870227374%_
                             _%e226871227377%_
                             _%hd226872227380%_
                             _%tl226873227382%_
                             _%e226874227385%_
                             _%hd226875227388%_
                             _%tl226876227390%_)
                      (let ((_%g226844227393%_ _%hd226875227388%_)
                            (_%g226845227394%_ _%hd226866227364%_)
                            (_%g226846227395%_ _%hd226857227340%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226846227395%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226846227395%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp232326
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226737%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226845227394%_
                                    __tmp232326)))
                            (_%__kont231175231176%_
                             _%g226844227393%_
                             _%g226845227394%_
                             _%g226846227395%_)
                            (_%__match231664231665%_
                             _%e226847227313%_
                             _%hd226848227316%_
                             _%tl226849227318%_
                             _%e226850227321%_
                             _%hd226851227324%_
                             _%tl226852227326%_
                             _%e226853227329%_
                             _%hd226854227332%_
                             _%tl226855227334%_
                             _%e226856227337%_
                             _%hd226857227340%_
                             _%tl226858227342%_
                             _%e226859227345%_
                             _%hd226860227348%_
                             _%tl226861227350%_
                             _%e226862227353%_
                             _%hd226863227356%_
                             _%tl226864227358%_
                             _%e226865227361%_
                             _%hd226866227364%_
                             _%tl226867227366%_
                             _%e226868227369%_
                             _%hd226869227372%_
                             _%tl226870227374%_)))))
                   (_%__match231458231459%_
                    (lambda (_%e226847227313%_
                             _%hd226848227316%_
                             _%tl226849227318%_
                             _%e226850227321%_
                             _%hd226851227324%_
                             _%tl226852227326%_
                             _%e226853227329%_
                             _%hd226854227332%_
                             _%tl226855227334%_
                             _%e226856227337%_
                             _%hd226857227340%_
                             _%tl226858227342%_
                             _%e226859227345%_
                             _%hd226860227348%_
                             _%tl226861227350%_
                             _%e226862227353%_
                             _%hd226863227356%_
                             _%tl226864227358%_
                             _%e226865227361%_
                             _%hd226866227364%_
                             _%tl226867227366%_
                             _%e226868227369%_
                             _%hd226869227372%_
                             _%tl226870227374%_
                             _%e226871227377%_
                             _%hd226872227380%_
                             _%tl226873227382%_
                             _%e226874227385%_
                             _%hd226875227388%_
                             _%tl226876227390%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226870227374%_))
                          (_%__match231460231461%_
                           _%e226847227313%_
                           _%hd226848227316%_
                           _%tl226849227318%_
                           _%e226850227321%_
                           _%hd226851227324%_
                           _%tl226852227326%_
                           _%e226853227329%_
                           _%hd226854227332%_
                           _%tl226855227334%_
                           _%e226856227337%_
                           _%hd226857227340%_
                           _%tl226858227342%_
                           _%e226859227345%_
                           _%hd226860227348%_
                           _%tl226861227350%_
                           _%e226862227353%_
                           _%hd226863227356%_
                           _%tl226864227358%_
                           _%e226865227361%_
                           _%hd226866227364%_
                           _%tl226867227366%_
                           _%e226868227369%_
                           _%hd226869227372%_
                           _%tl226870227374%_
                           _%e226871227377%_
                           _%hd226872227380%_
                           _%tl226873227382%_
                           _%e226874227385%_
                           _%hd226875227388%_
                           _%tl226876227390%_)
                          (_%__match231538231539%_
                           _%e226847227313%_
                           _%hd226848227316%_
                           _%tl226849227318%_
                           _%e226850227321%_
                           _%hd226851227324%_
                           _%tl226852227326%_
                           _%e226853227329%_
                           _%hd226854227332%_
                           _%tl226855227334%_
                           _%e226856227337%_
                           _%hd226857227340%_
                           _%tl226858227342%_
                           _%e226859227345%_
                           _%hd226860227348%_
                           _%tl226861227350%_
                           _%e226862227353%_
                           _%hd226863227356%_
                           _%tl226864227358%_
                           _%e226865227361%_
                           _%hd226866227364%_
                           _%tl226867227366%_
                           _%e226868227369%_
                           _%hd226869227372%_
                           _%tl226870227374%_
                           _%e226871227377%_
                           _%hd226872227380%_
                           _%tl226873227382%_
                           _%e226874227385%_
                           _%hd226875227388%_
                           _%tl226876227390%_))))
                   (_%__match231448231449%_
                    (lambda (_%e226847227313%_
                             _%hd226848227316%_
                             _%tl226849227318%_
                             _%e226850227321%_
                             _%hd226851227324%_
                             _%tl226852227326%_
                             _%e226853227329%_
                             _%hd226854227332%_
                             _%tl226855227334%_
                             _%e226856227337%_
                             _%hd226857227340%_
                             _%tl226858227342%_
                             _%e226859227345%_
                             _%hd226860227348%_
                             _%tl226861227350%_
                             _%e226862227353%_
                             _%hd226863227356%_
                             _%tl226864227358%_
                             _%e226865227361%_
                             _%hd226866227364%_
                             _%tl226867227366%_
                             _%e226868227369%_
                             _%hd226869227372%_
                             _%tl226870227374%_
                             _%e226871227377%_
                             _%hd226872227380%_
                             _%tl226873227382%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd226872227380%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226873227382%_))
                              (let ((_%e226874227385%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl226873227382%_))))
                                (let ((_%tl226876227390%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226874227385%_)))
                                      (_%hd226875227388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226874227385%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226876227390%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl226870227374%_))
                                          (_%__match231460231461%_
                                           _%e226847227313%_
                                           _%hd226848227316%_
                                           _%tl226849227318%_
                                           _%e226850227321%_
                                           _%hd226851227324%_
                                           _%tl226852227326%_
                                           _%e226853227329%_
                                           _%hd226854227332%_
                                           _%tl226855227334%_
                                           _%e226856227337%_
                                           _%hd226857227340%_
                                           _%tl226858227342%_
                                           _%e226859227345%_
                                           _%hd226860227348%_
                                           _%tl226861227350%_
                                           _%e226862227353%_
                                           _%hd226863227356%_
                                           _%tl226864227358%_
                                           _%e226865227361%_
                                           _%hd226866227364%_
                                           _%tl226867227366%_
                                           _%e226868227369%_
                                           _%hd226869227372%_
                                           _%tl226870227374%_
                                           _%e226871227377%_
                                           _%hd226872227380%_
                                           _%tl226873227382%_
                                           _%e226874227385%_
                                           _%hd226875227388%_
                                           _%tl226876227390%_)
                                          (_%__match231538231539%_
                                           _%e226847227313%_
                                           _%hd226848227316%_
                                           _%tl226849227318%_
                                           _%e226850227321%_
                                           _%hd226851227324%_
                                           _%tl226852227326%_
                                           _%e226853227329%_
                                           _%hd226854227332%_
                                           _%tl226855227334%_
                                           _%e226856227337%_
                                           _%hd226857227340%_
                                           _%tl226858227342%_
                                           _%e226859227345%_
                                           _%hd226860227348%_
                                           _%tl226861227350%_
                                           _%e226862227353%_
                                           _%hd226863227356%_
                                           _%tl226864227358%_
                                           _%e226865227361%_
                                           _%hd226866227364%_
                                           _%tl226867227366%_
                                           _%e226868227369%_
                                           _%hd226869227372%_
                                           _%tl226870227374%_
                                           _%e226871227377%_
                                           _%hd226872227380%_
                                           _%tl226873227382%_
                                           _%e226874227385%_
                                           _%hd226875227388%_
                                           _%tl226876227390%_))
                                      (_%__match231662231663%_
                                       _%e226847227313%_
                                       _%hd226848227316%_
                                       _%tl226849227318%_
                                       _%e226850227321%_
                                       _%hd226851227324%_
                                       _%tl226852227326%_
                                       _%e226853227329%_
                                       _%hd226854227332%_
                                       _%tl226855227334%_
                                       _%e226856227337%_
                                       _%hd226857227340%_
                                       _%tl226858227342%_
                                       _%e226859227345%_
                                       _%hd226860227348%_
                                       _%tl226861227350%_
                                       _%e226862227353%_
                                       _%hd226863227356%_
                                       _%tl226864227358%_
                                       _%e226865227361%_
                                       _%hd226866227364%_
                                       _%tl226867227366%_
                                       _%e226868227369%_
                                       _%hd226869227372%_
                                       _%tl226870227374%_))))
                              (_%__match231662231663%_
                               _%e226847227313%_
                               _%hd226848227316%_
                               _%tl226849227318%_
                               _%e226850227321%_
                               _%hd226851227324%_
                               _%tl226852227326%_
                               _%e226853227329%_
                               _%hd226854227332%_
                               _%tl226855227334%_
                               _%e226856227337%_
                               _%hd226857227340%_
                               _%tl226858227342%_
                               _%e226859227345%_
                               _%hd226860227348%_
                               _%tl226861227350%_
                               _%e226862227353%_
                               _%hd226863227356%_
                               _%tl226864227358%_
                               _%e226865227361%_
                               _%hd226866227364%_
                               _%tl226867227366%_
                               _%e226868227369%_
                               _%hd226869227372%_
                               _%tl226870227374%_))
                          (_%__match231662231663%_
                           _%e226847227313%_
                           _%hd226848227316%_
                           _%tl226849227318%_
                           _%e226850227321%_
                           _%hd226851227324%_
                           _%tl226852227326%_
                           _%e226853227329%_
                           _%hd226854227332%_
                           _%tl226855227334%_
                           _%e226856227337%_
                           _%hd226857227340%_
                           _%tl226858227342%_
                           _%e226859227345%_
                           _%hd226860227348%_
                           _%tl226861227350%_
                           _%e226862227353%_
                           _%hd226863227356%_
                           _%tl226864227358%_
                           _%e226865227361%_
                           _%hd226866227364%_
                           _%tl226867227366%_
                           _%e226868227369%_
                           _%hd226869227372%_
                           _%tl226870227374%_))))
                   (_%__match231380231381%_
                    (lambda (_%e226796227432%_
                             _%hd226797227435%_
                             _%tl226798227437%_
                             _%e226799227440%_
                             _%hd226800227443%_
                             _%tl226801227445%_
                             _%e226802227448%_
                             _%hd226803227451%_
                             _%tl226804227453%_
                             _%e226805227456%_
                             _%hd226806227459%_
                             _%tl226807227461%_
                             _%e226808227464%_
                             _%hd226809227467%_
                             _%tl226810227469%_
                             _%e226811227472%_
                             _%hd226812227475%_
                             _%tl226813227477%_
                             _%e226814227480%_
                             _%hd226815227483%_
                             _%tl226816227485%_
                             _%e226817227488%_
                             _%hd226818227491%_
                             _%tl226819227493%_
                             _%e226820227496%_
                             _%hd226821227499%_
                             _%tl226822227501%_
                             _%e226823227504%_
                             _%hd226824227507%_
                             _%tl226825227509%_
                             _%e226826227512%_
                             _%hd226827227515%_
                             _%tl226828227517%_
                             _%e226829227520%_
                             _%hd226830227523%_
                             _%tl226831227525%_
                             _%e226832227528%_
                             _%hd226833227531%_
                             _%tl226834227533%_
                             _%__splice231173231174%_
                             _%target226835227536%_
                             _%tl226837227538%_)
                      (letrec ((_%loop226838227541%_
                                (lambda (_%hd226836227544%_
                                         _%args226842227546%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd226836227544%_))
                                      (let ((_%e226839227548%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd226836227544%_))))
                                        (let ((_%lp-tl226841227553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226839227548%_)))
                                              (_%lp-hd226840227551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226839227548%_))))
                                          (_%loop226838227541%_
                                           _%lp-tl226841227553%_
                                           (cons _%lp-hd226840227551%_
                                                 _%args226842227546%_))))
                                      (let ((_%args226843227556%_
                                             (reverse _%args226842227546%_)))
                                        (let ((_%g226791227558%_
                                               _%args226843227556%_)
                                              (_%g226792227559%_
                                               _%hd226833227531%_)
                                              (_%g226793227560%_
                                               _%hd226824227507%_)
                                              (_%g226794227561%_
                                               _%hd226815227483%_)
                                              (_%g226795227562%_
                                               _%hd226806227459%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226795227562%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226794227561%_
                                                      'call-method))
                                                   (let ((__tmp232327
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self226737%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g226793227560%_
                                                      __tmp232327)))
                                              (_%__kont231171231172%_
                                               _%g226791227558%_
                                               _%g226792227559%_
                                               _%g226793227560%_
                                               _%g226794227561%_
                                               _%g226795227562%_)
                                              (_%__kont231183231184%_))))))))
                        (_%loop226838227541%_ _%target226835227536%_ '()))))
                   (_%__match231338231339%_
                    (lambda (_%e226796227432%_
                             _%hd226797227435%_
                             _%tl226798227437%_
                             _%e226799227440%_
                             _%hd226800227443%_
                             _%tl226801227445%_
                             _%e226802227448%_
                             _%hd226803227451%_
                             _%tl226804227453%_
                             _%e226805227456%_
                             _%hd226806227459%_
                             _%tl226807227461%_
                             _%e226808227464%_
                             _%hd226809227467%_
                             _%tl226810227469%_
                             _%e226811227472%_
                             _%hd226812227475%_
                             _%tl226813227477%_
                             _%e226814227480%_
                             _%hd226815227483%_
                             _%tl226816227485%_
                             _%e226817227488%_
                             _%hd226818227491%_
                             _%tl226819227493%_
                             _%e226820227496%_
                             _%hd226821227499%_
                             _%tl226822227501%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd226821227499%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226822227501%_))
                              (let ((_%e226823227504%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl226822227501%_))))
                                (let ((_%tl226825227509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226823227504%_)))
                                      (_%hd226824227507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226823227504%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226825227509%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226819227493%_))
                                          (let ((_%e226826227512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl226819227493%_))))
                                            (let ((_%tl226828227517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226826227512%_)))
                                                  (_%hd226827227515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226826227512%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd226827227515%_))
                                                  (let ((_%e226829227520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd226827227515%_))))
                                                    (let ((_%tl226831227525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226829227520%_)))
                                                          (_%hd226830227523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226829227520%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd226830227523%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd226830227523%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226831227525%_))
                          (let ((_%e226832227528%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226831227525%_))))
                            (let ((_%tl226834227533%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226832227528%_)))
                                  (_%hd226833227531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226832227528%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226834227533%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl226828227517%_))
                                      (let ((_%__splice231173231174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl226828227517%_
                                                '0))))
                                        (let ((_%tl226837227538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice231173231174%_
                                                  '1)))
                                              (_%target226835227536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice231173231174%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226837227538%_))
                                              (_%__match231380231381%_
                                               _%e226796227432%_
                                               _%hd226797227435%_
                                               _%tl226798227437%_
                                               _%e226799227440%_
                                               _%hd226800227443%_
                                               _%tl226801227445%_
                                               _%e226802227448%_
                                               _%hd226803227451%_
                                               _%tl226804227453%_
                                               _%e226805227456%_
                                               _%hd226806227459%_
                                               _%tl226807227461%_
                                               _%e226808227464%_
                                               _%hd226809227467%_
                                               _%tl226810227469%_
                                               _%e226811227472%_
                                               _%hd226812227475%_
                                               _%tl226813227477%_
                                               _%e226814227480%_
                                               _%hd226815227483%_
                                               _%tl226816227485%_
                                               _%e226817227488%_
                                               _%hd226818227491%_
                                               _%tl226819227493%_
                                               _%e226820227496%_
                                               _%hd226821227499%_
                                               _%tl226822227501%_
                                               _%e226823227504%_
                                               _%hd226824227507%_
                                               _%tl226825227509%_
                                               _%e226826227512%_
                                               _%hd226827227515%_
                                               _%tl226828227517%_
                                               _%e226829227520%_
                                               _%hd226830227523%_
                                               _%tl226831227525%_
                                               _%e226832227528%_
                                               _%hd226833227531%_
                                               _%tl226834227533%_
                                               _%__splice231173231174%_
                                               _%target226835227536%_
                                               _%tl226837227538%_)
                                              (_%__kont231183231184%_))))
                                      (_%__kont231183231184%_))
                                  (_%__kont231183231184%_))))
                          (_%__kont231183231184%_))
                      (_%__kont231183231184%_))
                  (_%__kont231183231184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231183231184%_))))
                                          (_%__match231662231663%_
                                           _%e226796227432%_
                                           _%hd226797227435%_
                                           _%tl226798227437%_
                                           _%e226799227440%_
                                           _%hd226800227443%_
                                           _%tl226801227445%_
                                           _%e226802227448%_
                                           _%hd226803227451%_
                                           _%tl226804227453%_
                                           _%e226805227456%_
                                           _%hd226806227459%_
                                           _%tl226807227461%_
                                           _%e226808227464%_
                                           _%hd226809227467%_
                                           _%tl226810227469%_
                                           _%e226811227472%_
                                           _%hd226812227475%_
                                           _%tl226813227477%_
                                           _%e226814227480%_
                                           _%hd226815227483%_
                                           _%tl226816227485%_
                                           _%e226817227488%_
                                           _%hd226818227491%_
                                           _%tl226819227493%_))
                                      (_%__match231662231663%_
                                       _%e226796227432%_
                                       _%hd226797227435%_
                                       _%tl226798227437%_
                                       _%e226799227440%_
                                       _%hd226800227443%_
                                       _%tl226801227445%_
                                       _%e226802227448%_
                                       _%hd226803227451%_
                                       _%tl226804227453%_
                                       _%e226805227456%_
                                       _%hd226806227459%_
                                       _%tl226807227461%_
                                       _%e226808227464%_
                                       _%hd226809227467%_
                                       _%tl226810227469%_
                                       _%e226811227472%_
                                       _%hd226812227475%_
                                       _%tl226813227477%_
                                       _%e226814227480%_
                                       _%hd226815227483%_
                                       _%tl226816227485%_
                                       _%e226817227488%_
                                       _%hd226818227491%_
                                       _%tl226819227493%_))))
                              (_%__match231662231663%_
                               _%e226796227432%_
                               _%hd226797227435%_
                               _%tl226798227437%_
                               _%e226799227440%_
                               _%hd226800227443%_
                               _%tl226801227445%_
                               _%e226802227448%_
                               _%hd226803227451%_
                               _%tl226804227453%_
                               _%e226805227456%_
                               _%hd226806227459%_
                               _%tl226807227461%_
                               _%e226808227464%_
                               _%hd226809227467%_
                               _%tl226810227469%_
                               _%e226811227472%_
                               _%hd226812227475%_
                               _%tl226813227477%_
                               _%e226814227480%_
                               _%hd226815227483%_
                               _%tl226816227485%_
                               _%e226817227488%_
                               _%hd226818227491%_
                               _%tl226819227493%_))
                          (_%__match231448231449%_
                           _%e226796227432%_
                           _%hd226797227435%_
                           _%tl226798227437%_
                           _%e226799227440%_
                           _%hd226800227443%_
                           _%tl226801227445%_
                           _%e226802227448%_
                           _%hd226803227451%_
                           _%tl226804227453%_
                           _%e226805227456%_
                           _%hd226806227459%_
                           _%tl226807227461%_
                           _%e226808227464%_
                           _%hd226809227467%_
                           _%tl226810227469%_
                           _%e226811227472%_
                           _%hd226812227475%_
                           _%tl226813227477%_
                           _%e226814227480%_
                           _%hd226815227483%_
                           _%tl226816227485%_
                           _%e226817227488%_
                           _%hd226818227491%_
                           _%tl226819227493%_
                           _%e226820227496%_
                           _%hd226821227499%_
                           _%tl226822227501%_))))
                   (_%__match231270231271%_
                    (lambda (_%e226752227619%_
                             _%hd226753227622%_
                             _%tl226754227624%_
                             _%e226755227627%_
                             _%hd226756227630%_
                             _%tl226757227632%_
                             _%e226758227635%_
                             _%hd226759227638%_
                             _%tl226760227640%_
                             _%e226761227643%_
                             _%hd226762227646%_
                             _%tl226763227648%_
                             _%e226764227651%_
                             _%hd226765227654%_
                             _%tl226766227656%_
                             _%e226767227659%_
                             _%hd226768227662%_
                             _%tl226769227664%_
                             _%e226770227667%_
                             _%hd226771227670%_
                             _%tl226772227672%_
                             _%e226773227675%_
                             _%hd226774227678%_
                             _%tl226775227680%_
                             _%e226776227683%_
                             _%hd226777227686%_
                             _%tl226778227688%_
                             _%e226779227691%_
                             _%hd226780227694%_
                             _%tl226781227696%_
                             _%__splice231169231170%_
                             _%target226782227699%_
                             _%tl226784227701%_)
                      (letrec ((_%loop226785227704%_
                                (lambda (_%hd226783227707%_
                                         _%args226789227709%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd226783227707%_))
                                      (let ((_%e226786227711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd226783227707%_))))
                                        (let ((_%lp-tl226788227716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226786227711%_)))
                                              (_%lp-hd226787227714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226786227711%_))))
                                          (_%loop226785227704%_
                                           _%lp-tl226788227716%_
                                           (cons _%lp-hd226787227714%_
                                                 _%args226789227709%_))))
                                      (let ((_%args226790227719%_
                                             (reverse _%args226789227709%_)))
                                        (let ((_%g226748227721%_
                                               _%args226790227719%_)
                                              (_%g226749227722%_
                                               _%hd226780227694%_)
                                              (_%g226750227723%_
                                               _%hd226771227670%_)
                                              (_%g226751227724%_
                                               _%hd226762227646%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226751227724%_
                                                      'call-method))
                                                   (let ((__tmp232328
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self226737%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g226750227723%_
                                                      __tmp232328)))
                                              (_%__kont231167231168%_
                                               _%g226748227721%_
                                               _%g226749227722%_
                                               _%g226750227723%_
                                               _%g226751227724%_)
                                              (_%__match231458231459%_
                                               _%e226752227619%_
                                               _%hd226753227622%_
                                               _%tl226754227624%_
                                               _%e226755227627%_
                                               _%hd226756227630%_
                                               _%tl226757227632%_
                                               _%e226758227635%_
                                               _%hd226759227638%_
                                               _%tl226760227640%_
                                               _%e226761227643%_
                                               _%hd226762227646%_
                                               _%tl226763227648%_
                                               _%e226764227651%_
                                               _%hd226765227654%_
                                               _%tl226766227656%_
                                               _%e226767227659%_
                                               _%hd226768227662%_
                                               _%tl226769227664%_
                                               _%e226770227667%_
                                               _%hd226771227670%_
                                               _%tl226772227672%_
                                               _%e226773227675%_
                                               _%hd226774227678%_
                                               _%tl226775227680%_
                                               _%e226776227683%_
                                               _%hd226777227686%_
                                               _%tl226778227688%_
                                               _%e226779227691%_
                                               _%hd226780227694%_
                                               _%tl226781227696%_))))))))
                        (_%loop226785227704%_ _%target226782227699%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx231165231166%_))
                  (let ((_%e226752227619%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx231165231166%_))))
                    (let ((_%tl226754227624%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226752227619%_)))
                          (_%hd226753227622%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226752227619%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226754227624%_))
                          (let ((_%e226755227627%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226754227624%_))))
                            (let ((_%tl226757227632%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226755227627%_)))
                                  (_%hd226756227630%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226755227627%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd226756227630%_))
                                  (let ((_%e226758227635%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd226756227630%_))))
                                    (let ((_%tl226760227640%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226758227635%_)))
                                          (_%hd226759227638%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226758227635%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd226759227638%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd226759227638%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226760227640%_))
                                                  (let ((_%e226761227643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl226760227640%_))))
                                                    (let ((_%tl226763227648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226761227643%_)))
                                                          (_%hd226762227646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226761227643%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226763227648%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl226757227632%_))
                      (let ((_%e226764227651%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl226757227632%_))))
                        (let ((_%tl226766227656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226764227651%_)))
                              (_%hd226765227654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226764227651%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd226765227654%_))
                              (let ((_%e226767227659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd226765227654%_))))
                                (let ((_%tl226769227664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226767227659%_)))
                                      (_%hd226768227662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226767227659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd226768227662%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd226768227662%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl226769227664%_))
                                              (let ((_%e226770227667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl226769227664%_))))
                                                (let ((_%tl226772227672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e226770227667%_)))
                                                      (_%hd226771227670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e226770227667%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226772227672%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl226766227656%_))
                                                          (let ((_%e226773227675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl226766227656%_))))
                    (let ((_%tl226775227680%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226773227675%_)))
                          (_%hd226774227678%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226773227675%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd226774227678%_))
                          (let ((_%e226776227683%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd226774227678%_))))
                            (let ((_%tl226778227688%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226776227683%_)))
                                  (_%hd226777227686%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226776227683%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd226777227686%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd226777227686%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226778227688%_))
                                          (let ((_%e226779227691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl226778227688%_))))
                                            (let ((_%tl226781227696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226779227691%_)))
                                                  (_%hd226780227694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226779227691%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl226781227696%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl226775227680%_))
                                                      (let ((_%__splice231169231170%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl226775227680%_
                        '0))))
                (let ((_%tl226784227701%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice231169231170%_ '1)))
                      (_%target226782227699%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice231169231170%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl226784227701%_))
                      (_%__match231270231271%_
                       _%e226752227619%_
                       _%hd226753227622%_
                       _%tl226754227624%_
                       _%e226755227627%_
                       _%hd226756227630%_
                       _%tl226757227632%_
                       _%e226758227635%_
                       _%hd226759227638%_
                       _%tl226760227640%_
                       _%e226761227643%_
                       _%hd226762227646%_
                       _%tl226763227648%_
                       _%e226764227651%_
                       _%hd226765227654%_
                       _%tl226766227656%_
                       _%e226767227659%_
                       _%hd226768227662%_
                       _%tl226769227664%_
                       _%e226770227667%_
                       _%hd226771227670%_
                       _%tl226772227672%_
                       _%e226773227675%_
                       _%hd226774227678%_
                       _%tl226775227680%_
                       _%e226776227683%_
                       _%hd226777227686%_
                       _%tl226778227688%_
                       _%e226779227691%_
                       _%hd226780227694%_
                       _%tl226781227696%_
                       _%__splice231169231170%_
                       _%target226782227699%_
                       _%tl226784227701%_)
                      (_%__match231458231459%_
                       _%e226752227619%_
                       _%hd226753227622%_
                       _%tl226754227624%_
                       _%e226755227627%_
                       _%hd226756227630%_
                       _%tl226757227632%_
                       _%e226758227635%_
                       _%hd226759227638%_
                       _%tl226760227640%_
                       _%e226761227643%_
                       _%hd226762227646%_
                       _%tl226763227648%_
                       _%e226764227651%_
                       _%hd226765227654%_
                       _%tl226766227656%_
                       _%e226767227659%_
                       _%hd226768227662%_
                       _%tl226769227664%_
                       _%e226770227667%_
                       _%hd226771227670%_
                       _%tl226772227672%_
                       _%e226773227675%_
                       _%hd226774227678%_
                       _%tl226775227680%_
                       _%e226776227683%_
                       _%hd226777227686%_
                       _%tl226778227688%_
                       _%e226779227691%_
                       _%hd226780227694%_
                       _%tl226781227696%_))))
              (_%__match231458231459%_
               _%e226752227619%_
               _%hd226753227622%_
               _%tl226754227624%_
               _%e226755227627%_
               _%hd226756227630%_
               _%tl226757227632%_
               _%e226758227635%_
               _%hd226759227638%_
               _%tl226760227640%_
               _%e226761227643%_
               _%hd226762227646%_
               _%tl226763227648%_
               _%e226764227651%_
               _%hd226765227654%_
               _%tl226766227656%_
               _%e226767227659%_
               _%hd226768227662%_
               _%tl226769227664%_
               _%e226770227667%_
               _%hd226771227670%_
               _%tl226772227672%_
               _%e226773227675%_
               _%hd226774227678%_
               _%tl226775227680%_
               _%e226776227683%_
               _%hd226777227686%_
               _%tl226778227688%_
               _%e226779227691%_
               _%hd226780227694%_
               _%tl226781227696%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match231662231663%_
                                                   _%e226752227619%_
                                                   _%hd226753227622%_
                                                   _%tl226754227624%_
                                                   _%e226755227627%_
                                                   _%hd226756227630%_
                                                   _%tl226757227632%_
                                                   _%e226758227635%_
                                                   _%hd226759227638%_
                                                   _%tl226760227640%_
                                                   _%e226761227643%_
                                                   _%hd226762227646%_
                                                   _%tl226763227648%_
                                                   _%e226764227651%_
                                                   _%hd226765227654%_
                                                   _%tl226766227656%_
                                                   _%e226767227659%_
                                                   _%hd226768227662%_
                                                   _%tl226769227664%_
                                                   _%e226770227667%_
                                                   _%hd226771227670%_
                                                   _%tl226772227672%_
                                                   _%e226773227675%_
                                                   _%hd226774227678%_
                                                   _%tl226775227680%_))))
                                          (_%__match231662231663%_
                                           _%e226752227619%_
                                           _%hd226753227622%_
                                           _%tl226754227624%_
                                           _%e226755227627%_
                                           _%hd226756227630%_
                                           _%tl226757227632%_
                                           _%e226758227635%_
                                           _%hd226759227638%_
                                           _%tl226760227640%_
                                           _%e226761227643%_
                                           _%hd226762227646%_
                                           _%tl226763227648%_
                                           _%e226764227651%_
                                           _%hd226765227654%_
                                           _%tl226766227656%_
                                           _%e226767227659%_
                                           _%hd226768227662%_
                                           _%tl226769227664%_
                                           _%e226770227667%_
                                           _%hd226771227670%_
                                           _%tl226772227672%_
                                           _%e226773227675%_
                                           _%hd226774227678%_
                                           _%tl226775227680%_))
                                      (_%__match231338231339%_
                                       _%e226752227619%_
                                       _%hd226753227622%_
                                       _%tl226754227624%_
                                       _%e226755227627%_
                                       _%hd226756227630%_
                                       _%tl226757227632%_
                                       _%e226758227635%_
                                       _%hd226759227638%_
                                       _%tl226760227640%_
                                       _%e226761227643%_
                                       _%hd226762227646%_
                                       _%tl226763227648%_
                                       _%e226764227651%_
                                       _%hd226765227654%_
                                       _%tl226766227656%_
                                       _%e226767227659%_
                                       _%hd226768227662%_
                                       _%tl226769227664%_
                                       _%e226770227667%_
                                       _%hd226771227670%_
                                       _%tl226772227672%_
                                       _%e226773227675%_
                                       _%hd226774227678%_
                                       _%tl226775227680%_
                                       _%e226776227683%_
                                       _%hd226777227686%_
                                       _%tl226778227688%_))
                                  (_%__match231662231663%_
                                   _%e226752227619%_
                                   _%hd226753227622%_
                                   _%tl226754227624%_
                                   _%e226755227627%_
                                   _%hd226756227630%_
                                   _%tl226757227632%_
                                   _%e226758227635%_
                                   _%hd226759227638%_
                                   _%tl226760227640%_
                                   _%e226761227643%_
                                   _%hd226762227646%_
                                   _%tl226763227648%_
                                   _%e226764227651%_
                                   _%hd226765227654%_
                                   _%tl226766227656%_
                                   _%e226767227659%_
                                   _%hd226768227662%_
                                   _%tl226769227664%_
                                   _%e226770227667%_
                                   _%hd226771227670%_
                                   _%tl226772227672%_
                                   _%e226773227675%_
                                   _%hd226774227678%_
                                   _%tl226775227680%_))))
                          (_%__match231662231663%_
                           _%e226752227619%_
                           _%hd226753227622%_
                           _%tl226754227624%_
                           _%e226755227627%_
                           _%hd226756227630%_
                           _%tl226757227632%_
                           _%e226758227635%_
                           _%hd226759227638%_
                           _%tl226760227640%_
                           _%e226761227643%_
                           _%hd226762227646%_
                           _%tl226763227648%_
                           _%e226764227651%_
                           _%hd226765227654%_
                           _%tl226766227656%_
                           _%e226767227659%_
                           _%hd226768227662%_
                           _%tl226769227664%_
                           _%e226770227667%_
                           _%hd226771227670%_
                           _%tl226772227672%_
                           _%e226773227675%_
                           _%hd226774227678%_
                           _%tl226775227680%_))))
                  (_%__match231600231601%_
                   _%e226752227619%_
                   _%hd226753227622%_
                   _%tl226754227624%_
                   _%e226755227627%_
                   _%hd226756227630%_
                   _%tl226757227632%_
                   _%e226758227635%_
                   _%hd226759227638%_
                   _%tl226760227640%_
                   _%e226761227643%_
                   _%hd226762227646%_
                   _%tl226763227648%_
                   _%e226764227651%_
                   _%hd226765227654%_
                   _%tl226766227656%_
                   _%e226767227659%_
                   _%hd226768227662%_
                   _%tl226769227664%_
                   _%e226770227667%_
                   _%hd226771227670%_
                   _%tl226772227672%_))
              (_%__kont231183231184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont231183231184%_))
                                          (_%__kont231183231184%_))
                                      (_%__kont231183231184%_))))
                              (_%__kont231183231184%_))))
                      (_%__kont231183231184%_))
                  (_%__kont231183231184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231183231184%_))
                                              (_%__kont231183231184%_))
                                          (_%__kont231183231184%_))))
                                  (_%__kont231183231184%_))))
                          (_%__kont231183231184%_))))
                  (_%__kont231183231184%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self225680%_ _%stx225681%_)
        (letrec ((_%force-e225683%_
                  (lambda (_%target226735%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target226735%_ '()))
                                      '()))))))
          (let* ((_%__stx231667231668%_ _%stx225681%_)
                 (_%g225691225913%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx231667231668%_)))))
            (let ((_%__kont231669231670%_
                   (lambda (_%g225693226681%_
                            _%g225694226682%_
                            _%g225695226683%_
                            _%g225696226684%_)
                     (let ((_%$method226729%_
                            (let ((__tmp232330
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225680%_ 'methods)))
                                  (__tmp232329
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225694226682%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232330 __tmp232329)))
                           (_%args226730%_
                            (map (lambda (_%g226717226719%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self225680%_
                                      _%g226717226719%_)))
                                 (let ((__tmp232331
                                        (lambda (_%g226721226724%_
                                                 _%g226722226726%_)
                                          (cons _%g226721226724%_
                                                _%g226722226726%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp232331
                                    '()
                                    _%g225693226681%_)))))
                       (let ((__tmp232332
                              (cons '%#call
                                    (cons (_%force-e225683%_ _%$method226729%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225680%_
                                                               'receiver))
                                                            '()))
                                                _%args226730%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232332 _%stx225681%_)))))
                  (_%__kont231673231674%_
                   (lambda (_%g225736226515%_
                            _%g225737226516%_
                            _%g225738226517%_
                            _%g225739226518%_
                            _%g225740226519%_)
                     (let ((_%$method226571%_
                            (let ((__tmp232334
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225680%_ 'methods)))
                                  (__tmp232333
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225737226516%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232334 __tmp232333)))
                           (_%args226572%_
                            (map (lambda (_%g226559226561%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self225680%_
                                      _%g226559226561%_)))
                                 (let ((__tmp232335
                                        (lambda (_%g226563226566%_
                                                 _%g226564226568%_)
                                          (cons _%g226563226566%_
                                                _%g226564226568%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp232335
                                    '()
                                    _%g225736226515%_)))))
                       (let ((__tmp232336
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e225683%_
                                                 _%$method226571%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self225680%_ 'receiver))
                          '()))
              _%args226572%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232336 _%stx225681%_)))))
                  (_%__kont231677231678%_
                   (lambda (_%g225789226348%_
                            _%g225790226349%_
                            _%g225791226350%_)
                     (let* ((_%$field226382%_
                             (let ((__tmp232338
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self225680%_ 'slots)))
                                   (__tmp232337
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g225789226348%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp232338 __tmp232337)))
                            (__tmp232339
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self225680%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field226382%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self225680%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp232339 _%stx225681%_))))
                  (_%__kont231679231680%_
                   (lambda (_%g225822226222%_
                            _%g225823226223%_
                            _%g225824226224%_
                            _%g225825226225%_)
                     (let ((_%$field226260%_
                            (let ((__tmp232341
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225680%_ 'slots)))
                                  (__tmp232340
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225823226223%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232341 __tmp232340)))
                           (_%expr226261%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self225680%_
                               _%g225822226222%_))))
                       (let ((__tmp232342
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self225680%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field226260%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self225680%_ 'receiver))
                          '()))
              (cons _%expr226261%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232342 _%stx225681%_)))))
                  (_%__kont231681231682%_
                   (lambda (_%g225859226094%_ _%g225860226095%_)
                     (let* ((_%accessor226117%_
                             (let ((__tmp232343
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g225860226095%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp232343)))
                            (_%klass226119%_
                             (let ((__tmp232344
                                    (##structure-ref
                                     _%accessor226117%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx225681%_
                                __tmp232344)))
                            (_%slot226121%_
                             (##structure-ref
                              _%accessor226117%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor226117%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass226119%_
                                      _%slot226121%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass226119%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx225681%_
                           (let* ((_%$field226127%_
                                   (let ((__tmp232345
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225680%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp232345 _%slot226121%_)))
                                  (__tmp232346
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self225680%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field226127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self225680%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232346
                              _%stx225681%_))))))
                  (_%__kont231683231684%_
                   (lambda (_%g225882225989%_
                            _%g225883225990%_
                            _%g225884225991%_)
                     (let* ((_%mutator226019%_
                             (let ((__tmp232347
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g225884225991%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp232347)))
                            (_%klass226021%_
                             (let ((__tmp232348
                                    (##structure-ref
                                     _%mutator226019%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx225681%_
                                __tmp232348)))
                            (_%slot226023%_
                             (##structure-ref
                              _%mutator226019%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr226025%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self225680%_
                                _%g225882225989%_))))
                       (if (if (##structure-ref
                                _%mutator226019%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass226021%_
                                      _%slot226023%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass226021%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp232349
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g225884225991%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g225883225990%_
                                                                '()))
                                                    (cons _%expr226025%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp232349 _%stx225681%_))
                           (let* ((_%$field226031%_
                                   (let ((__tmp232350
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225680%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp232350 _%slot226023%_)))
                                  (__tmp232351
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self225680%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field226031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self225680%_ 'receiver))
                               '()))
                   (cons _%expr226025%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232351
                              _%stx225681%_))))))
                  (_%__kont231685231686%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self225680%_ _%stx225681%_)))))
              (let* ((_%__match232166232167%_
                      (lambda (_%e225885225925%_
                               _%hd225886225928%_
                               _%tl225887225930%_
                               _%e225888225933%_
                               _%hd225889225936%_
                               _%tl225890225938%_
                               _%e225891225941%_
                               _%hd225892225944%_
                               _%tl225893225946%_
                               _%e225894225949%_
                               _%hd225895225952%_
                               _%tl225896225954%_
                               _%e225897225957%_
                               _%hd225898225960%_
                               _%tl225899225962%_
                               _%e225900225965%_
                               _%hd225901225968%_
                               _%tl225902225970%_
                               _%e225903225973%_
                               _%hd225904225976%_
                               _%tl225905225978%_
                               _%e225906225981%_
                               _%hd225907225984%_
                               _%tl225908225986%_)
                        (let ((_%g225882225989%_ _%hd225907225984%_)
                              (_%g225883225990%_ _%hd225904225976%_)
                              (_%g225884225991%_ _%hd225895225952%_))
                          (if (and (let ((__tmp232352
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225883225990%_
                                      __tmp232352))
                                   (let ((__tmp232353
                                          (let ((__tmp232354
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g225884225991%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp232354))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp232353
                                      'gxc#!mutator::t)))
                              (_%__kont231683231684%_
                               _%g225882225989%_
                               _%g225883225990%_
                               _%g225884225991%_)
                              (_%__kont231685231686%_)))))
                     (_%__match232164232165%_
                      (lambda (_%e225885225925%_
                               _%hd225886225928%_
                               _%tl225887225930%_
                               _%e225888225933%_
                               _%hd225889225936%_
                               _%tl225890225938%_
                               _%e225891225941%_
                               _%hd225892225944%_
                               _%tl225893225946%_
                               _%e225894225949%_
                               _%hd225895225952%_
                               _%tl225896225954%_
                               _%e225897225957%_
                               _%hd225898225960%_
                               _%tl225899225962%_
                               _%e225900225965%_
                               _%hd225901225968%_
                               _%tl225902225970%_
                               _%e225903225973%_
                               _%hd225904225976%_
                               _%tl225905225978%_
                               _%e225906225981%_
                               _%hd225907225984%_
                               _%tl225908225986%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225908225986%_))
                            (_%__match232166232167%_
                             _%e225885225925%_
                             _%hd225886225928%_
                             _%tl225887225930%_
                             _%e225888225933%_
                             _%hd225889225936%_
                             _%tl225890225938%_
                             _%e225891225941%_
                             _%hd225892225944%_
                             _%tl225893225946%_
                             _%e225894225949%_
                             _%hd225895225952%_
                             _%tl225896225954%_
                             _%e225897225957%_
                             _%hd225898225960%_
                             _%tl225899225962%_
                             _%e225900225965%_
                             _%hd225901225968%_
                             _%tl225902225970%_
                             _%e225903225973%_
                             _%hd225904225976%_
                             _%tl225905225978%_
                             _%e225906225981%_
                             _%hd225907225984%_
                             _%tl225908225986%_)
                            (_%__kont231685231686%_))))
                     (_%__match232158232159%_
                      (lambda (_%e225885225925%_
                               _%hd225886225928%_
                               _%tl225887225930%_
                               _%e225888225933%_
                               _%hd225889225936%_
                               _%tl225890225938%_
                               _%e225891225941%_
                               _%hd225892225944%_
                               _%tl225893225946%_
                               _%e225894225949%_
                               _%hd225895225952%_
                               _%tl225896225954%_
                               _%e225897225957%_
                               _%hd225898225960%_
                               _%tl225899225962%_
                               _%e225900225965%_
                               _%hd225901225968%_
                               _%tl225902225970%_
                               _%e225903225973%_
                               _%hd225904225976%_
                               _%tl225905225978%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225899225962%_))
                            (let ((_%e225906225981%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225899225962%_))))
                              (let ((_%tl225908225986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225906225981%_)))
                                    (_%hd225907225984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225906225981%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225908225986%_))
                                    (_%__match232166232167%_
                                     _%e225885225925%_
                                     _%hd225886225928%_
                                     _%tl225887225930%_
                                     _%e225888225933%_
                                     _%hd225889225936%_
                                     _%tl225890225938%_
                                     _%e225891225941%_
                                     _%hd225892225944%_
                                     _%tl225893225946%_
                                     _%e225894225949%_
                                     _%hd225895225952%_
                                     _%tl225896225954%_
                                     _%e225897225957%_
                                     _%hd225898225960%_
                                     _%tl225899225962%_
                                     _%e225900225965%_
                                     _%hd225901225968%_
                                     _%tl225902225970%_
                                     _%e225903225973%_
                                     _%hd225904225976%_
                                     _%tl225905225978%_
                                     _%e225906225981%_
                                     _%hd225907225984%_
                                     _%tl225908225986%_)
                                    (_%__kont231685231686%_))))
                            (_%__kont231685231686%_))))
                     (_%__match232104232105%_
                      (lambda (_%e225861226038%_
                               _%hd225862226041%_
                               _%tl225863226043%_
                               _%e225864226046%_
                               _%hd225865226049%_
                               _%tl225866226051%_
                               _%e225867226054%_
                               _%hd225868226057%_
                               _%tl225869226059%_
                               _%e225870226062%_
                               _%hd225871226065%_
                               _%tl225872226067%_
                               _%e225873226070%_
                               _%hd225874226073%_
                               _%tl225875226075%_
                               _%e225876226078%_
                               _%hd225877226081%_
                               _%tl225878226083%_
                               _%e225879226086%_
                               _%hd225880226089%_
                               _%tl225881226091%_)
                        (let ((_%g225859226094%_ _%hd225880226089%_)
                              (_%g225860226095%_ _%hd225871226065%_))
                          (if (and (let ((__tmp232355
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225859226094%_
                                      __tmp232355))
                                   (let ((__tmp232356
                                          (let ((__tmp232357
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g225860226095%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp232357))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp232356
                                      'gxc#!accessor::t)))
                              (_%__kont231681231682%_
                               _%g225859226094%_
                               _%g225860226095%_)
                              (_%__kont231685231686%_)))))
                     (_%__match232102232103%_
                      (lambda (_%e225861226038%_
                               _%hd225862226041%_
                               _%tl225863226043%_
                               _%e225864226046%_
                               _%hd225865226049%_
                               _%tl225866226051%_
                               _%e225867226054%_
                               _%hd225868226057%_
                               _%tl225869226059%_
                               _%e225870226062%_
                               _%hd225871226065%_
                               _%tl225872226067%_
                               _%e225873226070%_
                               _%hd225874226073%_
                               _%tl225875226075%_
                               _%e225876226078%_
                               _%hd225877226081%_
                               _%tl225878226083%_
                               _%e225879226086%_
                               _%hd225880226089%_
                               _%tl225881226091%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225875226075%_))
                            (_%__match232104232105%_
                             _%e225861226038%_
                             _%hd225862226041%_
                             _%tl225863226043%_
                             _%e225864226046%_
                             _%hd225865226049%_
                             _%tl225866226051%_
                             _%e225867226054%_
                             _%hd225868226057%_
                             _%tl225869226059%_
                             _%e225870226062%_
                             _%hd225871226065%_
                             _%tl225872226067%_
                             _%e225873226070%_
                             _%hd225874226073%_
                             _%tl225875226075%_
                             _%e225876226078%_
                             _%hd225877226081%_
                             _%tl225878226083%_
                             _%e225879226086%_
                             _%hd225880226089%_
                             _%tl225881226091%_)
                            (_%__match232158232159%_
                             _%e225861226038%_
                             _%hd225862226041%_
                             _%tl225863226043%_
                             _%e225864226046%_
                             _%hd225865226049%_
                             _%tl225866226051%_
                             _%e225867226054%_
                             _%hd225868226057%_
                             _%tl225869226059%_
                             _%e225870226062%_
                             _%hd225871226065%_
                             _%tl225872226067%_
                             _%e225873226070%_
                             _%hd225874226073%_
                             _%tl225875226075%_
                             _%e225876226078%_
                             _%hd225877226081%_
                             _%tl225878226083%_
                             _%e225879226086%_
                             _%hd225880226089%_
                             _%tl225881226091%_))))
                     (_%__match232048232049%_
                      (lambda (_%e225826226134%_
                               _%hd225827226137%_
                               _%tl225828226139%_
                               _%e225829226142%_
                               _%hd225830226145%_
                               _%tl225831226147%_
                               _%e225832226150%_
                               _%hd225833226153%_
                               _%tl225834226155%_
                               _%e225835226158%_
                               _%hd225836226161%_
                               _%tl225837226163%_
                               _%e225838226166%_
                               _%hd225839226169%_
                               _%tl225840226171%_
                               _%e225841226174%_
                               _%hd225842226177%_
                               _%tl225843226179%_
                               _%e225844226182%_
                               _%hd225845226185%_
                               _%tl225846226187%_
                               _%e225847226190%_
                               _%hd225848226193%_
                               _%tl225849226195%_
                               _%e225850226198%_
                               _%hd225851226201%_
                               _%tl225852226203%_
                               _%e225853226206%_
                               _%hd225854226209%_
                               _%tl225855226211%_
                               _%e225856226214%_
                               _%hd225857226217%_
                               _%tl225858226219%_)
                        (let ((_%g225822226222%_ _%hd225857226217%_)
                              (_%g225823226223%_ _%hd225854226209%_)
                              (_%g225824226224%_ _%hd225845226185%_)
                              (_%g225825226225%_ _%hd225836226161%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225825226225%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225825226225%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp232358
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225824226224%_
                                      __tmp232358)))
                              (_%__kont231679231680%_
                               _%g225822226222%_
                               _%g225823226223%_
                               _%g225824226224%_
                               _%g225825226225%_)
                              (_%__kont231685231686%_)))))
                     (_%__match232040232041%_
                      (lambda (_%e225826226134%_
                               _%hd225827226137%_
                               _%tl225828226139%_
                               _%e225829226142%_
                               _%hd225830226145%_
                               _%tl225831226147%_
                               _%e225832226150%_
                               _%hd225833226153%_
                               _%tl225834226155%_
                               _%e225835226158%_
                               _%hd225836226161%_
                               _%tl225837226163%_
                               _%e225838226166%_
                               _%hd225839226169%_
                               _%tl225840226171%_
                               _%e225841226174%_
                               _%hd225842226177%_
                               _%tl225843226179%_
                               _%e225844226182%_
                               _%hd225845226185%_
                               _%tl225846226187%_
                               _%e225847226190%_
                               _%hd225848226193%_
                               _%tl225849226195%_
                               _%e225850226198%_
                               _%hd225851226201%_
                               _%tl225852226203%_
                               _%e225853226206%_
                               _%hd225854226209%_
                               _%tl225855226211%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225849226195%_))
                            (let ((_%e225856226214%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225849226195%_))))
                              (let ((_%tl225858226219%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225856226214%_)))
                                    (_%hd225857226217%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225856226214%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225858226219%_))
                                    (_%__match232048232049%_
                                     _%e225826226134%_
                                     _%hd225827226137%_
                                     _%tl225828226139%_
                                     _%e225829226142%_
                                     _%hd225830226145%_
                                     _%tl225831226147%_
                                     _%e225832226150%_
                                     _%hd225833226153%_
                                     _%tl225834226155%_
                                     _%e225835226158%_
                                     _%hd225836226161%_
                                     _%tl225837226163%_
                                     _%e225838226166%_
                                     _%hd225839226169%_
                                     _%tl225840226171%_
                                     _%e225841226174%_
                                     _%hd225842226177%_
                                     _%tl225843226179%_
                                     _%e225844226182%_
                                     _%hd225845226185%_
                                     _%tl225846226187%_
                                     _%e225847226190%_
                                     _%hd225848226193%_
                                     _%tl225849226195%_
                                     _%e225850226198%_
                                     _%hd225851226201%_
                                     _%tl225852226203%_
                                     _%e225853226206%_
                                     _%hd225854226209%_
                                     _%tl225855226211%_
                                     _%e225856226214%_
                                     _%hd225857226217%_
                                     _%tl225858226219%_)
                                    (_%__kont231685231686%_))))
                            (_%__match232164232165%_
                             _%e225826226134%_
                             _%hd225827226137%_
                             _%tl225828226139%_
                             _%e225829226142%_
                             _%hd225830226145%_
                             _%tl225831226147%_
                             _%e225832226150%_
                             _%hd225833226153%_
                             _%tl225834226155%_
                             _%e225835226158%_
                             _%hd225836226161%_
                             _%tl225837226163%_
                             _%e225838226166%_
                             _%hd225839226169%_
                             _%tl225840226171%_
                             _%e225841226174%_
                             _%hd225842226177%_
                             _%tl225843226179%_
                             _%e225844226182%_
                             _%hd225845226185%_
                             _%tl225846226187%_
                             _%e225847226190%_
                             _%hd225848226193%_
                             _%tl225849226195%_))))
                     (_%__match231962231963%_
                      (lambda (_%e225792226268%_
                               _%hd225793226271%_
                               _%tl225794226273%_
                               _%e225795226276%_
                               _%hd225796226279%_
                               _%tl225797226281%_
                               _%e225798226284%_
                               _%hd225799226287%_
                               _%tl225800226289%_
                               _%e225801226292%_
                               _%hd225802226295%_
                               _%tl225803226297%_
                               _%e225804226300%_
                               _%hd225805226303%_
                               _%tl225806226305%_
                               _%e225807226308%_
                               _%hd225808226311%_
                               _%tl225809226313%_
                               _%e225810226316%_
                               _%hd225811226319%_
                               _%tl225812226321%_
                               _%e225813226324%_
                               _%hd225814226327%_
                               _%tl225815226329%_
                               _%e225816226332%_
                               _%hd225817226335%_
                               _%tl225818226337%_
                               _%e225819226340%_
                               _%hd225820226343%_
                               _%tl225821226345%_)
                        (let ((_%g225789226348%_ _%hd225820226343%_)
                              (_%g225790226349%_ _%hd225811226319%_)
                              (_%g225791226350%_ _%hd225802226295%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225791226350%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225791226350%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp232359
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225790226349%_
                                      __tmp232359)))
                              (_%__kont231677231678%_
                               _%g225789226348%_
                               _%g225790226349%_
                               _%g225791226350%_)
                              (_%__match232166232167%_
                               _%e225792226268%_
                               _%hd225793226271%_
                               _%tl225794226273%_
                               _%e225795226276%_
                               _%hd225796226279%_
                               _%tl225797226281%_
                               _%e225798226284%_
                               _%hd225799226287%_
                               _%tl225800226289%_
                               _%e225801226292%_
                               _%hd225802226295%_
                               _%tl225803226297%_
                               _%e225804226300%_
                               _%hd225805226303%_
                               _%tl225806226305%_
                               _%e225807226308%_
                               _%hd225808226311%_
                               _%tl225809226313%_
                               _%e225810226316%_
                               _%hd225811226319%_
                               _%tl225812226321%_
                               _%e225813226324%_
                               _%hd225814226327%_
                               _%tl225815226329%_)))))
                     (_%__match231960231961%_
                      (lambda (_%e225792226268%_
                               _%hd225793226271%_
                               _%tl225794226273%_
                               _%e225795226276%_
                               _%hd225796226279%_
                               _%tl225797226281%_
                               _%e225798226284%_
                               _%hd225799226287%_
                               _%tl225800226289%_
                               _%e225801226292%_
                               _%hd225802226295%_
                               _%tl225803226297%_
                               _%e225804226300%_
                               _%hd225805226303%_
                               _%tl225806226305%_
                               _%e225807226308%_
                               _%hd225808226311%_
                               _%tl225809226313%_
                               _%e225810226316%_
                               _%hd225811226319%_
                               _%tl225812226321%_
                               _%e225813226324%_
                               _%hd225814226327%_
                               _%tl225815226329%_
                               _%e225816226332%_
                               _%hd225817226335%_
                               _%tl225818226337%_
                               _%e225819226340%_
                               _%hd225820226343%_
                               _%tl225821226345%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225815226329%_))
                            (_%__match231962231963%_
                             _%e225792226268%_
                             _%hd225793226271%_
                             _%tl225794226273%_
                             _%e225795226276%_
                             _%hd225796226279%_
                             _%tl225797226281%_
                             _%e225798226284%_
                             _%hd225799226287%_
                             _%tl225800226289%_
                             _%e225801226292%_
                             _%hd225802226295%_
                             _%tl225803226297%_
                             _%e225804226300%_
                             _%hd225805226303%_
                             _%tl225806226305%_
                             _%e225807226308%_
                             _%hd225808226311%_
                             _%tl225809226313%_
                             _%e225810226316%_
                             _%hd225811226319%_
                             _%tl225812226321%_
                             _%e225813226324%_
                             _%hd225814226327%_
                             _%tl225815226329%_
                             _%e225816226332%_
                             _%hd225817226335%_
                             _%tl225818226337%_
                             _%e225819226340%_
                             _%hd225820226343%_
                             _%tl225821226345%_)
                            (_%__match232040232041%_
                             _%e225792226268%_
                             _%hd225793226271%_
                             _%tl225794226273%_
                             _%e225795226276%_
                             _%hd225796226279%_
                             _%tl225797226281%_
                             _%e225798226284%_
                             _%hd225799226287%_
                             _%tl225800226289%_
                             _%e225801226292%_
                             _%hd225802226295%_
                             _%tl225803226297%_
                             _%e225804226300%_
                             _%hd225805226303%_
                             _%tl225806226305%_
                             _%e225807226308%_
                             _%hd225808226311%_
                             _%tl225809226313%_
                             _%e225810226316%_
                             _%hd225811226319%_
                             _%tl225812226321%_
                             _%e225813226324%_
                             _%hd225814226327%_
                             _%tl225815226329%_
                             _%e225816226332%_
                             _%hd225817226335%_
                             _%tl225818226337%_
                             _%e225819226340%_
                             _%hd225820226343%_
                             _%tl225821226345%_))))
                     (_%__match231950231951%_
                      (lambda (_%e225792226268%_
                               _%hd225793226271%_
                               _%tl225794226273%_
                               _%e225795226276%_
                               _%hd225796226279%_
                               _%tl225797226281%_
                               _%e225798226284%_
                               _%hd225799226287%_
                               _%tl225800226289%_
                               _%e225801226292%_
                               _%hd225802226295%_
                               _%tl225803226297%_
                               _%e225804226300%_
                               _%hd225805226303%_
                               _%tl225806226305%_
                               _%e225807226308%_
                               _%hd225808226311%_
                               _%tl225809226313%_
                               _%e225810226316%_
                               _%hd225811226319%_
                               _%tl225812226321%_
                               _%e225813226324%_
                               _%hd225814226327%_
                               _%tl225815226329%_
                               _%e225816226332%_
                               _%hd225817226335%_
                               _%tl225818226337%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd225817226335%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225818226337%_))
                                (let ((_%e225819226340%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl225818226337%_))))
                                  (let ((_%tl225821226345%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225819226340%_)))
                                        (_%hd225820226343%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225819226340%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225821226345%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl225815226329%_))
                                            (_%__match231962231963%_
                                             _%e225792226268%_
                                             _%hd225793226271%_
                                             _%tl225794226273%_
                                             _%e225795226276%_
                                             _%hd225796226279%_
                                             _%tl225797226281%_
                                             _%e225798226284%_
                                             _%hd225799226287%_
                                             _%tl225800226289%_
                                             _%e225801226292%_
                                             _%hd225802226295%_
                                             _%tl225803226297%_
                                             _%e225804226300%_
                                             _%hd225805226303%_
                                             _%tl225806226305%_
                                             _%e225807226308%_
                                             _%hd225808226311%_
                                             _%tl225809226313%_
                                             _%e225810226316%_
                                             _%hd225811226319%_
                                             _%tl225812226321%_
                                             _%e225813226324%_
                                             _%hd225814226327%_
                                             _%tl225815226329%_
                                             _%e225816226332%_
                                             _%hd225817226335%_
                                             _%tl225818226337%_
                                             _%e225819226340%_
                                             _%hd225820226343%_
                                             _%tl225821226345%_)
                                            (_%__match232040232041%_
                                             _%e225792226268%_
                                             _%hd225793226271%_
                                             _%tl225794226273%_
                                             _%e225795226276%_
                                             _%hd225796226279%_
                                             _%tl225797226281%_
                                             _%e225798226284%_
                                             _%hd225799226287%_
                                             _%tl225800226289%_
                                             _%e225801226292%_
                                             _%hd225802226295%_
                                             _%tl225803226297%_
                                             _%e225804226300%_
                                             _%hd225805226303%_
                                             _%tl225806226305%_
                                             _%e225807226308%_
                                             _%hd225808226311%_
                                             _%tl225809226313%_
                                             _%e225810226316%_
                                             _%hd225811226319%_
                                             _%tl225812226321%_
                                             _%e225813226324%_
                                             _%hd225814226327%_
                                             _%tl225815226329%_
                                             _%e225816226332%_
                                             _%hd225817226335%_
                                             _%tl225818226337%_
                                             _%e225819226340%_
                                             _%hd225820226343%_
                                             _%tl225821226345%_))
                                        (_%__match232164232165%_
                                         _%e225792226268%_
                                         _%hd225793226271%_
                                         _%tl225794226273%_
                                         _%e225795226276%_
                                         _%hd225796226279%_
                                         _%tl225797226281%_
                                         _%e225798226284%_
                                         _%hd225799226287%_
                                         _%tl225800226289%_
                                         _%e225801226292%_
                                         _%hd225802226295%_
                                         _%tl225803226297%_
                                         _%e225804226300%_
                                         _%hd225805226303%_
                                         _%tl225806226305%_
                                         _%e225807226308%_
                                         _%hd225808226311%_
                                         _%tl225809226313%_
                                         _%e225810226316%_
                                         _%hd225811226319%_
                                         _%tl225812226321%_
                                         _%e225813226324%_
                                         _%hd225814226327%_
                                         _%tl225815226329%_))))
                                (_%__match232164232165%_
                                 _%e225792226268%_
                                 _%hd225793226271%_
                                 _%tl225794226273%_
                                 _%e225795226276%_
                                 _%hd225796226279%_
                                 _%tl225797226281%_
                                 _%e225798226284%_
                                 _%hd225799226287%_
                                 _%tl225800226289%_
                                 _%e225801226292%_
                                 _%hd225802226295%_
                                 _%tl225803226297%_
                                 _%e225804226300%_
                                 _%hd225805226303%_
                                 _%tl225806226305%_
                                 _%e225807226308%_
                                 _%hd225808226311%_
                                 _%tl225809226313%_
                                 _%e225810226316%_
                                 _%hd225811226319%_
                                 _%tl225812226321%_
                                 _%e225813226324%_
                                 _%hd225814226327%_
                                 _%tl225815226329%_))
                            (_%__match232164232165%_
                             _%e225792226268%_
                             _%hd225793226271%_
                             _%tl225794226273%_
                             _%e225795226276%_
                             _%hd225796226279%_
                             _%tl225797226281%_
                             _%e225798226284%_
                             _%hd225799226287%_
                             _%tl225800226289%_
                             _%e225801226292%_
                             _%hd225802226295%_
                             _%tl225803226297%_
                             _%e225804226300%_
                             _%hd225805226303%_
                             _%tl225806226305%_
                             _%e225807226308%_
                             _%hd225808226311%_
                             _%tl225809226313%_
                             _%e225810226316%_
                             _%hd225811226319%_
                             _%tl225812226321%_
                             _%e225813226324%_
                             _%hd225814226327%_
                             _%tl225815226329%_))))
                     (_%__match231882231883%_
                      (lambda (_%e225741226389%_
                               _%hd225742226392%_
                               _%tl225743226394%_
                               _%e225744226397%_
                               _%hd225745226400%_
                               _%tl225746226402%_
                               _%e225747226405%_
                               _%hd225748226408%_
                               _%tl225749226410%_
                               _%e225750226413%_
                               _%hd225751226416%_
                               _%tl225752226418%_
                               _%e225753226421%_
                               _%hd225754226424%_
                               _%tl225755226426%_
                               _%e225756226429%_
                               _%hd225757226432%_
                               _%tl225758226434%_
                               _%e225759226437%_
                               _%hd225760226440%_
                               _%tl225761226442%_
                               _%e225762226445%_
                               _%hd225763226448%_
                               _%tl225764226450%_
                               _%e225765226453%_
                               _%hd225766226456%_
                               _%tl225767226458%_
                               _%e225768226461%_
                               _%hd225769226464%_
                               _%tl225770226466%_
                               _%e225771226469%_
                               _%hd225772226472%_
                               _%tl225773226474%_
                               _%e225774226477%_
                               _%hd225775226480%_
                               _%tl225776226482%_
                               _%e225777226485%_
                               _%hd225778226488%_
                               _%tl225779226490%_
                               _%__splice231675231676%_
                               _%target225780226493%_
                               _%tl225782226495%_)
                        (letrec ((_%loop225783226498%_
                                  (lambda (_%hd225781226501%_
                                           _%args225787226503%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd225781226501%_))
                                        (let ((_%e225784226505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd225781226501%_))))
                                          (let ((_%lp-tl225786226510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225784226505%_)))
                                                (_%lp-hd225785226508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225784226505%_))))
                                            (_%loop225783226498%_
                                             _%lp-tl225786226510%_
                                             (cons _%lp-hd225785226508%_
                                                   _%args225787226503%_))))
                                        (let ((_%args225788226513%_
                                               (reverse _%args225787226503%_)))
                                          (let ((_%g225736226515%_
                                                 _%args225788226513%_)
                                                (_%g225737226516%_
                                                 _%hd225778226488%_)
                                                (_%g225738226517%_
                                                 _%hd225769226464%_)
                                                (_%g225739226518%_
                                                 _%hd225760226440%_)
                                                (_%g225740226519%_
                                                 _%hd225751226416%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225740226519%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225739226518%_
                                                        'call-method))
                                                     (let ((__tmp232360
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225680%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g225738226517%_
                                                        __tmp232360)))
                                                (_%__kont231673231674%_
                                                 _%g225736226515%_
                                                 _%g225737226516%_
                                                 _%g225738226517%_
                                                 _%g225739226518%_
                                                 _%g225740226519%_)
                                                (_%__kont231685231686%_))))))))
                          (_%loop225783226498%_ _%target225780226493%_ '()))))
                     (_%__match231840231841%_
                      (lambda (_%e225741226389%_
                               _%hd225742226392%_
                               _%tl225743226394%_
                               _%e225744226397%_
                               _%hd225745226400%_
                               _%tl225746226402%_
                               _%e225747226405%_
                               _%hd225748226408%_
                               _%tl225749226410%_
                               _%e225750226413%_
                               _%hd225751226416%_
                               _%tl225752226418%_
                               _%e225753226421%_
                               _%hd225754226424%_
                               _%tl225755226426%_
                               _%e225756226429%_
                               _%hd225757226432%_
                               _%tl225758226434%_
                               _%e225759226437%_
                               _%hd225760226440%_
                               _%tl225761226442%_
                               _%e225762226445%_
                               _%hd225763226448%_
                               _%tl225764226450%_
                               _%e225765226453%_
                               _%hd225766226456%_
                               _%tl225767226458%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd225766226456%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225767226458%_))
                                (let ((_%e225768226461%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl225767226458%_))))
                                  (let ((_%tl225770226466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225768226461%_)))
                                        (_%hd225769226464%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225768226461%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225770226466%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl225764226450%_))
                                            (let ((_%e225771226469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl225764226450%_))))
                                              (let ((_%tl225773226474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e225771226469%_)))
                                                    (_%hd225772226472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e225771226469%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd225772226472%_))
                                                    (let ((_%e225774226477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd225772226472%_))))
                                                      (let ((_%tl225776226482%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e225774226477%_)))
                    (_%hd225775226480%_
                     (let () (declare (not safe)) (##car _%e225774226477%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd225775226480%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd225775226480%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225776226482%_))
                            (let ((_%e225777226485%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225776226482%_))))
                              (let ((_%tl225779226490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225777226485%_)))
                                    (_%hd225778226488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225777226485%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225779226490%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl225773226474%_))
                                        (let ((_%__splice231675231676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl225773226474%_
                                                  '0))))
                                          (let ((_%tl225782226495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice231675231676%_
                                                    '1)))
                                                (_%target225780226493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice231675231676%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl225782226495%_))
                                                (_%__match231882231883%_
                                                 _%e225741226389%_
                                                 _%hd225742226392%_
                                                 _%tl225743226394%_
                                                 _%e225744226397%_
                                                 _%hd225745226400%_
                                                 _%tl225746226402%_
                                                 _%e225747226405%_
                                                 _%hd225748226408%_
                                                 _%tl225749226410%_
                                                 _%e225750226413%_
                                                 _%hd225751226416%_
                                                 _%tl225752226418%_
                                                 _%e225753226421%_
                                                 _%hd225754226424%_
                                                 _%tl225755226426%_
                                                 _%e225756226429%_
                                                 _%hd225757226432%_
                                                 _%tl225758226434%_
                                                 _%e225759226437%_
                                                 _%hd225760226440%_
                                                 _%tl225761226442%_
                                                 _%e225762226445%_
                                                 _%hd225763226448%_
                                                 _%tl225764226450%_
                                                 _%e225765226453%_
                                                 _%hd225766226456%_
                                                 _%tl225767226458%_
                                                 _%e225768226461%_
                                                 _%hd225769226464%_
                                                 _%tl225770226466%_
                                                 _%e225771226469%_
                                                 _%hd225772226472%_
                                                 _%tl225773226474%_
                                                 _%e225774226477%_
                                                 _%hd225775226480%_
                                                 _%tl225776226482%_
                                                 _%e225777226485%_
                                                 _%hd225778226488%_
                                                 _%tl225779226490%_
                                                 _%__splice231675231676%_
                                                 _%target225780226493%_
                                                 _%tl225782226495%_)
                                                (_%__kont231685231686%_))))
                                        (_%__kont231685231686%_))
                                    (_%__kont231685231686%_))))
                            (_%__kont231685231686%_))
                        (_%__kont231685231686%_))
                    (_%__kont231685231686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont231685231686%_))))
                                            (_%__match232164232165%_
                                             _%e225741226389%_
                                             _%hd225742226392%_
                                             _%tl225743226394%_
                                             _%e225744226397%_
                                             _%hd225745226400%_
                                             _%tl225746226402%_
                                             _%e225747226405%_
                                             _%hd225748226408%_
                                             _%tl225749226410%_
                                             _%e225750226413%_
                                             _%hd225751226416%_
                                             _%tl225752226418%_
                                             _%e225753226421%_
                                             _%hd225754226424%_
                                             _%tl225755226426%_
                                             _%e225756226429%_
                                             _%hd225757226432%_
                                             _%tl225758226434%_
                                             _%e225759226437%_
                                             _%hd225760226440%_
                                             _%tl225761226442%_
                                             _%e225762226445%_
                                             _%hd225763226448%_
                                             _%tl225764226450%_))
                                        (_%__match232164232165%_
                                         _%e225741226389%_
                                         _%hd225742226392%_
                                         _%tl225743226394%_
                                         _%e225744226397%_
                                         _%hd225745226400%_
                                         _%tl225746226402%_
                                         _%e225747226405%_
                                         _%hd225748226408%_
                                         _%tl225749226410%_
                                         _%e225750226413%_
                                         _%hd225751226416%_
                                         _%tl225752226418%_
                                         _%e225753226421%_
                                         _%hd225754226424%_
                                         _%tl225755226426%_
                                         _%e225756226429%_
                                         _%hd225757226432%_
                                         _%tl225758226434%_
                                         _%e225759226437%_
                                         _%hd225760226440%_
                                         _%tl225761226442%_
                                         _%e225762226445%_
                                         _%hd225763226448%_
                                         _%tl225764226450%_))))
                                (_%__match232164232165%_
                                 _%e225741226389%_
                                 _%hd225742226392%_
                                 _%tl225743226394%_
                                 _%e225744226397%_
                                 _%hd225745226400%_
                                 _%tl225746226402%_
                                 _%e225747226405%_
                                 _%hd225748226408%_
                                 _%tl225749226410%_
                                 _%e225750226413%_
                                 _%hd225751226416%_
                                 _%tl225752226418%_
                                 _%e225753226421%_
                                 _%hd225754226424%_
                                 _%tl225755226426%_
                                 _%e225756226429%_
                                 _%hd225757226432%_
                                 _%tl225758226434%_
                                 _%e225759226437%_
                                 _%hd225760226440%_
                                 _%tl225761226442%_
                                 _%e225762226445%_
                                 _%hd225763226448%_
                                 _%tl225764226450%_))
                            (_%__match231950231951%_
                             _%e225741226389%_
                             _%hd225742226392%_
                             _%tl225743226394%_
                             _%e225744226397%_
                             _%hd225745226400%_
                             _%tl225746226402%_
                             _%e225747226405%_
                             _%hd225748226408%_
                             _%tl225749226410%_
                             _%e225750226413%_
                             _%hd225751226416%_
                             _%tl225752226418%_
                             _%e225753226421%_
                             _%hd225754226424%_
                             _%tl225755226426%_
                             _%e225756226429%_
                             _%hd225757226432%_
                             _%tl225758226434%_
                             _%e225759226437%_
                             _%hd225760226440%_
                             _%tl225761226442%_
                             _%e225762226445%_
                             _%hd225763226448%_
                             _%tl225764226450%_
                             _%e225765226453%_
                             _%hd225766226456%_
                             _%tl225767226458%_))))
                     (_%__match231772231773%_
                      (lambda (_%e225697226579%_
                               _%hd225698226582%_
                               _%tl225699226584%_
                               _%e225700226587%_
                               _%hd225701226590%_
                               _%tl225702226592%_
                               _%e225703226595%_
                               _%hd225704226598%_
                               _%tl225705226600%_
                               _%e225706226603%_
                               _%hd225707226606%_
                               _%tl225708226608%_
                               _%e225709226611%_
                               _%hd225710226614%_
                               _%tl225711226616%_
                               _%e225712226619%_
                               _%hd225713226622%_
                               _%tl225714226624%_
                               _%e225715226627%_
                               _%hd225716226630%_
                               _%tl225717226632%_
                               _%e225718226635%_
                               _%hd225719226638%_
                               _%tl225720226640%_
                               _%e225721226643%_
                               _%hd225722226646%_
                               _%tl225723226648%_
                               _%e225724226651%_
                               _%hd225725226654%_
                               _%tl225726226656%_
                               _%__splice231671231672%_
                               _%target225727226659%_
                               _%tl225729226661%_)
                        (letrec ((_%loop225730226664%_
                                  (lambda (_%hd225728226667%_
                                           _%args225734226669%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd225728226667%_))
                                        (let ((_%e225731226671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd225728226667%_))))
                                          (let ((_%lp-tl225733226676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225731226671%_)))
                                                (_%lp-hd225732226674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225731226671%_))))
                                            (_%loop225730226664%_
                                             _%lp-tl225733226676%_
                                             (cons _%lp-hd225732226674%_
                                                   _%args225734226669%_))))
                                        (let ((_%args225735226679%_
                                               (reverse _%args225734226669%_)))
                                          (let ((_%g225693226681%_
                                                 _%args225735226679%_)
                                                (_%g225694226682%_
                                                 _%hd225725226654%_)
                                                (_%g225695226683%_
                                                 _%hd225716226630%_)
                                                (_%g225696226684%_
                                                 _%hd225707226606%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225696226684%_
                                                        'call-method))
                                                     (let ((__tmp232361
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225680%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g225695226683%_
                                                        __tmp232361)))
                                                (_%__kont231669231670%_
                                                 _%g225693226681%_
                                                 _%g225694226682%_
                                                 _%g225695226683%_
                                                 _%g225696226684%_)
                                                (_%__match231960231961%_
                                                 _%e225697226579%_
                                                 _%hd225698226582%_
                                                 _%tl225699226584%_
                                                 _%e225700226587%_
                                                 _%hd225701226590%_
                                                 _%tl225702226592%_
                                                 _%e225703226595%_
                                                 _%hd225704226598%_
                                                 _%tl225705226600%_
                                                 _%e225706226603%_
                                                 _%hd225707226606%_
                                                 _%tl225708226608%_
                                                 _%e225709226611%_
                                                 _%hd225710226614%_
                                                 _%tl225711226616%_
                                                 _%e225712226619%_
                                                 _%hd225713226622%_
                                                 _%tl225714226624%_
                                                 _%e225715226627%_
                                                 _%hd225716226630%_
                                                 _%tl225717226632%_
                                                 _%e225718226635%_
                                                 _%hd225719226638%_
                                                 _%tl225720226640%_
                                                 _%e225721226643%_
                                                 _%hd225722226646%_
                                                 _%tl225723226648%_
                                                 _%e225724226651%_
                                                 _%hd225725226654%_
                                                 _%tl225726226656%_))))))))
                          (_%loop225730226664%_ _%target225727226659%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx231667231668%_))
                    (let ((_%e225697226579%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx231667231668%_))))
                      (let ((_%tl225699226584%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e225697226579%_)))
                            (_%hd225698226582%_
                             (let ()
                               (declare (not safe))
                               (##car _%e225697226579%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225699226584%_))
                            (let ((_%e225700226587%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225699226584%_))))
                              (let ((_%tl225702226592%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225700226587%_)))
                                    (_%hd225701226590%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225700226587%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd225701226590%_))
                                    (let ((_%e225703226595%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd225701226590%_))))
                                      (let ((_%tl225705226600%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e225703226595%_)))
                                            (_%hd225704226598%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e225703226595%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd225704226598%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd225704226598%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl225705226600%_))
                                                    (let ((_%e225706226603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl225705226600%_))))
                                                      (let ((_%tl225708226608%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e225706226603%_)))
                    (_%hd225707226606%_
                     (let () (declare (not safe)) (##car _%e225706226603%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl225708226608%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl225702226592%_))
                        (let ((_%e225709226611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl225702226592%_))))
                          (let ((_%tl225711226616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225709226611%_)))
                                (_%hd225710226614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225709226611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd225710226614%_))
                                (let ((_%e225712226619%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd225710226614%_))))
                                  (let ((_%tl225714226624%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225712226619%_)))
                                        (_%hd225713226622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225712226619%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd225713226622%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd225713226622%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl225714226624%_))
                                                (let ((_%e225715226627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl225714226624%_))))
                                                  (let ((_%tl225717226632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e225715226627%_)))
                                                        (_%hd225716226630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e225715226627%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl225717226632%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl225711226616%_))
                                                            (let ((_%e225718226635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl225711226616%_))))
                      (let ((_%tl225720226640%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e225718226635%_)))
                            (_%hd225719226638%_
                             (let ()
                               (declare (not safe))
                               (##car _%e225718226635%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd225719226638%_))
                            (let ((_%e225721226643%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd225719226638%_))))
                              (let ((_%tl225723226648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225721226643%_)))
                                    (_%hd225722226646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225721226643%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd225722226646%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd225722226646%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl225723226648%_))
                                            (let ((_%e225724226651%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl225723226648%_))))
                                              (let ((_%tl225726226656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e225724226651%_)))
                                                    (_%hd225725226654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e225724226651%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl225726226656%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl225720226640%_))
                                                        (let ((_%__splice231671231672%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl225720226640%_
                          '0))))
                  (let ((_%tl225729226661%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice231671231672%_ '1)))
                        (_%target225727226659%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice231671231672%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl225729226661%_))
                        (_%__match231772231773%_
                         _%e225697226579%_
                         _%hd225698226582%_
                         _%tl225699226584%_
                         _%e225700226587%_
                         _%hd225701226590%_
                         _%tl225702226592%_
                         _%e225703226595%_
                         _%hd225704226598%_
                         _%tl225705226600%_
                         _%e225706226603%_
                         _%hd225707226606%_
                         _%tl225708226608%_
                         _%e225709226611%_
                         _%hd225710226614%_
                         _%tl225711226616%_
                         _%e225712226619%_
                         _%hd225713226622%_
                         _%tl225714226624%_
                         _%e225715226627%_
                         _%hd225716226630%_
                         _%tl225717226632%_
                         _%e225718226635%_
                         _%hd225719226638%_
                         _%tl225720226640%_
                         _%e225721226643%_
                         _%hd225722226646%_
                         _%tl225723226648%_
                         _%e225724226651%_
                         _%hd225725226654%_
                         _%tl225726226656%_
                         _%__splice231671231672%_
                         _%target225727226659%_
                         _%tl225729226661%_)
                        (_%__match231960231961%_
                         _%e225697226579%_
                         _%hd225698226582%_
                         _%tl225699226584%_
                         _%e225700226587%_
                         _%hd225701226590%_
                         _%tl225702226592%_
                         _%e225703226595%_
                         _%hd225704226598%_
                         _%tl225705226600%_
                         _%e225706226603%_
                         _%hd225707226606%_
                         _%tl225708226608%_
                         _%e225709226611%_
                         _%hd225710226614%_
                         _%tl225711226616%_
                         _%e225712226619%_
                         _%hd225713226622%_
                         _%tl225714226624%_
                         _%e225715226627%_
                         _%hd225716226630%_
                         _%tl225717226632%_
                         _%e225718226635%_
                         _%hd225719226638%_
                         _%tl225720226640%_
                         _%e225721226643%_
                         _%hd225722226646%_
                         _%tl225723226648%_
                         _%e225724226651%_
                         _%hd225725226654%_
                         _%tl225726226656%_))))
                (_%__match231960231961%_
                 _%e225697226579%_
                 _%hd225698226582%_
                 _%tl225699226584%_
                 _%e225700226587%_
                 _%hd225701226590%_
                 _%tl225702226592%_
                 _%e225703226595%_
                 _%hd225704226598%_
                 _%tl225705226600%_
                 _%e225706226603%_
                 _%hd225707226606%_
                 _%tl225708226608%_
                 _%e225709226611%_
                 _%hd225710226614%_
                 _%tl225711226616%_
                 _%e225712226619%_
                 _%hd225713226622%_
                 _%tl225714226624%_
                 _%e225715226627%_
                 _%hd225716226630%_
                 _%tl225717226632%_
                 _%e225718226635%_
                 _%hd225719226638%_
                 _%tl225720226640%_
                 _%e225721226643%_
                 _%hd225722226646%_
                 _%tl225723226648%_
                 _%e225724226651%_
                 _%hd225725226654%_
                 _%tl225726226656%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match232164232165%_
                                                     _%e225697226579%_
                                                     _%hd225698226582%_
                                                     _%tl225699226584%_
                                                     _%e225700226587%_
                                                     _%hd225701226590%_
                                                     _%tl225702226592%_
                                                     _%e225703226595%_
                                                     _%hd225704226598%_
                                                     _%tl225705226600%_
                                                     _%e225706226603%_
                                                     _%hd225707226606%_
                                                     _%tl225708226608%_
                                                     _%e225709226611%_
                                                     _%hd225710226614%_
                                                     _%tl225711226616%_
                                                     _%e225712226619%_
                                                     _%hd225713226622%_
                                                     _%tl225714226624%_
                                                     _%e225715226627%_
                                                     _%hd225716226630%_
                                                     _%tl225717226632%_
                                                     _%e225718226635%_
                                                     _%hd225719226638%_
                                                     _%tl225720226640%_))))
                                            (_%__match232164232165%_
                                             _%e225697226579%_
                                             _%hd225698226582%_
                                             _%tl225699226584%_
                                             _%e225700226587%_
                                             _%hd225701226590%_
                                             _%tl225702226592%_
                                             _%e225703226595%_
                                             _%hd225704226598%_
                                             _%tl225705226600%_
                                             _%e225706226603%_
                                             _%hd225707226606%_
                                             _%tl225708226608%_
                                             _%e225709226611%_
                                             _%hd225710226614%_
                                             _%tl225711226616%_
                                             _%e225712226619%_
                                             _%hd225713226622%_
                                             _%tl225714226624%_
                                             _%e225715226627%_
                                             _%hd225716226630%_
                                             _%tl225717226632%_
                                             _%e225718226635%_
                                             _%hd225719226638%_
                                             _%tl225720226640%_))
                                        (_%__match231840231841%_
                                         _%e225697226579%_
                                         _%hd225698226582%_
                                         _%tl225699226584%_
                                         _%e225700226587%_
                                         _%hd225701226590%_
                                         _%tl225702226592%_
                                         _%e225703226595%_
                                         _%hd225704226598%_
                                         _%tl225705226600%_
                                         _%e225706226603%_
                                         _%hd225707226606%_
                                         _%tl225708226608%_
                                         _%e225709226611%_
                                         _%hd225710226614%_
                                         _%tl225711226616%_
                                         _%e225712226619%_
                                         _%hd225713226622%_
                                         _%tl225714226624%_
                                         _%e225715226627%_
                                         _%hd225716226630%_
                                         _%tl225717226632%_
                                         _%e225718226635%_
                                         _%hd225719226638%_
                                         _%tl225720226640%_
                                         _%e225721226643%_
                                         _%hd225722226646%_
                                         _%tl225723226648%_))
                                    (_%__match232164232165%_
                                     _%e225697226579%_
                                     _%hd225698226582%_
                                     _%tl225699226584%_
                                     _%e225700226587%_
                                     _%hd225701226590%_
                                     _%tl225702226592%_
                                     _%e225703226595%_
                                     _%hd225704226598%_
                                     _%tl225705226600%_
                                     _%e225706226603%_
                                     _%hd225707226606%_
                                     _%tl225708226608%_
                                     _%e225709226611%_
                                     _%hd225710226614%_
                                     _%tl225711226616%_
                                     _%e225712226619%_
                                     _%hd225713226622%_
                                     _%tl225714226624%_
                                     _%e225715226627%_
                                     _%hd225716226630%_
                                     _%tl225717226632%_
                                     _%e225718226635%_
                                     _%hd225719226638%_
                                     _%tl225720226640%_))))
                            (_%__match232164232165%_
                             _%e225697226579%_
                             _%hd225698226582%_
                             _%tl225699226584%_
                             _%e225700226587%_
                             _%hd225701226590%_
                             _%tl225702226592%_
                             _%e225703226595%_
                             _%hd225704226598%_
                             _%tl225705226600%_
                             _%e225706226603%_
                             _%hd225707226606%_
                             _%tl225708226608%_
                             _%e225709226611%_
                             _%hd225710226614%_
                             _%tl225711226616%_
                             _%e225712226619%_
                             _%hd225713226622%_
                             _%tl225714226624%_
                             _%e225715226627%_
                             _%hd225716226630%_
                             _%tl225717226632%_
                             _%e225718226635%_
                             _%hd225719226638%_
                             _%tl225720226640%_))))
                    (_%__match232102232103%_
                     _%e225697226579%_
                     _%hd225698226582%_
                     _%tl225699226584%_
                     _%e225700226587%_
                     _%hd225701226590%_
                     _%tl225702226592%_
                     _%e225703226595%_
                     _%hd225704226598%_
                     _%tl225705226600%_
                     _%e225706226603%_
                     _%hd225707226606%_
                     _%tl225708226608%_
                     _%e225709226611%_
                     _%hd225710226614%_
                     _%tl225711226616%_
                     _%e225712226619%_
                     _%hd225713226622%_
                     _%tl225714226624%_
                     _%e225715226627%_
                     _%hd225716226630%_
                     _%tl225717226632%_))
                (_%__kont231685231686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont231685231686%_))
                                            (_%__kont231685231686%_))
                                        (_%__kont231685231686%_))))
                                (_%__kont231685231686%_))))
                        (_%__kont231685231686%_))
                    (_%__kont231685231686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont231685231686%_))
                                                (_%__kont231685231686%_))
                                            (_%__kont231685231686%_))))
                                    (_%__kont231685231686%_))))
                            (_%__kont231685231686%_))))
                    (_%__kont231685231686%_))))))))))
