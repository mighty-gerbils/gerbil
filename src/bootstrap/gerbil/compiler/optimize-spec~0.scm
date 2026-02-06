(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770405377)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp232169 (list gxc#::identity::t))
            (__tmp232168 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp232169
         '()
         __tmp232168
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args230966%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args230966%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp232170
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
        (__make-atomic-promise __tmp232170)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx230958%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self230961%_
                (let ((__obj232161
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj232161))
               (__tmp232171
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self230961%_ _%stx230958%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp232171
           gxc#current-compile-method
           _%self230961%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp232173 (list gxc#::false::t))
            (__tmp232172 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp232173
         '()
         __tmp232172
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args230955%_
        (apply make-instance gxc#::extract-receiver::t _%$args230955%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp232174
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
        (__make-atomic-promise __tmp232174)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx230947%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self230950%_
                (let ((__obj232163
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj232163))
               (__tmp232175
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self230950%_ _%stx230947%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp232175
           gxc#current-compile-method
           _%self230950%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp232177 (list gxc#::void::t))
            (__tmp232176 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp232177
         '(receiver methods slots)
         __tmp232176
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args230944%_
        (apply make-instance gxc#::collect-object-refs::t _%$args230944%_)))
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
      (let ((__tmp232178
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
        (__make-atomic-promise __tmp232178)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords230913%_
               _%receiver230908230914%_
               _%methods230909230915%_
               _%slots230910230916%_
               _%stx230917%_)
        (let* ((_%receiver230920%_
                (if (eq? _%receiver230908230914%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver230908230914%_))
               (_%methods230922%_
                (if (eq? _%methods230909230915%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods230909230915%_))
               (_%slots230924%_
                (if (eq? _%slots230910230916%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots230910230916%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self230926%_
                  (let ((__obj232165
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
                       __obj232165
                       _%receiver230920%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232165
                       _%methods230922%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232165
                       _%slots230924%_
                       '3
                       '#f
                       '#f))
                    __obj232165))
                 (__tmp232179
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self230926%_ _%stx230917%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp232179
             gxc#current-compile-method
             _%self230926%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords230933%_ . _%args230934%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords230933%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230933%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230933%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230933%_
                  'slots:
                  absent-value))
               _%args230934%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args230911230940%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args230911230940%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp232181 (list gxc#::basic-xform-expression::t))
            (__tmp232180 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp232181
         '(receiver klass methods slots)
         __tmp232180
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args230904%_
        (apply make-instance gxc#::subst-object-refs::t _%$args230904%_)))
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
      (let ((__tmp232182
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
        (__make-atomic-promise __tmp232182)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords230870%_
               _%receiver230864230871%_
               _%klass230865230872%_
               _%methods230866230873%_
               _%slots230867230874%_
               _%stx230875%_)
        (let* ((_%receiver230878%_
                (if (eq? _%receiver230864230871%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver230864230871%_))
               (_%klass230880%_
                (if (eq? _%klass230865230872%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass230865230872%_))
               (_%methods230882%_
                (if (eq? _%methods230866230873%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods230866230873%_))
               (_%slots230884%_
                (if (eq? _%slots230867230874%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots230867230874%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self230886%_
                  (let ((__obj232167
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
                       __obj232167
                       _%receiver230878%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232167
                       _%klass230880%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232167
                       _%methods230882%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj232167
                       _%slots230884%_
                       '4
                       '#f
                       '#f))
                    __obj232167))
                 (__tmp232183
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self230886%_ _%stx230875%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp232183
             gxc#current-compile-method
             _%self230886%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords230893%_ . _%args230894%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords230893%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230893%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230893%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230893%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords230893%_
                  'slots:
                  absent-value))
               _%args230894%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args230868230900%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args230868230900%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self227995%_ _%stx227996%_)
        (letrec ((_%generate-method-bind227998%_
                  (lambda (_%$klass230856%_
                           _%$method-table230857%_
                           _%id230858%_
                           _%$id230859%_)
                    (let ((_%$tmp230861%_
                           (let ((__tmp232184
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp232184))))
                      (cons (cons _%$id230859%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp230861%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table230857%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id230858%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp230861%_ '()))
                    (cons (cons '%#ref (cons _%$tmp230861%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id230858%_
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
                 (_%generate-slot-bind227999%_
                  (lambda (_%$klass230850%_ _%id230851%_ _%$id230852%_)
                    (let ((_%$tmp230854%_
                           (let ((__tmp232185
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp232185))))
                      (cons (cons _%$id230852%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp230854%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass230850%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id230851%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp230854%_ '()))
                        (cons (cons '%#ref (cons _%$tmp230854%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id230851%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl228000%_
                  (lambda (_%$klass230844%_
                           _%$method-table230845%_
                           _%methods-bind230846%_
                           _%slots-bind230847%_
                           _%specializer-impl230848%_)
                    (let ((__tmp232186
                           (cons '%#lambda
                                 (cons (cons _%$klass230844%_
                                             (cons _%$method-table230845%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind230847%_
                                                            _%methods-bind230846%_))
                                                         (cons _%specializer-impl230848%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp232186 _%stx227996%_))))
                 (_%generate-specializer-def228001%_
                  (lambda (_%id230840%_
                           _%specializer-id230841%_
                           _%specializer-impl230842%_)
                    (let ((__tmp232187
                           (cons '%#begin
                                 (cons _%stx227996%_
                                       (cons (let ((__tmp232188
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id230841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl230842%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp232188
                                                _%stx227996%_))
                                             (cons (let ((__tmp232189
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id230840%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id230841%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp232189
                                                      _%stx227996%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp232187 _%stx227996%_)))))
          (let* ((_%__stx231055231056%_ _%stx227996%_)
                 (_%g228004228024%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx231055231056%_)))))
            (let ((_%__kont231057231058%_
                   (lambda (_%g228006228068%_ _%g228007228069%_)
                     (let ((_%method-calls228088%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs228089%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty228090%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?228092%_
                                 (lambda ()
                                   (if (let ((__tmp232190
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls228088%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp232190))
                                       (let ((__tmp232191
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs228089%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp232191))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g228006228068%_))
                             (let* ((_%__stx230969230970%_ _%g228006228068%_)
                                    (_%g228476228494%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx230969230970%_)))))
                               (let ((_%__kont230971230972%_
                                      (lambda (_%g228478228530%_
                                               _%g228479228531%_
                                               _%g228480228532%_)
                                        (let ((_%receiver228552%_
                                               (let ((_%$e228549%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g228478228530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e228549%_
                                                     _%$e228549%_
                                                     _%g228480228532%_))))
                                          (for-each
                                           (lambda (_%g228553228555%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver228552%_
                                              _%method-calls228088%_
                                              _%slot-refs228089%_
                                              _%g228553228555%_))
                                           _%g228478228530%_)
                                          (if (_%no-specializer?228092%_)
                                              _%stx227996%_
                                              (let* ((_%specializer-id228564%_
                                                      (let* ((_%id228558%_
                                                              (let ((__tmp232192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228007228069%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp232192 '"::specialize")))
                     (_%specializer-id228561%_
                      (let ((__tmp232193
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx227996%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id228558%_ __tmp232193))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id228561%_))
                _%specializer-id228561%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass228566%_
                                                      (let ((__tmp232194
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp232194)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table228568%_
                                                      (let ((__tmp232195
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp232195)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods228570%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls228088%_)))
                                                     (_%$methods228574%_
                                                      (let ((__tmp232196
                                                             (lambda (_%id228572%_)
                                                               (let ((__tmp232197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id228572%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232197)))))
                (declare (not safe))
                (##map __tmp232196 _%methods228570%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_228583%_
                                                      (let ((__tmp232198
                                                             (lambda (_%g228575228578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228576228580%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls228088%_
                          _%g228575228578%_
                          _%g228576228580%_)))))
                (declare (not safe))
                (##for-each __tmp232198 _%methods228570%_ _%$methods228574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind228593%_
                                                      (let ((__tmp232199
                                                             (lambda (_%g228585228588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228586228590%_)
                       (_%generate-method-bind227998%_
                        _%$klass228566%_
                        _%$method-table228568%_
                        _%g228585228588%_
                        _%g228586228590%_))))
                (declare (not safe))
                (##map __tmp232199 _%methods228570%_ _%$methods228574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots228595%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs228089%_)))
                                                     (_%$slots228599%_
                                                      (let ((__tmp232200
                                                             (lambda (_%id228597%_)
                                                               (let ((__tmp232201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id228597%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232201)))))
                (declare (not safe))
                (##map __tmp232200 _%slots228595%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_228608%_
                                                      (let ((__tmp232202
                                                             (lambda (_%g228600228603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228601228605%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs228089%_
                          _%g228600228603%_
                          _%g228601228605%_)))))
                (declare (not safe))
                (##for-each __tmp232202 _%slots228595%_ _%$slots228599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind228617%_
                                                      (let ((__tmp232203
                                                             (lambda (_%g228609228612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g228610228614%_)
                       (_%generate-slot-bind227999%_
                        _%$klass228566%_
                        _%g228609228612%_
                        _%g228610228614%_))))
                (declare (not safe))
                (##map __tmp232203 _%slots228595%_ _%$slots228599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body228623%_
                                                      (map (lambda (_%g228618228620%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver228552%_
                                                              _%$klass228566%_
                                                              _%method-calls228088%_
                                                              _%slot-refs228089%_
                                                              _%g228618228620%_))
                                                           _%g228478228530%_))
                                                     (_%specializer-impl228625%_
                                                      (let ((__tmp232204
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g228480228532%_ _%g228479228531%_)
                                 _%specializer-body228623%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp232204 _%stx227996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl228627%_
                                                      (_%generate-specializer-impl228000%_
                                                       _%$klass228566%_
                                                       _%$method-table228568%_
                                                       _%methods-bind228593%_
                                                       _%slots-bind228617%_
                                                       _%specializer-impl228625%_)))
                                                (let ((__tmp232206
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228007228069%_)))
                                                      (__tmp232205
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id228564%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp232206
                                                   '" => "
                                                   __tmp232205))
                                                (_%generate-specializer-def228001%_
                                                 _%g228007228069%_
                                                 _%specializer-id228564%_
                                                 _%specializer-impl228627%_))))))
                                     (_%__kont230973230974%_
                                      (lambda () _%stx227996%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx230969230970%_))
                                     (let ((_%e228481228506%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx230969230970%_))))
                                       (let ((_%tl228483228511%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228481228506%_)))
                                             (_%hd228482228509%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228481228506%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl228483228511%_))
                                             (let ((_%e228484228514%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl228483228511%_))))
                                               (let ((_%tl228486228519%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e228484228514%_)))
                                                     (_%hd228485228517%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e228484228514%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd228485228517%_))
                                                     (let ((_%e228487228522%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd228485228517%_))))
                                                       (let ((_%tl228489228527%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e228487228522%_)))
                     (_%hd228488228525%_
                      (let () (declare (not safe)) (##car _%e228487228522%_))))
                 (_%__kont230971230972%_
                  _%tl228486228519%_
                  _%tl228489228527%_
                  _%hd228488228525%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont230973230974%_))))
                                             (_%__kont230973230974%_))))
                                     (_%__kont230973230974%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g228006228068%_))
                                 (let* ((_%g228634228653%_
                                         (lambda (_%g228635228650%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g228635228650%_))))
                                        (_%g228633228949%_
                                         (lambda (_%g228635228656%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g228635228656%_))
                                               (let ((_%e228637228658%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g228635228656%_))))
                                                 (let ((_%hd228638228661%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e228637228658%_)))
                                                       (_%tl228639228663%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e228637228658%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl228639228663%_))
                                                       (let ((_g232207_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl228639228663%_ '0))))
                 (begin
                   (let ((_g232208_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g232207_)
                                (##values-length _g232207_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g232208_ 2)))
                         (error "Context expects 2 values" _g232208_)))
                   (let ((_%target228640228666%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g232207_ 0)))
                         (_%tl228642228668%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g232207_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl228642228668%_))
                         (letrec ((_%loop228643228671%_
                                   (lambda (_%hd228641228674%_
                                            _%clause228647228676%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd228641228674%_))
                                         (let ((_%e228644228678%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd228641228674%_))))
                                           (let ((_%lp-hd228645228681%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e228644228678%_)))
                                                 (_%lp-tl228646228683%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e228644228678%_))))
                                             (_%loop228643228671%_
                                              _%lp-tl228646228683%_
                                              (cons _%lp-hd228645228681%_
                                                    _%clause228647228676%_))))
                                         (let ((_%clause228648228686%_
                                                (reverse _%clause228647228676%_)))
                                           ((lambda (_%g228636228688%_)
                                              (for-each
                                               (lambda (_%clause228702%_)
                                                 (let* ((_%__stx230995230996%_
                                                         _%clause228702%_)
                                                        (_%g228705228720%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx230995230996%_)))))
                                                   (let ((_%__kont230997230998%_
                                                          (lambda (_%g228707228748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g228708228749%_
                           _%g228709228750%_)
                    (let ((_%receiver228769%_
                           (let ((_%$e228766%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g228707228748%_))))
                             (if _%$e228766%_
                                 _%$e228766%_
                                 _%g228709228750%_))))
                      (for-each
                       (lambda (_%g228770228772%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver228769%_
                          _%method-calls228088%_
                          _%slot-refs228089%_
                          _%g228770228772%_))
                       _%g228707228748%_))))
                 (_%__kont230999231000%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx230995230996%_))
                                                         (let ((_%e228710228732%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx230995230996%_))))
                   (let ((_%tl228712228737%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e228710228732%_)))
                         (_%hd228711228735%_
                          (let ()
                            (declare (not safe))
                            (##car _%e228710228732%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd228711228735%_))
                         (let ((_%e228713228740%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd228711228735%_))))
                           (let ((_%tl228715228745%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e228713228740%_)))
                                 (_%hd228714228743%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e228713228740%_))))
                             (_%__kont230997230998%_
                              _%tl228712228737%_
                              _%tl228715228745%_
                              _%hd228714228743%_)))
                         (_%__kont230999231000%_))))
                 (_%__kont230999231000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp232209
                                                      (lambda (_%g228777228780%_
                                                               _%g228778228782%_)
                                                        (cons _%g228777228780%_
                                                              _%g228778228782%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp232209
                                                  '()
                                                  _%g228636228688%_)))
                                              (if (_%no-specializer?228092%_)
                                                  _%stx227996%_
                                                  (let* ((_%specializer-id228791%_
                                                          (let* ((_%id228785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp232210
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g228007228069%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp232210 '"::specialize")))
                         (_%specializer-id228788%_
                          (let ((__tmp232211
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx227996%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id228785%_
                             __tmp232211))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id228788%_))
                    _%specializer-id228788%_))
                 (_%$klass228793%_
                  (let ((__tmp232212
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232212)))
                 (_%$method-table228795%_
                  (let ((__tmp232213
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232213)))
                 (_%methods228797%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls228088%_)))
                 (_%$methods228801%_
                  (let ((__tmp232214
                         (lambda (_%id228799%_)
                           (let ((__tmp232215 (gensym _%id228799%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232215)))))
                    (declare (not safe))
                    (##map __tmp232214 _%methods228797%_)))
                 (_%_228810%_
                  (let ((__tmp232216
                         (lambda (_%g228802228805%_ _%g228803228807%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls228088%_
                              _%g228802228805%_
                              _%g228803228807%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp232216
                     _%methods228797%_
                     _%$methods228801%_)))
                 (_%methods-bind228820%_
                  (let ((__tmp232217
                         (lambda (_%g228812228815%_ _%g228813228817%_)
                           (_%generate-method-bind227998%_
                            _%$klass228793%_
                            _%$method-table228795%_
                            _%g228812228815%_
                            _%g228813228817%_))))
                    (declare (not safe))
                    (##map __tmp232217 _%methods228797%_ _%$methods228801%_)))
                 (_%slots228822%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs228089%_)))
                 (_%$slots228826%_
                  (let ((__tmp232218
                         (lambda (_%id228824%_)
                           (let ((__tmp232219 (gensym _%id228824%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232219)))))
                    (declare (not safe))
                    (##map __tmp232218 _%slots228822%_)))
                 (_%_228835%_
                  (let ((__tmp232220
                         (lambda (_%g228827228830%_ _%g228828228832%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs228089%_
                              _%g228827228830%_
                              _%g228828228832%_)))))
                    (declare (not safe))
                    (##for-each __tmp232220 _%slots228822%_ _%$slots228826%_)))
                 (_%slots-bind228844%_
                  (let ((__tmp232221
                         (lambda (_%g228836228839%_ _%g228837228841%_)
                           (_%generate-slot-bind227999%_
                            _%$klass228793%_
                            _%g228836228839%_
                            _%g228837228841%_))))
                    (declare (not safe))
                    (##map __tmp232221 _%slots228822%_ _%$slots228826%_)))
                 (_%specializer-clauses228942%_
                  (map (lambda (_%clause228846%_)
                         (let* ((_%__stx231015231016%_ _%clause228846%_)
                                (_%g228849228864%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx231015231016%_)))))
                           (let ((_%__kont231017231018%_
                                  (lambda (_%g228851228892%_
                                           _%g228852228893%_
                                           _%g228853228894%_)
                                    (let* ((_%receiver228923%_
                                            (let ((_%$e228920%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g228851228892%_))))
                                              (if _%$e228920%_
                                                  _%$e228920%_
                                                  _%g228853228894%_)))
                                           (_%body228929%_
                                            (map (lambda (_%g228924228926%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver228923%_
                                                    _%$klass228793%_
                                                    _%method-calls228088%_
                                                    _%slot-refs228089%_
                                                    _%g228924228926%_))
                                                 _%g228851228892%_)))
                                      (cons (cons _%g228853228894%_
                                                  _%g228852228893%_)
                                            _%body228929%_))))
                                 (_%__kont231019231020%_
                                  (lambda () _%clause228846%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx231015231016%_))
                                 (let ((_%e228854228876%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx231015231016%_))))
                                   (let ((_%tl228856228881%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e228854228876%_)))
                                         (_%hd228855228879%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e228854228876%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd228855228879%_))
                                         (let ((_%e228857228884%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd228855228879%_))))
                                           (let ((_%tl228859228889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e228857228884%_)))
                                                 (_%hd228858228887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e228857228884%_))))
                                             (_%__kont231017231018%_
                                              _%tl228856228881%_
                                              _%tl228859228889%_
                                              _%hd228858228887%_)))
                                         (_%__kont231019231020%_))))
                                 (_%__kont231019231020%_)))))
                       (let ((__tmp232222
                              (lambda (_%g228934228937%_ _%g228935228939%_)
                                (cons _%g228934228937%_ _%g228935228939%_))))
                         (declare (not safe))
                         (foldr__0 __tmp232222 '() _%g228636228688%_))))
                 (_%specializer-impl228944%_
                  (let ((__tmp232223
                         (cons '%#case-lambda _%specializer-clauses228942%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp232223 _%stx227996%_)))
                 (_%specializer-impl228946%_
                  (_%generate-specializer-impl228000%_
                   _%$klass228793%_
                   _%$method-table228795%_
                   _%methods-bind228820%_
                   _%slots-bind228844%_
                   _%specializer-impl228944%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp232225
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g228007228069%_)))
                                                          (__tmp232224
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id228791%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp232225
                                                       '" => "
                                                       __tmp232224))
                                                    (_%generate-specializer-def228001%_
                                                     _%g228007228069%_
                                                     _%specializer-id228791%_
                                                     _%specializer-impl228946%_))))
                                            _%clause228648228686%_))))))
                           (_%loop228643228671%_ _%target228640228666%_ '()))
                         (_%g228634228653%_ _%g228635228656%_)))))
               (_%g228634228653%_ _%g228635228656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g228634228653%_
                                                _%g228635228656%_)))))
                                   (_%g228633228949%_ _%g228006228068%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g228006228068%_))
                                     (let* ((_%g228953228983%_
                                             (lambda (_%g228954228980%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g228954228980%_))))
                                            (_%g228952229610%_
                                             (lambda (_%g228954228986%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g228954228986%_))
                                                   (let ((_%e228958228988%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g228954228986%_))))
                                                     (let ((_%hd228959228991%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e228958228988%_)))
                                                           (_%tl228960228993%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e228958228988%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl228960228993%_))
                                                           (let ((_%e228961228996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl228960228993%_))))
                     (let ((_%hd228962228999%_
                            (let ()
                              (declare (not safe))
                              (##car _%e228961228996%_)))
                           (_%tl228963229001%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e228961228996%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd228962228999%_))
                           (let ((_%e228964229004%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd228962228999%_))))
                             (let ((_%hd228965229007%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e228964229004%_)))
                                   (_%tl228966229009%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e228964229004%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd228965229007%_))
                                   (let ((_%e228967229012%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd228965229007%_))))
                                     (let ((_%hd228968229015%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e228967229012%_)))
                                           (_%tl228969229017%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e228967229012%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd228968229015%_))
                                           (let ((_%e228970229020%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd228968229015%_))))
                                             (let ((_%hd228971229023%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e228970229020%_)))
                                                   (_%tl228972229025%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e228970229020%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl228972229025%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl228969229017%_))
                                                       (let ((_%e228973229028%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl228969229017%_))))
                 (let ((_%hd228974229031%_
                        (let ()
                          (declare (not safe))
                          (##car _%e228973229028%_)))
                       (_%tl228975229033%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e228973229028%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl228975229033%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl228966229009%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl228963229001%_))
                               (let ((_%e228976229036%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl228963229001%_))))
                                 (let ((_%hd228977229039%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e228976229036%_)))
                                       (_%tl228978229041%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e228976229036%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl228978229041%_))
                                       ((lambda (_%g228955229044%_
                                                 _%g228956229045%_
                                                 _%g228957229046%_)
                                          (let* ((_%g229070229088%_
                                                  (lambda (_%g229071229085%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g229071229085%_))))
                                                 (_%g229069229144%_
                                                  (lambda (_%g229071229091%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g229071229091%_))
                                                        (let ((_%e229075229093%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g229071229091%_))))
                  (let ((_%hd229076229096%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229075229093%_)))
                        (_%tl229077229098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229075229093%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229077229098%_))
                        (let ((_%e229078229101%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229077229098%_))))
                          (let ((_%hd229079229104%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229078229101%_)))
                                (_%tl229080229106%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229078229101%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229079229104%_))
                                (let ((_%e229081229109%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229079229104%_))))
                                  (let ((_%hd229082229112%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229081229109%_)))
                                        (_%tl229083229114%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229081229109%_))))
                                    ((lambda (_%g229072229117%_
                                              _%g229073229118%_
                                              _%g229074229119%_)
                                       (let ((_%receiver229138%_
                                              (let ((_%$e229135%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g229072229117%_))))
                                                (if _%$e229135%_
                                                    _%$e229135%_
                                                    _%g229074229119%_))))
                                         (for-each
                                          (lambda (_%g229139229141%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver229138%_
                                             _%method-calls228088%_
                                             _%slot-refs228089%_
                                             _%g229139229141%_))
                                          _%g229072229117%_)))
                                     _%tl229080229106%_
                                     _%tl229083229114%_
                                     _%hd229082229112%_)))
                                (_%g229070229088%_ _%g229071229091%_))))
                        (_%g229070229088%_ _%g229071229091%_))))
                (_%g229070229088%_ _%g229071229091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g229069229144%_
                                             _%g228956229045%_))
                                          (let* ((_%g229147229166%_
                                                  (lambda (_%g229148229163%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g229148229163%_))))
                                                 (_%g229146229288%_
                                                  (lambda (_%g229148229169%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g229148229169%_))
                                                        (let ((_%e229150229171%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g229148229169%_))))
                  (let ((_%hd229151229174%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229150229171%_)))
                        (_%tl229152229176%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229150229171%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl229152229176%_))
                        (let ((_g232226_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl229152229176%_
                                  '0))))
                          (begin
                            (let ((_g232227_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232226_)
                                         (##values-length _g232226_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232227_ 2)))
                                  (error "Context expects 2 values"
                                         _g232227_)))
                            (let ((_%target229153229179%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232226_ 0)))
                                  (_%tl229155229181%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232226_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229155229181%_))
                                  (letrec ((_%loop229156229184%_
                                            (lambda (_%hd229154229187%_
                                                     _%clause229160229189%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd229154229187%_))
                                                  (let ((_%e229157229191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd229154229187%_))))
                                                    (let ((_%lp-hd229158229194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229157229191%_)))
                                                          (_%lp-tl229159229196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229157229191%_))))
                                                      (_%loop229156229184%_
                                                       _%lp-tl229159229196%_
                                                       (cons _%lp-hd229158229194%_
                                                             _%clause229160229189%_))))
                                                  (let ((_%clause229161229199%_
                                                         (reverse _%clause229160229189%_)))
                                                    ((lambda (_%g229149229201%_)
                                                       (for-each
                                                        (lambda (_%clause229214%_)
                                                          (let* ((_%g229216229231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g229217229228%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g229217229228%_))))
                         (_%g229215229278%_
                          (lambda (_%g229217229234%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g229217229234%_))
                                (let ((_%e229221229236%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g229217229234%_))))
                                  (let ((_%hd229222229239%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229221229236%_)))
                                        (_%tl229223229241%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229221229236%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229222229239%_))
                                        (let ((_%e229224229244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229222229239%_))))
                                          (let ((_%hd229225229247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229224229244%_)))
                                                (_%tl229226229249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229224229244%_))))
                                            ((lambda (_%g229218229252%_
                                                      _%g229219229253%_
                                                      _%g229220229254%_)
                                               (let ((_%receiver229272%_
                                                      (let ((_%$e229269%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g229218229252%_))))
                (if _%$e229269%_ _%$e229269%_ _%g229220229254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g229273229275%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver229272%_
                                                     _%method-calls228088%_
                                                     _%slot-refs228089%_
                                                     _%g229273229275%_))
                                                  _%g229218229252%_)))
                                             _%tl229223229241%_
                                             _%tl229226229249%_
                                             _%hd229225229247%_)))
                                        (_%g229216229231%_
                                         _%g229217229234%_))))
                                (_%g229216229231%_ _%g229217229234%_)))))
                    (_%g229215229278%_ _%clause229214%_)))
                (let ((__tmp232228
                       (lambda (_%g229280229283%_ _%g229281229285%_)
                         (cons _%g229280229283%_ _%g229281229285%_))))
                  (declare (not safe))
                  (foldr__0 __tmp232228 '() _%g229149229201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause229161229199%_))))))
                                    (_%loop229156229184%_
                                     _%target229153229179%_
                                     '()))
                                  (_%g229147229166%_ _%g229148229169%_)))))
                        (_%g229147229166%_ _%g229148229169%_))))
                (_%g229147229166%_ _%g229148229169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g229146229288%_
                                             _%g228955229044%_))
                                          (if (_%no-specializer?228092%_)
                                              _%stx227996%_
                                              (let* ((_%specializer-id229297%_
                                                      (let* ((_%id229291%_
                                                              (let ((__tmp232229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228007228069%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp232229 '"::specialize")))
                     (_%specializer-id229294%_
                      (let ((__tmp232230
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx227996%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id229291%_ __tmp232230))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id229294%_))
                _%specializer-id229294%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass229299%_
                                                      (let ((__tmp232231
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp232231)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table229301%_
                                                      (let ((__tmp232232
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp232232)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods229303%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls228088%_)))
                                                     (_%$methods229307%_
                                                      (let ((__tmp232233
                                                             (lambda (_%id229305%_)
                                                               (let ((__tmp232234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229305%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232234)))))
                (declare (not safe))
                (##map __tmp232233 _%methods229303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229316%_
                                                      (let ((__tmp232235
                                                             (lambda (_%g229308229311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229309229313%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls228088%_
                          _%g229308229311%_
                          _%g229309229313%_)))))
                (declare (not safe))
                (##for-each __tmp232235 _%methods229303%_ _%$methods229307%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind229326%_
                                                      (let ((__tmp232236
                                                             (lambda (_%g229318229321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229319229323%_)
                       (_%generate-method-bind227998%_
                        _%$klass229299%_
                        _%$method-table229301%_
                        _%g229318229321%_
                        _%g229319229323%_))))
                (declare (not safe))
                (##map __tmp232236 _%methods229303%_ _%$methods229307%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots229328%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs228089%_)))
                                                     (_%$slots229332%_
                                                      (let ((__tmp232237
                                                             (lambda (_%id229330%_)
                                                               (let ((__tmp232238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229330%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp232238)))))
                (declare (not safe))
                (##map __tmp232237 _%slots229328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229341%_
                                                      (let ((__tmp232239
                                                             (lambda (_%g229333229336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229334229338%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs228089%_
                          _%g229333229336%_
                          _%g229334229338%_)))))
                (declare (not safe))
                (##for-each __tmp232239 _%slots229328%_ _%$slots229332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind229350%_
                                                      (let ((__tmp232240
                                                             (lambda (_%g229342229345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229343229347%_)
                       (_%generate-slot-bind227999%_
                        _%$klass229299%_
                        _%g229342229345%_
                        _%g229343229347%_))))
                (declare (not safe))
                (##map __tmp232240 _%slots229328%_ _%$slots229332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr229442%_
                                                      (let* ((_%g229352229370%_
                                                              (lambda (_%g229353229367%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229353229367%_))))
                     (_%g229351229439%_
                      (lambda (_%g229353229373%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229353229373%_))
                            (let ((_%e229357229375%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229353229373%_))))
                              (let ((_%hd229358229378%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229357229375%_)))
                                    (_%tl229359229380%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229357229375%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229359229380%_))
                                    (let ((_%e229360229383%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229359229380%_))))
                                      (let ((_%hd229361229386%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229360229383%_)))
                                            (_%tl229362229388%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229360229383%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229361229386%_))
                                            (let ((_%e229363229391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd229361229386%_))))
                                              (let ((_%hd229364229394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229363229391%_)))
                                                    (_%tl229365229396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229363229391%_))))
                                                ((lambda (_%g229354229399%_
                                                          _%g229355229400%_
                                                          _%g229356229401%_)
                                                   (let* ((_%receiver229430%_
                                                           (let ((_%$e229427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g229354229399%_))))
                     (if _%$e229427%_ _%$e229427%_ _%g229356229401%_)))
                  (_%body229436%_
                   (map (lambda (_%g229431229433%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver229430%_
                           _%$klass229299%_
                           _%method-calls228088%_
                           _%slot-refs228089%_
                           _%g229431229433%_))
                        _%g229354229399%_))
                  (__tmp232241
                   (cons '%#lambda
                         (cons (cons _%g229356229401%_ _%g229355229400%_)
                               _%body229436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp232241
                                                      _%g228956229045%_)))
                                                 _%tl229362229388%_
                                                 _%tl229365229396%_
                                                 _%hd229364229394%_)))
                                            (_%g229352229370%_
                                             _%g229353229373%_))))
                                    (_%g229352229370%_ _%g229353229373%_))))
                            (_%g229352229370%_ _%g229353229373%_)))))
                (_%g229351229439%_ _%g228956229045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr229603%_
                                                      (let* ((_%g229444229463%_
                                                              (lambda (_%g229445229460%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229445229460%_))))
                     (_%g229443229600%_
                      (lambda (_%g229445229466%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229445229466%_))
                            (let ((_%e229447229468%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229445229466%_))))
                              (let ((_%hd229448229471%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229447229468%_)))
                                    (_%tl229449229473%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229447229468%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl229449229473%_))
                                    (let ((_g232242_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl229449229473%_
                                              '0))))
                                      (begin
                                        (let ((_g232243_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g232242_)
                                                     (##values-length
                                                      _g232242_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g232243_ 2)))
                                              (error "Context expects 2 values"
                                                     _g232243_)))
                                        (let ((_%target229450229476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g232242_ 0)))
                                              (_%tl229452229478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g232242_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229452229478%_))
                                              (letrec ((_%loop229453229481%_
                                                        (lambda (_%hd229451229484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause229457229486%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd229451229484%_))
                      (let ((_%e229454229488%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd229451229484%_))))
                        (let ((_%lp-hd229455229491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229454229488%_)))
                              (_%lp-tl229456229493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229454229488%_))))
                          (_%loop229453229481%_
                           _%lp-tl229456229493%_
                           (cons _%lp-hd229455229491%_
                                 _%clause229457229486%_))))
                      (let ((_%clause229458229496%_
                             (reverse _%clause229457229486%_)))
                        ((lambda (_%g229446229498%_)
                           (let* ((_%clauses229598%_
                                   (map (lambda (_%clause229512%_)
                                          (let* ((_%__stx231035231036%_
                                                  _%clause229512%_)
                                                 (_%g229515229530%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx231035231036%_)))))
                                            (let ((_%__kont231037231038%_
                                                   (lambda (_%g229517229558%_
                                                            _%g229518229559%_
                                                            _%g229519229560%_)
                                                     (let* ((_%receiver229579%_
                                                             (let ((_%$e229576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g229517229558%_))))
                       (if _%$e229576%_ _%$e229576%_ _%g229519229560%_)))
                    (_%body229585%_
                     (map (lambda (_%g229580229582%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver229579%_
                             _%$klass229299%_
                             _%method-calls228088%_
                             _%slot-refs228089%_
                             _%g229580229582%_))
                          _%g229517229558%_)))
               (cons (cons _%g229519229560%_ _%g229518229559%_)
                     _%body229585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231039231040%_
                                                   (lambda ()
                                                     _%clause229512%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx231035231036%_))
                                                  (let ((_%e229520229542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx231035231036%_))))
                                                    (let ((_%tl229522229547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229520229542%_)))
                                                          (_%hd229521229545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229520229542%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229521229545%_))
                                                          (let ((_%e229523229550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd229521229545%_))))
                    (let ((_%tl229525229555%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229523229550%_)))
                          (_%hd229524229553%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229523229550%_))))
                      (_%__kont231037231038%_
                       _%tl229522229547%_
                       _%tl229525229555%_
                       _%hd229524229553%_)))
                  (_%__kont231039231040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231039231040%_)))))
                                        (let ((__tmp232244
                                               (lambda (_%g229590229593%_
                                                        _%g229591229595%_)
                                                 (cons _%g229590229593%_
                                                       _%g229591229595%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp232244
                                           '()
                                           _%g229446229498%_))))
                                  (__tmp232245
                                   (cons '%#case-lambda _%clauses229598%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232245
                              _%g228955229044%_)))
                         _%clause229458229496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop229453229481%_
                                                 _%target229450229476%_
                                                 '()))
                                              (_%g229444229463%_
                                               _%g229445229466%_)))))
                                    (_%g229444229463%_ _%g229445229466%_))))
                            (_%g229444229463%_ _%g229445229466%_)))))
                (_%g229443229600%_ _%g228955229044%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229605%_
                                                      (let ((__tmp232246
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g228957229046%_ '())
                                             (cons _%specializer-lambda-expr229442%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr229603%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp232246 _%stx227996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229607%_
                                                      (_%generate-specializer-impl228000%_
                                                       _%$klass229299%_
                                                       _%$method-table229301%_
                                                       _%methods-bind229326%_
                                                       _%slots-bind229350%_
                                                       _%specializer-impl229605%_)))
                                                (let ((__tmp232248
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228007228069%_)))
                                                      (__tmp232247
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id229297%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp232248
                                                   '" => "
                                                   __tmp232247))
                                                (_%generate-specializer-def228001%_
                                                 _%g228007228069%_
                                                 _%specializer-id229297%_
                                                 _%specializer-impl229607%_))))
                                        _%hd228977229039%_
                                        _%hd228974229031%_
                                        _%hd228971229023%_)
                                       (_%g228953228983%_ _%g228954228986%_))))
                               (_%g228953228983%_ _%g228954228986%_))
                           (_%g228953228983%_ _%g228954228986%_))
                       (_%g228953228983%_ _%g228954228986%_))))
               (_%g228953228983%_ _%g228954228986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g228953228983%_
                                                    _%g228954228986%_))))
                                           (_%g228953228983%_
                                            _%g228954228986%_))))
                                   (_%g228953228983%_ _%g228954228986%_))))
                           (_%g228953228983%_ _%g228954228986%_))))
                   (_%g228953228983%_ _%g228954228986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g228953228983%_
                                                    _%g228954228986%_)))))
                                       (_%g228952229610%_ _%g228006228068%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g228006228068%_))
                                         (let* ((_%g229614229667%_
                                                 (lambda (_%g229615229664%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g229615229664%_))))
                                                (_%g229613230832%_
                                                 (lambda (_%g229615229670%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g229615229670%_))
                                                       (let ((_%e229621229672%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g229615229670%_))))
                 (let ((_%hd229622229675%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229621229672%_)))
                       (_%tl229623229677%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229621229672%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd229622229675%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd229622229675%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl229623229677%_))
                               (let ((_%e229624229680%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl229623229677%_))))
                                 (let ((_%hd229625229683%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e229624229680%_)))
                                       (_%tl229626229685%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e229624229680%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd229625229683%_))
                                       (let ((_%e229627229688%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd229625229683%_))))
                                         (let ((_%hd229628229691%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e229627229688%_)))
                                               (_%tl229629229693%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e229627229688%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd229628229691%_))
                                               (let ((_%e229630229696%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd229628229691%_))))
                                                 (let ((_%hd229631229699%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229630229696%_)))
                                                       (_%tl229632229701%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229630229696%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd229631229699%_))
                                                       (let ((_%e229633229704%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd229631229699%_))))
                 (let ((_%hd229634229707%_
                        (let ()
                          (declare (not safe))
                          (##car _%e229633229704%_)))
                       (_%tl229635229709%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e229633229704%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl229635229709%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl229632229701%_))
                           (let ((_%e229636229712%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl229632229701%_))))
                             (let ((_%hd229637229715%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e229636229712%_)))
                                   (_%tl229638229717%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e229636229712%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd229637229715%_))
                                   (let ((_%e229639229720%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd229637229715%_))))
                                     (let ((_%hd229640229723%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229639229720%_)))
                                           (_%tl229641229725%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229639229720%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd229640229723%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd229640229723%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl229641229725%_))
                                                   (let ((_%e229642229728%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl229641229725%_))))
                                                     (let ((_%hd229643229731%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e229642229728%_)))
                                                           (_%tl229644229733%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e229642229728%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd229643229731%_))
                                                           (let ((_%e229645229736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd229643229731%_))))
                     (let ((_%hd229646229739%_
                            (let ()
                              (declare (not safe))
                              (##car _%e229645229736%_)))
                           (_%tl229647229741%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e229645229736%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd229646229739%_))
                           (let ((_%e229648229744%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd229646229739%_))))
                             (let ((_%hd229649229747%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e229648229744%_)))
                                   (_%tl229650229749%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e229648229744%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd229649229747%_))
                                   (let ((_%e229651229752%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd229649229747%_))))
                                     (let ((_%hd229652229755%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e229651229752%_)))
                                           (_%tl229653229757%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e229651229752%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl229653229757%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl229650229749%_))
                                               (let ((_%e229654229760%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl229650229749%_))))
                                                 (let ((_%hd229655229763%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229654229760%_)))
                                                       (_%tl229656229765%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229654229760%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl229656229765%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl229647229741%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl229644229733%_))
                       (let ((_%e229657229768%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl229644229733%_))))
                         (let ((_%hd229658229771%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e229657229768%_)))
                               (_%tl229659229773%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e229657229768%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl229659229773%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl229638229717%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl229629229693%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl229626229685%_))
                                           (let ((_%e229660229776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl229626229685%_))))
                                             (let ((_%hd229661229779%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e229660229776%_)))
                                                   (_%tl229662229781%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e229660229776%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl229662229781%_))
                                                   ((lambda (_%g229616229784%_
                                                             _%g229617229785%_
                                                             _%g229618229786%_
                                                             _%g229619229787%_
                                                             _%g229620229788%_)
                                                      (let* ((_%g229828229890%_
                                                              (lambda (_%g229829229887%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g229829229887%_))))
                     (_%g229827230829%_
                      (lambda (_%g229829229893%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g229829229893%_))
                            (let ((_%e229835229895%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229829229893%_))))
                              (let ((_%hd229836229898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229835229895%_)))
                                    (_%tl229837229900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229835229895%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229836229898%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd229836229898%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229837229900%_))
                                            (let ((_%e229838229903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229837229900%_))))
                                              (let ((_%hd229839229906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229838229903%_)))
                                                    (_%tl229840229908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229838229903%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229840229908%_))
                                                    (let ((_%e229841229911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229840229908%_))))
                                                      (let ((_%hd229842229914%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e229841229911%_)))
                    (_%tl229843229916%_
                     (let () (declare (not safe)) (##cdr _%e229841229911%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd229842229914%_))
                    (let ((_%e229844229919%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd229842229914%_))))
                      (let ((_%hd229845229922%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229844229919%_)))
                            (_%tl229846229924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229844229919%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd229845229922%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd229845229922%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229846229924%_))
                                    (let ((_%e229847229927%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229846229924%_))))
                                      (let ((_%hd229848229930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229847229927%_)))
                                            (_%tl229849229932%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229847229927%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229848229930%_))
                                            (let ((_%e229850229935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd229848229930%_))))
                                              (let ((_%hd229851229938%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229850229935%_)))
                                                    (_%tl229852229940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229850229935%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229851229938%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd229851229938%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229852229940%_))
                                                            (let ((_%e229853229943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229852229940%_))))
                      (let ((_%hd229854229946%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229853229943%_)))
                            (_%tl229855229948%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229853229943%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229855229948%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229849229932%_))
                                (let ((_%e229856229951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229849229932%_))))
                                  (let ((_%hd229857229954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229856229951%_)))
                                        (_%tl229858229956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229856229951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229857229954%_))
                                        (let ((_%e229859229959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229857229954%_))))
                                          (let ((_%hd229860229962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229859229959%_)))
                                                (_%tl229861229964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229859229959%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd229860229962%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd229860229962%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229861229964%_))
                                                        (let ((_%e229862229967%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl229861229964%_))))
                  (let ((_%hd229863229970%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229862229967%_)))
                        (_%tl229864229972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229862229967%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229864229972%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229858229956%_))
                            (let ((_%e229865229975%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229858229956%_))))
                              (let ((_%hd229866229978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229865229975%_)))
                                    (_%tl229867229980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229865229975%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229866229978%_))
                                    (let ((_%e229868229983%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229866229978%_))))
                                      (let ((_%hd229869229986%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229868229983%_)))
                                            (_%tl229870229988%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229868229983%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229869229986%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229869229986%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229870229988%_))
                                                    (let ((_%e229871229991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229870229988%_))))
                                                      (let ((_%hd229872229994%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e229871229991%_)))
                    (_%tl229873229996%_
                     (let () (declare (not safe)) (##cdr _%e229871229991%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229873229996%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl229867229980%_))
                        (if (let ((__tmp232249
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl229867229980%_))))
                              (declare (not safe))
                              (##fx>= __tmp232249 '1))
                            (let ((_g232250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl229867229980%_
                                      '1))))
                              (begin
                                (let ((_g232251_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g232250_)
                                             (##values-length _g232250_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g232251_ 2)))
                                      (error "Context expects 2 values"
                                             _g232251_)))
                                (let ((_%target229874229999%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232250_ 0)))
                                      (_%tl229876230001%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232250_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229876230001%_))
                                      (let ((_%e229883230004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl229876230001%_))))
                                        (let ((_%hd229884230007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229883230004%_)))
                                              (_%tl229885230009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229883230004%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229885230009%_))
                                              (letrec ((_%loop229877230012%_
                                                        (lambda (_%hd229875230015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref229881230017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd229875230015%_))
                      (let ((_%e229878230019%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd229875230015%_))))
                        (let ((_%lp-hd229879230022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229878230019%_)))
                              (_%lp-tl229880230024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229878230019%_))))
                          (_%loop229877230012%_
                           _%lp-tl229880230024%_
                           (cons _%lp-hd229879230022%_
                                 _%kw-ref229881230017%_))))
                      (let ((_%kw-ref229882230027%_
                             (reverse _%kw-ref229881230017%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229843229916%_))
                            ((lambda (_%g229830230029%_
                                      _%g229831230030%_
                                      _%g229832230031%_
                                      _%g229833230032%_
                                      _%g229834230033%_)
                               (let* ((_%kw-count230084%_
                                       (length (let ((__tmp232252
                                                      (lambda (_%g230076230079%_
                                                               _%g230077230081%_)
                                                        (cons _%g230076230079%_
                                                              _%g230077230081%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp232252
                                                  '()
                                                  _%g229831230030%_))))
                                      (_%self-index230086%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count230084%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g229618229786%_))
                                     (let* ((_%g230090230104%_
                                             (lambda (_%g230091230101%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g230091230101%_))))
                                            (_%g230089230227%_
                                             (lambda (_%g230091230107%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g230091230107%_))
                                                   (let ((_%e230094230109%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g230091230107%_))))
                                                     (let ((_%hd230095230112%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e230094230109%_)))
                                                           (_%tl230096230114%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e230094230109%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230096230114%_))
                                                           (let ((_%e230097230117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230096230114%_))))
                     (let ((_%hd230098230120%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230097230117%_)))
                           (_%tl230099230122%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230097230117%_))))
                       ((lambda (_%g230092230125%_ _%g230093230126%_)
                          (let* ((_%self230143%_
                                  (list-ref
                                   _%g230093230126%_
                                   _%self-index230086%_))
                                 (_%receiver230148%_
                                  (let ((_%$e230145%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g230092230125%_))))
                                    (if _%$e230145%_
                                        _%$e230145%_
                                        _%self230143%_))))
                            (for-each
                             (lambda (_%g230150230152%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver230148%_
                                _%method-calls228088%_
                                _%slot-refs228089%_
                                _%g230150230152%_))
                             _%g230092230125%_)
                            (if (_%no-specializer?228092%_)
                                _%stx227996%_
                                (let* ((_%specializer-id230161%_
                                        (let* ((_%id230155%_
                                                (let ((__tmp232253
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g228007228069%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp232253
                                                   '"::specialize")))
                                               (_%specializer-id230158%_
                                                (let ((__tmp232254
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx227996%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id230155%_
                                                   __tmp232254))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id230158%_))
                                          _%specializer-id230158%_))
                                       (_%$klass230163%_
                                        (let ((__tmp232255
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp232255)))
                                       (_%$method-table230165%_
                                        (let ((__tmp232256
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp232256)))
                                       (_%methods230167%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls228088%_)))
                                       (_%$methods230171%_
                                        (let ((__tmp232257
                                               (lambda (_%id230169%_)
                                                 (let ((__tmp232258
                                                        (gensym _%id230169%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp232258)))))
                                          (declare (not safe))
                                          (##map __tmp232257
                                                 _%methods230167%_)))
                                       (_%_230180%_
                                        (let ((__tmp232259
                                               (lambda (_%g230172230175%_
                                                        _%g230173230177%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls228088%_
                                                    _%g230172230175%_
                                                    _%g230173230177%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp232259
                                           _%methods230167%_
                                           _%$methods230171%_)))
                                       (_%methods-bind230190%_
                                        (let ((__tmp232260
                                               (lambda (_%g230182230185%_
                                                        _%g230183230187%_)
                                                 (_%generate-method-bind227998%_
                                                  _%$klass230163%_
                                                  _%$method-table230165%_
                                                  _%g230182230185%_
                                                  _%g230183230187%_))))
                                          (declare (not safe))
                                          (##map __tmp232260
                                                 _%methods230167%_
                                                 _%$methods230171%_)))
                                       (_%slots230192%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs228089%_)))
                                       (_%$slots230196%_
                                        (let ((__tmp232261
                                               (lambda (_%id230194%_)
                                                 (let ((__tmp232262
                                                        (gensym _%id230194%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp232262)))))
                                          (declare (not safe))
                                          (##map __tmp232261 _%slots230192%_)))
                                       (_%_230205%_
                                        (let ((__tmp232263
                                               (lambda (_%g230197230200%_
                                                        _%g230198230202%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs228089%_
                                                    _%g230197230200%_
                                                    _%g230198230202%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp232263
                                           _%slots230192%_
                                           _%$slots230196%_)))
                                       (_%slots-bind230214%_
                                        (let ((__tmp232264
                                               (lambda (_%g230206230209%_
                                                        _%g230207230211%_)
                                                 (_%generate-slot-bind227999%_
                                                  _%$klass230163%_
                                                  _%g230206230209%_
                                                  _%g230207230211%_))))
                                          (declare (not safe))
                                          (##map __tmp232264
                                                 _%slots230192%_
                                                 _%$slots230196%_)))
                                       (_%specializer-impl230222%_
                                        (let* ((_%specializer-body230220%_
                                                (map (lambda (_%g230215230217%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver230148%_
                                                        _%$klass230163%_
                                                        _%method-calls228088%_
                                                        _%slot-refs228089%_
                                                        _%g230215230217%_))
                                                     _%g230092230125%_))
                                               (__tmp232265
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g229620229788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g229619229787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp232266
                                   (cons '%#lambda
                                         (cons _%g230093230126%_
                                               _%specializer-body230220%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp232266
                               _%g229618229786%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g229617229785%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g229616229784%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp232265
                                           _%stx227996%_)))
                                       (_%specializer-impl230224%_
                                        (_%generate-specializer-impl228000%_
                                         _%$klass230163%_
                                         _%$method-table230165%_
                                         _%methods-bind230190%_
                                         _%slots-bind230214%_
                                         _%specializer-impl230222%_)))
                                  (let ((__tmp232268
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g228007228069%_)))
                                        (__tmp232267
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id230161%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp232268
                                     '" => "
                                     __tmp232267))
                                  (_%generate-specializer-def228001%_
                                   _%g228007228069%_
                                   _%specializer-id230161%_
                                   _%specializer-impl230224%_)))))
                        _%tl230099230122%_
                        _%hd230098230120%_)))
                   (_%g230090230104%_ _%g230091230107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230090230104%_
                                                    _%g230091230107%_)))))
                                       (_%g230089230227%_ _%g229618229786%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g229618229786%_))
                                         (let* ((_%g230231230261%_
                                                 (lambda (_%g230232230258%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g230232230258%_))))
                                                (_%g230230230825%_
                                                 (lambda (_%g230232230264%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g230232230264%_))
                                                       (let ((_%e230236230266%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g230232230264%_))))
                 (let ((_%hd230237230269%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230236230266%_)))
                       (_%tl230238230271%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230236230266%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl230238230271%_))
                       (let ((_%e230239230274%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl230238230271%_))))
                         (let ((_%hd230240230277%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230239230274%_)))
                               (_%tl230241230279%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230239230274%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd230240230277%_))
                               (let ((_%e230242230282%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd230240230277%_))))
                                 (let ((_%hd230243230285%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230242230282%_)))
                                       (_%tl230244230287%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230242230282%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd230243230285%_))
                                       (let ((_%e230245230290%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd230243230285%_))))
                                         (let ((_%hd230246230293%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e230245230290%_)))
                                               (_%tl230247230295%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e230245230290%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd230246230293%_))
                                               (let ((_%e230248230298%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd230246230293%_))))
                                                 (let ((_%hd230249230301%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230248230298%_)))
                                                       (_%tl230250230303%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230248230298%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl230250230303%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230247230295%_))
                                                           (let ((_%e230251230306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230247230295%_))))
                     (let ((_%hd230252230309%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230251230306%_)))
                           (_%tl230253230311%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230251230306%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl230253230311%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl230244230287%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl230241230279%_))
                                   (let ((_%e230254230314%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl230241230279%_))))
                                     (let ((_%hd230255230317%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230254230314%_)))
                                           (_%tl230256230319%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230254230314%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl230256230319%_))
                                           ((lambda (_%g230233230322%_
                                                     _%g230234230323%_
                                                     _%g230235230324%_)
                                              (let* ((_%g230348230362%_
                                                      (lambda (_%g230349230359%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230349230359%_))))
                                                     (_%g230347230409%_
                                                      (lambda (_%g230349230365%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230349230365%_))
                                                            (let ((_%e230352230367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230349230365%_))))
                      (let ((_%hd230353230370%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230352230367%_)))
                            (_%tl230354230372%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230352230367%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230354230372%_))
                            (let ((_%e230355230375%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230354230372%_))))
                              (let ((_%hd230356230378%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230355230375%_)))
                                    (_%tl230357230380%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230355230375%_))))
                                ((lambda (_%g230350230383%_ _%g230351230384%_)
                                   (let* ((_%self230397%_
                                           (list-ref
                                            _%g230351230384%_
                                            _%self-index230086%_))
                                          (_%receiver230402%_
                                           (let ((_%$e230399%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g230350230383%_))))
                                             (if _%$e230399%_
                                                 _%$e230399%_
                                                 _%self230397%_))))
                                     (for-each
                                      (lambda (_%g230404230406%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver230402%_
                                         _%method-calls228088%_
                                         _%slot-refs228089%_
                                         _%g230404230406%_))
                                      _%g230350230383%_)))
                                 _%tl230357230380%_
                                 _%hd230356230378%_)))
                            (_%g230348230362%_ _%g230349230365%_))))
                    (_%g230348230362%_ _%g230349230365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230347230409%_
                                                 _%g230234230323%_))
                                              (let* ((_%g230412230431%_
                                                      (lambda (_%g230413230428%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230413230428%_))))
                                                     (_%g230411230540%_
                                                      (lambda (_%g230413230434%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230413230434%_))
                                                            (let ((_%e230415230436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230413230434%_))))
                      (let ((_%hd230416230439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230415230436%_)))
                            (_%tl230417230441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230415230436%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl230417230441%_))
                            (let ((_g232269_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl230417230441%_
                                      '0))))
                              (begin
                                (let ((_g232270_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g232269_)
                                             (##values-length _g232269_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g232270_ 2)))
                                      (error "Context expects 2 values"
                                             _g232270_)))
                                (let ((_%target230418230444%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232269_ 0)))
                                      (_%tl230420230446%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g232269_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230420230446%_))
                                      (letrec ((_%loop230421230449%_
                                                (lambda (_%hd230419230452%_
                                                         _%clause230425230454%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd230419230452%_))
                                                      (let ((_%e230422230456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd230419230452%_))))
                (let ((_%lp-hd230423230459%_
                       (let () (declare (not safe)) (##car _%e230422230456%_)))
                      (_%lp-tl230424230461%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e230422230456%_))))
                  (_%loop230421230449%_
                   _%lp-tl230424230461%_
                   (cons _%lp-hd230423230459%_ _%clause230425230454%_))))
              (let ((_%clause230426230464%_ (reverse _%clause230425230454%_)))
                ((lambda (_%g230414230466%_)
                   (for-each
                    (lambda (_%clause230479%_)
                      (let* ((_%g230481230492%_
                              (lambda (_%g230482230489%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g230482230489%_))))
                             (_%g230480230530%_
                              (lambda (_%g230482230495%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g230482230495%_))
                                    (let ((_%e230485230497%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g230482230495%_))))
                                      (let ((_%hd230486230500%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230485230497%_)))
                                            (_%tl230487230502%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230485230497%_))))
                                        ((lambda (_%g230483230505%_
                                                  _%g230484230506%_)
                                           (let* ((_%self230518%_
                                                   (list-ref
                                                    _%g230484230506%_
                                                    _%self-index230086%_))
                                                  (_%receiver230523%_
                                                   (let ((_%$e230520%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g230483230505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e230520%_
                                                         _%$e230520%_
                                                         _%self230518%_))))
                                             (for-each
                                              (lambda (_%g230525230527%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver230523%_
                                                 _%method-calls228088%_
                                                 _%slot-refs228089%_
                                                 _%g230525230527%_))
                                              _%g230483230505%_)))
                                         _%tl230487230502%_
                                         _%hd230486230500%_)))
                                    (_%g230481230492%_ _%g230482230495%_)))))
                        (_%g230480230530%_ _%clause230479%_)))
                    (let ((__tmp232271
                           (lambda (_%g230532230535%_ _%g230533230537%_)
                             (cons _%g230532230535%_ _%g230533230537%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232271 '() _%g230414230466%_))))
                 _%clause230426230464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop230421230449%_
                                         _%target230418230444%_
                                         '()))
                                      (_%g230412230431%_ _%g230413230434%_)))))
                            (_%g230412230431%_ _%g230413230434%_))))
                    (_%g230412230431%_ _%g230413230434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230411230540%_
                                                 _%g230233230322%_))
                                              (if (_%no-specializer?228092%_)
                                                  _%stx227996%_
                                                  (let* ((_%specializer-id230549%_
                                                          (let* ((_%id230543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp232272
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g228007228069%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp232272 '"::specialize")))
                         (_%specializer-id230546%_
                          (let ((__tmp232273
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx227996%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id230543%_
                             __tmp232273))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id230546%_))
                    _%specializer-id230546%_))
                 (_%$klass230551%_
                  (let ((__tmp232274
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232274)))
                 (_%$method-table230553%_
                  (let ((__tmp232275
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp232275)))
                 (_%methods230555%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls228088%_)))
                 (_%$methods230559%_
                  (let ((__tmp232276
                         (lambda (_%id230557%_)
                           (let ((__tmp232277 (gensym _%id230557%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232277)))))
                    (declare (not safe))
                    (##map __tmp232276 _%methods230555%_)))
                 (_%_230568%_
                  (let ((__tmp232278
                         (lambda (_%g230560230563%_ _%g230561230565%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls228088%_
                              _%g230560230563%_
                              _%g230561230565%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp232278
                     _%methods230555%_
                     _%$methods230559%_)))
                 (_%methods-bind230578%_
                  (let ((__tmp232279
                         (lambda (_%g230570230573%_ _%g230571230575%_)
                           (_%generate-method-bind227998%_
                            _%$klass230551%_
                            _%$method-table230553%_
                            _%g230570230573%_
                            _%g230571230575%_))))
                    (declare (not safe))
                    (##map __tmp232279 _%methods230555%_ _%$methods230559%_)))
                 (_%slots230580%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs228089%_)))
                 (_%$slots230584%_
                  (let ((__tmp232280
                         (lambda (_%id230582%_)
                           (let ((__tmp232281 (gensym _%id230582%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp232281)))))
                    (declare (not safe))
                    (##map __tmp232280 _%slots230580%_)))
                 (_%_230593%_
                  (let ((__tmp232282
                         (lambda (_%g230585230588%_ _%g230586230590%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs228089%_
                              _%g230585230588%_
                              _%g230586230590%_)))))
                    (declare (not safe))
                    (##for-each __tmp232282 _%slots230580%_ _%$slots230584%_)))
                 (_%slots-bind230602%_
                  (let ((__tmp232283
                         (lambda (_%g230594230597%_ _%g230595230599%_)
                           (_%generate-slot-bind227999%_
                            _%$klass230551%_
                            _%g230594230597%_
                            _%g230595230599%_))))
                    (declare (not safe))
                    (##map __tmp232283 _%slots230580%_ _%$slots230584%_)))
                 (_%specializer-lambda-expr230680%_
                  (let* ((_%g230604230618%_
                          (lambda (_%g230605230615%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230605230615%_))))
                         (_%g230603230677%_
                          (lambda (_%g230605230621%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230605230621%_))
                                (let ((_%e230608230623%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230605230621%_))))
                                  (let ((_%hd230609230626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230608230623%_)))
                                        (_%tl230610230628%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230608230623%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl230610230628%_))
                                        (let ((_%e230611230631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl230610230628%_))))
                                          (let ((_%hd230612230634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230611230631%_)))
                                                (_%tl230613230636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230611230631%_))))
                                            ((lambda (_%g230606230639%_
                                                      _%g230607230640%_)
                                               (let* ((_%self230663%_
                                                       (list-ref
                                                        _%g230607230640%_
                                                        _%self-index230086%_))
                                                      (_%receiver230668%_
                                                       (let ((_%$e230665%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g230606230639%_))))
                 (if _%$e230665%_ _%$e230665%_ _%self230663%_)))
              (_%body230674%_
               (map (lambda (_%g230669230671%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver230668%_
                       _%$klass230551%_
                       _%method-calls228088%_
                       _%slot-refs228089%_
                       _%g230669230671%_))
                    _%g230606230639%_))
              (__tmp232284
               (cons '%#lambda (cons _%g230607230640%_ _%body230674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp232284
                                                  _%g230234230323%_)))
                                             _%tl230613230636%_
                                             _%hd230612230634%_)))
                                        (_%g230604230618%_
                                         _%g230605230621%_))))
                                (_%g230604230618%_ _%g230605230621%_)))))
                    (_%g230603230677%_ _%g230234230323%_)))
                 (_%specializer-case-lambda-expr230818%_
                  (let* ((_%g230682230701%_
                          (lambda (_%g230683230698%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230683230698%_))))
                         (_%g230681230815%_
                          (lambda (_%g230683230704%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230683230704%_))
                                (let ((_%e230685230706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230683230704%_))))
                                  (let ((_%hd230686230709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230685230706%_)))
                                        (_%tl230687230711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230685230706%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl230687230711%_))
                                        (let ((_g232285_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl230687230711%_
                                                  '0))))
                                          (begin
                                            (let ((_g232286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g232285_)
                                                         (##values-length
                                                          _g232285_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g232286_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g232286_)))
                                            (let ((_%target230688230714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g232285_
                                                      0)))
                                                  (_%tl230690230716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g232285_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230690230716%_))
                                                  (letrec ((_%loop230691230719%_
                                                            (lambda (_%hd230689230722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause230695230724%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230689230722%_))
                          (let ((_%e230692230726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230689230722%_))))
                            (let ((_%lp-hd230693230729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230692230726%_)))
                                  (_%lp-tl230694230731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230692230726%_))))
                              (_%loop230691230719%_
                               _%lp-tl230694230731%_
                               (cons _%lp-hd230693230729%_
                                     _%clause230695230724%_))))
                          (let ((_%clause230696230734%_
                                 (reverse _%clause230695230724%_)))
                            ((lambda (_%g230684230736%_)
                               (let* ((_%clauses230813%_
                                       (map (lambda (_%clause230750%_)
                                              (let* ((_%g230752230763%_
                                                      (lambda (_%g230753230760%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230753230760%_))))
                                                     (_%g230751230803%_
                                                      (lambda (_%g230753230766%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230753230766%_))
                                                            (let ((_%e230756230768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g230753230766%_))))
                      (let ((_%hd230757230771%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230756230768%_)))
                            (_%tl230758230773%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230756230768%_))))
                        ((lambda (_%g230754230776%_ _%g230755230777%_)
                           (let* ((_%self230789%_
                                   (list-ref
                                    _%g230755230777%_
                                    _%self-index230086%_))
                                  (_%receiver230794%_
                                   (let ((_%$e230791%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g230754230776%_))))
                                     (if _%$e230791%_
                                         _%$e230791%_
                                         _%self230789%_)))
                                  (_%body230800%_
                                   (map (lambda (_%g230795230797%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver230794%_
                                           _%$klass230551%_
                                           _%method-calls228088%_
                                           _%slot-refs228089%_
                                           _%g230795230797%_))
                                        _%g230754230776%_)))
                             (cons _%g230755230777%_ _%body230800%_)))
                         _%tl230758230773%_
                         _%hd230757230771%_)))
                    (_%g230752230763%_ _%g230753230766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230751230803%_
                                                 _%clause230750%_)))
                                            (let ((__tmp232287
                                                   (lambda (_%g230805230808%_
                                                            _%g230806230810%_)
                                                     (cons _%g230805230808%_
                                                           _%g230806230810%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp232287
                                               '()
                                               _%g230684230736%_))))
                                      (__tmp232288
                                       (cons '%#case-lambda
                                             _%clauses230813%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp232288
                                  _%g230233230322%_)))
                             _%clause230696230734%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop230691230719%_
                                                     _%target230688230714%_
                                                     '()))
                                                  (_%g230682230701%_
                                                   _%g230683230704%_)))))
                                        (_%g230682230701%_
                                         _%g230683230704%_))))
                                (_%g230682230701%_ _%g230683230704%_)))))
                    (_%g230681230815%_ _%g230233230322%_)))
                 (_%specializer-impl230820%_
                  (let ((__tmp232289
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g229620229788%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g229619229787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp232290
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g230235230324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr230680%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr230818%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp232290
                                                _%stx227996%_))
                                             '()))
                                 '())
                           (cons _%g229617229785%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g229616229784%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp232289 _%stx227996%_)))
                 (_%specializer-impl230822%_
                  (_%generate-specializer-impl228000%_
                   _%$klass230551%_
                   _%$method-table230553%_
                   _%methods-bind230578%_
                   _%slots-bind230602%_
                   _%specializer-impl230820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp232292
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g228007228069%_)))
                                                          (__tmp232291
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id230549%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp232292
                                                       '" => "
                                                       __tmp232291))
                                                    (_%generate-specializer-def228001%_
                                                     _%g228007228069%_
                                                     _%specializer-id230549%_
                                                     _%specializer-impl230822%_))))
                                            _%hd230255230317%_
                                            _%hd230252230309%_
                                            _%hd230249230301%_)
                                           (_%g230231230261%_
                                            _%g230232230264%_))))
                                   (_%g230231230261%_ _%g230232230264%_))
                               (_%g230231230261%_ _%g230232230264%_))
                           (_%g230231230261%_ _%g230232230264%_))))
                   (_%g230231230261%_ _%g230232230264%_))
               (_%g230231230261%_ _%g230232230264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230231230261%_
                                                _%g230232230264%_))))
                                       (_%g230231230261%_ _%g230232230264%_))))
                               (_%g230231230261%_ _%g230232230264%_))))
                       (_%g230231230261%_ _%g230232230264%_))))
               (_%g230231230261%_ _%g230232230264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g230230230825%_
                                            _%g229618229786%_))
                                         _%stx227996%_))))
                             _%hd229884230007%_
                             _%kw-ref229882230027%_
                             _%hd229872229994%_
                             _%hd229863229970%_
                             _%hd229854229946%_)
                            (_%g229828229890%_ _%g229829229893%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop229877230012%_
                                                 _%target229874229999%_
                                                 '()))
                                              (_%g229828229890%_
                                               _%g229829229893%_))))
                                      (_%g229828229890%_ _%g229829229893%_)))))
                            (_%g229828229890%_ _%g229829229893%_))
                        (_%g229828229890%_ _%g229829229893%_))
                    (_%g229828229890%_ _%g229829229893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229828229890%_
                                                     _%g229829229893%_))
                                                (_%g229828229890%_
                                                 _%g229829229893%_))
                                            (_%g229828229890%_
                                             _%g229829229893%_))))
                                    (_%g229828229890%_ _%g229829229893%_))))
                            (_%g229828229890%_ _%g229829229893%_))
                        (_%g229828229890%_ _%g229829229893%_))))
                (_%g229828229890%_ _%g229829229893%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229828229890%_
                                                     _%g229829229893%_))
                                                (_%g229828229890%_
                                                 _%g229829229893%_))))
                                        (_%g229828229890%_
                                         _%g229829229893%_))))
                                (_%g229828229890%_ _%g229829229893%_))
                            (_%g229828229890%_ _%g229829229893%_))))
                    (_%g229828229890%_ _%g229829229893%_))
                (_%g229828229890%_ _%g229829229893%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229828229890%_
                                                     _%g229829229893%_))))
                                            (_%g229828229890%_
                                             _%g229829229893%_))))
                                    (_%g229828229890%_ _%g229829229893%_))
                                (_%g229828229890%_ _%g229829229893%_))
                            (_%g229828229890%_ _%g229829229893%_))))
                    (_%g229828229890%_ _%g229829229893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229828229890%_
                                                     _%g229829229893%_))))
                                            (_%g229828229890%_
                                             _%g229829229893%_))
                                        (_%g229828229890%_ _%g229829229893%_))
                                    (_%g229828229890%_ _%g229829229893%_))))
                            (_%g229828229890%_ _%g229829229893%_)))))
                (_%g229827230829%_ _%g229617229785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd229661229779%_
                                                    _%hd229658229771%_
                                                    _%hd229655229763%_
                                                    _%hd229652229755%_
                                                    _%hd229634229707%_)
                                                   (_%g229614229667%_
                                                    _%g229615229670%_))))
                                           (_%g229614229667%_
                                            _%g229615229670%_))
                                       (_%g229614229667%_ _%g229615229670%_))
                                   (_%g229614229667%_ _%g229615229670%_))
                               (_%g229614229667%_ _%g229615229670%_))))
                       (_%g229614229667%_ _%g229615229670%_))
                   (_%g229614229667%_ _%g229615229670%_))
               (_%g229614229667%_ _%g229615229670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229614229667%_
                                                _%g229615229670%_))
                                           (_%g229614229667%_
                                            _%g229615229670%_))))
                                   (_%g229614229667%_ _%g229615229670%_))))
                           (_%g229614229667%_ _%g229615229670%_))))
                   (_%g229614229667%_ _%g229615229670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g229614229667%_
                                                    _%g229615229670%_))
                                               (_%g229614229667%_
                                                _%g229615229670%_))
                                           (_%g229614229667%_
                                            _%g229615229670%_))))
                                   (_%g229614229667%_ _%g229615229670%_))))
                           (_%g229614229667%_ _%g229615229670%_))
                       (_%g229614229667%_ _%g229615229670%_))))
               (_%g229614229667%_ _%g229615229670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229614229667%_
                                                _%g229615229670%_))))
                                       (_%g229614229667%_ _%g229615229670%_))))
                               (_%g229614229667%_ _%g229615229670%_))
                           (_%g229614229667%_ _%g229615229670%_))
                       (_%g229614229667%_ _%g229615229670%_))))
               (_%g229614229667%_ _%g229615229670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g229613230832%_
                                            _%g228006228068%_))
                                         _%stx227996%_))))))))
                  (_%__kont231059231060%_ (lambda () _%stx227996%_)))
              (let ((_%__match231088231089%_
                     (lambda (_%e228008228036%_
                              _%hd228009228039%_
                              _%tl228010228041%_
                              _%e228011228044%_
                              _%hd228012228047%_
                              _%tl228013228049%_
                              _%e228014228052%_
                              _%hd228015228055%_
                              _%tl228016228057%_
                              _%e228017228060%_
                              _%hd228018228063%_
                              _%tl228019228065%_)
                       (let ((_%g228006228068%_ _%hd228018228063%_)
                             (_%g228007228069%_ _%hd228015228055%_))
                         (if (let ((__tmp232293
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228007228069%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp232293))
                             (_%__kont231057231058%_
                              _%g228006228068%_
                              _%g228007228069%_)
                             (_%__kont231059231060%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx231055231056%_))
                    (let ((_%e228008228036%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx231055231056%_))))
                      (let ((_%tl228010228041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228008228036%_)))
                            (_%hd228009228039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228008228036%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228010228041%_))
                            (let ((_%e228011228044%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228010228041%_))))
                              (let ((_%tl228013228049%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228011228044%_)))
                                    (_%hd228012228047%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228011228044%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228012228047%_))
                                    (let ((_%e228014228052%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd228012228047%_))))
                                      (let ((_%tl228016228057%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228014228052%_)))
                                            (_%hd228015228055%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228014228052%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228016228057%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl228013228049%_))
                                                (let ((_%e228017228060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl228013228049%_))))
                                                  (let ((_%tl228019228065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e228017228060%_)))
                                                        (_%hd228018228063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e228017228060%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl228019228065%_))
                                                        (_%__match231088231089%_
                                                         _%e228008228036%_
                                                         _%hd228009228039%_
                                                         _%tl228010228041%_
                                                         _%e228011228044%_
                                                         _%hd228012228047%_
                                                         _%tl228013228049%_
                                                         _%e228014228052%_
                                                         _%hd228015228055%_
                                                         _%tl228016228057%_
                                                         _%e228017228060%_
                                                         _%hd228018228063%_
                                                         _%tl228019228065%_)
                                                        (_%__kont231059231060%_))))
                                                (_%__kont231059231060%_))
                                            (_%__kont231059231060%_))))
                                    (_%__kont231059231060%_))))
                            (_%__kont231059231060%_))))
                    (_%__kont231059231060%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self227848%_ _%stx227849%_)
        (let* ((_%__stx231091231092%_ _%stx227849%_)
               (_%g227852227885%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231091231092%_)))))
          (let ((_%__kont231093231094%_
                 (lambda (_%g227854227975%_) _%g227854227975%_))
                (_%__kont231095231096%_
                 (lambda (_%g227870227914%_ _%g227871227915%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self227848%_ _%g227870227914%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx231091231092%_))
                (let ((_%e227855227935%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx231091231092%_))))
                  (let ((_%tl227857227940%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227855227935%_)))
                        (_%hd227856227938%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227855227935%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227857227940%_))
                        (let ((_%e227858227943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl227857227940%_))))
                          (let ((_%tl227860227948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227858227943%_)))
                                (_%hd227859227946%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227858227943%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd227859227946%_))
                                (let ((_%e227861227951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd227859227946%_))))
                                  (let ((_%tl227863227956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227861227951%_)))
                                        (_%hd227862227954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227861227951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd227862227954%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd227862227954%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227863227956%_))
                                                (let ((_%e227864227959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl227863227956%_))))
                                                  (let ((_%tl227866227964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227864227959%_)))
                                                        (_%hd227865227962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227864227959%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl227866227964%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl227860227948%_))
                                                            (let ((_%e227867227967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl227860227948%_))))
                      (let ((_%tl227869227972%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e227867227967%_)))
                            (_%hd227868227970%_
                             (let ()
                               (declare (not safe))
                               (##car _%e227867227967%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227869227972%_))
                            (_%__kont231093231094%_ _%hd227865227962%_)
                            (let ()
                              (declare (not safe))
                              (_%g227852227885%_)))))
                    (let () (declare (not safe)) (_%g227852227885%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl227860227948%_))
                    (let ((_%e227878227906%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl227860227948%_))))
                      (let ((_%tl227880227911%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e227878227906%_)))
                            (_%hd227879227909%_
                             (let ()
                               (declare (not safe))
                               (##car _%e227878227906%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227880227911%_))
                            (_%__kont231095231096%_
                             _%hd227879227909%_
                             _%hd227859227946%_)
                            (let ()
                              (declare (not safe))
                              (_%g227852227885%_)))))
                    (let () (declare (not safe)) (_%g227852227885%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl227860227948%_))
                                                    (let ((_%e227878227906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl227860227948%_))))
                                                      (let ((_%tl227880227911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e227878227906%_)))
                    (_%hd227879227909%_
                     (let () (declare (not safe)) (##car _%e227878227906%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl227880227911%_))
                    (_%__kont231095231096%_
                     _%hd227879227909%_
                     _%hd227859227946%_)
                    (let () (declare (not safe)) (_%g227852227885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g227852227885%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl227860227948%_))
                                                (let ((_%e227878227906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl227860227948%_))))
                                                  (let ((_%tl227880227911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e227878227906%_)))
                                                        (_%hd227879227909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e227878227906%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl227880227911%_))
                                                        (_%__kont231095231096%_
                                                         _%hd227879227909%_
                                                         _%hd227859227946%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g227852227885%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227852227885%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227860227948%_))
                                            (let ((_%e227878227906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl227860227948%_))))
                                              (let ((_%tl227880227911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227878227906%_)))
                                                    (_%hd227879227909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227878227906%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl227880227911%_))
                                                    (_%__kont231095231096%_
                                                     _%hd227879227909%_
                                                     _%hd227859227946%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g227852227885%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g227852227885%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl227860227948%_))
                                    (let ((_%e227878227906%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl227860227948%_))))
                                      (let ((_%tl227880227911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e227878227906%_)))
                                            (_%hd227879227909%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e227878227906%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl227880227911%_))
                                            (_%__kont231095231096%_
                                             _%hd227879227909%_
                                             _%hd227859227946%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g227852227885%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g227852227885%_))))))
                        (let () (declare (not safe)) (_%g227852227885%_)))))
                (let () (declare (not safe)) (_%g227852227885%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self227764%_ _%stx227765%_)
        (let* ((_%g227767227788%_
                (lambda (_%g227768227785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227768227785%_))))
               (_%g227766227845%_
                (lambda (_%g227768227791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227768227791%_))
                      (let ((_%e227772227793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g227768227791%_))))
                        (let ((_%hd227773227796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227772227793%_)))
                              (_%tl227774227798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227772227793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227774227798%_))
                              (let ((_%e227775227801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl227774227798%_))))
                                (let ((_%hd227776227804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227775227801%_)))
                                      (_%tl227777227806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227775227801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227777227806%_))
                                      (let ((_%e227778227809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl227777227806%_))))
                                        (let ((_%hd227779227812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227778227809%_)))
                                              (_%tl227780227814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227778227809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227780227814%_))
                                              (let ((_%e227781227817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl227780227814%_))))
                                                (let ((_%hd227782227820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227781227817%_)))
                                                      (_%tl227783227822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227781227817%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227783227822%_))
                                                      ((lambda (_%g227769227825%_
                                                                _%g227770227826%_
                                                                _%g227771227827%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self227764%_
                                                            _%g227770227826%_)))
                                                       _%hd227782227820%_
                                                       _%hd227779227812%_
                                                       _%hd227776227804%_)
                                                      (_%g227767227788%_
                                                       _%g227768227791%_))))
                                              (_%g227767227788%_
                                               _%g227768227791%_))))
                                      (_%g227767227788%_ _%g227768227791%_))))
                              (_%g227767227788%_ _%g227768227791%_))))
                      (_%g227767227788%_ _%g227768227791%_)))))
          (_%g227766227845%_ _%stx227765%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self226729%_ _%stx226730%_)
        (let* ((_%__stx231157231158%_ _%stx226730%_)
               (_%g226738226960%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx231157231158%_)))))
          (let ((_%__kont231159231160%_
                 (lambda (_%g226740227713%_
                          _%g226741227714%_
                          _%g226742227715%_
                          _%g226743227716%_)
                   (let ((__tmp232295
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226729%_ 'methods)))
                         (__tmp232294
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226741227714%_))))
                     (declare (not safe))
                     (hash-put! __tmp232295 __tmp232294 '#t))
                   (for-each
                    (lambda (_%g227749227751%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self226729%_ _%g227749227751%_)))
                    (let ((__tmp232296
                           (lambda (_%g227753227756%_ _%g227754227758%_)
                             (cons _%g227753227756%_ _%g227754227758%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232296 '() _%g226740227713%_)))))
                (_%__kont231163231164%_
                 (lambda (_%g226783227550%_
                          _%g226784227551%_
                          _%g226785227552%_
                          _%g226786227553%_
                          _%g226787227554%_)
                   (let ((__tmp232298
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226729%_ 'methods)))
                         (__tmp232297
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226784227551%_))))
                     (declare (not safe))
                     (hash-put! __tmp232298 __tmp232297 '#t))
                   (for-each
                    (lambda (_%g227594227596%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self226729%_ _%g227594227596%_)))
                    (let ((__tmp232299
                           (lambda (_%g227598227601%_ _%g227599227603%_)
                             (cons _%g227598227601%_ _%g227599227603%_))))
                      (declare (not safe))
                      (foldr__0 __tmp232299 '() _%g226783227550%_)))))
                (_%__kont231167231168%_
                 (lambda (_%g226836227385%_
                          _%g226837227386%_
                          _%g226838227387%_)
                   (let ((__tmp232301
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226729%_ 'slots)))
                         (__tmp232300
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226836227385%_))))
                     (declare (not safe))
                     (hash-put! __tmp232301 __tmp232300 '#t))))
                (_%__kont231169231170%_
                 (lambda (_%g226869227262%_
                          _%g226870227263%_
                          _%g226871227264%_
                          _%g226872227265%_)
                   (let ((__tmp232303
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self226729%_ 'slots)))
                         (__tmp232302
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g226870227263%_))))
                     (declare (not safe))
                     (hash-put! __tmp232303 __tmp232302 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self226729%_ _%g226869227262%_))))
                (_%__kont231171231172%_
                 (lambda (_%g226906227136%_ _%g226907227137%_)
                   (let* ((_%accessor227159%_
                           (let ((__tmp232304
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g226907227137%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp232304)))
                          (_%klass227161%_
                           (let ((__tmp232305
                                  (##structure-ref
                                   _%accessor227159%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx226730%_
                              __tmp232305)))
                          (_%slot227163%_
                           (##structure-ref
                            _%accessor227159%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor227159%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass227161%_
                                    _%slot227163%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass227161%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp232307
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self226729%_ 'slots)))
                               (__tmp232306
                                (##structure-ref
                                 _%accessor227159%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp232307 __tmp232306 '#t))))))
                (_%__kont231173231174%_
                 (lambda (_%g226929227036%_
                          _%g226930227037%_
                          _%g226931227038%_)
                   (let* ((_%mutator227065%_
                           (let ((__tmp232308
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g226931227038%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp232308)))
                          (_%klass227067%_
                           (let ((__tmp232309
                                  (##structure-ref
                                   _%mutator227065%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx226730%_
                              __tmp232309)))
                          (_%slot227069%_
                           (##structure-ref
                            _%mutator227065%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator227065%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass227067%_
                                    _%slot227069%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass227067%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp232310
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self226729%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp232310 _%slot227069%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self226729%_ _%g226929227036%_)))))
                (_%__kont231175231176%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self226729%_ _%stx226730%_)))))
            (let* ((_%__match231656231657%_
                    (lambda (_%e226932226972%_
                             _%hd226933226975%_
                             _%tl226934226977%_
                             _%e226935226980%_
                             _%hd226936226983%_
                             _%tl226937226985%_
                             _%e226938226988%_
                             _%hd226939226991%_
                             _%tl226940226993%_
                             _%e226941226996%_
                             _%hd226942226999%_
                             _%tl226943227001%_
                             _%e226944227004%_
                             _%hd226945227007%_
                             _%tl226946227009%_
                             _%e226947227012%_
                             _%hd226948227015%_
                             _%tl226949227017%_
                             _%e226950227020%_
                             _%hd226951227023%_
                             _%tl226952227025%_
                             _%e226953227028%_
                             _%hd226954227031%_
                             _%tl226955227033%_)
                      (let ((_%g226929227036%_ _%hd226954227031%_)
                            (_%g226930227037%_ _%hd226951227023%_)
                            (_%g226931227038%_ _%hd226942226999%_))
                        (if (and (let ((__tmp232311
                                        (let ((__tmp232312
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g226931227038%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp232312))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp232311
                                    'gxc#!mutator::t))
                                 (let ((__tmp232313
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226729%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226930227037%_
                                    __tmp232313)))
                            (_%__kont231173231174%_
                             _%g226929227036%_
                             _%g226930227037%_
                             _%g226931227038%_)
                            (_%__kont231175231176%_)))))
                   (_%__match231654231655%_
                    (lambda (_%e226932226972%_
                             _%hd226933226975%_
                             _%tl226934226977%_
                             _%e226935226980%_
                             _%hd226936226983%_
                             _%tl226937226985%_
                             _%e226938226988%_
                             _%hd226939226991%_
                             _%tl226940226993%_
                             _%e226941226996%_
                             _%hd226942226999%_
                             _%tl226943227001%_
                             _%e226944227004%_
                             _%hd226945227007%_
                             _%tl226946227009%_
                             _%e226947227012%_
                             _%hd226948227015%_
                             _%tl226949227017%_
                             _%e226950227020%_
                             _%hd226951227023%_
                             _%tl226952227025%_
                             _%e226953227028%_
                             _%hd226954227031%_
                             _%tl226955227033%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226955227033%_))
                          (_%__match231656231657%_
                           _%e226932226972%_
                           _%hd226933226975%_
                           _%tl226934226977%_
                           _%e226935226980%_
                           _%hd226936226983%_
                           _%tl226937226985%_
                           _%e226938226988%_
                           _%hd226939226991%_
                           _%tl226940226993%_
                           _%e226941226996%_
                           _%hd226942226999%_
                           _%tl226943227001%_
                           _%e226944227004%_
                           _%hd226945227007%_
                           _%tl226946227009%_
                           _%e226947227012%_
                           _%hd226948227015%_
                           _%tl226949227017%_
                           _%e226950227020%_
                           _%hd226951227023%_
                           _%tl226952227025%_
                           _%e226953227028%_
                           _%hd226954227031%_
                           _%tl226955227033%_)
                          (_%__kont231175231176%_))))
                   (_%__match231648231649%_
                    (lambda (_%e226932226972%_
                             _%hd226933226975%_
                             _%tl226934226977%_
                             _%e226935226980%_
                             _%hd226936226983%_
                             _%tl226937226985%_
                             _%e226938226988%_
                             _%hd226939226991%_
                             _%tl226940226993%_
                             _%e226941226996%_
                             _%hd226942226999%_
                             _%tl226943227001%_
                             _%e226944227004%_
                             _%hd226945227007%_
                             _%tl226946227009%_
                             _%e226947227012%_
                             _%hd226948227015%_
                             _%tl226949227017%_
                             _%e226950227020%_
                             _%hd226951227023%_
                             _%tl226952227025%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226946227009%_))
                          (let ((_%e226953227028%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226946227009%_))))
                            (let ((_%tl226955227033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226953227028%_)))
                                  (_%hd226954227031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226953227028%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226955227033%_))
                                  (_%__match231656231657%_
                                   _%e226932226972%_
                                   _%hd226933226975%_
                                   _%tl226934226977%_
                                   _%e226935226980%_
                                   _%hd226936226983%_
                                   _%tl226937226985%_
                                   _%e226938226988%_
                                   _%hd226939226991%_
                                   _%tl226940226993%_
                                   _%e226941226996%_
                                   _%hd226942226999%_
                                   _%tl226943227001%_
                                   _%e226944227004%_
                                   _%hd226945227007%_
                                   _%tl226946227009%_
                                   _%e226947227012%_
                                   _%hd226948227015%_
                                   _%tl226949227017%_
                                   _%e226950227020%_
                                   _%hd226951227023%_
                                   _%tl226952227025%_
                                   _%e226953227028%_
                                   _%hd226954227031%_
                                   _%tl226955227033%_)
                                  (_%__kont231175231176%_))))
                          (_%__kont231175231176%_))))
                   (_%__match231594231595%_
                    (lambda (_%e226908227080%_
                             _%hd226909227083%_
                             _%tl226910227085%_
                             _%e226911227088%_
                             _%hd226912227091%_
                             _%tl226913227093%_
                             _%e226914227096%_
                             _%hd226915227099%_
                             _%tl226916227101%_
                             _%e226917227104%_
                             _%hd226918227107%_
                             _%tl226919227109%_
                             _%e226920227112%_
                             _%hd226921227115%_
                             _%tl226922227117%_
                             _%e226923227120%_
                             _%hd226924227123%_
                             _%tl226925227125%_
                             _%e226926227128%_
                             _%hd226927227131%_
                             _%tl226928227133%_)
                      (let ((_%g226906227136%_ _%hd226927227131%_)
                            (_%g226907227137%_ _%hd226918227107%_))
                        (if (and (let ((__tmp232314
                                        (let ((__tmp232315
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g226907227137%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp232315))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp232314
                                    'gxc#!accessor::t))
                                 (let ((__tmp232316
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226729%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226906227136%_
                                    __tmp232316)))
                            (_%__kont231171231172%_
                             _%g226906227136%_
                             _%g226907227137%_)
                            (_%__kont231175231176%_)))))
                   (_%__match231592231593%_
                    (lambda (_%e226908227080%_
                             _%hd226909227083%_
                             _%tl226910227085%_
                             _%e226911227088%_
                             _%hd226912227091%_
                             _%tl226913227093%_
                             _%e226914227096%_
                             _%hd226915227099%_
                             _%tl226916227101%_
                             _%e226917227104%_
                             _%hd226918227107%_
                             _%tl226919227109%_
                             _%e226920227112%_
                             _%hd226921227115%_
                             _%tl226922227117%_
                             _%e226923227120%_
                             _%hd226924227123%_
                             _%tl226925227125%_
                             _%e226926227128%_
                             _%hd226927227131%_
                             _%tl226928227133%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226922227117%_))
                          (_%__match231594231595%_
                           _%e226908227080%_
                           _%hd226909227083%_
                           _%tl226910227085%_
                           _%e226911227088%_
                           _%hd226912227091%_
                           _%tl226913227093%_
                           _%e226914227096%_
                           _%hd226915227099%_
                           _%tl226916227101%_
                           _%e226917227104%_
                           _%hd226918227107%_
                           _%tl226919227109%_
                           _%e226920227112%_
                           _%hd226921227115%_
                           _%tl226922227117%_
                           _%e226923227120%_
                           _%hd226924227123%_
                           _%tl226925227125%_
                           _%e226926227128%_
                           _%hd226927227131%_
                           _%tl226928227133%_)
                          (_%__match231648231649%_
                           _%e226908227080%_
                           _%hd226909227083%_
                           _%tl226910227085%_
                           _%e226911227088%_
                           _%hd226912227091%_
                           _%tl226913227093%_
                           _%e226914227096%_
                           _%hd226915227099%_
                           _%tl226916227101%_
                           _%e226917227104%_
                           _%hd226918227107%_
                           _%tl226919227109%_
                           _%e226920227112%_
                           _%hd226921227115%_
                           _%tl226922227117%_
                           _%e226923227120%_
                           _%hd226924227123%_
                           _%tl226925227125%_
                           _%e226926227128%_
                           _%hd226927227131%_
                           _%tl226928227133%_))))
                   (_%__match231538231539%_
                    (lambda (_%e226873227174%_
                             _%hd226874227177%_
                             _%tl226875227179%_
                             _%e226876227182%_
                             _%hd226877227185%_
                             _%tl226878227187%_
                             _%e226879227190%_
                             _%hd226880227193%_
                             _%tl226881227195%_
                             _%e226882227198%_
                             _%hd226883227201%_
                             _%tl226884227203%_
                             _%e226885227206%_
                             _%hd226886227209%_
                             _%tl226887227211%_
                             _%e226888227214%_
                             _%hd226889227217%_
                             _%tl226890227219%_
                             _%e226891227222%_
                             _%hd226892227225%_
                             _%tl226893227227%_
                             _%e226894227230%_
                             _%hd226895227233%_
                             _%tl226896227235%_
                             _%e226897227238%_
                             _%hd226898227241%_
                             _%tl226899227243%_
                             _%e226900227246%_
                             _%hd226901227249%_
                             _%tl226902227251%_
                             _%e226903227254%_
                             _%hd226904227257%_
                             _%tl226905227259%_)
                      (let ((_%g226869227262%_ _%hd226904227257%_)
                            (_%g226870227263%_ _%hd226901227249%_)
                            (_%g226871227264%_ _%hd226892227225%_)
                            (_%g226872227265%_ _%hd226883227201%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226872227265%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226872227265%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp232317
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226729%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226871227264%_
                                    __tmp232317)))
                            (_%__kont231169231170%_
                             _%g226869227262%_
                             _%g226870227263%_
                             _%g226871227264%_
                             _%g226872227265%_)
                            (_%__kont231175231176%_)))))
                   (_%__match231530231531%_
                    (lambda (_%e226873227174%_
                             _%hd226874227177%_
                             _%tl226875227179%_
                             _%e226876227182%_
                             _%hd226877227185%_
                             _%tl226878227187%_
                             _%e226879227190%_
                             _%hd226880227193%_
                             _%tl226881227195%_
                             _%e226882227198%_
                             _%hd226883227201%_
                             _%tl226884227203%_
                             _%e226885227206%_
                             _%hd226886227209%_
                             _%tl226887227211%_
                             _%e226888227214%_
                             _%hd226889227217%_
                             _%tl226890227219%_
                             _%e226891227222%_
                             _%hd226892227225%_
                             _%tl226893227227%_
                             _%e226894227230%_
                             _%hd226895227233%_
                             _%tl226896227235%_
                             _%e226897227238%_
                             _%hd226898227241%_
                             _%tl226899227243%_
                             _%e226900227246%_
                             _%hd226901227249%_
                             _%tl226902227251%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226896227235%_))
                          (let ((_%e226903227254%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226896227235%_))))
                            (let ((_%tl226905227259%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226903227254%_)))
                                  (_%hd226904227257%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226903227254%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226905227259%_))
                                  (_%__match231538231539%_
                                   _%e226873227174%_
                                   _%hd226874227177%_
                                   _%tl226875227179%_
                                   _%e226876227182%_
                                   _%hd226877227185%_
                                   _%tl226878227187%_
                                   _%e226879227190%_
                                   _%hd226880227193%_
                                   _%tl226881227195%_
                                   _%e226882227198%_
                                   _%hd226883227201%_
                                   _%tl226884227203%_
                                   _%e226885227206%_
                                   _%hd226886227209%_
                                   _%tl226887227211%_
                                   _%e226888227214%_
                                   _%hd226889227217%_
                                   _%tl226890227219%_
                                   _%e226891227222%_
                                   _%hd226892227225%_
                                   _%tl226893227227%_
                                   _%e226894227230%_
                                   _%hd226895227233%_
                                   _%tl226896227235%_
                                   _%e226897227238%_
                                   _%hd226898227241%_
                                   _%tl226899227243%_
                                   _%e226900227246%_
                                   _%hd226901227249%_
                                   _%tl226902227251%_
                                   _%e226903227254%_
                                   _%hd226904227257%_
                                   _%tl226905227259%_)
                                  (_%__kont231175231176%_))))
                          (_%__match231654231655%_
                           _%e226873227174%_
                           _%hd226874227177%_
                           _%tl226875227179%_
                           _%e226876227182%_
                           _%hd226877227185%_
                           _%tl226878227187%_
                           _%e226879227190%_
                           _%hd226880227193%_
                           _%tl226881227195%_
                           _%e226882227198%_
                           _%hd226883227201%_
                           _%tl226884227203%_
                           _%e226885227206%_
                           _%hd226886227209%_
                           _%tl226887227211%_
                           _%e226888227214%_
                           _%hd226889227217%_
                           _%tl226890227219%_
                           _%e226891227222%_
                           _%hd226892227225%_
                           _%tl226893227227%_
                           _%e226894227230%_
                           _%hd226895227233%_
                           _%tl226896227235%_))))
                   (_%__match231452231453%_
                    (lambda (_%e226839227305%_
                             _%hd226840227308%_
                             _%tl226841227310%_
                             _%e226842227313%_
                             _%hd226843227316%_
                             _%tl226844227318%_
                             _%e226845227321%_
                             _%hd226846227324%_
                             _%tl226847227326%_
                             _%e226848227329%_
                             _%hd226849227332%_
                             _%tl226850227334%_
                             _%e226851227337%_
                             _%hd226852227340%_
                             _%tl226853227342%_
                             _%e226854227345%_
                             _%hd226855227348%_
                             _%tl226856227350%_
                             _%e226857227353%_
                             _%hd226858227356%_
                             _%tl226859227358%_
                             _%e226860227361%_
                             _%hd226861227364%_
                             _%tl226862227366%_
                             _%e226863227369%_
                             _%hd226864227372%_
                             _%tl226865227374%_
                             _%e226866227377%_
                             _%hd226867227380%_
                             _%tl226868227382%_)
                      (let ((_%g226836227385%_ _%hd226867227380%_)
                            (_%g226837227386%_ _%hd226858227356%_)
                            (_%g226838227387%_ _%hd226849227332%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226838227387%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g226838227387%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp232318
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self226729%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g226837227386%_
                                    __tmp232318)))
                            (_%__kont231167231168%_
                             _%g226836227385%_
                             _%g226837227386%_
                             _%g226838227387%_)
                            (_%__match231656231657%_
                             _%e226839227305%_
                             _%hd226840227308%_
                             _%tl226841227310%_
                             _%e226842227313%_
                             _%hd226843227316%_
                             _%tl226844227318%_
                             _%e226845227321%_
                             _%hd226846227324%_
                             _%tl226847227326%_
                             _%e226848227329%_
                             _%hd226849227332%_
                             _%tl226850227334%_
                             _%e226851227337%_
                             _%hd226852227340%_
                             _%tl226853227342%_
                             _%e226854227345%_
                             _%hd226855227348%_
                             _%tl226856227350%_
                             _%e226857227353%_
                             _%hd226858227356%_
                             _%tl226859227358%_
                             _%e226860227361%_
                             _%hd226861227364%_
                             _%tl226862227366%_)))))
                   (_%__match231450231451%_
                    (lambda (_%e226839227305%_
                             _%hd226840227308%_
                             _%tl226841227310%_
                             _%e226842227313%_
                             _%hd226843227316%_
                             _%tl226844227318%_
                             _%e226845227321%_
                             _%hd226846227324%_
                             _%tl226847227326%_
                             _%e226848227329%_
                             _%hd226849227332%_
                             _%tl226850227334%_
                             _%e226851227337%_
                             _%hd226852227340%_
                             _%tl226853227342%_
                             _%e226854227345%_
                             _%hd226855227348%_
                             _%tl226856227350%_
                             _%e226857227353%_
                             _%hd226858227356%_
                             _%tl226859227358%_
                             _%e226860227361%_
                             _%hd226861227364%_
                             _%tl226862227366%_
                             _%e226863227369%_
                             _%hd226864227372%_
                             _%tl226865227374%_
                             _%e226866227377%_
                             _%hd226867227380%_
                             _%tl226868227382%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl226862227366%_))
                          (_%__match231452231453%_
                           _%e226839227305%_
                           _%hd226840227308%_
                           _%tl226841227310%_
                           _%e226842227313%_
                           _%hd226843227316%_
                           _%tl226844227318%_
                           _%e226845227321%_
                           _%hd226846227324%_
                           _%tl226847227326%_
                           _%e226848227329%_
                           _%hd226849227332%_
                           _%tl226850227334%_
                           _%e226851227337%_
                           _%hd226852227340%_
                           _%tl226853227342%_
                           _%e226854227345%_
                           _%hd226855227348%_
                           _%tl226856227350%_
                           _%e226857227353%_
                           _%hd226858227356%_
                           _%tl226859227358%_
                           _%e226860227361%_
                           _%hd226861227364%_
                           _%tl226862227366%_
                           _%e226863227369%_
                           _%hd226864227372%_
                           _%tl226865227374%_
                           _%e226866227377%_
                           _%hd226867227380%_
                           _%tl226868227382%_)
                          (_%__match231530231531%_
                           _%e226839227305%_
                           _%hd226840227308%_
                           _%tl226841227310%_
                           _%e226842227313%_
                           _%hd226843227316%_
                           _%tl226844227318%_
                           _%e226845227321%_
                           _%hd226846227324%_
                           _%tl226847227326%_
                           _%e226848227329%_
                           _%hd226849227332%_
                           _%tl226850227334%_
                           _%e226851227337%_
                           _%hd226852227340%_
                           _%tl226853227342%_
                           _%e226854227345%_
                           _%hd226855227348%_
                           _%tl226856227350%_
                           _%e226857227353%_
                           _%hd226858227356%_
                           _%tl226859227358%_
                           _%e226860227361%_
                           _%hd226861227364%_
                           _%tl226862227366%_
                           _%e226863227369%_
                           _%hd226864227372%_
                           _%tl226865227374%_
                           _%e226866227377%_
                           _%hd226867227380%_
                           _%tl226868227382%_))))
                   (_%__match231440231441%_
                    (lambda (_%e226839227305%_
                             _%hd226840227308%_
                             _%tl226841227310%_
                             _%e226842227313%_
                             _%hd226843227316%_
                             _%tl226844227318%_
                             _%e226845227321%_
                             _%hd226846227324%_
                             _%tl226847227326%_
                             _%e226848227329%_
                             _%hd226849227332%_
                             _%tl226850227334%_
                             _%e226851227337%_
                             _%hd226852227340%_
                             _%tl226853227342%_
                             _%e226854227345%_
                             _%hd226855227348%_
                             _%tl226856227350%_
                             _%e226857227353%_
                             _%hd226858227356%_
                             _%tl226859227358%_
                             _%e226860227361%_
                             _%hd226861227364%_
                             _%tl226862227366%_
                             _%e226863227369%_
                             _%hd226864227372%_
                             _%tl226865227374%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd226864227372%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226865227374%_))
                              (let ((_%e226866227377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl226865227374%_))))
                                (let ((_%tl226868227382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226866227377%_)))
                                      (_%hd226867227380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226866227377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226868227382%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl226862227366%_))
                                          (_%__match231452231453%_
                                           _%e226839227305%_
                                           _%hd226840227308%_
                                           _%tl226841227310%_
                                           _%e226842227313%_
                                           _%hd226843227316%_
                                           _%tl226844227318%_
                                           _%e226845227321%_
                                           _%hd226846227324%_
                                           _%tl226847227326%_
                                           _%e226848227329%_
                                           _%hd226849227332%_
                                           _%tl226850227334%_
                                           _%e226851227337%_
                                           _%hd226852227340%_
                                           _%tl226853227342%_
                                           _%e226854227345%_
                                           _%hd226855227348%_
                                           _%tl226856227350%_
                                           _%e226857227353%_
                                           _%hd226858227356%_
                                           _%tl226859227358%_
                                           _%e226860227361%_
                                           _%hd226861227364%_
                                           _%tl226862227366%_
                                           _%e226863227369%_
                                           _%hd226864227372%_
                                           _%tl226865227374%_
                                           _%e226866227377%_
                                           _%hd226867227380%_
                                           _%tl226868227382%_)
                                          (_%__match231530231531%_
                                           _%e226839227305%_
                                           _%hd226840227308%_
                                           _%tl226841227310%_
                                           _%e226842227313%_
                                           _%hd226843227316%_
                                           _%tl226844227318%_
                                           _%e226845227321%_
                                           _%hd226846227324%_
                                           _%tl226847227326%_
                                           _%e226848227329%_
                                           _%hd226849227332%_
                                           _%tl226850227334%_
                                           _%e226851227337%_
                                           _%hd226852227340%_
                                           _%tl226853227342%_
                                           _%e226854227345%_
                                           _%hd226855227348%_
                                           _%tl226856227350%_
                                           _%e226857227353%_
                                           _%hd226858227356%_
                                           _%tl226859227358%_
                                           _%e226860227361%_
                                           _%hd226861227364%_
                                           _%tl226862227366%_
                                           _%e226863227369%_
                                           _%hd226864227372%_
                                           _%tl226865227374%_
                                           _%e226866227377%_
                                           _%hd226867227380%_
                                           _%tl226868227382%_))
                                      (_%__match231654231655%_
                                       _%e226839227305%_
                                       _%hd226840227308%_
                                       _%tl226841227310%_
                                       _%e226842227313%_
                                       _%hd226843227316%_
                                       _%tl226844227318%_
                                       _%e226845227321%_
                                       _%hd226846227324%_
                                       _%tl226847227326%_
                                       _%e226848227329%_
                                       _%hd226849227332%_
                                       _%tl226850227334%_
                                       _%e226851227337%_
                                       _%hd226852227340%_
                                       _%tl226853227342%_
                                       _%e226854227345%_
                                       _%hd226855227348%_
                                       _%tl226856227350%_
                                       _%e226857227353%_
                                       _%hd226858227356%_
                                       _%tl226859227358%_
                                       _%e226860227361%_
                                       _%hd226861227364%_
                                       _%tl226862227366%_))))
                              (_%__match231654231655%_
                               _%e226839227305%_
                               _%hd226840227308%_
                               _%tl226841227310%_
                               _%e226842227313%_
                               _%hd226843227316%_
                               _%tl226844227318%_
                               _%e226845227321%_
                               _%hd226846227324%_
                               _%tl226847227326%_
                               _%e226848227329%_
                               _%hd226849227332%_
                               _%tl226850227334%_
                               _%e226851227337%_
                               _%hd226852227340%_
                               _%tl226853227342%_
                               _%e226854227345%_
                               _%hd226855227348%_
                               _%tl226856227350%_
                               _%e226857227353%_
                               _%hd226858227356%_
                               _%tl226859227358%_
                               _%e226860227361%_
                               _%hd226861227364%_
                               _%tl226862227366%_))
                          (_%__match231654231655%_
                           _%e226839227305%_
                           _%hd226840227308%_
                           _%tl226841227310%_
                           _%e226842227313%_
                           _%hd226843227316%_
                           _%tl226844227318%_
                           _%e226845227321%_
                           _%hd226846227324%_
                           _%tl226847227326%_
                           _%e226848227329%_
                           _%hd226849227332%_
                           _%tl226850227334%_
                           _%e226851227337%_
                           _%hd226852227340%_
                           _%tl226853227342%_
                           _%e226854227345%_
                           _%hd226855227348%_
                           _%tl226856227350%_
                           _%e226857227353%_
                           _%hd226858227356%_
                           _%tl226859227358%_
                           _%e226860227361%_
                           _%hd226861227364%_
                           _%tl226862227366%_))))
                   (_%__match231372231373%_
                    (lambda (_%e226788227424%_
                             _%hd226789227427%_
                             _%tl226790227429%_
                             _%e226791227432%_
                             _%hd226792227435%_
                             _%tl226793227437%_
                             _%e226794227440%_
                             _%hd226795227443%_
                             _%tl226796227445%_
                             _%e226797227448%_
                             _%hd226798227451%_
                             _%tl226799227453%_
                             _%e226800227456%_
                             _%hd226801227459%_
                             _%tl226802227461%_
                             _%e226803227464%_
                             _%hd226804227467%_
                             _%tl226805227469%_
                             _%e226806227472%_
                             _%hd226807227475%_
                             _%tl226808227477%_
                             _%e226809227480%_
                             _%hd226810227483%_
                             _%tl226811227485%_
                             _%e226812227488%_
                             _%hd226813227491%_
                             _%tl226814227493%_
                             _%e226815227496%_
                             _%hd226816227499%_
                             _%tl226817227501%_
                             _%e226818227504%_
                             _%hd226819227507%_
                             _%tl226820227509%_
                             _%e226821227512%_
                             _%hd226822227515%_
                             _%tl226823227517%_
                             _%e226824227520%_
                             _%hd226825227523%_
                             _%tl226826227525%_
                             _%__splice231165231166%_
                             _%target226827227528%_
                             _%tl226829227530%_)
                      (letrec ((_%loop226830227533%_
                                (lambda (_%hd226828227536%_
                                         _%args226834227538%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd226828227536%_))
                                      (let ((_%e226831227540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd226828227536%_))))
                                        (let ((_%lp-tl226833227545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226831227540%_)))
                                              (_%lp-hd226832227543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226831227540%_))))
                                          (_%loop226830227533%_
                                           _%lp-tl226833227545%_
                                           (cons _%lp-hd226832227543%_
                                                 _%args226834227538%_))))
                                      (let ((_%args226835227548%_
                                             (reverse _%args226834227538%_)))
                                        (let ((_%g226783227550%_
                                               _%args226835227548%_)
                                              (_%g226784227551%_
                                               _%hd226825227523%_)
                                              (_%g226785227552%_
                                               _%hd226816227499%_)
                                              (_%g226786227553%_
                                               _%hd226807227475%_)
                                              (_%g226787227554%_
                                               _%hd226798227451%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226787227554%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226786227553%_
                                                      'call-method))
                                                   (let ((__tmp232319
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self226729%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g226785227552%_
                                                      __tmp232319)))
                                              (_%__kont231163231164%_
                                               _%g226783227550%_
                                               _%g226784227551%_
                                               _%g226785227552%_
                                               _%g226786227553%_
                                               _%g226787227554%_)
                                              (_%__kont231175231176%_))))))))
                        (_%loop226830227533%_ _%target226827227528%_ '()))))
                   (_%__match231330231331%_
                    (lambda (_%e226788227424%_
                             _%hd226789227427%_
                             _%tl226790227429%_
                             _%e226791227432%_
                             _%hd226792227435%_
                             _%tl226793227437%_
                             _%e226794227440%_
                             _%hd226795227443%_
                             _%tl226796227445%_
                             _%e226797227448%_
                             _%hd226798227451%_
                             _%tl226799227453%_
                             _%e226800227456%_
                             _%hd226801227459%_
                             _%tl226802227461%_
                             _%e226803227464%_
                             _%hd226804227467%_
                             _%tl226805227469%_
                             _%e226806227472%_
                             _%hd226807227475%_
                             _%tl226808227477%_
                             _%e226809227480%_
                             _%hd226810227483%_
                             _%tl226811227485%_
                             _%e226812227488%_
                             _%hd226813227491%_
                             _%tl226814227493%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd226813227491%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226814227493%_))
                              (let ((_%e226815227496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl226814227493%_))))
                                (let ((_%tl226817227501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226815227496%_)))
                                      (_%hd226816227499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226815227496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl226817227501%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226811227485%_))
                                          (let ((_%e226818227504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl226811227485%_))))
                                            (let ((_%tl226820227509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226818227504%_)))
                                                  (_%hd226819227507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226818227504%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd226819227507%_))
                                                  (let ((_%e226821227512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd226819227507%_))))
                                                    (let ((_%tl226823227517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226821227512%_)))
                                                          (_%hd226822227515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226821227512%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd226822227515%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd226822227515%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226823227517%_))
                          (let ((_%e226824227520%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226823227517%_))))
                            (let ((_%tl226826227525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226824227520%_)))
                                  (_%hd226825227523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226824227520%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl226826227525%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl226820227509%_))
                                      (let ((_%__splice231165231166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl226820227509%_
                                                '0))))
                                        (let ((_%tl226829227530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice231165231166%_
                                                  '1)))
                                              (_%target226827227528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice231165231166%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226829227530%_))
                                              (_%__match231372231373%_
                                               _%e226788227424%_
                                               _%hd226789227427%_
                                               _%tl226790227429%_
                                               _%e226791227432%_
                                               _%hd226792227435%_
                                               _%tl226793227437%_
                                               _%e226794227440%_
                                               _%hd226795227443%_
                                               _%tl226796227445%_
                                               _%e226797227448%_
                                               _%hd226798227451%_
                                               _%tl226799227453%_
                                               _%e226800227456%_
                                               _%hd226801227459%_
                                               _%tl226802227461%_
                                               _%e226803227464%_
                                               _%hd226804227467%_
                                               _%tl226805227469%_
                                               _%e226806227472%_
                                               _%hd226807227475%_
                                               _%tl226808227477%_
                                               _%e226809227480%_
                                               _%hd226810227483%_
                                               _%tl226811227485%_
                                               _%e226812227488%_
                                               _%hd226813227491%_
                                               _%tl226814227493%_
                                               _%e226815227496%_
                                               _%hd226816227499%_
                                               _%tl226817227501%_
                                               _%e226818227504%_
                                               _%hd226819227507%_
                                               _%tl226820227509%_
                                               _%e226821227512%_
                                               _%hd226822227515%_
                                               _%tl226823227517%_
                                               _%e226824227520%_
                                               _%hd226825227523%_
                                               _%tl226826227525%_
                                               _%__splice231165231166%_
                                               _%target226827227528%_
                                               _%tl226829227530%_)
                                              (_%__kont231175231176%_))))
                                      (_%__kont231175231176%_))
                                  (_%__kont231175231176%_))))
                          (_%__kont231175231176%_))
                      (_%__kont231175231176%_))
                  (_%__kont231175231176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231175231176%_))))
                                          (_%__match231654231655%_
                                           _%e226788227424%_
                                           _%hd226789227427%_
                                           _%tl226790227429%_
                                           _%e226791227432%_
                                           _%hd226792227435%_
                                           _%tl226793227437%_
                                           _%e226794227440%_
                                           _%hd226795227443%_
                                           _%tl226796227445%_
                                           _%e226797227448%_
                                           _%hd226798227451%_
                                           _%tl226799227453%_
                                           _%e226800227456%_
                                           _%hd226801227459%_
                                           _%tl226802227461%_
                                           _%e226803227464%_
                                           _%hd226804227467%_
                                           _%tl226805227469%_
                                           _%e226806227472%_
                                           _%hd226807227475%_
                                           _%tl226808227477%_
                                           _%e226809227480%_
                                           _%hd226810227483%_
                                           _%tl226811227485%_))
                                      (_%__match231654231655%_
                                       _%e226788227424%_
                                       _%hd226789227427%_
                                       _%tl226790227429%_
                                       _%e226791227432%_
                                       _%hd226792227435%_
                                       _%tl226793227437%_
                                       _%e226794227440%_
                                       _%hd226795227443%_
                                       _%tl226796227445%_
                                       _%e226797227448%_
                                       _%hd226798227451%_
                                       _%tl226799227453%_
                                       _%e226800227456%_
                                       _%hd226801227459%_
                                       _%tl226802227461%_
                                       _%e226803227464%_
                                       _%hd226804227467%_
                                       _%tl226805227469%_
                                       _%e226806227472%_
                                       _%hd226807227475%_
                                       _%tl226808227477%_
                                       _%e226809227480%_
                                       _%hd226810227483%_
                                       _%tl226811227485%_))))
                              (_%__match231654231655%_
                               _%e226788227424%_
                               _%hd226789227427%_
                               _%tl226790227429%_
                               _%e226791227432%_
                               _%hd226792227435%_
                               _%tl226793227437%_
                               _%e226794227440%_
                               _%hd226795227443%_
                               _%tl226796227445%_
                               _%e226797227448%_
                               _%hd226798227451%_
                               _%tl226799227453%_
                               _%e226800227456%_
                               _%hd226801227459%_
                               _%tl226802227461%_
                               _%e226803227464%_
                               _%hd226804227467%_
                               _%tl226805227469%_
                               _%e226806227472%_
                               _%hd226807227475%_
                               _%tl226808227477%_
                               _%e226809227480%_
                               _%hd226810227483%_
                               _%tl226811227485%_))
                          (_%__match231440231441%_
                           _%e226788227424%_
                           _%hd226789227427%_
                           _%tl226790227429%_
                           _%e226791227432%_
                           _%hd226792227435%_
                           _%tl226793227437%_
                           _%e226794227440%_
                           _%hd226795227443%_
                           _%tl226796227445%_
                           _%e226797227448%_
                           _%hd226798227451%_
                           _%tl226799227453%_
                           _%e226800227456%_
                           _%hd226801227459%_
                           _%tl226802227461%_
                           _%e226803227464%_
                           _%hd226804227467%_
                           _%tl226805227469%_
                           _%e226806227472%_
                           _%hd226807227475%_
                           _%tl226808227477%_
                           _%e226809227480%_
                           _%hd226810227483%_
                           _%tl226811227485%_
                           _%e226812227488%_
                           _%hd226813227491%_
                           _%tl226814227493%_))))
                   (_%__match231262231263%_
                    (lambda (_%e226744227611%_
                             _%hd226745227614%_
                             _%tl226746227616%_
                             _%e226747227619%_
                             _%hd226748227622%_
                             _%tl226749227624%_
                             _%e226750227627%_
                             _%hd226751227630%_
                             _%tl226752227632%_
                             _%e226753227635%_
                             _%hd226754227638%_
                             _%tl226755227640%_
                             _%e226756227643%_
                             _%hd226757227646%_
                             _%tl226758227648%_
                             _%e226759227651%_
                             _%hd226760227654%_
                             _%tl226761227656%_
                             _%e226762227659%_
                             _%hd226763227662%_
                             _%tl226764227664%_
                             _%e226765227667%_
                             _%hd226766227670%_
                             _%tl226767227672%_
                             _%e226768227675%_
                             _%hd226769227678%_
                             _%tl226770227680%_
                             _%e226771227683%_
                             _%hd226772227686%_
                             _%tl226773227688%_
                             _%__splice231161231162%_
                             _%target226774227691%_
                             _%tl226776227693%_)
                      (letrec ((_%loop226777227696%_
                                (lambda (_%hd226775227699%_
                                         _%args226781227701%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd226775227699%_))
                                      (let ((_%e226778227703%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd226775227699%_))))
                                        (let ((_%lp-tl226780227708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226778227703%_)))
                                              (_%lp-hd226779227706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226778227703%_))))
                                          (_%loop226777227696%_
                                           _%lp-tl226780227708%_
                                           (cons _%lp-hd226779227706%_
                                                 _%args226781227701%_))))
                                      (let ((_%args226782227711%_
                                             (reverse _%args226781227701%_)))
                                        (let ((_%g226740227713%_
                                               _%args226782227711%_)
                                              (_%g226741227714%_
                                               _%hd226772227686%_)
                                              (_%g226742227715%_
                                               _%hd226763227662%_)
                                              (_%g226743227716%_
                                               _%hd226754227638%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g226743227716%_
                                                      'call-method))
                                                   (let ((__tmp232320
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self226729%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g226742227715%_
                                                      __tmp232320)))
                                              (_%__kont231159231160%_
                                               _%g226740227713%_
                                               _%g226741227714%_
                                               _%g226742227715%_
                                               _%g226743227716%_)
                                              (_%__match231450231451%_
                                               _%e226744227611%_
                                               _%hd226745227614%_
                                               _%tl226746227616%_
                                               _%e226747227619%_
                                               _%hd226748227622%_
                                               _%tl226749227624%_
                                               _%e226750227627%_
                                               _%hd226751227630%_
                                               _%tl226752227632%_
                                               _%e226753227635%_
                                               _%hd226754227638%_
                                               _%tl226755227640%_
                                               _%e226756227643%_
                                               _%hd226757227646%_
                                               _%tl226758227648%_
                                               _%e226759227651%_
                                               _%hd226760227654%_
                                               _%tl226761227656%_
                                               _%e226762227659%_
                                               _%hd226763227662%_
                                               _%tl226764227664%_
                                               _%e226765227667%_
                                               _%hd226766227670%_
                                               _%tl226767227672%_
                                               _%e226768227675%_
                                               _%hd226769227678%_
                                               _%tl226770227680%_
                                               _%e226771227683%_
                                               _%hd226772227686%_
                                               _%tl226773227688%_))))))))
                        (_%loop226777227696%_ _%target226774227691%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx231157231158%_))
                  (let ((_%e226744227611%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx231157231158%_))))
                    (let ((_%tl226746227616%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226744227611%_)))
                          (_%hd226745227614%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226744227611%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226746227616%_))
                          (let ((_%e226747227619%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl226746227616%_))))
                            (let ((_%tl226749227624%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226747227619%_)))
                                  (_%hd226748227622%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226747227619%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd226748227622%_))
                                  (let ((_%e226750227627%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd226748227622%_))))
                                    (let ((_%tl226752227632%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226750227627%_)))
                                          (_%hd226751227630%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226750227627%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd226751227630%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd226751227630%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226752227632%_))
                                                  (let ((_%e226753227635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl226752227632%_))))
                                                    (let ((_%tl226755227640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226753227635%_)))
                                                          (_%hd226754227638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226753227635%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226755227640%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl226749227624%_))
                      (let ((_%e226756227643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl226749227624%_))))
                        (let ((_%tl226758227648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226756227643%_)))
                              (_%hd226757227646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226756227643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd226757227646%_))
                              (let ((_%e226759227651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd226757227646%_))))
                                (let ((_%tl226761227656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226759227651%_)))
                                      (_%hd226760227654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226759227651%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd226760227654%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd226760227654%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl226761227656%_))
                                              (let ((_%e226762227659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl226761227656%_))))
                                                (let ((_%tl226764227664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e226762227659%_)))
                                                      (_%hd226763227662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e226762227659%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226764227664%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl226758227648%_))
                                                          (let ((_%e226765227667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl226758227648%_))))
                    (let ((_%tl226767227672%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226765227667%_)))
                          (_%hd226766227670%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226765227667%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd226766227670%_))
                          (let ((_%e226768227675%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd226766227670%_))))
                            (let ((_%tl226770227680%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226768227675%_)))
                                  (_%hd226769227678%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226768227675%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd226769227678%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd226769227678%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226770227680%_))
                                          (let ((_%e226771227683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl226770227680%_))))
                                            (let ((_%tl226773227688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226771227683%_)))
                                                  (_%hd226772227686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226771227683%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl226773227688%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl226767227672%_))
                                                      (let ((_%__splice231161231162%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl226767227672%_
                        '0))))
                (let ((_%tl226776227693%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice231161231162%_ '1)))
                      (_%target226774227691%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice231161231162%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl226776227693%_))
                      (_%__match231262231263%_
                       _%e226744227611%_
                       _%hd226745227614%_
                       _%tl226746227616%_
                       _%e226747227619%_
                       _%hd226748227622%_
                       _%tl226749227624%_
                       _%e226750227627%_
                       _%hd226751227630%_
                       _%tl226752227632%_
                       _%e226753227635%_
                       _%hd226754227638%_
                       _%tl226755227640%_
                       _%e226756227643%_
                       _%hd226757227646%_
                       _%tl226758227648%_
                       _%e226759227651%_
                       _%hd226760227654%_
                       _%tl226761227656%_
                       _%e226762227659%_
                       _%hd226763227662%_
                       _%tl226764227664%_
                       _%e226765227667%_
                       _%hd226766227670%_
                       _%tl226767227672%_
                       _%e226768227675%_
                       _%hd226769227678%_
                       _%tl226770227680%_
                       _%e226771227683%_
                       _%hd226772227686%_
                       _%tl226773227688%_
                       _%__splice231161231162%_
                       _%target226774227691%_
                       _%tl226776227693%_)
                      (_%__match231450231451%_
                       _%e226744227611%_
                       _%hd226745227614%_
                       _%tl226746227616%_
                       _%e226747227619%_
                       _%hd226748227622%_
                       _%tl226749227624%_
                       _%e226750227627%_
                       _%hd226751227630%_
                       _%tl226752227632%_
                       _%e226753227635%_
                       _%hd226754227638%_
                       _%tl226755227640%_
                       _%e226756227643%_
                       _%hd226757227646%_
                       _%tl226758227648%_
                       _%e226759227651%_
                       _%hd226760227654%_
                       _%tl226761227656%_
                       _%e226762227659%_
                       _%hd226763227662%_
                       _%tl226764227664%_
                       _%e226765227667%_
                       _%hd226766227670%_
                       _%tl226767227672%_
                       _%e226768227675%_
                       _%hd226769227678%_
                       _%tl226770227680%_
                       _%e226771227683%_
                       _%hd226772227686%_
                       _%tl226773227688%_))))
              (_%__match231450231451%_
               _%e226744227611%_
               _%hd226745227614%_
               _%tl226746227616%_
               _%e226747227619%_
               _%hd226748227622%_
               _%tl226749227624%_
               _%e226750227627%_
               _%hd226751227630%_
               _%tl226752227632%_
               _%e226753227635%_
               _%hd226754227638%_
               _%tl226755227640%_
               _%e226756227643%_
               _%hd226757227646%_
               _%tl226758227648%_
               _%e226759227651%_
               _%hd226760227654%_
               _%tl226761227656%_
               _%e226762227659%_
               _%hd226763227662%_
               _%tl226764227664%_
               _%e226765227667%_
               _%hd226766227670%_
               _%tl226767227672%_
               _%e226768227675%_
               _%hd226769227678%_
               _%tl226770227680%_
               _%e226771227683%_
               _%hd226772227686%_
               _%tl226773227688%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match231654231655%_
                                                   _%e226744227611%_
                                                   _%hd226745227614%_
                                                   _%tl226746227616%_
                                                   _%e226747227619%_
                                                   _%hd226748227622%_
                                                   _%tl226749227624%_
                                                   _%e226750227627%_
                                                   _%hd226751227630%_
                                                   _%tl226752227632%_
                                                   _%e226753227635%_
                                                   _%hd226754227638%_
                                                   _%tl226755227640%_
                                                   _%e226756227643%_
                                                   _%hd226757227646%_
                                                   _%tl226758227648%_
                                                   _%e226759227651%_
                                                   _%hd226760227654%_
                                                   _%tl226761227656%_
                                                   _%e226762227659%_
                                                   _%hd226763227662%_
                                                   _%tl226764227664%_
                                                   _%e226765227667%_
                                                   _%hd226766227670%_
                                                   _%tl226767227672%_))))
                                          (_%__match231654231655%_
                                           _%e226744227611%_
                                           _%hd226745227614%_
                                           _%tl226746227616%_
                                           _%e226747227619%_
                                           _%hd226748227622%_
                                           _%tl226749227624%_
                                           _%e226750227627%_
                                           _%hd226751227630%_
                                           _%tl226752227632%_
                                           _%e226753227635%_
                                           _%hd226754227638%_
                                           _%tl226755227640%_
                                           _%e226756227643%_
                                           _%hd226757227646%_
                                           _%tl226758227648%_
                                           _%e226759227651%_
                                           _%hd226760227654%_
                                           _%tl226761227656%_
                                           _%e226762227659%_
                                           _%hd226763227662%_
                                           _%tl226764227664%_
                                           _%e226765227667%_
                                           _%hd226766227670%_
                                           _%tl226767227672%_))
                                      (_%__match231330231331%_
                                       _%e226744227611%_
                                       _%hd226745227614%_
                                       _%tl226746227616%_
                                       _%e226747227619%_
                                       _%hd226748227622%_
                                       _%tl226749227624%_
                                       _%e226750227627%_
                                       _%hd226751227630%_
                                       _%tl226752227632%_
                                       _%e226753227635%_
                                       _%hd226754227638%_
                                       _%tl226755227640%_
                                       _%e226756227643%_
                                       _%hd226757227646%_
                                       _%tl226758227648%_
                                       _%e226759227651%_
                                       _%hd226760227654%_
                                       _%tl226761227656%_
                                       _%e226762227659%_
                                       _%hd226763227662%_
                                       _%tl226764227664%_
                                       _%e226765227667%_
                                       _%hd226766227670%_
                                       _%tl226767227672%_
                                       _%e226768227675%_
                                       _%hd226769227678%_
                                       _%tl226770227680%_))
                                  (_%__match231654231655%_
                                   _%e226744227611%_
                                   _%hd226745227614%_
                                   _%tl226746227616%_
                                   _%e226747227619%_
                                   _%hd226748227622%_
                                   _%tl226749227624%_
                                   _%e226750227627%_
                                   _%hd226751227630%_
                                   _%tl226752227632%_
                                   _%e226753227635%_
                                   _%hd226754227638%_
                                   _%tl226755227640%_
                                   _%e226756227643%_
                                   _%hd226757227646%_
                                   _%tl226758227648%_
                                   _%e226759227651%_
                                   _%hd226760227654%_
                                   _%tl226761227656%_
                                   _%e226762227659%_
                                   _%hd226763227662%_
                                   _%tl226764227664%_
                                   _%e226765227667%_
                                   _%hd226766227670%_
                                   _%tl226767227672%_))))
                          (_%__match231654231655%_
                           _%e226744227611%_
                           _%hd226745227614%_
                           _%tl226746227616%_
                           _%e226747227619%_
                           _%hd226748227622%_
                           _%tl226749227624%_
                           _%e226750227627%_
                           _%hd226751227630%_
                           _%tl226752227632%_
                           _%e226753227635%_
                           _%hd226754227638%_
                           _%tl226755227640%_
                           _%e226756227643%_
                           _%hd226757227646%_
                           _%tl226758227648%_
                           _%e226759227651%_
                           _%hd226760227654%_
                           _%tl226761227656%_
                           _%e226762227659%_
                           _%hd226763227662%_
                           _%tl226764227664%_
                           _%e226765227667%_
                           _%hd226766227670%_
                           _%tl226767227672%_))))
                  (_%__match231592231593%_
                   _%e226744227611%_
                   _%hd226745227614%_
                   _%tl226746227616%_
                   _%e226747227619%_
                   _%hd226748227622%_
                   _%tl226749227624%_
                   _%e226750227627%_
                   _%hd226751227630%_
                   _%tl226752227632%_
                   _%e226753227635%_
                   _%hd226754227638%_
                   _%tl226755227640%_
                   _%e226756227643%_
                   _%hd226757227646%_
                   _%tl226758227648%_
                   _%e226759227651%_
                   _%hd226760227654%_
                   _%tl226761227656%_
                   _%e226762227659%_
                   _%hd226763227662%_
                   _%tl226764227664%_))
              (_%__kont231175231176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont231175231176%_))
                                          (_%__kont231175231176%_))
                                      (_%__kont231175231176%_))))
                              (_%__kont231175231176%_))))
                      (_%__kont231175231176%_))
                  (_%__kont231175231176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont231175231176%_))
                                              (_%__kont231175231176%_))
                                          (_%__kont231175231176%_))))
                                  (_%__kont231175231176%_))))
                          (_%__kont231175231176%_))))
                  (_%__kont231175231176%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self225672%_ _%stx225673%_)
        (letrec ((_%force-e225675%_
                  (lambda (_%target226727%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target226727%_ '()))
                                      '()))))))
          (let* ((_%__stx231659231660%_ _%stx225673%_)
                 (_%g225683225905%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx231659231660%_)))))
            (let ((_%__kont231661231662%_
                   (lambda (_%g225685226673%_
                            _%g225686226674%_
                            _%g225687226675%_
                            _%g225688226676%_)
                     (let ((_%$method226721%_
                            (let ((__tmp232322
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225672%_ 'methods)))
                                  (__tmp232321
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225686226674%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232322 __tmp232321)))
                           (_%args226722%_
                            (map (lambda (_%g226709226711%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self225672%_
                                      _%g226709226711%_)))
                                 (let ((__tmp232323
                                        (lambda (_%g226713226716%_
                                                 _%g226714226718%_)
                                          (cons _%g226713226716%_
                                                _%g226714226718%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp232323
                                    '()
                                    _%g225685226673%_)))))
                       (let ((__tmp232324
                              (cons '%#call
                                    (cons (_%force-e225675%_ _%$method226721%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225672%_
                                                               'receiver))
                                                            '()))
                                                _%args226722%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232324 _%stx225673%_)))))
                  (_%__kont231665231666%_
                   (lambda (_%g225728226507%_
                            _%g225729226508%_
                            _%g225730226509%_
                            _%g225731226510%_
                            _%g225732226511%_)
                     (let ((_%$method226563%_
                            (let ((__tmp232326
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225672%_ 'methods)))
                                  (__tmp232325
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225729226508%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232326 __tmp232325)))
                           (_%args226564%_
                            (map (lambda (_%g226551226553%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self225672%_
                                      _%g226551226553%_)))
                                 (let ((__tmp232327
                                        (lambda (_%g226555226558%_
                                                 _%g226556226560%_)
                                          (cons _%g226555226558%_
                                                _%g226556226560%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp232327
                                    '()
                                    _%g225728226507%_)))))
                       (let ((__tmp232328
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e225675%_
                                                 _%$method226563%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self225672%_ 'receiver))
                          '()))
              _%args226564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232328 _%stx225673%_)))))
                  (_%__kont231669231670%_
                   (lambda (_%g225781226340%_
                            _%g225782226341%_
                            _%g225783226342%_)
                     (let* ((_%$field226374%_
                             (let ((__tmp232330
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self225672%_ 'slots)))
                                   (__tmp232329
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g225781226340%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp232330 __tmp232329)))
                            (__tmp232331
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self225672%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field226374%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self225672%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp232331 _%stx225673%_))))
                  (_%__kont231671231672%_
                   (lambda (_%g225814226214%_
                            _%g225815226215%_
                            _%g225816226216%_
                            _%g225817226217%_)
                     (let ((_%$field226252%_
                            (let ((__tmp232333
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self225672%_ 'slots)))
                                  (__tmp232332
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g225815226215%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp232333 __tmp232332)))
                           (_%expr226253%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self225672%_
                               _%g225814226214%_))))
                       (let ((__tmp232334
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self225672%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field226252%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self225672%_ 'receiver))
                          '()))
              (cons _%expr226253%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp232334 _%stx225673%_)))))
                  (_%__kont231673231674%_
                   (lambda (_%g225851226086%_ _%g225852226087%_)
                     (let* ((_%accessor226109%_
                             (let ((__tmp232335
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g225852226087%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp232335)))
                            (_%klass226111%_
                             (let ((__tmp232336
                                    (##structure-ref
                                     _%accessor226109%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx225673%_
                                __tmp232336)))
                            (_%slot226113%_
                             (##structure-ref
                              _%accessor226109%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor226109%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass226111%_
                                      _%slot226113%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass226111%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx225673%_
                           (let* ((_%$field226119%_
                                   (let ((__tmp232337
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225672%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp232337 _%slot226113%_)))
                                  (__tmp232338
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self225672%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field226119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self225672%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232338
                              _%stx225673%_))))))
                  (_%__kont231675231676%_
                   (lambda (_%g225874225981%_
                            _%g225875225982%_
                            _%g225876225983%_)
                     (let* ((_%mutator226011%_
                             (let ((__tmp232339
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g225876225983%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp232339)))
                            (_%klass226013%_
                             (let ((__tmp232340
                                    (##structure-ref
                                     _%mutator226011%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx225673%_
                                __tmp232340)))
                            (_%slot226015%_
                             (##structure-ref
                              _%mutator226011%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr226017%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self225672%_
                                _%g225874225981%_))))
                       (if (if (##structure-ref
                                _%mutator226011%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass226013%_
                                      _%slot226015%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass226013%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp232341
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g225876225983%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g225875225982%_
                                                                '()))
                                                    (cons _%expr226017%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp232341 _%stx225673%_))
                           (let* ((_%$field226023%_
                                   (let ((__tmp232342
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225672%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp232342 _%slot226015%_)))
                                  (__tmp232343
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self225672%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field226023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self225672%_ 'receiver))
                               '()))
                   (cons _%expr226017%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp232343
                              _%stx225673%_))))))
                  (_%__kont231677231678%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self225672%_ _%stx225673%_)))))
              (let* ((_%__match232158232159%_
                      (lambda (_%e225877225917%_
                               _%hd225878225920%_
                               _%tl225879225922%_
                               _%e225880225925%_
                               _%hd225881225928%_
                               _%tl225882225930%_
                               _%e225883225933%_
                               _%hd225884225936%_
                               _%tl225885225938%_
                               _%e225886225941%_
                               _%hd225887225944%_
                               _%tl225888225946%_
                               _%e225889225949%_
                               _%hd225890225952%_
                               _%tl225891225954%_
                               _%e225892225957%_
                               _%hd225893225960%_
                               _%tl225894225962%_
                               _%e225895225965%_
                               _%hd225896225968%_
                               _%tl225897225970%_
                               _%e225898225973%_
                               _%hd225899225976%_
                               _%tl225900225978%_)
                        (let ((_%g225874225981%_ _%hd225899225976%_)
                              (_%g225875225982%_ _%hd225896225968%_)
                              (_%g225876225983%_ _%hd225887225944%_))
                          (if (and (let ((__tmp232344
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225672%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225875225982%_
                                      __tmp232344))
                                   (let ((__tmp232345
                                          (let ((__tmp232346
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g225876225983%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp232346))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp232345
                                      'gxc#!mutator::t)))
                              (_%__kont231675231676%_
                               _%g225874225981%_
                               _%g225875225982%_
                               _%g225876225983%_)
                              (_%__kont231677231678%_)))))
                     (_%__match232156232157%_
                      (lambda (_%e225877225917%_
                               _%hd225878225920%_
                               _%tl225879225922%_
                               _%e225880225925%_
                               _%hd225881225928%_
                               _%tl225882225930%_
                               _%e225883225933%_
                               _%hd225884225936%_
                               _%tl225885225938%_
                               _%e225886225941%_
                               _%hd225887225944%_
                               _%tl225888225946%_
                               _%e225889225949%_
                               _%hd225890225952%_
                               _%tl225891225954%_
                               _%e225892225957%_
                               _%hd225893225960%_
                               _%tl225894225962%_
                               _%e225895225965%_
                               _%hd225896225968%_
                               _%tl225897225970%_
                               _%e225898225973%_
                               _%hd225899225976%_
                               _%tl225900225978%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225900225978%_))
                            (_%__match232158232159%_
                             _%e225877225917%_
                             _%hd225878225920%_
                             _%tl225879225922%_
                             _%e225880225925%_
                             _%hd225881225928%_
                             _%tl225882225930%_
                             _%e225883225933%_
                             _%hd225884225936%_
                             _%tl225885225938%_
                             _%e225886225941%_
                             _%hd225887225944%_
                             _%tl225888225946%_
                             _%e225889225949%_
                             _%hd225890225952%_
                             _%tl225891225954%_
                             _%e225892225957%_
                             _%hd225893225960%_
                             _%tl225894225962%_
                             _%e225895225965%_
                             _%hd225896225968%_
                             _%tl225897225970%_
                             _%e225898225973%_
                             _%hd225899225976%_
                             _%tl225900225978%_)
                            (_%__kont231677231678%_))))
                     (_%__match232150232151%_
                      (lambda (_%e225877225917%_
                               _%hd225878225920%_
                               _%tl225879225922%_
                               _%e225880225925%_
                               _%hd225881225928%_
                               _%tl225882225930%_
                               _%e225883225933%_
                               _%hd225884225936%_
                               _%tl225885225938%_
                               _%e225886225941%_
                               _%hd225887225944%_
                               _%tl225888225946%_
                               _%e225889225949%_
                               _%hd225890225952%_
                               _%tl225891225954%_
                               _%e225892225957%_
                               _%hd225893225960%_
                               _%tl225894225962%_
                               _%e225895225965%_
                               _%hd225896225968%_
                               _%tl225897225970%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225891225954%_))
                            (let ((_%e225898225973%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225891225954%_))))
                              (let ((_%tl225900225978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225898225973%_)))
                                    (_%hd225899225976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225898225973%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225900225978%_))
                                    (_%__match232158232159%_
                                     _%e225877225917%_
                                     _%hd225878225920%_
                                     _%tl225879225922%_
                                     _%e225880225925%_
                                     _%hd225881225928%_
                                     _%tl225882225930%_
                                     _%e225883225933%_
                                     _%hd225884225936%_
                                     _%tl225885225938%_
                                     _%e225886225941%_
                                     _%hd225887225944%_
                                     _%tl225888225946%_
                                     _%e225889225949%_
                                     _%hd225890225952%_
                                     _%tl225891225954%_
                                     _%e225892225957%_
                                     _%hd225893225960%_
                                     _%tl225894225962%_
                                     _%e225895225965%_
                                     _%hd225896225968%_
                                     _%tl225897225970%_
                                     _%e225898225973%_
                                     _%hd225899225976%_
                                     _%tl225900225978%_)
                                    (_%__kont231677231678%_))))
                            (_%__kont231677231678%_))))
                     (_%__match232096232097%_
                      (lambda (_%e225853226030%_
                               _%hd225854226033%_
                               _%tl225855226035%_
                               _%e225856226038%_
                               _%hd225857226041%_
                               _%tl225858226043%_
                               _%e225859226046%_
                               _%hd225860226049%_
                               _%tl225861226051%_
                               _%e225862226054%_
                               _%hd225863226057%_
                               _%tl225864226059%_
                               _%e225865226062%_
                               _%hd225866226065%_
                               _%tl225867226067%_
                               _%e225868226070%_
                               _%hd225869226073%_
                               _%tl225870226075%_
                               _%e225871226078%_
                               _%hd225872226081%_
                               _%tl225873226083%_)
                        (let ((_%g225851226086%_ _%hd225872226081%_)
                              (_%g225852226087%_ _%hd225863226057%_))
                          (if (and (let ((__tmp232347
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225672%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225851226086%_
                                      __tmp232347))
                                   (let ((__tmp232348
                                          (let ((__tmp232349
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g225852226087%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp232349))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp232348
                                      'gxc#!accessor::t)))
                              (_%__kont231673231674%_
                               _%g225851226086%_
                               _%g225852226087%_)
                              (_%__kont231677231678%_)))))
                     (_%__match232094232095%_
                      (lambda (_%e225853226030%_
                               _%hd225854226033%_
                               _%tl225855226035%_
                               _%e225856226038%_
                               _%hd225857226041%_
                               _%tl225858226043%_
                               _%e225859226046%_
                               _%hd225860226049%_
                               _%tl225861226051%_
                               _%e225862226054%_
                               _%hd225863226057%_
                               _%tl225864226059%_
                               _%e225865226062%_
                               _%hd225866226065%_
                               _%tl225867226067%_
                               _%e225868226070%_
                               _%hd225869226073%_
                               _%tl225870226075%_
                               _%e225871226078%_
                               _%hd225872226081%_
                               _%tl225873226083%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225867226067%_))
                            (_%__match232096232097%_
                             _%e225853226030%_
                             _%hd225854226033%_
                             _%tl225855226035%_
                             _%e225856226038%_
                             _%hd225857226041%_
                             _%tl225858226043%_
                             _%e225859226046%_
                             _%hd225860226049%_
                             _%tl225861226051%_
                             _%e225862226054%_
                             _%hd225863226057%_
                             _%tl225864226059%_
                             _%e225865226062%_
                             _%hd225866226065%_
                             _%tl225867226067%_
                             _%e225868226070%_
                             _%hd225869226073%_
                             _%tl225870226075%_
                             _%e225871226078%_
                             _%hd225872226081%_
                             _%tl225873226083%_)
                            (_%__match232150232151%_
                             _%e225853226030%_
                             _%hd225854226033%_
                             _%tl225855226035%_
                             _%e225856226038%_
                             _%hd225857226041%_
                             _%tl225858226043%_
                             _%e225859226046%_
                             _%hd225860226049%_
                             _%tl225861226051%_
                             _%e225862226054%_
                             _%hd225863226057%_
                             _%tl225864226059%_
                             _%e225865226062%_
                             _%hd225866226065%_
                             _%tl225867226067%_
                             _%e225868226070%_
                             _%hd225869226073%_
                             _%tl225870226075%_
                             _%e225871226078%_
                             _%hd225872226081%_
                             _%tl225873226083%_))))
                     (_%__match232040232041%_
                      (lambda (_%e225818226126%_
                               _%hd225819226129%_
                               _%tl225820226131%_
                               _%e225821226134%_
                               _%hd225822226137%_
                               _%tl225823226139%_
                               _%e225824226142%_
                               _%hd225825226145%_
                               _%tl225826226147%_
                               _%e225827226150%_
                               _%hd225828226153%_
                               _%tl225829226155%_
                               _%e225830226158%_
                               _%hd225831226161%_
                               _%tl225832226163%_
                               _%e225833226166%_
                               _%hd225834226169%_
                               _%tl225835226171%_
                               _%e225836226174%_
                               _%hd225837226177%_
                               _%tl225838226179%_
                               _%e225839226182%_
                               _%hd225840226185%_
                               _%tl225841226187%_
                               _%e225842226190%_
                               _%hd225843226193%_
                               _%tl225844226195%_
                               _%e225845226198%_
                               _%hd225846226201%_
                               _%tl225847226203%_
                               _%e225848226206%_
                               _%hd225849226209%_
                               _%tl225850226211%_)
                        (let ((_%g225814226214%_ _%hd225849226209%_)
                              (_%g225815226215%_ _%hd225846226201%_)
                              (_%g225816226216%_ _%hd225837226177%_)
                              (_%g225817226217%_ _%hd225828226153%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225817226217%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225817226217%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp232350
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225672%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225816226216%_
                                      __tmp232350)))
                              (_%__kont231671231672%_
                               _%g225814226214%_
                               _%g225815226215%_
                               _%g225816226216%_
                               _%g225817226217%_)
                              (_%__kont231677231678%_)))))
                     (_%__match232032232033%_
                      (lambda (_%e225818226126%_
                               _%hd225819226129%_
                               _%tl225820226131%_
                               _%e225821226134%_
                               _%hd225822226137%_
                               _%tl225823226139%_
                               _%e225824226142%_
                               _%hd225825226145%_
                               _%tl225826226147%_
                               _%e225827226150%_
                               _%hd225828226153%_
                               _%tl225829226155%_
                               _%e225830226158%_
                               _%hd225831226161%_
                               _%tl225832226163%_
                               _%e225833226166%_
                               _%hd225834226169%_
                               _%tl225835226171%_
                               _%e225836226174%_
                               _%hd225837226177%_
                               _%tl225838226179%_
                               _%e225839226182%_
                               _%hd225840226185%_
                               _%tl225841226187%_
                               _%e225842226190%_
                               _%hd225843226193%_
                               _%tl225844226195%_
                               _%e225845226198%_
                               _%hd225846226201%_
                               _%tl225847226203%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225841226187%_))
                            (let ((_%e225848226206%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225841226187%_))))
                              (let ((_%tl225850226211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225848226206%_)))
                                    (_%hd225849226209%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225848226206%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225850226211%_))
                                    (_%__match232040232041%_
                                     _%e225818226126%_
                                     _%hd225819226129%_
                                     _%tl225820226131%_
                                     _%e225821226134%_
                                     _%hd225822226137%_
                                     _%tl225823226139%_
                                     _%e225824226142%_
                                     _%hd225825226145%_
                                     _%tl225826226147%_
                                     _%e225827226150%_
                                     _%hd225828226153%_
                                     _%tl225829226155%_
                                     _%e225830226158%_
                                     _%hd225831226161%_
                                     _%tl225832226163%_
                                     _%e225833226166%_
                                     _%hd225834226169%_
                                     _%tl225835226171%_
                                     _%e225836226174%_
                                     _%hd225837226177%_
                                     _%tl225838226179%_
                                     _%e225839226182%_
                                     _%hd225840226185%_
                                     _%tl225841226187%_
                                     _%e225842226190%_
                                     _%hd225843226193%_
                                     _%tl225844226195%_
                                     _%e225845226198%_
                                     _%hd225846226201%_
                                     _%tl225847226203%_
                                     _%e225848226206%_
                                     _%hd225849226209%_
                                     _%tl225850226211%_)
                                    (_%__kont231677231678%_))))
                            (_%__match232156232157%_
                             _%e225818226126%_
                             _%hd225819226129%_
                             _%tl225820226131%_
                             _%e225821226134%_
                             _%hd225822226137%_
                             _%tl225823226139%_
                             _%e225824226142%_
                             _%hd225825226145%_
                             _%tl225826226147%_
                             _%e225827226150%_
                             _%hd225828226153%_
                             _%tl225829226155%_
                             _%e225830226158%_
                             _%hd225831226161%_
                             _%tl225832226163%_
                             _%e225833226166%_
                             _%hd225834226169%_
                             _%tl225835226171%_
                             _%e225836226174%_
                             _%hd225837226177%_
                             _%tl225838226179%_
                             _%e225839226182%_
                             _%hd225840226185%_
                             _%tl225841226187%_))))
                     (_%__match231954231955%_
                      (lambda (_%e225784226260%_
                               _%hd225785226263%_
                               _%tl225786226265%_
                               _%e225787226268%_
                               _%hd225788226271%_
                               _%tl225789226273%_
                               _%e225790226276%_
                               _%hd225791226279%_
                               _%tl225792226281%_
                               _%e225793226284%_
                               _%hd225794226287%_
                               _%tl225795226289%_
                               _%e225796226292%_
                               _%hd225797226295%_
                               _%tl225798226297%_
                               _%e225799226300%_
                               _%hd225800226303%_
                               _%tl225801226305%_
                               _%e225802226308%_
                               _%hd225803226311%_
                               _%tl225804226313%_
                               _%e225805226316%_
                               _%hd225806226319%_
                               _%tl225807226321%_
                               _%e225808226324%_
                               _%hd225809226327%_
                               _%tl225810226329%_
                               _%e225811226332%_
                               _%hd225812226335%_
                               _%tl225813226337%_)
                        (let ((_%g225781226340%_ _%hd225812226335%_)
                              (_%g225782226341%_ _%hd225803226311%_)
                              (_%g225783226342%_ _%hd225794226287%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225783226342%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g225783226342%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp232351
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self225672%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g225782226341%_
                                      __tmp232351)))
                              (_%__kont231669231670%_
                               _%g225781226340%_
                               _%g225782226341%_
                               _%g225783226342%_)
                              (_%__match232158232159%_
                               _%e225784226260%_
                               _%hd225785226263%_
                               _%tl225786226265%_
                               _%e225787226268%_
                               _%hd225788226271%_
                               _%tl225789226273%_
                               _%e225790226276%_
                               _%hd225791226279%_
                               _%tl225792226281%_
                               _%e225793226284%_
                               _%hd225794226287%_
                               _%tl225795226289%_
                               _%e225796226292%_
                               _%hd225797226295%_
                               _%tl225798226297%_
                               _%e225799226300%_
                               _%hd225800226303%_
                               _%tl225801226305%_
                               _%e225802226308%_
                               _%hd225803226311%_
                               _%tl225804226313%_
                               _%e225805226316%_
                               _%hd225806226319%_
                               _%tl225807226321%_)))))
                     (_%__match231952231953%_
                      (lambda (_%e225784226260%_
                               _%hd225785226263%_
                               _%tl225786226265%_
                               _%e225787226268%_
                               _%hd225788226271%_
                               _%tl225789226273%_
                               _%e225790226276%_
                               _%hd225791226279%_
                               _%tl225792226281%_
                               _%e225793226284%_
                               _%hd225794226287%_
                               _%tl225795226289%_
                               _%e225796226292%_
                               _%hd225797226295%_
                               _%tl225798226297%_
                               _%e225799226300%_
                               _%hd225800226303%_
                               _%tl225801226305%_
                               _%e225802226308%_
                               _%hd225803226311%_
                               _%tl225804226313%_
                               _%e225805226316%_
                               _%hd225806226319%_
                               _%tl225807226321%_
                               _%e225808226324%_
                               _%hd225809226327%_
                               _%tl225810226329%_
                               _%e225811226332%_
                               _%hd225812226335%_
                               _%tl225813226337%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl225807226321%_))
                            (_%__match231954231955%_
                             _%e225784226260%_
                             _%hd225785226263%_
                             _%tl225786226265%_
                             _%e225787226268%_
                             _%hd225788226271%_
                             _%tl225789226273%_
                             _%e225790226276%_
                             _%hd225791226279%_
                             _%tl225792226281%_
                             _%e225793226284%_
                             _%hd225794226287%_
                             _%tl225795226289%_
                             _%e225796226292%_
                             _%hd225797226295%_
                             _%tl225798226297%_
                             _%e225799226300%_
                             _%hd225800226303%_
                             _%tl225801226305%_
                             _%e225802226308%_
                             _%hd225803226311%_
                             _%tl225804226313%_
                             _%e225805226316%_
                             _%hd225806226319%_
                             _%tl225807226321%_
                             _%e225808226324%_
                             _%hd225809226327%_
                             _%tl225810226329%_
                             _%e225811226332%_
                             _%hd225812226335%_
                             _%tl225813226337%_)
                            (_%__match232032232033%_
                             _%e225784226260%_
                             _%hd225785226263%_
                             _%tl225786226265%_
                             _%e225787226268%_
                             _%hd225788226271%_
                             _%tl225789226273%_
                             _%e225790226276%_
                             _%hd225791226279%_
                             _%tl225792226281%_
                             _%e225793226284%_
                             _%hd225794226287%_
                             _%tl225795226289%_
                             _%e225796226292%_
                             _%hd225797226295%_
                             _%tl225798226297%_
                             _%e225799226300%_
                             _%hd225800226303%_
                             _%tl225801226305%_
                             _%e225802226308%_
                             _%hd225803226311%_
                             _%tl225804226313%_
                             _%e225805226316%_
                             _%hd225806226319%_
                             _%tl225807226321%_
                             _%e225808226324%_
                             _%hd225809226327%_
                             _%tl225810226329%_
                             _%e225811226332%_
                             _%hd225812226335%_
                             _%tl225813226337%_))))
                     (_%__match231942231943%_
                      (lambda (_%e225784226260%_
                               _%hd225785226263%_
                               _%tl225786226265%_
                               _%e225787226268%_
                               _%hd225788226271%_
                               _%tl225789226273%_
                               _%e225790226276%_
                               _%hd225791226279%_
                               _%tl225792226281%_
                               _%e225793226284%_
                               _%hd225794226287%_
                               _%tl225795226289%_
                               _%e225796226292%_
                               _%hd225797226295%_
                               _%tl225798226297%_
                               _%e225799226300%_
                               _%hd225800226303%_
                               _%tl225801226305%_
                               _%e225802226308%_
                               _%hd225803226311%_
                               _%tl225804226313%_
                               _%e225805226316%_
                               _%hd225806226319%_
                               _%tl225807226321%_
                               _%e225808226324%_
                               _%hd225809226327%_
                               _%tl225810226329%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd225809226327%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225810226329%_))
                                (let ((_%e225811226332%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl225810226329%_))))
                                  (let ((_%tl225813226337%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225811226332%_)))
                                        (_%hd225812226335%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225811226332%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225813226337%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl225807226321%_))
                                            (_%__match231954231955%_
                                             _%e225784226260%_
                                             _%hd225785226263%_
                                             _%tl225786226265%_
                                             _%e225787226268%_
                                             _%hd225788226271%_
                                             _%tl225789226273%_
                                             _%e225790226276%_
                                             _%hd225791226279%_
                                             _%tl225792226281%_
                                             _%e225793226284%_
                                             _%hd225794226287%_
                                             _%tl225795226289%_
                                             _%e225796226292%_
                                             _%hd225797226295%_
                                             _%tl225798226297%_
                                             _%e225799226300%_
                                             _%hd225800226303%_
                                             _%tl225801226305%_
                                             _%e225802226308%_
                                             _%hd225803226311%_
                                             _%tl225804226313%_
                                             _%e225805226316%_
                                             _%hd225806226319%_
                                             _%tl225807226321%_
                                             _%e225808226324%_
                                             _%hd225809226327%_
                                             _%tl225810226329%_
                                             _%e225811226332%_
                                             _%hd225812226335%_
                                             _%tl225813226337%_)
                                            (_%__match232032232033%_
                                             _%e225784226260%_
                                             _%hd225785226263%_
                                             _%tl225786226265%_
                                             _%e225787226268%_
                                             _%hd225788226271%_
                                             _%tl225789226273%_
                                             _%e225790226276%_
                                             _%hd225791226279%_
                                             _%tl225792226281%_
                                             _%e225793226284%_
                                             _%hd225794226287%_
                                             _%tl225795226289%_
                                             _%e225796226292%_
                                             _%hd225797226295%_
                                             _%tl225798226297%_
                                             _%e225799226300%_
                                             _%hd225800226303%_
                                             _%tl225801226305%_
                                             _%e225802226308%_
                                             _%hd225803226311%_
                                             _%tl225804226313%_
                                             _%e225805226316%_
                                             _%hd225806226319%_
                                             _%tl225807226321%_
                                             _%e225808226324%_
                                             _%hd225809226327%_
                                             _%tl225810226329%_
                                             _%e225811226332%_
                                             _%hd225812226335%_
                                             _%tl225813226337%_))
                                        (_%__match232156232157%_
                                         _%e225784226260%_
                                         _%hd225785226263%_
                                         _%tl225786226265%_
                                         _%e225787226268%_
                                         _%hd225788226271%_
                                         _%tl225789226273%_
                                         _%e225790226276%_
                                         _%hd225791226279%_
                                         _%tl225792226281%_
                                         _%e225793226284%_
                                         _%hd225794226287%_
                                         _%tl225795226289%_
                                         _%e225796226292%_
                                         _%hd225797226295%_
                                         _%tl225798226297%_
                                         _%e225799226300%_
                                         _%hd225800226303%_
                                         _%tl225801226305%_
                                         _%e225802226308%_
                                         _%hd225803226311%_
                                         _%tl225804226313%_
                                         _%e225805226316%_
                                         _%hd225806226319%_
                                         _%tl225807226321%_))))
                                (_%__match232156232157%_
                                 _%e225784226260%_
                                 _%hd225785226263%_
                                 _%tl225786226265%_
                                 _%e225787226268%_
                                 _%hd225788226271%_
                                 _%tl225789226273%_
                                 _%e225790226276%_
                                 _%hd225791226279%_
                                 _%tl225792226281%_
                                 _%e225793226284%_
                                 _%hd225794226287%_
                                 _%tl225795226289%_
                                 _%e225796226292%_
                                 _%hd225797226295%_
                                 _%tl225798226297%_
                                 _%e225799226300%_
                                 _%hd225800226303%_
                                 _%tl225801226305%_
                                 _%e225802226308%_
                                 _%hd225803226311%_
                                 _%tl225804226313%_
                                 _%e225805226316%_
                                 _%hd225806226319%_
                                 _%tl225807226321%_))
                            (_%__match232156232157%_
                             _%e225784226260%_
                             _%hd225785226263%_
                             _%tl225786226265%_
                             _%e225787226268%_
                             _%hd225788226271%_
                             _%tl225789226273%_
                             _%e225790226276%_
                             _%hd225791226279%_
                             _%tl225792226281%_
                             _%e225793226284%_
                             _%hd225794226287%_
                             _%tl225795226289%_
                             _%e225796226292%_
                             _%hd225797226295%_
                             _%tl225798226297%_
                             _%e225799226300%_
                             _%hd225800226303%_
                             _%tl225801226305%_
                             _%e225802226308%_
                             _%hd225803226311%_
                             _%tl225804226313%_
                             _%e225805226316%_
                             _%hd225806226319%_
                             _%tl225807226321%_))))
                     (_%__match231874231875%_
                      (lambda (_%e225733226381%_
                               _%hd225734226384%_
                               _%tl225735226386%_
                               _%e225736226389%_
                               _%hd225737226392%_
                               _%tl225738226394%_
                               _%e225739226397%_
                               _%hd225740226400%_
                               _%tl225741226402%_
                               _%e225742226405%_
                               _%hd225743226408%_
                               _%tl225744226410%_
                               _%e225745226413%_
                               _%hd225746226416%_
                               _%tl225747226418%_
                               _%e225748226421%_
                               _%hd225749226424%_
                               _%tl225750226426%_
                               _%e225751226429%_
                               _%hd225752226432%_
                               _%tl225753226434%_
                               _%e225754226437%_
                               _%hd225755226440%_
                               _%tl225756226442%_
                               _%e225757226445%_
                               _%hd225758226448%_
                               _%tl225759226450%_
                               _%e225760226453%_
                               _%hd225761226456%_
                               _%tl225762226458%_
                               _%e225763226461%_
                               _%hd225764226464%_
                               _%tl225765226466%_
                               _%e225766226469%_
                               _%hd225767226472%_
                               _%tl225768226474%_
                               _%e225769226477%_
                               _%hd225770226480%_
                               _%tl225771226482%_
                               _%__splice231667231668%_
                               _%target225772226485%_
                               _%tl225774226487%_)
                        (letrec ((_%loop225775226490%_
                                  (lambda (_%hd225773226493%_
                                           _%args225779226495%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd225773226493%_))
                                        (let ((_%e225776226497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd225773226493%_))))
                                          (let ((_%lp-tl225778226502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225776226497%_)))
                                                (_%lp-hd225777226500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225776226497%_))))
                                            (_%loop225775226490%_
                                             _%lp-tl225778226502%_
                                             (cons _%lp-hd225777226500%_
                                                   _%args225779226495%_))))
                                        (let ((_%args225780226505%_
                                               (reverse _%args225779226495%_)))
                                          (let ((_%g225728226507%_
                                                 _%args225780226505%_)
                                                (_%g225729226508%_
                                                 _%hd225770226480%_)
                                                (_%g225730226509%_
                                                 _%hd225761226456%_)
                                                (_%g225731226510%_
                                                 _%hd225752226432%_)
                                                (_%g225732226511%_
                                                 _%hd225743226408%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225732226511%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225731226510%_
                                                        'call-method))
                                                     (let ((__tmp232352
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225672%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g225730226509%_
                                                        __tmp232352)))
                                                (_%__kont231665231666%_
                                                 _%g225728226507%_
                                                 _%g225729226508%_
                                                 _%g225730226509%_
                                                 _%g225731226510%_
                                                 _%g225732226511%_)
                                                (_%__kont231677231678%_))))))))
                          (_%loop225775226490%_ _%target225772226485%_ '()))))
                     (_%__match231832231833%_
                      (lambda (_%e225733226381%_
                               _%hd225734226384%_
                               _%tl225735226386%_
                               _%e225736226389%_
                               _%hd225737226392%_
                               _%tl225738226394%_
                               _%e225739226397%_
                               _%hd225740226400%_
                               _%tl225741226402%_
                               _%e225742226405%_
                               _%hd225743226408%_
                               _%tl225744226410%_
                               _%e225745226413%_
                               _%hd225746226416%_
                               _%tl225747226418%_
                               _%e225748226421%_
                               _%hd225749226424%_
                               _%tl225750226426%_
                               _%e225751226429%_
                               _%hd225752226432%_
                               _%tl225753226434%_
                               _%e225754226437%_
                               _%hd225755226440%_
                               _%tl225756226442%_
                               _%e225757226445%_
                               _%hd225758226448%_
                               _%tl225759226450%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd225758226448%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl225759226450%_))
                                (let ((_%e225760226453%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl225759226450%_))))
                                  (let ((_%tl225762226458%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225760226453%_)))
                                        (_%hd225761226456%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225760226453%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl225762226458%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl225756226442%_))
                                            (let ((_%e225763226461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl225756226442%_))))
                                              (let ((_%tl225765226466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e225763226461%_)))
                                                    (_%hd225764226464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e225763226461%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd225764226464%_))
                                                    (let ((_%e225766226469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd225764226464%_))))
                                                      (let ((_%tl225768226474%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e225766226469%_)))
                    (_%hd225767226472%_
                     (let () (declare (not safe)) (##car _%e225766226469%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd225767226472%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd225767226472%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225768226474%_))
                            (let ((_%e225769226477%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225768226474%_))))
                              (let ((_%tl225771226482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225769226477%_)))
                                    (_%hd225770226480%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225769226477%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl225771226482%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl225765226466%_))
                                        (let ((_%__splice231667231668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl225765226466%_
                                                  '0))))
                                          (let ((_%tl225774226487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice231667231668%_
                                                    '1)))
                                                (_%target225772226485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice231667231668%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl225774226487%_))
                                                (_%__match231874231875%_
                                                 _%e225733226381%_
                                                 _%hd225734226384%_
                                                 _%tl225735226386%_
                                                 _%e225736226389%_
                                                 _%hd225737226392%_
                                                 _%tl225738226394%_
                                                 _%e225739226397%_
                                                 _%hd225740226400%_
                                                 _%tl225741226402%_
                                                 _%e225742226405%_
                                                 _%hd225743226408%_
                                                 _%tl225744226410%_
                                                 _%e225745226413%_
                                                 _%hd225746226416%_
                                                 _%tl225747226418%_
                                                 _%e225748226421%_
                                                 _%hd225749226424%_
                                                 _%tl225750226426%_
                                                 _%e225751226429%_
                                                 _%hd225752226432%_
                                                 _%tl225753226434%_
                                                 _%e225754226437%_
                                                 _%hd225755226440%_
                                                 _%tl225756226442%_
                                                 _%e225757226445%_
                                                 _%hd225758226448%_
                                                 _%tl225759226450%_
                                                 _%e225760226453%_
                                                 _%hd225761226456%_
                                                 _%tl225762226458%_
                                                 _%e225763226461%_
                                                 _%hd225764226464%_
                                                 _%tl225765226466%_
                                                 _%e225766226469%_
                                                 _%hd225767226472%_
                                                 _%tl225768226474%_
                                                 _%e225769226477%_
                                                 _%hd225770226480%_
                                                 _%tl225771226482%_
                                                 _%__splice231667231668%_
                                                 _%target225772226485%_
                                                 _%tl225774226487%_)
                                                (_%__kont231677231678%_))))
                                        (_%__kont231677231678%_))
                                    (_%__kont231677231678%_))))
                            (_%__kont231677231678%_))
                        (_%__kont231677231678%_))
                    (_%__kont231677231678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont231677231678%_))))
                                            (_%__match232156232157%_
                                             _%e225733226381%_
                                             _%hd225734226384%_
                                             _%tl225735226386%_
                                             _%e225736226389%_
                                             _%hd225737226392%_
                                             _%tl225738226394%_
                                             _%e225739226397%_
                                             _%hd225740226400%_
                                             _%tl225741226402%_
                                             _%e225742226405%_
                                             _%hd225743226408%_
                                             _%tl225744226410%_
                                             _%e225745226413%_
                                             _%hd225746226416%_
                                             _%tl225747226418%_
                                             _%e225748226421%_
                                             _%hd225749226424%_
                                             _%tl225750226426%_
                                             _%e225751226429%_
                                             _%hd225752226432%_
                                             _%tl225753226434%_
                                             _%e225754226437%_
                                             _%hd225755226440%_
                                             _%tl225756226442%_))
                                        (_%__match232156232157%_
                                         _%e225733226381%_
                                         _%hd225734226384%_
                                         _%tl225735226386%_
                                         _%e225736226389%_
                                         _%hd225737226392%_
                                         _%tl225738226394%_
                                         _%e225739226397%_
                                         _%hd225740226400%_
                                         _%tl225741226402%_
                                         _%e225742226405%_
                                         _%hd225743226408%_
                                         _%tl225744226410%_
                                         _%e225745226413%_
                                         _%hd225746226416%_
                                         _%tl225747226418%_
                                         _%e225748226421%_
                                         _%hd225749226424%_
                                         _%tl225750226426%_
                                         _%e225751226429%_
                                         _%hd225752226432%_
                                         _%tl225753226434%_
                                         _%e225754226437%_
                                         _%hd225755226440%_
                                         _%tl225756226442%_))))
                                (_%__match232156232157%_
                                 _%e225733226381%_
                                 _%hd225734226384%_
                                 _%tl225735226386%_
                                 _%e225736226389%_
                                 _%hd225737226392%_
                                 _%tl225738226394%_
                                 _%e225739226397%_
                                 _%hd225740226400%_
                                 _%tl225741226402%_
                                 _%e225742226405%_
                                 _%hd225743226408%_
                                 _%tl225744226410%_
                                 _%e225745226413%_
                                 _%hd225746226416%_
                                 _%tl225747226418%_
                                 _%e225748226421%_
                                 _%hd225749226424%_
                                 _%tl225750226426%_
                                 _%e225751226429%_
                                 _%hd225752226432%_
                                 _%tl225753226434%_
                                 _%e225754226437%_
                                 _%hd225755226440%_
                                 _%tl225756226442%_))
                            (_%__match231942231943%_
                             _%e225733226381%_
                             _%hd225734226384%_
                             _%tl225735226386%_
                             _%e225736226389%_
                             _%hd225737226392%_
                             _%tl225738226394%_
                             _%e225739226397%_
                             _%hd225740226400%_
                             _%tl225741226402%_
                             _%e225742226405%_
                             _%hd225743226408%_
                             _%tl225744226410%_
                             _%e225745226413%_
                             _%hd225746226416%_
                             _%tl225747226418%_
                             _%e225748226421%_
                             _%hd225749226424%_
                             _%tl225750226426%_
                             _%e225751226429%_
                             _%hd225752226432%_
                             _%tl225753226434%_
                             _%e225754226437%_
                             _%hd225755226440%_
                             _%tl225756226442%_
                             _%e225757226445%_
                             _%hd225758226448%_
                             _%tl225759226450%_))))
                     (_%__match231764231765%_
                      (lambda (_%e225689226571%_
                               _%hd225690226574%_
                               _%tl225691226576%_
                               _%e225692226579%_
                               _%hd225693226582%_
                               _%tl225694226584%_
                               _%e225695226587%_
                               _%hd225696226590%_
                               _%tl225697226592%_
                               _%e225698226595%_
                               _%hd225699226598%_
                               _%tl225700226600%_
                               _%e225701226603%_
                               _%hd225702226606%_
                               _%tl225703226608%_
                               _%e225704226611%_
                               _%hd225705226614%_
                               _%tl225706226616%_
                               _%e225707226619%_
                               _%hd225708226622%_
                               _%tl225709226624%_
                               _%e225710226627%_
                               _%hd225711226630%_
                               _%tl225712226632%_
                               _%e225713226635%_
                               _%hd225714226638%_
                               _%tl225715226640%_
                               _%e225716226643%_
                               _%hd225717226646%_
                               _%tl225718226648%_
                               _%__splice231663231664%_
                               _%target225719226651%_
                               _%tl225721226653%_)
                        (letrec ((_%loop225722226656%_
                                  (lambda (_%hd225720226659%_
                                           _%args225726226661%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd225720226659%_))
                                        (let ((_%e225723226663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd225720226659%_))))
                                          (let ((_%lp-tl225725226668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e225723226663%_)))
                                                (_%lp-hd225724226666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e225723226663%_))))
                                            (_%loop225722226656%_
                                             _%lp-tl225725226668%_
                                             (cons _%lp-hd225724226666%_
                                                   _%args225726226661%_))))
                                        (let ((_%args225727226671%_
                                               (reverse _%args225726226661%_)))
                                          (let ((_%g225685226673%_
                                                 _%args225727226671%_)
                                                (_%g225686226674%_
                                                 _%hd225717226646%_)
                                                (_%g225687226675%_
                                                 _%hd225708226622%_)
                                                (_%g225688226676%_
                                                 _%hd225699226598%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g225688226676%_
                                                        'call-method))
                                                     (let ((__tmp232353
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self225672%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g225687226675%_
                                                        __tmp232353)))
                                                (_%__kont231661231662%_
                                                 _%g225685226673%_
                                                 _%g225686226674%_
                                                 _%g225687226675%_
                                                 _%g225688226676%_)
                                                (_%__match231952231953%_
                                                 _%e225689226571%_
                                                 _%hd225690226574%_
                                                 _%tl225691226576%_
                                                 _%e225692226579%_
                                                 _%hd225693226582%_
                                                 _%tl225694226584%_
                                                 _%e225695226587%_
                                                 _%hd225696226590%_
                                                 _%tl225697226592%_
                                                 _%e225698226595%_
                                                 _%hd225699226598%_
                                                 _%tl225700226600%_
                                                 _%e225701226603%_
                                                 _%hd225702226606%_
                                                 _%tl225703226608%_
                                                 _%e225704226611%_
                                                 _%hd225705226614%_
                                                 _%tl225706226616%_
                                                 _%e225707226619%_
                                                 _%hd225708226622%_
                                                 _%tl225709226624%_
                                                 _%e225710226627%_
                                                 _%hd225711226630%_
                                                 _%tl225712226632%_
                                                 _%e225713226635%_
                                                 _%hd225714226638%_
                                                 _%tl225715226640%_
                                                 _%e225716226643%_
                                                 _%hd225717226646%_
                                                 _%tl225718226648%_))))))))
                          (_%loop225722226656%_ _%target225719226651%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx231659231660%_))
                    (let ((_%e225689226571%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx231659231660%_))))
                      (let ((_%tl225691226576%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e225689226571%_)))
                            (_%hd225690226574%_
                             (let ()
                               (declare (not safe))
                               (##car _%e225689226571%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl225691226576%_))
                            (let ((_%e225692226579%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl225691226576%_))))
                              (let ((_%tl225694226584%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225692226579%_)))
                                    (_%hd225693226582%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225692226579%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd225693226582%_))
                                    (let ((_%e225695226587%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd225693226582%_))))
                                      (let ((_%tl225697226592%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e225695226587%_)))
                                            (_%hd225696226590%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e225695226587%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd225696226590%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd225696226590%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl225697226592%_))
                                                    (let ((_%e225698226595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl225697226592%_))))
                                                      (let ((_%tl225700226600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e225698226595%_)))
                    (_%hd225699226598%_
                     (let () (declare (not safe)) (##car _%e225698226595%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl225700226600%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl225694226584%_))
                        (let ((_%e225701226603%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl225694226584%_))))
                          (let ((_%tl225703226608%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e225701226603%_)))
                                (_%hd225702226606%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e225701226603%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd225702226606%_))
                                (let ((_%e225704226611%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd225702226606%_))))
                                  (let ((_%tl225706226616%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e225704226611%_)))
                                        (_%hd225705226614%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e225704226611%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd225705226614%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd225705226614%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl225706226616%_))
                                                (let ((_%e225707226619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl225706226616%_))))
                                                  (let ((_%tl225709226624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e225707226619%_)))
                                                        (_%hd225708226622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e225707226619%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl225709226624%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl225703226608%_))
                                                            (let ((_%e225710226627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl225703226608%_))))
                      (let ((_%tl225712226632%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e225710226627%_)))
                            (_%hd225711226630%_
                             (let ()
                               (declare (not safe))
                               (##car _%e225710226627%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd225711226630%_))
                            (let ((_%e225713226635%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd225711226630%_))))
                              (let ((_%tl225715226640%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e225713226635%_)))
                                    (_%hd225714226638%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e225713226635%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd225714226638%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd225714226638%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl225715226640%_))
                                            (let ((_%e225716226643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl225715226640%_))))
                                              (let ((_%tl225718226648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e225716226643%_)))
                                                    (_%hd225717226646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e225716226643%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl225718226648%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl225712226632%_))
                                                        (let ((_%__splice231663231664%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl225712226632%_
                          '0))))
                  (let ((_%tl225721226653%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice231663231664%_ '1)))
                        (_%target225719226651%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice231663231664%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl225721226653%_))
                        (_%__match231764231765%_
                         _%e225689226571%_
                         _%hd225690226574%_
                         _%tl225691226576%_
                         _%e225692226579%_
                         _%hd225693226582%_
                         _%tl225694226584%_
                         _%e225695226587%_
                         _%hd225696226590%_
                         _%tl225697226592%_
                         _%e225698226595%_
                         _%hd225699226598%_
                         _%tl225700226600%_
                         _%e225701226603%_
                         _%hd225702226606%_
                         _%tl225703226608%_
                         _%e225704226611%_
                         _%hd225705226614%_
                         _%tl225706226616%_
                         _%e225707226619%_
                         _%hd225708226622%_
                         _%tl225709226624%_
                         _%e225710226627%_
                         _%hd225711226630%_
                         _%tl225712226632%_
                         _%e225713226635%_
                         _%hd225714226638%_
                         _%tl225715226640%_
                         _%e225716226643%_
                         _%hd225717226646%_
                         _%tl225718226648%_
                         _%__splice231663231664%_
                         _%target225719226651%_
                         _%tl225721226653%_)
                        (_%__match231952231953%_
                         _%e225689226571%_
                         _%hd225690226574%_
                         _%tl225691226576%_
                         _%e225692226579%_
                         _%hd225693226582%_
                         _%tl225694226584%_
                         _%e225695226587%_
                         _%hd225696226590%_
                         _%tl225697226592%_
                         _%e225698226595%_
                         _%hd225699226598%_
                         _%tl225700226600%_
                         _%e225701226603%_
                         _%hd225702226606%_
                         _%tl225703226608%_
                         _%e225704226611%_
                         _%hd225705226614%_
                         _%tl225706226616%_
                         _%e225707226619%_
                         _%hd225708226622%_
                         _%tl225709226624%_
                         _%e225710226627%_
                         _%hd225711226630%_
                         _%tl225712226632%_
                         _%e225713226635%_
                         _%hd225714226638%_
                         _%tl225715226640%_
                         _%e225716226643%_
                         _%hd225717226646%_
                         _%tl225718226648%_))))
                (_%__match231952231953%_
                 _%e225689226571%_
                 _%hd225690226574%_
                 _%tl225691226576%_
                 _%e225692226579%_
                 _%hd225693226582%_
                 _%tl225694226584%_
                 _%e225695226587%_
                 _%hd225696226590%_
                 _%tl225697226592%_
                 _%e225698226595%_
                 _%hd225699226598%_
                 _%tl225700226600%_
                 _%e225701226603%_
                 _%hd225702226606%_
                 _%tl225703226608%_
                 _%e225704226611%_
                 _%hd225705226614%_
                 _%tl225706226616%_
                 _%e225707226619%_
                 _%hd225708226622%_
                 _%tl225709226624%_
                 _%e225710226627%_
                 _%hd225711226630%_
                 _%tl225712226632%_
                 _%e225713226635%_
                 _%hd225714226638%_
                 _%tl225715226640%_
                 _%e225716226643%_
                 _%hd225717226646%_
                 _%tl225718226648%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match232156232157%_
                                                     _%e225689226571%_
                                                     _%hd225690226574%_
                                                     _%tl225691226576%_
                                                     _%e225692226579%_
                                                     _%hd225693226582%_
                                                     _%tl225694226584%_
                                                     _%e225695226587%_
                                                     _%hd225696226590%_
                                                     _%tl225697226592%_
                                                     _%e225698226595%_
                                                     _%hd225699226598%_
                                                     _%tl225700226600%_
                                                     _%e225701226603%_
                                                     _%hd225702226606%_
                                                     _%tl225703226608%_
                                                     _%e225704226611%_
                                                     _%hd225705226614%_
                                                     _%tl225706226616%_
                                                     _%e225707226619%_
                                                     _%hd225708226622%_
                                                     _%tl225709226624%_
                                                     _%e225710226627%_
                                                     _%hd225711226630%_
                                                     _%tl225712226632%_))))
                                            (_%__match232156232157%_
                                             _%e225689226571%_
                                             _%hd225690226574%_
                                             _%tl225691226576%_
                                             _%e225692226579%_
                                             _%hd225693226582%_
                                             _%tl225694226584%_
                                             _%e225695226587%_
                                             _%hd225696226590%_
                                             _%tl225697226592%_
                                             _%e225698226595%_
                                             _%hd225699226598%_
                                             _%tl225700226600%_
                                             _%e225701226603%_
                                             _%hd225702226606%_
                                             _%tl225703226608%_
                                             _%e225704226611%_
                                             _%hd225705226614%_
                                             _%tl225706226616%_
                                             _%e225707226619%_
                                             _%hd225708226622%_
                                             _%tl225709226624%_
                                             _%e225710226627%_
                                             _%hd225711226630%_
                                             _%tl225712226632%_))
                                        (_%__match231832231833%_
                                         _%e225689226571%_
                                         _%hd225690226574%_
                                         _%tl225691226576%_
                                         _%e225692226579%_
                                         _%hd225693226582%_
                                         _%tl225694226584%_
                                         _%e225695226587%_
                                         _%hd225696226590%_
                                         _%tl225697226592%_
                                         _%e225698226595%_
                                         _%hd225699226598%_
                                         _%tl225700226600%_
                                         _%e225701226603%_
                                         _%hd225702226606%_
                                         _%tl225703226608%_
                                         _%e225704226611%_
                                         _%hd225705226614%_
                                         _%tl225706226616%_
                                         _%e225707226619%_
                                         _%hd225708226622%_
                                         _%tl225709226624%_
                                         _%e225710226627%_
                                         _%hd225711226630%_
                                         _%tl225712226632%_
                                         _%e225713226635%_
                                         _%hd225714226638%_
                                         _%tl225715226640%_))
                                    (_%__match232156232157%_
                                     _%e225689226571%_
                                     _%hd225690226574%_
                                     _%tl225691226576%_
                                     _%e225692226579%_
                                     _%hd225693226582%_
                                     _%tl225694226584%_
                                     _%e225695226587%_
                                     _%hd225696226590%_
                                     _%tl225697226592%_
                                     _%e225698226595%_
                                     _%hd225699226598%_
                                     _%tl225700226600%_
                                     _%e225701226603%_
                                     _%hd225702226606%_
                                     _%tl225703226608%_
                                     _%e225704226611%_
                                     _%hd225705226614%_
                                     _%tl225706226616%_
                                     _%e225707226619%_
                                     _%hd225708226622%_
                                     _%tl225709226624%_
                                     _%e225710226627%_
                                     _%hd225711226630%_
                                     _%tl225712226632%_))))
                            (_%__match232156232157%_
                             _%e225689226571%_
                             _%hd225690226574%_
                             _%tl225691226576%_
                             _%e225692226579%_
                             _%hd225693226582%_
                             _%tl225694226584%_
                             _%e225695226587%_
                             _%hd225696226590%_
                             _%tl225697226592%_
                             _%e225698226595%_
                             _%hd225699226598%_
                             _%tl225700226600%_
                             _%e225701226603%_
                             _%hd225702226606%_
                             _%tl225703226608%_
                             _%e225704226611%_
                             _%hd225705226614%_
                             _%tl225706226616%_
                             _%e225707226619%_
                             _%hd225708226622%_
                             _%tl225709226624%_
                             _%e225710226627%_
                             _%hd225711226630%_
                             _%tl225712226632%_))))
                    (_%__match232094232095%_
                     _%e225689226571%_
                     _%hd225690226574%_
                     _%tl225691226576%_
                     _%e225692226579%_
                     _%hd225693226582%_
                     _%tl225694226584%_
                     _%e225695226587%_
                     _%hd225696226590%_
                     _%tl225697226592%_
                     _%e225698226595%_
                     _%hd225699226598%_
                     _%tl225700226600%_
                     _%e225701226603%_
                     _%hd225702226606%_
                     _%tl225703226608%_
                     _%e225704226611%_
                     _%hd225705226614%_
                     _%tl225706226616%_
                     _%e225707226619%_
                     _%hd225708226622%_
                     _%tl225709226624%_))
                (_%__kont231677231678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont231677231678%_))
                                            (_%__kont231677231678%_))
                                        (_%__kont231677231678%_))))
                                (_%__kont231677231678%_))))
                        (_%__kont231677231678%_))
                    (_%__kont231677231678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont231677231678%_))
                                                (_%__kont231677231678%_))
                                            (_%__kont231677231678%_))))
                                    (_%__kont231677231678%_))))
                            (_%__kont231677231678%_))))
                    (_%__kont231677231678%_))))))))))
